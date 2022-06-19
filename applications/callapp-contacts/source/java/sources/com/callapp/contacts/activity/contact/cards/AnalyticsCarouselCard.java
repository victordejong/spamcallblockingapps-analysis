package com.callapp.contacts.activity.contact.cards;

import android.content.Intent;
import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.content.C0790b;
import androidx.transition.C2908u;
import androidx.transition.Fade;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.analytics.data.AnalyticsDataManager;
import com.callapp.contacts.activity.analytics.data.AnalyticsExcludeManager;
import com.callapp.contacts.activity.analytics.data.UpdateAnalyticsCardEvent;
import com.callapp.contacts.activity.analytics.data.items.ContactDetailsInsightData;
import com.callapp.contacts.activity.analytics.p236ui.InsightActivity;
import com.callapp.contacts.activity.contact.cards.CarrouselCard;
import com.callapp.contacts.activity.contact.details.PresentersContainer;
import com.callapp.contacts.event.bus.EventType;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.AndroidUtils;
import com.callapp.contacts.util.CallLogUtils;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.ViewUtils;
import java.util.EnumSet;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/AnalyticsCarouselCard.class */
public class AnalyticsCarouselCard extends CarrouselCard<ContactDetailsInsightData> {
    private ConstraintLayout carrouselFrame;
    private ContactDetailsInsightData data;
    private CarrouselCard.CarousleCardViewHolder viewHolder;

