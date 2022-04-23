package com.callapp.contacts.activity.analytics.cards;

import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.fragment.app.FragmentContainerView;
import androidx.transition.Fade;
import androidx.transition.u;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.analytics.data.items.ContactDetailsInsightData;
import com.callapp.contacts.activity.analytics.data.items.HoursCallDataItem;
import com.callapp.contacts.activity.analytics.progressGraph.fragment.CallDayNightTimeGraphFragment;
import com.callapp.contacts.activity.contact.cards.MultiCardContainer;
import com.callapp.contacts.activity.contact.details.PresentersContainer;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.model.contact.social.ContactFieldEnumSets;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.glide.GlideUtils;
import com.callapp.contacts.widget.ProfilePictureView;
import com.callapp.framework.util.StringUtils;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/cards/CDHoursCard.class */
public class CDHoursCard extends BaseHourdCard<CDHoursCardCardHolder, HoursCallDataItem> {
    private CDHoursCardCardHolder cdHoursCardCardHolder;
    private ContactDetailsInsightData contactDetailsInsightData;
    private String headerTitle;
    private MultiCardContainer multiCardContainer;
    private int priority;
    private String userImageUrl = null;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/cards/CDHoursCard$CDHoursCardCardHolder.class */
    public class CDHoursCardCardHolder {

        /* renamed from: b  reason: collision with root package name */
        private final FrameLayout f10701b;

        /* renamed from: c  reason: collision with root package name */
        private final TextView f10702c;

        /* renamed from: d  reason: collision with root package name */
        private final TextView f10703d;
        private LinearLayout e;
        private FragmentContainerView f;
        private ImageView g;
        private LinearLayout h;
        private LinearLayout i;
        private ProfilePictureView j;

        public CDHoursCardCardHolder(View view) {
            this.f10701b = (FrameLayout) view.findViewById(2131362124);
            this.f10702c = (TextView) view.findViewById(2131364121);
            this.f10703d = (TextView) view.findViewById(2131364120);
            LinearLayout linearLayout = (LinearLayout) view.findViewById(2131363705);
            this.e = linearLayout;
            this.f = (FragmentContainerView) linearLayout.findViewById(2131362213);
            this.g = (ImageView) this.e.findViewById(2131364175);
            this.h = (LinearLayout) this.e.findViewById(2131362125);
            this.i = (LinearLayout) this.e.findViewById(2131362122);
            this.j = (ProfilePictureView) this.e.findViewById(2131364494);
        }
    }

