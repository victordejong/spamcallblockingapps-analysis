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
import com.callapp.contacts.activity.analytics.cards.base.AnalyticsWrapperCard;
import com.callapp.contacts.activity.analytics.cards.myCallsCard.CDMyCallsCard;
import com.callapp.contacts.activity.analytics.circleGraph.data.MultiCircleGraphData;
import com.callapp.contacts.activity.analytics.circleGraph.fragment.CircleGraphFragment;
import com.callapp.contacts.activity.analytics.data.items.ContactDetailsInsightData;
import com.callapp.contacts.activity.contact.cards.MultiCardContainer;
import com.callapp.contacts.activity.contact.details.PresentersContainer;
import com.callapp.contacts.manager.UserProfileManager;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.model.contact.social.ContactFieldEnumSets;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.glide.GlideUtils;
import com.callapp.contacts.widget.ProfilePictureView;
import com.callapp.framework.util.StringUtils;
import java.util.List;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/cards/CDCommunityCard.class */
public class CDCommunityCard extends AnalyticsWrapperCard<CDCommunityCardHolder, ContactDetailsInsightData> {
    private CDCommunityCardHolder cdCommunityCardHolder;
    private ContactDetailsInsightData contactDetailsInsightData;
    private List<MultiCircleGraphData> graphData;
    private CircleGraphFragment graphFragment;
    private String headerTitle;
    private MultiCardContainer multiCardContainer;
    private int priority;
    private String userImageUrl = null;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder.class */
    public class CDCommunityCardHolder {

        /* renamed from: b  reason: collision with root package name */
        private ProfilePictureView f10692b;

        /* renamed from: c  reason: collision with root package name */
        private ProfilePictureView f10693c;

        /* renamed from: d  reason: collision with root package name */
        private FrameLayout f10694d;
        private LinearLayout e;
        private TextView f;
        private LinearLayout g;
        private TextView h;
        private TextView i;
        private TextView j;
        private TextView k;
        private TextView l;
        private TextView m;
        private TextView n;
        private TextView o;
        private TextView p;
        private TextView q;
        private TextView r;
        private TextView s;
        private TextView t;
        private TextView u;
        private FragmentContainerView v;
        private ImageView w;
        private LinearLayout x;
        private LinearLayout y;

        public CDCommunityCardHolder(View view) {
            LinearLayout linearLayout = (LinearLayout) view.findViewById(2131363705);
            this.e = linearLayout;
            this.f10693c = (ProfilePictureView) linearLayout.findViewById(2131364494);
            this.f10692b = (ProfilePictureView) this.e.findViewById(2131363802);
            this.f10694d = (FrameLayout) this.e.findViewById(2131362124);
            this.f = (TextView) this.e.findViewById(2131363229);
            LinearLayout linearLayout2 = (LinearLayout) this.e.findViewById(2131362647);
            this.g = linearLayout2;
            this.h = (TextView) linearLayout2.findViewById(2131362651);
            this.i = (TextView) this.g.findViewById(2131362650);
            this.j = (TextView) this.g.findViewById(2131362653);
            this.k = (TextView) this.g.findViewById(2131362652);
            this.l = (TextView) this.g.findViewById(2131362656);
            this.m = (TextView) this.g.findViewById(2131362655);
            this.n = (TextView) this.g.findViewById(2131362658);
            this.o = (TextView) this.g.findViewById(2131362657);
            this.p = (TextView) this.e.findViewById(2131363627);
            this.q = (TextView) this.e.findViewById(2131363624);
            this.r = (TextView) this.e.findViewById(2131363625);
            this.s = (TextView) this.e.findViewById(2131363626);
            this.t = (TextView) this.e.findViewById(2131364512);
            this.u = (TextView) this.e.findViewById(2131364507);
            this.v = (FragmentContainerView) this.e.findViewById(2131362915);
            this.w = (ImageView) this.e.findViewById(2131364175);
            this.x = (LinearLayout) this.e.findViewById(2131362125);
            this.y = (LinearLayout) this.e.findViewById(2131362122);
        }
    }

    public CDCommunityCard(MultiCardContainer multiCardContainer, int i) {
        super(multiCardContainer, 2131558546);
        this.multiCardContainer = multiCardContainer;
        this.priority = i;
    }

