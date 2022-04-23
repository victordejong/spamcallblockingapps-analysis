package com.callapp.contacts.activity.analytics.cards;

import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.callapp.contacts.activity.analytics.data.AnalyticsDataManager;
import com.callapp.contacts.activity.analytics.data.items.HoursCallDataItem;
import com.callapp.contacts.activity.analytics.progressGraph.fragment.CallDayNightTimeGraphFragment;
import com.callapp.contacts.activity.contact.details.PresentersContainer;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.ThemeUtils;
import com.mopub.mobileads.InlineVisibilityTracker;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/cards/HoursCard.class */
public class HoursCard extends BaseHourdCard<HoursCardCardHolder, HoursCallDataItem> {
    private InlineVisibilityTracker hoursVisibilityTracker;
    private PresentersContainer.MODE mode;
    private boolean shouldShowAnimation = false;
    private boolean alreadyBounded = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/cards/HoursCard$HoursCardCardHolder.class */
    public class HoursCardCardHolder {

        /* renamed from: b  reason: collision with root package name */
        private final ImageView f10763b;

        /* renamed from: c  reason: collision with root package name */
        private final FrameLayout f10764c;

        public HoursCardCardHolder(View view) {
            this.f10763b = (ImageView) view.findViewById(2131362694);
            this.f10764c = (FrameLayout) view.findViewById(2131362521);
        }
    }

    public HoursCard(PresentersContainer presentersContainer) {
        super(presentersContainer, 2131558483);
    }

    @Override // com.callapp.contacts.activity.analytics.cards.BaseHourdCard, com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public String getHeaderTitle() {
        return Activities.getString(2131886528);
    }

    @Override // com.callapp.contacts.activity.analytics.cards.BaseHourdCard, com.callapp.contacts.activity.analytics.data.UpdateAnalyticsCardEvent
    public void onAnalyticsRefreshCard(PresentersContainer.MODE mode) {
        this.mode = mode;
        refreshCardData();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onBindViewHolder(HoursCardCardHolder hoursCardCardHolder) {
        this.alreadyBounded = true;
        if (Prefs.cJ.get().booleanValue()) {
            hoursCardCardHolder.f10763b.setVisibility(8);
            hoursCardCardHolder.f10764c.setVisibility(0);
            if (this.shouldShowAnimation) {
                animateGraph();
                return;
            }
            return;
        }
        hoursCardCardHolder.f10763b.setVisibility(0);
        hoursCardCardHolder.f10764c.setVisibility(8);
        if (ThemeUtils.isThemeLight()) {
            hoursCardCardHolder.f10763b.setImageResource(2131232405);
        } else {
            hoursCardCardHolder.f10763b.setImageResource(2131232406);
        }
    }

    @Override // com.callapp.contacts.activity.analytics.cards.BaseHourdCard, com.callapp.contacts.model.contact.ContactDataChangeListener
    public void onContactChanged(ContactData contactData, Set<ContactField> set) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public HoursCardCardHolder onCreateViewHolder(ViewGroup viewGroup) {
        this.callDayNightTimeGraphFragment = (CallDayNightTimeGraphFragment) this.presentersContainer.findFragment(2131362213);
        InlineVisibilityTracker inlineVisibilityTracker = new InlineVisibilityTracker(this.presentersContainer.getRealContext(), viewGroup, viewGroup, 500, 500);
        this.hoursVisibilityTracker = inlineVisibilityTracker;
        inlineVisibilityTracker.setInlineVisibilityTrackerListener(new InlineVisibilityTracker.InlineVisibilityTrackerListener() { // from class: com.callapp.contacts.activity.analytics.cards.HoursCard.1
            @Override // com.mopub.mobileads.InlineVisibilityTracker.InlineVisibilityTrackerListener
            public void onVisibilityChanged() {
                HoursCard.this.shouldShowAnimation = true;
                if (HoursCard.this.alreadyBounded) {
                    HoursCard.this.animateGraph();
                }
                if (HoursCard.this.hoursVisibilityTracker != null) {
                    HoursCard.this.hoursVisibilityTracker.destroy();
                    HoursCard.this.hoursVisibilityTracker = null;
                }
            }
        });
        return new HoursCardCardHolder(viewGroup);
    }

    @Override // com.callapp.contacts.activity.analytics.cards.base.AnalyticsWrapperCard, com.callapp.contacts.activity.contact.cards.framework.ContactCard, com.callapp.contacts.event.listener.DestroyListener
    public void onDestroy() {
        super.onDestroy();
        InlineVisibilityTracker inlineVisibilityTracker = this.hoursVisibilityTracker;
        if (inlineVisibilityTracker != null) {
            inlineVisibilityTracker.destroy();
            this.hoursVisibilityTracker = null;
        }
    }

    @Override // com.callapp.contacts.activity.analytics.cards.BaseHourdCard
    public void refreshCardData() {
        if (this.presentersContainer.getContainerMode() == this.mode) {
            this.dataCurrent = AnalyticsDataManager.c(AnalyticsDataManager.DatePeriod.CURRENT);
            updateCardData(this.dataCurrent, true);
        }
    }

    @Override // com.callapp.contacts.activity.analytics.cards.BaseHourdCard, com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public boolean showShouldExpandButton() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void updateCardData(HoursCallDataItem hoursCallDataItem, boolean z) {
        this.dataCurrent = hoursCallDataItem;
        showCard(true);
    }
}