    public AnalyticsCarouselCard(PresentersContainer presentersContainer, String str, int i) {
        super(presentersContainer, str, i);
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public int getCardBgColor() {
        return isInExpandMode() ? ThemeUtils.m27386a(CallAppApplication.get(), 2131099686) : ThemeUtils.m27386a(CallAppApplication.get(), 2131099780);
    }

    @Override // com.callapp.contacts.activity.contact.cards.CarrouselCard, com.callapp.contacts.activity.contact.cards.MultiCardContainer
    public ContactDetailsInsightData getData() {
        return this.data;
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public int getHeaderBackgroundColor() {
        return isInExpandMode() ? ThemeUtils.m27386a(CallAppApplication.get(), 2131099686) : ThemeUtils.m27386a(CallAppApplication.get(), 2131099780);
    }

    @Override // com.callapp.contacts.activity.contact.cards.CarrouselCard, com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public Set<ContactField> getListenFields() {
        return EnumSet.of(ContactField.excludeAnalytics, ContactField.newContact);
    }

    @Override // com.callapp.contacts.activity.contact.cards.CarrouselCard
    void handleFooter() {
        CarrouselCard.CarousleCardViewHolder carousleCardViewHolder = this.viewHolder;
        if (carousleCardViewHolder != null) {
            carousleCardViewHolder.f21044e.setBackgroundColor(ThemeUtils.getColor(2131099891));
            if (isInExpandMode()) {
                this.viewHolder.f21042c.setBackgroundColor(ThemeUtils.getColor(2131099686));
            } else {
                this.viewHolder.f21042c.setBackgroundColor(ThemeUtils.getColor(2131099780));
            }
            this.viewHolder.f21043d.setText(Activities.getString(2131887687));
            if (Build.VERSION.SDK_INT >= 23) {
                this.viewHolder.f21043d.setForeground(C0790b.m44502a(CallAppApplication.get(), 2131230873));
            }
            int i = 0;
            ViewUtils.m27299b(this.viewHolder.f21043d, 2131230874, ThemeUtils.getColor(2131099784), ThemeUtils.getColor(2131099784), 0);
            this.viewHolder.f21042c.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.contact.cards.AnalyticsCarouselCard.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    AnalyticsManager analyticsManager = AnalyticsManager.get();
                    analyticsManager.m28449a(Constants.INSIGHTS, "ClickMoreInsightsContactCard", "priority: " + AnalyticsCarouselCard.this.getPriority());
                    AndroidUtils.m27630a(AnalyticsCarouselCard.this.viewHolder.f21042c, 1);
                    Intent intent = new Intent(AnalyticsCarouselCard.this.presentersContainer.getRealContext(), InsightActivity.class);
                    intent.putExtra(Constants.ENTER_FROM_BOTTOM_BAR, false);
                    intent.putExtra(Constants.CARD_PRIORITY, AnalyticsCarouselCard.this.getPriority());
                    Activities.m27685a(AnalyticsCarouselCard.this.presentersContainer.getRealContext(), intent);
                }
            });
            C2908u.m39680a(this.carrouselFrame, new Fade());
            if (!isInExpandMode()) {
                i = 8;
            }
            this.viewHolder.f21042c.setVisibility(i);
            showAdIfNeeded();
        }
    }

    @Override // com.callapp.contacts.activity.contact.cards.CarrouselCard, com.callapp.contacts.model.contact.ContactDataChangeListener
    public void onContactChanged(ContactData contactData, final Set<ContactField> set) {
        super.onContactChanged(contactData, set);
        if (contactData.isIncognito() || CallLogUtils.m27556b(contactData.getPhone().m26101a()) || AnalyticsExcludeManager.m31616a(contactData.getPhone())) {
            this.presentersContainer.safeRunOnUIThread(new Runnable() { // from class: com.callapp.contacts.activity.contact.cards.AnalyticsCarouselCard.4
                @Override // java.lang.Runnable
                public void run() {
                    AnalyticsCarouselCard.this.hideCard();
                }
            });
        } else if (this.data != null && !set.contains(ContactField.newContact) && !set.contains(ContactField.excludeAnalytics)) {
        } else {
            if (this.cardRecyclerView != null) {
                this.presentersContainer.safeRunOnUIThread(new Runnable() { // from class: com.callapp.contacts.activity.contact.cards.AnalyticsCarouselCard.3
                    @Override // java.lang.Runnable
                    public void run() {
                        if (set.contains(ContactField.excludeAnalytics)) {
                            AnalyticsCarouselCard.this.showCard(false);
                        }
                        AnalyticsCarouselCard.this.cardRecyclerView.m40464b(0);
                        AnalyticsCarouselCard.this.handleFooter();
                    }
                });
            }
            this.data = AnalyticsDataManager.m31629a(contactData);
            this.presentersContainer.getEventBus().m29046a((EventType<L, EventType<UpdateAnalyticsCardEvent, PresentersContainer.MODE>>) UpdateAnalyticsCardEvent.f19922a, (EventType<UpdateAnalyticsCardEvent, PresentersContainer.MODE>) PresentersContainer.MODE.CONTACT_DETAILS_SCREEN, false);
        }
    }

    @Override // com.callapp.contacts.activity.contact.cards.CarrouselCard, com.callapp.contacts.activity.contact.cards.framework.ContactCard
    /* renamed from: onCreateViewHolder */
    public CarrouselCard.CarousleCardViewHolder onCreateViewHolder2(ViewGroup viewGroup) {
        setIsInExpandMode(Prefs.f26644hx.get().booleanValue());
        CarrouselCard.CarousleCardViewHolder onCreateViewHolder = super.onCreateViewHolder(viewGroup);
        this.viewHolder = onCreateViewHolder;
        this.carrouselFrame = onCreateViewHolder.f21045f;
        handleFooter();
        return this.viewHolder;
    }

    @Override // com.callapp.contacts.activity.contact.cards.CarrouselCard
    protected void performOnExpandButtonClick(boolean z) {
        Prefs.f26644hx.set(Boolean.valueOf(z));
        AnalyticsManager analyticsManager = AnalyticsManager.get();
        String str = z ? "ClickExpandInsightsContactCard" : "ClickCollapseInsightsContactCard";
        analyticsManager.m28449a(Constants.INSIGHTS, str, "priority: " + getPriority());
        if (Prefs.f26628hh.get().intValue() % 2 == 0 && Prefs.f26628hh.get().intValue() < 5) {
            new Task() { // from class: com.callapp.contacts.activity.contact.cards.AnalyticsCarouselCard.1
                @Override // com.callapp.contacts.manager.task.Task
                public void doTask() {
                    AnalyticsCarouselCard.this.cardRecyclerView.m40449d(3);
                }
            }.schedule(1200);
        }
        Prefs.f26628hh.m28169b(1);
        if (this.userInteraction) {
            this.presentersContainer.getEventBus().m29043c(ScrollWhenCDAnalyticsExpand.f21235a, Boolean.valueOf(isInExpandMode()));
        }
    }

    @Override // com.callapp.contacts.activity.contact.cards.CarrouselCard
    void showAdIfNeeded() {
        ContactDetailsInsightData contactDetailsInsightData;
        if (!isInExpandMode() || (contactDetailsInsightData = this.data) == null || !contactDetailsInsightData.isShowData()) {
            return;
        }
        AnalyticsManager.get().m28450a(Constants.INSIGHTS, "ViewInsightsContactCardWithData");
        this.presentersContainer.getEventBus().m29046a((EventType<L, EventType<ShowAdWhenAnalyticsExtand, Object>>) ShowAdWhenAnalyticsExtand.f21236a, (EventType<ShowAdWhenAnalyticsExtand, Object>) null, false);
    }
}
