package com.callapp.contacts.activity.analytics.cards;

import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.fragment.app.FragmentContainerView;
import androidx.transition.C2908u;
import androidx.transition.Fade;
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

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/cards/CDHoursCard$CDHoursCardCardHolder.class */
    public class CDHoursCardCardHolder {

        /* renamed from: b */
        private final FrameLayout f19497b;

        /* renamed from: c */
        private final TextView f19498c;

        /* renamed from: d */
        private final TextView f19499d;

        /* renamed from: e */
        private LinearLayout f19500e;

        /* renamed from: f */
        private FragmentContainerView f19501f;

        /* renamed from: g */
        private ImageView f19502g;

        /* renamed from: h */
        private LinearLayout f19503h;

        /* renamed from: i */
        private LinearLayout f19504i;

        /* renamed from: j */
        private ProfilePictureView f19505j;

        public CDHoursCardCardHolder(View view) {
            CDHoursCard.this = r5;
            this.f19497b = (FrameLayout) view.findViewById(2131362124);
            this.f19498c = (TextView) view.findViewById(2131364121);
            this.f19499d = (TextView) view.findViewById(2131364120);
            LinearLayout linearLayout = (LinearLayout) view.findViewById(2131363705);
            this.f19500e = linearLayout;
            this.f19501f = (FragmentContainerView) linearLayout.findViewById(2131362213);
            this.f19502g = (ImageView) this.f19500e.findViewById(2131364175);
            this.f19503h = (LinearLayout) this.f19500e.findViewById(2131362125);
            this.f19504i = (LinearLayout) this.f19500e.findViewById(2131362122);
            this.f19505j = (ProfilePictureView) this.f19500e.findViewById(2131364494);
        }
    }

    public CDHoursCard(MultiCardContainer multiCardContainer, int i) {
        super(multiCardContainer, 2131558547);
        this.multiCardContainer = multiCardContainer;
        this.priority = i;
    }

    public void loadHeaderImage() {
        if (this.cdHoursCardCardHolder != null) {
            this.presentersContainer.safeRunOnUIThread(new Runnable() { // from class: com.callapp.contacts.activity.analytics.cards.CDHoursCard.4
                @Override // java.lang.Runnable
                public void run() {
                    if (!StringUtils.m26045b((CharSequence) CDHoursCard.this.userImageUrl)) {
                        CDHoursCard.this.cdHoursCardCardHolder.f19505j.setDefaultProfilePic();
                        return;
                    }
                    ProfilePictureView profilePictureView = CDHoursCard.this.cdHoursCardCardHolder.f19505j;
                    GlideUtils.GlideRequestBuilder glideRequestBuilder = new GlideUtils.GlideRequestBuilder(CDHoursCard.this.userImageUrl);
                    glideRequestBuilder.f28246l = true;
                    profilePictureView.m26684a(glideRequestBuilder);
                }
            });
        }
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public int getCardBgColor() {
        return this.multiCardContainer.isInExpandMode() ? ThemeUtils.m27386a(CallAppApplication.get(), 2131099686) : ThemeUtils.m27386a(CallAppApplication.get(), 2131099780);
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public int getHeaderBackgroundColor() {
        return this.multiCardContainer.isInExpandMode() ? ThemeUtils.m27386a(CallAppApplication.get(), 2131099686) : ThemeUtils.m27386a(CallAppApplication.get(), 2131099780);
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

    public void onBindViewHolder(CDHoursCardCardHolder cDHoursCardCardHolder) {
        int i = this.multiCardContainer.isInExpandMode() ? 0 : 8;
        if (this.contactDetailsInsightData.isShowData()) {
            cDHoursCardCardHolder.f19501f.setVisibility(0);
            cDHoursCardCardHolder.f19504i.setVisibility(0);
            cDHoursCardCardHolder.f19502g.setVisibility(8);
            cDHoursCardCardHolder.f19503h.setVisibility(8);
            this.callDayNightTimeGraphFragment.setHeaderVisibility(8);
            cDHoursCardCardHolder.f19497b.setVisibility(i);
            cDHoursCardCardHolder.f19498c.setText(Activities.getString(2131886316));
            cDHoursCardCardHolder.f19498c.setTextColor(ThemeUtils.getColor(2131100140));
            cDHoursCardCardHolder.f19499d.setText(this.contactDetailsInsightData.getTimeSlotData());
            loadHeaderImage();
            animateGraph();
            return;
        }
        cDHoursCardCardHolder.f19501f.setVisibility(8);
        cDHoursCardCardHolder.f19504i.setVisibility(8);
        cDHoursCardCardHolder.f19502g.setVisibility(0);
        cDHoursCardCardHolder.f19503h.setVisibility(0);
        TextView textView = (TextView) cDHoursCardCardHolder.f19503h.findViewById(2131364130);
        TextView textView2 = (TextView) cDHoursCardCardHolder.f19503h.findViewById(2131364011);
        textView.setText(Activities.getString(2131886545));
        textView2.setText(Activities.getString(2131886544));
        textView2.setTextColor(ThemeUtils.getColor(2131100140));
        textView.setTextColor(ThemeUtils.getColor(2131100140));
        cDHoursCardCardHolder.f19497b.setVisibility(i);
    }

    @Override // com.callapp.contacts.activity.analytics.cards.BaseHourdCard, com.callapp.contacts.model.contact.ContactDataChangeListener
    public void onContactChanged(ContactData contactData, Set<ContactField> set) {
        if (set.contains(ContactField.names) || set.contains(ContactField.fullName)) {
            this.headerTitle = Activities.m27697a(2131888257, contactData.getNameOrNumber());
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

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public CDHoursCardCardHolder onCreateViewHolder(ViewGroup viewGroup) {
        this.callDayNightTimeGraphFragment = (CallDayNightTimeGraphFragment) this.presentersContainer.findFragment(2131362213);
        CDHoursCardCardHolder cDHoursCardCardHolder = new CDHoursCardCardHolder(viewGroup);
        this.cdHoursCardCardHolder = cDHoursCardCardHolder;
        return cDHoursCardCardHolder;
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public void onMultiCardExpended(boolean z) {
        int i = z ? 0 : 8;
        if (this.cdHoursCardCardHolder != null) {
            final int i2 = i;
            CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.activity.analytics.cards.CDHoursCard.3
                @Override // java.lang.Runnable
                public void run() {
                    C2908u.m39680a(CDHoursCard.this.cdHoursCardCardHolder.f19500e, new Fade());
                    CDHoursCard.this.cdHoursCardCardHolder.f19497b.setVisibility(i2);
                }
            });
        }
    }

    @Override // com.callapp.contacts.activity.analytics.cards.BaseHourdCard
    public void refreshCardData() {
        MultiCardContainer multiCardContainer;
        if (this.presentersContainer.getContainerMode() != PresentersContainer.MODE.CONTACT_DETAILS_SCREEN || (multiCardContainer = this.multiCardContainer) == null) {
            return;
        }
        ContactDetailsInsightData contactDetailsInsightData = (ContactDetailsInsightData) multiCardContainer.getData();
        this.contactDetailsInsightData = contactDetailsInsightData;
        updateCardData(new HoursCallDataItem(contactDetailsInsightData.getIncomingDay(), contactDetailsInsightData.getIncomingNight(), contactDetailsInsightData.getOutgoingDay(), contactDetailsInsightData.getOutgoingNight(), contactDetailsInsightData.getTotalIncoming(), contactDetailsInsightData.getTotalOutgoing()), true);
    }

    public void updateCardData(HoursCallDataItem hoursCallDataItem, boolean z) {
        this.dataCurrent = hoursCallDataItem;
        String m27697a = Activities.m27697a(2131888257, this.contactDetailsInsightData.getContactName());
        this.headerTitle = m27697a;
        this.multiCardContainer.updateHeaderTitle(m27697a);
        showCard(true);
    }
}