    public CDHoursCard(MultiCardContainer multiCardContainer, int i) {
        super(multiCardContainer, 2131558547);
        this.multiCardContainer = multiCardContainer;
        this.priority = i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void loadHeaderImage() {
        if (this.cdHoursCardCardHolder != null) {
            this.presentersContainer.safeRunOnUIThread(new Runnable() { // from class: com.callapp.contacts.activity.analytics.cards.CDHoursCard.4
                @Override // java.lang.Runnable
                public void run() {
                    if (StringUtils.b((CharSequence) CDHoursCard.this.userImageUrl)) {
                        ProfilePictureView profilePictureView = CDHoursCard.this.cdHoursCardCardHolder.j;
                        GlideUtils.GlideRequestBuilder glideRequestBuilder = new GlideUtils.GlideRequestBuilder(CDHoursCard.this.userImageUrl);
                        glideRequestBuilder.l = true;
                        profilePictureView.a(glideRequestBuilder);
                        return;
                    }
                    CDHoursCard.this.cdHoursCardCardHolder.j.setDefaultProfilePic();
                }
            });
        }
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public int getCardBgColor() {
        return this.multiCardContainer.isInExpandMode() ? ThemeUtils.a(CallAppApplication.get(), 2131099686) : ThemeUtils.a(CallAppApplication.get(), 2131099780);
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public int getHeaderBackgroundColor() {
        return this.multiCardContainer.isInExpandMode() ? ThemeUtils.a(CallAppApplication.get(), 2131099686) : ThemeUtils.a(CallAppApplication.get(), 2131099780);
    }

    @Override // com.callapp.contacts.activity.analytics.cards.BaseHourdCard, com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public String getHeaderTitle() {
        return null;
    }

    @Override // com.callapp.contacts.activity.analytics.cards.BaseHourdCard, com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public Set<ContactField> getListenFields() {
        return ContactFieldEnumSets.PHOTO_AND_NAME_FIELDS;
    }

    @Override // com.callapp.contacts.activity.analytics.cards.BaseHourdCard, com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public int getPriority() {
        return this.priority;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onBindViewHolder(CDHoursCardCardHolder cDHoursCardCardHolder) {
        int i = this.multiCardContainer.isInExpandMode() ? 0 : 8;
        if (this.contactDetailsInsightData.isShowData()) {
            cDHoursCardCardHolder.f.setVisibility(0);
            cDHoursCardCardHolder.i.setVisibility(0);
            cDHoursCardCardHolder.g.setVisibility(8);
            cDHoursCardCardHolder.h.setVisibility(8);
            this.callDayNightTimeGraphFragment.setHeaderVisibility(8);
            cDHoursCardCardHolder.f10701b.setVisibility(i);
            cDHoursCardCardHolder.f10702c.setText(Activities.getString(2131886316));
            cDHoursCardCardHolder.f10702c.setTextColor(ThemeUtils.getColor(2131100140));
            cDHoursCardCardHolder.f10703d.setText(this.contactDetailsInsightData.getTimeSlotData());
            loadHeaderImage();
            animateGraph();
            return;
        }
        cDHoursCardCardHolder.f.setVisibility(8);
        cDHoursCardCardHolder.i.setVisibility(8);
        cDHoursCardCardHolder.g.setVisibility(0);
        cDHoursCardCardHolder.h.setVisibility(0);
        TextView textView = (TextView) cDHoursCardCardHolder.h.findViewById(2131364130);
        TextView textView2 = (TextView) cDHoursCardCardHolder.h.findViewById(2131364011);
        textView.setText(Activities.getString(2131886545));
        textView2.setText(Activities.getString(2131886544));
        textView2.setTextColor(ThemeUtils.getColor(2131100140));
        textView.setTextColor(ThemeUtils.getColor(2131100140));
        cDHoursCardCardHolder.f10701b.setVisibility(i);
    }

    @Override // com.callapp.contacts.activity.analytics.cards.BaseHourdCard, com.callapp.contacts.model.contact.ContactDataChangeListener
    public void onContactChanged(ContactData contactData, Set<ContactField> set) {
        if (set.contains(ContactField.names) || set.contains(ContactField.fullName)) {
            this.headerTitle = Activities.a(2131888257, contactData.getNameOrNumber());
            this.presentersContainer.safeRunOnUIThread(new Runnable() { // from class: com.callapp.contacts.activity.analytics.cards.CDHoursCard.1
                @Override // java.lang.Runnable
                public void run() {
                    if (CDHoursCard.this.multiCardContainer != null) {
                        CDHoursCard.this.multiCardContainer.updateHeaderTitle(CDHoursCard.this.headerTitle);
                    }
                }
            });
        }
        if (set.contains(ContactField.photoUrl)) {
            this.userImageUrl = contactData.getPhotoUrl();
            this.presentersContainer.safeRunOnUIThread(new Runnable() { // from class: com.callapp.contacts.activity.analytics.cards.CDHoursCard.2
                @Override // java.lang.Runnable
                public void run() {
                    CDHoursCard.this.loadHeaderImage();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public CDHoursCardCardHolder onCreateViewHolder(ViewGroup viewGroup) {
        this.callDayNightTimeGraphFragment = (CallDayNightTimeGraphFragment) this.presentersContainer.findFragment(2131362213);
        CDHoursCardCardHolder cDHoursCardCardHolder = new CDHoursCardCardHolder(viewGroup);
        this.cdHoursCardCardHolder = cDHoursCardCardHolder;
        return cDHoursCardCardHolder;
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public void onMultiCardExpended(boolean z) {
        final int i = z ? 0 : 8;
        if (this.cdHoursCardCardHolder != null) {
            CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.activity.analytics.cards.CDHoursCard.3
                @Override // java.lang.Runnable
                public void run() {
                    u.a(CDHoursCard.this.cdHoursCardCardHolder.e, new Fade());
                    CDHoursCard.this.cdHoursCardCardHolder.f10701b.setVisibility(i);
                }
            });
        }
    }

    @Override // com.callapp.contacts.activity.analytics.cards.BaseHourdCard
    public void refreshCardData() {
        MultiCardContainer multiCardContainer;
        if (this.presentersContainer.getContainerMode() == PresentersContainer.MODE.CONTACT_DETAILS_SCREEN && (multiCardContainer = this.multiCardContainer) != null) {
            ContactDetailsInsightData contactDetailsInsightData = (ContactDetailsInsightData) multiCardContainer.getData();
            this.contactDetailsInsightData = contactDetailsInsightData;
            updateCardData(new HoursCallDataItem(contactDetailsInsightData.getIncomingDay(), contactDetailsInsightData.getIncomingNight(), contactDetailsInsightData.getOutgoingDay(), contactDetailsInsightData.getOutgoingNight(), contactDetailsInsightData.getTotalIncoming(), contactDetailsInsightData.getTotalOutgoing()), true);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void updateCardData(HoursCallDataItem hoursCallDataItem, boolean z) {
        this.dataCurrent = hoursCallDataItem;
        String a2 = Activities.a(2131888257, this.contactDetailsInsightData.getContactName());
        this.headerTitle = a2;
        this.multiCardContainer.updateHeaderTitle(a2);
        showCard(true);
    }
}