    /* JADX WARN: Type inference failed for: r0v50, types: [int, boolean] */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private com.callapp.contacts.activity.analytics.circleGraph.CircleGraphBuilder getNumberOfCallsProgressBarData(final com.callapp.contacts.activity.analytics.data.items.ContactDetailsInsightData r8) {
        /*
            Method dump skipped, instructions count: 647
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.activity.analytics.cards.CDCommunityCard.getNumberOfCallsProgressBarData(com.callapp.contacts.activity.analytics.data.items.ContactDetailsInsightData):com.callapp.contacts.activity.analytics.circleGraph.CircleGraphBuilder");
    }

    private void handleText() {
        CDMyCallsCard.handleDuration(this.contactDetailsInsightData.getLongestCall(), this.cdCommunityCardHolder.h, this.cdCommunityCardHolder.i, this.cdCommunityCardHolder.j, this.cdCommunityCardHolder.k, this.cdCommunityCardHolder.l, this.cdCommunityCardHolder.m, this.cdCommunityCardHolder.n, this.cdCommunityCardHolder.o);
        this.cdCommunityCardHolder.h.setTextColor(ThemeUtils.getColor(2131099724));
        this.cdCommunityCardHolder.i.setTextColor(ThemeUtils.getColor(2131099724));
        this.cdCommunityCardHolder.k.setTextColor(ThemeUtils.getColor(2131099724));
        this.cdCommunityCardHolder.j.setTextColor(ThemeUtils.getColor(2131099724));
        this.cdCommunityCardHolder.l.setTextColor(ThemeUtils.getColor(2131099724));
        this.cdCommunityCardHolder.m.setTextColor(ThemeUtils.getColor(2131099724));
        this.cdCommunityCardHolder.n.setTextColor(ThemeUtils.getColor(2131099724));
        this.cdCommunityCardHolder.o.setTextColor(ThemeUtils.getColor(2131099724));
        this.cdCommunityCardHolder.f.setText(Activities.getString(2131887126));
        this.cdCommunityCardHolder.f.setTextColor(ThemeUtils.getColor(2131100140));
        this.cdCommunityCardHolder.p.setText(Activities.getString(2131887490));
        this.cdCommunityCardHolder.p.setTextColor(ThemeUtils.getColor(2131100140));
        this.cdCommunityCardHolder.q.setText(String.valueOf(this.contactDetailsInsightData.getIncomingCalls() + this.contactDetailsInsightData.getOutgoingCalls()));
        this.cdCommunityCardHolder.r.setText(String.valueOf(this.contactDetailsInsightData.getMissedCalls() + this.contactDetailsInsightData.getNotAnsweredCalls()));
        this.cdCommunityCardHolder.q.setTextColor(ThemeUtils.getColor(2131099914));
        this.cdCommunityCardHolder.r.setTextColor(ThemeUtils.getColor(2131099675));
        this.cdCommunityCardHolder.s.setText(Activities.getString(2131888154));
        this.cdCommunityCardHolder.t.setText(Activities.getString(2131888144));
        this.cdCommunityCardHolder.t.setTextColor(ThemeUtils.getColor(2131100140));
        this.cdCommunityCardHolder.s.setTextColor(ThemeUtils.getColor(2131100140));
        this.cdCommunityCardHolder.u.setText(String.valueOf(this.contactDetailsInsightData.isHasVideo() ? 1 : 0));
        this.cdCommunityCardHolder.u.setTextColor(ThemeUtils.getColor(2131100212));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void loadHeaderImage() {
        if (this.cdCommunityCardHolder != null) {
            this.presentersContainer.safeRunOnUIThread(new Runnable() { // from class: com.callapp.contacts.activity.analytics.cards.CDCommunityCard.2
                @Override // java.lang.Runnable
                public void run() {
                    if (StringUtils.b((CharSequence) CDCommunityCard.this.userImageUrl)) {
                        ProfilePictureView profilePictureView = CDCommunityCard.this.cdCommunityCardHolder.f10693c;
                        GlideUtils.GlideRequestBuilder b2 = new GlideUtils.GlideRequestBuilder(CDCommunityCard.this.userImageUrl).b(CallAppApplication.get().getResources().getDimensionPixelOffset(2131165387), ThemeUtils.getColor(2131100140));
                        b2.l = true;
                        profilePictureView.a(b2);
                    } else {
                        CDCommunityCard.this.cdCommunityCardHolder.f10693c.setDefaultProfilePic();
                    }
                    String userProfileImageUrl = UserProfileManager.get().getUserProfileImageUrl();
                    if (StringUtils.b((CharSequence) userProfileImageUrl)) {
                        ProfilePictureView profilePictureView2 = CDCommunityCard.this.cdCommunityCardHolder.f10692b;
                        GlideUtils.GlideRequestBuilder glideRequestBuilder = new GlideUtils.GlideRequestBuilder(userProfileImageUrl);
                        glideRequestBuilder.l = true;
                        profilePictureView2.a(glideRequestBuilder);
                        return;
                    }
                    CDCommunityCard.this.cdCommunityCardHolder.f10692b.setDefaultProfilePic();
                }
            });
        }
    }

    private void refreshCardData() {
        MultiCardContainer multiCardContainer;
        if (this.presentersContainer.getContainerMode() == PresentersContainer.MODE.CONTACT_DETAILS_SCREEN && (multiCardContainer = this.multiCardContainer) != null) {
            ContactDetailsInsightData contactDetailsInsightData = (ContactDetailsInsightData) multiCardContainer.getData();
            this.contactDetailsInsightData = contactDetailsInsightData;
            updateCardData(contactDetailsInsightData, true);
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

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public String getHeaderTitle() {
        return null;
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public Set<ContactField> getListenFields() {
        return ContactFieldEnumSets.PHOTO_AND_NAME_FIELDS;
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public int getPriority() {
        return this.priority;
    }

    @Override // com.callapp.contacts.activity.analytics.data.UpdateAnalyticsCardEvent
    public void onAnalyticsRefreshCard(PresentersContainer.MODE mode) {
        refreshCardData();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onBindViewHolder(CDCommunityCardHolder cDCommunityCardHolder) {
        int i = this.multiCardContainer.isInExpandMode() ? 0 : 8;
        if (this.contactDetailsInsightData.isShowData()) {
            cDCommunityCardHolder.v.setVisibility(0);
            cDCommunityCardHolder.y.setVisibility(0);
            cDCommunityCardHolder.w.setVisibility(8);
            cDCommunityCardHolder.x.setVisibility(8);
            loadHeaderImage();
            handleText();
            cDCommunityCardHolder.f10694d.setVisibility(i);
            this.graphFragment.a(this.graphData);
            return;
        }
        cDCommunityCardHolder.v.setVisibility(8);
        cDCommunityCardHolder.y.setVisibility(8);
        cDCommunityCardHolder.w.setVisibility(0);
        cDCommunityCardHolder.x.setVisibility(0);
        TextView textView = (TextView) cDCommunityCardHolder.x.findViewById(2131364130);
        TextView textView2 = (TextView) cDCommunityCardHolder.x.findViewById(2131364011);
        textView.setText(Activities.getString(2131886545));
        textView2.setText(Activities.getString(2131886544));
        textView2.setTextColor(ThemeUtils.getColor(2131100140));
        textView.setTextColor(ThemeUtils.getColor(2131100140));
        cDCommunityCardHolder.f10694d.setVisibility(i);
    }

    @Override // com.callapp.contacts.model.contact.ContactDataChangeListener
    public void onContactChanged(ContactData contactData, Set<ContactField> set) {
        "CDCommunityCard onContactChange changedFields: ".concat(String.valueOf(set));
        CLog.a("liron");
        if (set.contains(ContactField.names) || set.contains(ContactField.fullName)) {
            this.headerTitle = Activities.a(2131888257, contactData.getNameOrNumber());
            this.presentersContainer.safeRunOnUIThread(new Runnable() { // from class: com.callapp.contacts.activity.analytics.cards.CDCommunityCard.4
                @Override // java.lang.Runnable
                public void run() {
                    if (CDCommunityCard.this.multiCardContainer != null) {
                        CDCommunityCard.this.multiCardContainer.updateHeaderTitle(CDCommunityCard.this.headerTitle);
                    }
                }
            });
        }
        if (set.contains(ContactField.photoUrl)) {
            this.userImageUrl = contactData.getPhotoUrl();
            this.presentersContainer.safeRunOnUIThread(new Runnable() { // from class: com.callapp.contacts.activity.analytics.cards.CDCommunityCard.5
                @Override // java.lang.Runnable
                public void run() {
                    CDCommunityCard.this.loadHeaderImage();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public CDCommunityCardHolder onCreateViewHolder(ViewGroup viewGroup) {
        this.cdCommunityCardHolder = new CDCommunityCardHolder(viewGroup);
        this.graphFragment = (CircleGraphFragment) this.presentersContainer.findFragment(2131362915);
        return this.cdCommunityCardHolder;
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public void onMultiCardExpended(boolean z) {
        final int i = z ? 0 : 8;
        if (this.cdCommunityCardHolder != null) {
            CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.activity.analytics.cards.CDCommunityCard.1
                @Override // java.lang.Runnable
                public void run() {
                    u.a(CDCommunityCard.this.cdCommunityCardHolder.e, new Fade());
                    CDCommunityCard.this.cdCommunityCardHolder.f10694d.setVisibility(i);
                }
            });
        }
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public boolean showShouldExpandButton() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void updateCardData(ContactDetailsInsightData contactDetailsInsightData, boolean z) {
        if (contactDetailsInsightData.isShowData()) {
            this.graphData = getNumberOfCallsProgressBarData(contactDetailsInsightData).getMultiCircleGraphData();
        }
        String a2 = Activities.a(2131888257, contactDetailsInsightData.getContactName());
        this.headerTitle = a2;
        this.multiCardContainer.updateHeaderTitle(a2);
        showCard(true);
    }
}
