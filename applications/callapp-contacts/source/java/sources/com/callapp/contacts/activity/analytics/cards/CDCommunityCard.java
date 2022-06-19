package com.callapp.contacts.activity.analytics.cards;

import android.content.Intent;
import android.graphics.PointF;
import android.os.Build;
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
import com.callapp.contacts.activity.analytics.cards.base.AnalyticsWrapperCard;
import com.callapp.contacts.activity.analytics.cards.myCallsCard.CDMyCallsCard;
import com.callapp.contacts.activity.analytics.circleGraph.CircleGraphBuilder;
import com.callapp.contacts.activity.analytics.circleGraph.CircleGraphEvents;
import com.callapp.contacts.activity.analytics.circleGraph.data.CircleGraphData;
import com.callapp.contacts.activity.analytics.circleGraph.data.MultiCircleGraphData;
import com.callapp.contacts.activity.analytics.circleGraph.fragment.CircleGraphFragment;
import com.callapp.contacts.activity.analytics.data.items.ContactDetailsInsightData;
import com.callapp.contacts.activity.contact.cards.MultiCardContainer;
import com.callapp.contacts.activity.contact.details.PresentersContainer;
import com.callapp.contacts.activity.marketplace.PersonalCallScreenThemeDownloaderActivity;
import com.callapp.contacts.activity.marketplace.PersonalStoreItemHelper;
import com.callapp.contacts.manager.UserProfileManager;
import com.callapp.contacts.manager.popup.PopupManager;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.model.contact.social.ContactFieldEnumSets;
import com.callapp.contacts.model.objectbox.PersonalStoreItemUrlData;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.glide.GlideUtils;
import com.callapp.contacts.widget.ProfilePictureView;
import com.callapp.framework.util.StringUtils;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
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

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/cards/CDCommunityCard$CDCommunityCardHolder.class */
    public class CDCommunityCardHolder {

        /* renamed from: b */
        private ProfilePictureView f19467b;

        /* renamed from: c */
        private ProfilePictureView f19468c;

        /* renamed from: d */
        private FrameLayout f19469d;

        /* renamed from: e */
        private LinearLayout f19470e;

        /* renamed from: f */
        private TextView f19471f;

        /* renamed from: g */
        private LinearLayout f19472g;

        /* renamed from: h */
        private TextView f19473h;

        /* renamed from: i */
        private TextView f19474i;

        /* renamed from: j */
        private TextView f19475j;

        /* renamed from: k */
        private TextView f19476k;

        /* renamed from: l */
        private TextView f19477l;

        /* renamed from: m */
        private TextView f19478m;

        /* renamed from: n */
        private TextView f19479n;

        /* renamed from: o */
        private TextView f19480o;

        /* renamed from: p */
        private TextView f19481p;

        /* renamed from: q */
        private TextView f19482q;

        /* renamed from: r */
        private TextView f19483r;

        /* renamed from: s */
        private TextView f19484s;

        /* renamed from: t */
        private TextView f19485t;

        /* renamed from: u */
        private TextView f19486u;

        /* renamed from: v */
        private FragmentContainerView f19487v;

        /* renamed from: w */
        private ImageView f19488w;

        /* renamed from: x */
        private LinearLayout f19489x;

        /* renamed from: y */
        private LinearLayout f19490y;

        public CDCommunityCardHolder(View view) {
            CDCommunityCard.this = r5;
            LinearLayout linearLayout = (LinearLayout) view.findViewById(2131363705);
            this.f19470e = linearLayout;
            this.f19468c = (ProfilePictureView) linearLayout.findViewById(2131364494);
            this.f19467b = (ProfilePictureView) this.f19470e.findViewById(2131363802);
            this.f19469d = (FrameLayout) this.f19470e.findViewById(2131362124);
            this.f19471f = (TextView) this.f19470e.findViewById(2131363229);
            LinearLayout linearLayout2 = (LinearLayout) this.f19470e.findViewById(2131362647);
            this.f19472g = linearLayout2;
            this.f19473h = (TextView) linearLayout2.findViewById(2131362651);
            this.f19474i = (TextView) this.f19472g.findViewById(2131362650);
            this.f19475j = (TextView) this.f19472g.findViewById(2131362653);
            this.f19476k = (TextView) this.f19472g.findViewById(2131362652);
            this.f19477l = (TextView) this.f19472g.findViewById(2131362656);
            this.f19478m = (TextView) this.f19472g.findViewById(2131362655);
            this.f19479n = (TextView) this.f19472g.findViewById(2131362658);
            this.f19480o = (TextView) this.f19472g.findViewById(2131362657);
            this.f19481p = (TextView) this.f19470e.findViewById(2131363627);
            this.f19482q = (TextView) this.f19470e.findViewById(2131363624);
            this.f19483r = (TextView) this.f19470e.findViewById(2131363625);
            this.f19484s = (TextView) this.f19470e.findViewById(2131363626);
            this.f19485t = (TextView) this.f19470e.findViewById(2131364512);
            this.f19486u = (TextView) this.f19470e.findViewById(2131364507);
            this.f19487v = (FragmentContainerView) this.f19470e.findViewById(2131362915);
            this.f19488w = (ImageView) this.f19470e.findViewById(2131364175);
            this.f19489x = (LinearLayout) this.f19470e.findViewById(2131362125);
            this.f19490y = (LinearLayout) this.f19470e.findViewById(2131362122);
        }
    }

    public CDCommunityCard(MultiCardContainer multiCardContainer, int i) {
        super(multiCardContainer, 2131558546);
        this.multiCardContainer = multiCardContainer;
        this.priority = i;
    }

    /* JADX WARN: Type inference failed for: r0v50, types: [boolean, int] */
    private CircleGraphBuilder getNumberOfCallsProgressBarData(final ContactDetailsInsightData contactDetailsInsightData) {
        int missedCalls = contactDetailsInsightData.getMissedCalls() + contactDetailsInsightData.getIncomingCalls() + contactDetailsInsightData.getNotAnsweredCalls() + contactDetailsInsightData.getOutgoingCalls();
        CircleGraphData circleGraphData = new CircleGraphData(ThemeUtils.getColor(2131099920), 15.0f);
        circleGraphData.setInitialRange(100.0f);
        CircleGraphData circleGraphData2 = new CircleGraphData(ThemeUtils.getColor(2131099675), 15.0f);
        circleGraphData2.setTargetRange(contactDetailsInsightData.getMissedCalls() + contactDetailsInsightData.getNotAnsweredCalls());
        float f = missedCalls;
        circleGraphData2.setMaxRange(f);
        CircleGraphData circleGraphData3 = new CircleGraphData(ThemeUtils.getColor(2131099914), 15.0f);
        circleGraphData3.setTargetRange(contactDetailsInsightData.getIncomingCalls() + contactDetailsInsightData.getOutgoingCalls());
        circleGraphData3.setSpinClockwise(false);
        circleGraphData3.setMaxRange(f);
        ArrayList arrayList = new ArrayList();
        arrayList.add(circleGraphData);
        if (contactDetailsInsightData.getMissedCalls() > 0) {
            arrayList.add(circleGraphData2);
        }
        if (contactDetailsInsightData.getIncomingCalls() > 0) {
            arrayList.add(circleGraphData3);
        }
        MultiCircleGraphData multiCircleGraphData = new MultiCircleGraphData(arrayList);
        multiCircleGraphData.setCenterTextColor(Integer.valueOf(ThemeUtils.getColor(2131100228)));
        multiCircleGraphData.setCircleGraphBackground(Integer.valueOf(ThemeUtils.getColor(2131099935)));
        multiCircleGraphData.setResourceTextToUpdate(2131362356);
        multiCircleGraphData.setCenterTextSize(Float.valueOf(CallAppApplication.get().getResources().getDimension(2131165583)));
        multiCircleGraphData.setCenterText(String.valueOf(missedCalls));
        multiCircleGraphData.setCircleGraphImage(0);
        multiCircleGraphData.setEvents(null);
        CircleGraphData circleGraphData4 = new CircleGraphData(ThemeUtils.getColor(2131100228), 6.0f);
        circleGraphData.setInitialRange(100.0f);
        CircleGraphData circleGraphData5 = new CircleGraphData(ThemeUtils.getColor(2131100228), 15.0f);
        circleGraphData5.setMaxRange(contactDetailsInsightData.getTotalDuration());
        circleGraphData5.setTargetRange(contactDetailsInsightData.getLongestCall());
        circleGraphData5.setUpdateProgress(true);
        circleGraphData5.setInset(new PointF(20.0f, 20.0f));
        MultiCircleGraphData multiCircleGraphData2 = contactDetailsInsightData.getTotalDuration() > BitmapDescriptorFactory.HUE_RED ? new MultiCircleGraphData(Arrays.asList(circleGraphData4, circleGraphData5)) : new MultiCircleGraphData(Collections.singletonList(circleGraphData4));
        multiCircleGraphData2.setCircleGraphBackground(Integer.valueOf(ThemeUtils.getColor(2131099724)));
        multiCircleGraphData2.setCircleGraphProgressValue((int) contactDetailsInsightData.getLongestCall());
        multiCircleGraphData2.setCircleGraphImage(2131231827);
        multiCircleGraphData2.setCircleGraphBackgroundRadius(Float.valueOf(getContext().getResources().getDimension(2131165695)));
        CircleGraphData circleGraphData6 = new CircleGraphData(ThemeUtils.getColor(2131100212), 4.0f);
        circleGraphData6.setInitialRange(100.0f);
        CircleGraphData circleGraphData7 = new CircleGraphData(ThemeUtils.getColor(2131100212), 15.0f);
        circleGraphData7.setMaxRange(4.0f);
        ?? isHasVideo = contactDetailsInsightData.isHasVideo();
        circleGraphData7.setTargetRange(isHasVideo == true ? 1.0f : 0.0f);
        circleGraphData7.setUpdateProgress(true);
        circleGraphData7.setInset(new PointF(20.0f, 20.0f));
        MultiCircleGraphData multiCircleGraphData3 = new MultiCircleGraphData(isHasVideo > 0 ? Arrays.asList(circleGraphData7, circleGraphData6) : Arrays.asList(circleGraphData6));
        multiCircleGraphData3.setCircleGraphProgressValue(isHasVideo);
        multiCircleGraphData3.setCircleGraphImage(2131231832);
        multiCircleGraphData3.setCircleGraphBackgroundRadius(Float.valueOf(getContext().getResources().getDimension(2131165695)));
        multiCircleGraphData3.setEvents(new CircleGraphEvents() { // from class: com.callapp.contacts.activity.analytics.cards.CDCommunityCard.3
            @Override // com.callapp.contacts.activity.analytics.circleGraph.CircleGraphEvents
            /* renamed from: a */
            public final void mo31638a() {
                if (Build.VERSION.SDK_INT >= 23) {
                    if (!contactDetailsInsightData.isHasVideo()) {
                        PopupManager.get().m28209a(CDCommunityCard.this.presentersContainer.getRealContext(), new GetPVRDialog(CDCommunityCard.this.presentersContainer, CDCommunityCard.this.contactDetailsInsightData.getContactId()));
                        return;
                    }
                    PersonalCallScreenThemeDownloaderActivity.Companion companion = PersonalCallScreenThemeDownloaderActivity.f23464n;
                    Intent m30054a = PersonalCallScreenThemeDownloaderActivity.Companion.m30054a(CDCommunityCard.this.presentersContainer.getRealContext(), PersonalStoreItemHelper.m30047a(PersonalStoreItemUrlData.PersonalStoreItemType.VIDEO_RINGTONE));
                    m30054a.putExtra("EXTRA_CONTACT_ID", CDCommunityCard.this.contactDetailsInsightData.getContactId());
                    CDCommunityCard.this.presentersContainer.getRealContext().startActivity(m30054a);
                }
            }
        });
        return new CircleGraphBuilder.Builder().m31639a(multiCircleGraphData2).m31639a(multiCircleGraphData).m31639a(multiCircleGraphData3).m31640a();
    }

    private void handleText() {
        CDMyCallsCard.handleDuration(this.contactDetailsInsightData.getLongestCall(), this.cdCommunityCardHolder.f19473h, this.cdCommunityCardHolder.f19474i, this.cdCommunityCardHolder.f19475j, this.cdCommunityCardHolder.f19476k, this.cdCommunityCardHolder.f19477l, this.cdCommunityCardHolder.f19478m, this.cdCommunityCardHolder.f19479n, this.cdCommunityCardHolder.f19480o);
        this.cdCommunityCardHolder.f19473h.setTextColor(ThemeUtils.getColor(2131099724));
        this.cdCommunityCardHolder.f19474i.setTextColor(ThemeUtils.getColor(2131099724));
        this.cdCommunityCardHolder.f19476k.setTextColor(ThemeUtils.getColor(2131099724));
        this.cdCommunityCardHolder.f19475j.setTextColor(ThemeUtils.getColor(2131099724));
        this.cdCommunityCardHolder.f19477l.setTextColor(ThemeUtils.getColor(2131099724));
        this.cdCommunityCardHolder.f19478m.setTextColor(ThemeUtils.getColor(2131099724));
        this.cdCommunityCardHolder.f19479n.setTextColor(ThemeUtils.getColor(2131099724));
        this.cdCommunityCardHolder.f19480o.setTextColor(ThemeUtils.getColor(2131099724));
        this.cdCommunityCardHolder.f19471f.setText(Activities.getString(2131887126));
        this.cdCommunityCardHolder.f19471f.setTextColor(ThemeUtils.getColor(2131100140));
        this.cdCommunityCardHolder.f19481p.setText(Activities.getString(2131887490));
        this.cdCommunityCardHolder.f19481p.setTextColor(ThemeUtils.getColor(2131100140));
        this.cdCommunityCardHolder.f19482q.setText(String.valueOf(this.contactDetailsInsightData.getIncomingCalls() + this.contactDetailsInsightData.getOutgoingCalls()));
        this.cdCommunityCardHolder.f19483r.setText(String.valueOf(this.contactDetailsInsightData.getMissedCalls() + this.contactDetailsInsightData.getNotAnsweredCalls()));
        this.cdCommunityCardHolder.f19482q.setTextColor(ThemeUtils.getColor(2131099914));
        this.cdCommunityCardHolder.f19483r.setTextColor(ThemeUtils.getColor(2131099675));
        this.cdCommunityCardHolder.f19484s.setText(Activities.getString(2131888154));
        this.cdCommunityCardHolder.f19485t.setText(Activities.getString(2131888144));
        this.cdCommunityCardHolder.f19485t.setTextColor(ThemeUtils.getColor(2131100140));
        this.cdCommunityCardHolder.f19484s.setTextColor(ThemeUtils.getColor(2131100140));
        this.cdCommunityCardHolder.f19486u.setText(String.valueOf(this.contactDetailsInsightData.isHasVideo() ? 1 : 0));
        this.cdCommunityCardHolder.f19486u.setTextColor(ThemeUtils.getColor(2131100212));
    }

    public void loadHeaderImage() {
        if (this.cdCommunityCardHolder != null) {
            this.presentersContainer.safeRunOnUIThread(new Runnable() { // from class: com.callapp.contacts.activity.analytics.cards.CDCommunityCard.2
                @Override // java.lang.Runnable
                public void run() {
                    if (StringUtils.m26045b((CharSequence) CDCommunityCard.this.userImageUrl)) {
                        ProfilePictureView profilePictureView = CDCommunityCard.this.cdCommunityCardHolder.f19468c;
                        GlideUtils.GlideRequestBuilder m27018b = new GlideUtils.GlideRequestBuilder(CDCommunityCard.this.userImageUrl).m27018b(CallAppApplication.get().getResources().getDimensionPixelOffset(2131165387), ThemeUtils.getColor(2131100140));
                        m27018b.f28246l = true;
                        profilePictureView.m26684a(m27018b);
                    } else {
                        CDCommunityCard.this.cdCommunityCardHolder.f19468c.setDefaultProfilePic();
                    }
                    String userProfileImageUrl = UserProfileManager.get().getUserProfileImageUrl();
                    if (!StringUtils.m26045b((CharSequence) userProfileImageUrl)) {
                        CDCommunityCard.this.cdCommunityCardHolder.f19467b.setDefaultProfilePic();
                        return;
                    }
                    ProfilePictureView profilePictureView2 = CDCommunityCard.this.cdCommunityCardHolder.f19467b;
                    GlideUtils.GlideRequestBuilder glideRequestBuilder = new GlideUtils.GlideRequestBuilder(userProfileImageUrl);
                    glideRequestBuilder.f28246l = true;
                    profilePictureView2.m26684a(glideRequestBuilder);
                }
            });
        }
    }

    private void refreshCardData() {
        MultiCardContainer multiCardContainer;
        if (this.presentersContainer.getContainerMode() != PresentersContainer.MODE.CONTACT_DETAILS_SCREEN || (multiCardContainer = this.multiCardContainer) == null) {
            return;
        }
        ContactDetailsInsightData contactDetailsInsightData = (ContactDetailsInsightData) multiCardContainer.getData();
        this.contactDetailsInsightData = contactDetailsInsightData;
        updateCardData(contactDetailsInsightData, true);
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public int getCardBgColor() {
        return this.multiCardContainer.isInExpandMode() ? ThemeUtils.m27386a(CallAppApplication.get(), 2131099686) : ThemeUtils.m27386a(CallAppApplication.get(), 2131099780);
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public int getHeaderBackgroundColor() {
        return this.multiCardContainer.isInExpandMode() ? ThemeUtils.m27386a(CallAppApplication.get(), 2131099686) : ThemeUtils.m27386a(CallAppApplication.get(), 2131099780);
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

    public void onBindViewHolder(CDCommunityCardHolder cDCommunityCardHolder) {
        int i = this.multiCardContainer.isInExpandMode() ? 0 : 8;
        if (this.contactDetailsInsightData.isShowData()) {
            cDCommunityCardHolder.f19487v.setVisibility(0);
            cDCommunityCardHolder.f19490y.setVisibility(0);
            cDCommunityCardHolder.f19488w.setVisibility(8);
            cDCommunityCardHolder.f19489x.setVisibility(8);
            loadHeaderImage();
            handleText();
            cDCommunityCardHolder.f19469d.setVisibility(i);
            this.graphFragment.m31636a(this.graphData);
            return;
        }
        cDCommunityCardHolder.f19487v.setVisibility(8);
        cDCommunityCardHolder.f19490y.setVisibility(8);
        cDCommunityCardHolder.f19488w.setVisibility(0);
        cDCommunityCardHolder.f19489x.setVisibility(0);
        TextView textView = (TextView) cDCommunityCardHolder.f19489x.findViewById(2131364130);
        TextView textView2 = (TextView) cDCommunityCardHolder.f19489x.findViewById(2131364011);
        textView.setText(Activities.getString(2131886545));
        textView2.setText(Activities.getString(2131886544));
        textView2.setTextColor(ThemeUtils.getColor(2131100140));
        textView.setTextColor(ThemeUtils.getColor(2131100140));
        cDCommunityCardHolder.f19469d.setVisibility(i);
    }

    @Override // com.callapp.contacts.model.contact.ContactDataChangeListener
    public void onContactChanged(ContactData contactData, Set<ContactField> set) {
        "CDCommunityCard onContactChange changedFields: ".concat(String.valueOf(set));
        CLog.m27606a("liron");
        if (set.contains(ContactField.names) || set.contains(ContactField.fullName)) {
            this.headerTitle = Activities.m27697a(2131888257, contactData.getNameOrNumber());
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

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public CDCommunityCardHolder onCreateViewHolder(ViewGroup viewGroup) {
        this.cdCommunityCardHolder = new CDCommunityCardHolder(viewGroup);
        this.graphFragment = (CircleGraphFragment) this.presentersContainer.findFragment(2131362915);
        return this.cdCommunityCardHolder;
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public void onMultiCardExpended(boolean z) {
        int i = z ? 0 : 8;
        if (this.cdCommunityCardHolder != null) {
            final int i2 = i;
            CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.activity.analytics.cards.CDCommunityCard.1
                @Override // java.lang.Runnable
                public void run() {
                    C2908u.m39680a(CDCommunityCard.this.cdCommunityCardHolder.f19470e, new Fade());
                    CDCommunityCard.this.cdCommunityCardHolder.f19469d.setVisibility(i2);
                }
            });
        }
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public boolean showShouldExpandButton() {
        return false;
    }

    public void updateCardData(ContactDetailsInsightData contactDetailsInsightData, boolean z) {
        if (contactDetailsInsightData.isShowData()) {
            this.graphData = getNumberOfCallsProgressBarData(contactDetailsInsightData).getMultiCircleGraphData();
        }
        String m27697a = Activities.m27697a(2131888257, contactDetailsInsightData.getContactName());
        this.headerTitle = m27697a;
        this.multiCardContainer.updateHeaderTitle(m27697a);
        showCard(true);
    }
}
