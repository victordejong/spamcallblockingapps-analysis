package com.callapp.contacts.activity.analytics.cards;

import android.app.Activity;
import android.content.Intent;
import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.content.b;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.analytics.cards.base.AnalyticsWrapperCard;
import com.callapp.contacts.activity.analytics.data.UpdateAfterPreimiumEvent;
import com.callapp.contacts.activity.contact.details.PresentersContainer;
import com.callapp.contacts.activity.marketplace.planPage.PlanPageActivity;
import com.callapp.contacts.event.EventBusManager;
import com.callapp.contacts.event.bus.EventType;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.contacts.manager.popup.ActivityResult;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.AndroidUtils;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.ViewUtils;
import java.util.EnumSet;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/cards/BannerCard.class */
public class BannerCard extends AnalyticsWrapperCard<BannerCardHolder, Object> {
    private PresentersContainer.MODE mode;
    private BannerType type;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/cards/BannerCard$BannerCardHolder.class */
    public class BannerCardHolder {

        /* renamed from: b  reason: collision with root package name */
        private final TextView f10679b;

        /* renamed from: c  reason: collision with root package name */
        private final TextView f10680c;

        /* renamed from: d  reason: collision with root package name */
        private final ImageView f10681d;
        private final TextView e;
        private final RelativeLayout f;

        public BannerCardHolder(View view) {
            this.f10679b = (TextView) view.findViewById(2131362079);
            this.f10680c = (TextView) view.findViewById(2131362078);
            this.f10681d = (ImageView) view.findViewById(2131363030);
            this.e = (TextView) view.findViewById(2131362510);
            this.f = (RelativeLayout) view.findViewById(2131362073);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/cards/BannerCard$BannerType.class */
    public enum BannerType {
        DEFAULT_DIALER,
        PREMIUM
    }

    public BannerCard(PresentersContainer presentersContainer, BannerType bannerType) {
        super(presentersContainer, 2131558478);
        this.type = bannerType;
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public String getHeaderTitle() {
        return null;
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public Set<ContactField> getListenFields() {
        return EnumSet.of(ContactField.phone);
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public int getPriority() {
        BannerType bannerType = this.type;
        if (bannerType == null) {
            return 0;
        }
        if (bannerType == BannerType.DEFAULT_DIALER) {
            return 20;
        }
        return this.presentersContainer.getContainerMode() == PresentersContainer.MODE.STATISTICS ? 44 : 100;
    }

    @Override // com.callapp.contacts.activity.analytics.data.UpdateAnalyticsCardEvent
    public void onAnalyticsRefreshCard(PresentersContainer.MODE mode) {
        this.mode = mode;
        updateCardData(null, true);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onBindViewHolder(final BannerCardHolder bannerCardHolder) {
        int i;
        int i2;
        int i3;
        if (this.type.equals(BannerType.PREMIUM)) {
            i3 = 2131886515;
            i2 = 2131231989;
            i = 2131886514;
        } else {
            i3 = 2131886517;
            i2 = 2131231987;
            i = 2131886516;
        }
        bannerCardHolder.f10679b.setText(Activities.getString(2131886518));
        bannerCardHolder.f10680c.setText(Activities.getString(i3));
        bannerCardHolder.f10679b.setText(Activities.getString(2131886518));
        bannerCardHolder.f10681d.setImageResource(i2);
        bannerCardHolder.e.setText(Activities.getString(i));
        bannerCardHolder.e.setBackgroundResource(2131232136);
        if (Build.VERSION.SDK_INT >= 23) {
            bannerCardHolder.e.setForeground(b.a(CallAppApplication.get(), 2131230873));
        }
        int color = ThemeUtils.getColor(2131099941);
        ViewUtils.a(bannerCardHolder.e, Integer.valueOf(color), Integer.valueOf(color));
        bannerCardHolder.f.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.analytics.cards.BannerCard.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AndroidUtils.a(bannerCardHolder.e, 1);
                if (BannerCard.this.type.equals(BannerType.DEFAULT_DIALER)) {
                    Activities.a((Activity) BannerCard.this.presentersContainer.getRealContext(), true, new ActivityResult() { // from class: com.callapp.contacts.activity.analytics.cards.BannerCard.1.1
                        @Override // com.callapp.contacts.manager.popup.ActivityResult
                        public void onActivityResult(Activity activity, int i4, int i5, Intent intent) {
                            AnalyticsManager.get().a(Constants.PERMISSIONS, "Default dailer from Insights", PhoneManager.get().isDefaultSystemPhoneApp() ? "true" : "false", 0.0d);
                            PhoneManager.get().e();
                            BannerCard.this.updateCardData(null, true);
                        }
                    });
                    return;
                }
                if (BannerCard.this.presentersContainer.getContainerMode() == PresentersContainer.MODE.STATISTICS) {
                    AnalyticsManager.get().a(Constants.STORE, "Enter to plans screen - premium", "InsightsStatsTab");
                } else {
                    AnalyticsManager.get().a(Constants.STORE, "Enter to plans screen - premium", "InsightsTab");
                }
                Intent intent = new Intent(BannerCard.this.presentersContainer.getRealContext(), PlanPageActivity.class);
                intent.putExtra("PLAN_PAGE_SOURCE", "InsightsBanner");
                Activities.a(BannerCard.this.presentersContainer.getRealContext(), intent, new ActivityResult() { // from class: com.callapp.contacts.activity.analytics.cards.BannerCard.1.2
                    @Override // com.callapp.contacts.manager.popup.ActivityResult
                    public void onActivityResult(Activity activity, int i4, int i5, Intent intent2) {
                        BannerCard.this.updateCardData(null, true);
                    }
                });
            }
        });
    }

    @Override // com.callapp.contacts.model.contact.ContactDataChangeListener
    public void onContactChanged(ContactData contactData, Set<ContactField> set) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public BannerCardHolder onCreateViewHolder(ViewGroup viewGroup) {
        return new BannerCardHolder(viewGroup);
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public boolean showShouldExpandButton() {
        return false;
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public void updateCardData(Object obj, boolean z) {
        if (this.presentersContainer.getContainerMode() != this.mode) {
            return;
        }
        if (this.type == BannerType.DEFAULT_DIALER) {
            if (!PhoneManager.get().isDefaultPhoneApp()) {
                showCard(true);
            } else {
                hideCard();
            }
        } else if (!Prefs.cJ.get().booleanValue()) {
            showCard(true);
        } else {
            this.presentersContainer.getEventBus().a((EventType<L, EventType<UpdateAfterPreimiumEvent, EventBusManager.CallAppDataType>>) UpdateAfterPreimiumEvent.f10897a, (EventType<UpdateAfterPreimiumEvent, EventBusManager.CallAppDataType>) null, false);
            hideCard();
        }
    }
}
