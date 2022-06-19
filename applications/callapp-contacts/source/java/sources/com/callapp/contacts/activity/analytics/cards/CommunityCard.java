package com.callapp.contacts.activity.analytics.cards;

import android.app.Activity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.akexorcist.roundcornerprogressbar.RoundCornerProgressBar;
import com.callapp.common.authenticators.config.AuthenticatorsConfiguration;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.analytics.cards.CommunityCardDialog;
import com.callapp.contacts.activity.analytics.cards.InsightsPremuimDialog;
import com.callapp.contacts.activity.analytics.cards.base.AnalyticsWrapperCard;
import com.callapp.contacts.activity.analytics.data.AnalyticsDataManager;
import com.callapp.contacts.activity.analytics.data.items.CommunityCardItem;
import com.callapp.contacts.activity.analytics.p236ui.InsightActivity;
import com.callapp.contacts.activity.contact.details.PresentersContainer;
import com.callapp.contacts.manager.PhoneVerifierManager;
import com.callapp.contacts.manager.UserProfileManager;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.popup.PopupManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.ViewUtils;
import com.callapp.contacts.util.glide.GlideUtils;
import com.callapp.contacts.util.servermessage.RegisterClientUtils;
import com.callapp.contacts.widget.ProfilePictureView;
import com.callapp.framework.phone.Phone;
import com.callapp.framework.util.StringUtils;
import com.mopub.mobileads.InlineVisibilityTracker;
import java.util.EnumSet;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/cards/CommunityCard.class */
public class CommunityCard extends AnalyticsWrapperCard<CommunityCardHolder, CommunityCardItem> implements CommunityCardDialog.UserClickOnConfirmPhone {
    public static int ADVANCED = 35;
    public static int MASTER = 70;
    private TextView advanced;
    private TextView beginner;
    private InlineVisibilityTracker communitiyVisibilityTracker;
    private CommunityCardItem communityCardDate;
    private CommunityCardHolder communityCardHolder;
    private ContactData contact;
    public CommunityContributionLevel level;
    private TextView master;
    private PresentersContainer.MODE mode;
    private PresentersContainer presentersContainer;
    private int totalContribution;
    private String userImageUrl = null;
    private int ADVANCED_DIALOG = 34;
    private int MASTER_DIALOG = 69;
    private boolean shouldShowAnimation = false;
    private boolean alreadyBounded = false;
    private PhoneVerifierManager.PhoneVerifierCallback phoneAuthCallBack = new PhoneVerifierManager.PhoneVerifierCallback() { // from class: com.callapp.contacts.activity.analytics.cards.CommunityCard.1
        @Override // com.callapp.contacts.manager.PhoneVerifierManager.PhoneVerifierCallback
        /* renamed from: a */
        public final void mo26376a(Phone phone, String str, AuthenticatorsConfiguration.AUTHENTICATORS_TYPES authenticators_types) {
            AnalyticsManager.get().m28450a(Constants.REGISTRATION, "Login successful Phone Number");
            RegisterClientUtils.m26907a(str, authenticators_types);
            CommunityCard.this.refreshCardData();
        }
    };

    /* renamed from: com.callapp.contacts.activity.analytics.cards.CommunityCard$5 */
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/cards/CommunityCard$5.class */
    public static /* synthetic */ class C57095 {

        /* renamed from: a */
        static final /* synthetic */ int[] f19523a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[CommunityContributionLevel.values().length];
            f19523a = iArr;
            try {
                iArr[CommunityContributionLevel.BEGINNER.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f19523a[CommunityContributionLevel.ADVANCED.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f19523a[CommunityContributionLevel.MASTER.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityCardHolder.class */
    public class CommunityCardHolder {

        /* renamed from: a */
        LinearLayout f19524a;

        /* renamed from: c */
        private final TextView f19526c;

        /* renamed from: d */
        private final TextView f19527d;

        /* renamed from: e */
        private final TextView f19528e;

        /* renamed from: f */
        private final TextView f19529f;

        /* renamed from: g */
        private final TextView f19530g;

        /* renamed from: h */
        private final TextView f19531h;

        /* renamed from: i */
        private final TextView f19532i;

        /* renamed from: j */
        private final TextView f19533j;

        /* renamed from: k */
        private final TextView f19534k;

        /* renamed from: l */
        private final TextView f19535l;

        /* renamed from: m */
        private final TextView f19536m;

        /* renamed from: n */
        private final TextView f19537n;

        /* renamed from: o */
        private final RoundCornerProgressBar f19538o;

        /* renamed from: p */
        private TextView f19539p;

        /* renamed from: q */
        private ProfilePictureView f19540q;

        public CommunityCardHolder(View view) {
            CommunityCard.this = r5;
            this.f19524a = (LinearLayout) view.findViewById(2131362394);
            this.f19526c = (TextView) view.findViewById(2131364141);
            this.f19527d = (TextView) view.findViewById(2131364015);
            this.f19528e = (TextView) view.findViewById(2131363939);
            this.f19529f = (TextView) view.findViewById(2131364023);
            this.f19530g = (TextView) view.findViewById(2131363573);
            this.f19531h = (TextView) view.findViewById(2131364019);
            this.f19533j = (TextView) view.findViewById(2131362460);
            this.f19532i = (TextView) view.findViewById(2131363572);
            this.f19534k = (TextView) view.findViewById(2131363936);
            this.f19540q = (ProfilePictureView) view.findViewById(2131364494);
            this.f19535l = (TextView) view.findViewById(2131362086);
            this.f19536m = (TextView) view.findViewById(2131361993);
            this.f19537n = (TextView) view.findViewById(2131363238);
            RoundCornerProgressBar roundCornerProgressBar = (RoundCornerProgressBar) view.findViewById(2131362392);
            this.f19538o = roundCornerProgressBar;
            roundCornerProgressBar.setProgressBackgroundColor(ThemeUtils.getColor(2131099920));
            this.f19539p = (TextView) view.findViewById(2131364497);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/cards/CommunityCard$CommunityContributionLevel.class */
    public enum CommunityContributionLevel {
        INIT,
        BEGINNER,
        ADVANCED,
        MASTER
    }

    public CommunityCard(PresentersContainer presentersContainer) {
        super(presentersContainer, 2131558489);
        this.presentersContainer = presentersContainer;
        PhoneVerifierManager.get().f25760a = this.phoneAuthCallBack;
    }

    public void handleGraph(CommunityContributionLevel communityContributionLevel, ContactData contactData, int i) {
        if (contactData != null) {
            int i2 = communityContributionLevel.equals(CommunityContributionLevel.ADVANCED) ? 2131231659 : 2131231941;
            updateGraphData(communityContributionLevel);
            float f = 10.0f;
            if (i < ADVANCED) {
                if (i >= 10 || i <= 0) {
                    f = i;
                }
                this.communityCardHolder.f19538o.setProgress(f);
                if (i != this.ADVANCED_DIALOG) {
                    return;
                }
                showPopUpBelowGraph(InsightsPremuimDialog.InsightsPremuimDialogType.ADVANCED);
            } else if (!contactData.getPhone().equals(UserProfileManager.get().getUserVerifiedPhone())) {
                showPopUpBelowGraph(InsightsPremuimDialog.InsightsPremuimDialogType.CONFIRM);
            } else {
                int i3 = MASTER;
                if (i <= i3) {
                    i3 = i;
                }
                this.communityCardHolder.f19538o.setProgress(i3);
                this.communityCardHolder.f19540q.m26685a(ViewUtils.getDrawable(i2)).m26678c((int) Activities.m27699a(10.0f)).m26680b((int) Activities.m27699a(20.0f)).m26677d(0).setBadgeBorderWidth(2);
                if (i == this.MASTER_DIALOG) {
                    showPopUpBelowGraph(InsightsPremuimDialog.InsightsPremuimDialogType.MASTER);
                }
                if (i == ADVANCED) {
                    showPopUpGift(InsightsPremuimDialog.InsightsPremuimDialogType.ADVANCED);
                }
                if (i != MASTER || !Prefs.f26553gL.get().booleanValue()) {
                    return;
                }
                Prefs.f26344cO.m28169b(1);
                Prefs.f26553gL.set(Boolean.FALSE);
                showPopUpGift(InsightsPremuimDialog.InsightsPremuimDialogType.MASTER);
            }
        }
    }

    public void openDialog(ContactData contactData, boolean z, boolean z2) {
        AnalyticsManager.get().m28450a(Constants.INSIGHTS, "ViewInsightsCommunityPopup");
        PopupManager.get().m28209a(this.presentersContainer.getRealContext(), new CommunityCardDialog(contactData != null ? !contactData.getPhone().equals(UserProfileManager.get().getUserVerifiedPhone()) : false, this, z, z2));
    }

    public void refreshCardData() {
        if (this.presentersContainer.getContainerMode() == this.mode) {
            updateCardData(new CommunityCardItem(AnalyticsDataManager.getNumberOfContactConfirm(), AnalyticsDataManager.getNumberOfSpammersReport(), AnalyticsDataManager.getNumberOfProfilePhotoChecked()), true);
        }
    }

    private void showPopUpBelowGraph(InsightsPremuimDialog.InsightsPremuimDialogType insightsPremuimDialogType) {
        PopupManager.get().m28209a(this.presentersContainer.getRealContext(), new InsightsPremuimDialog(insightsPremuimDialogType, this));
    }

    private void showPopUpGift(InsightsPremuimDialog.InsightsPremuimDialogType insightsPremuimDialogType) {
        PopupManager.get().m28209a(this.presentersContainer.getRealContext(), new CommunityFreeGiftDialog(insightsPremuimDialogType));
    }

    private void updateGraphData(CommunityContributionLevel communityContributionLevel) {
        TextView textView;
        TextView textView2 = this.beginner;
        int i = C57095.f19523a[communityContributionLevel.ordinal()];
        if (i == 1) {
            this.advanced.setTextColor(ThemeUtils.getColor(2131100108));
            this.master.setTextColor(ThemeUtils.getColor(2131100108));
            this.beginner.setTextColor(ThemeUtils.getColor(2131100140));
            textView = textView2;
        } else if (i == 2) {
            textView = this.advanced;
            this.beginner.setTextColor(ThemeUtils.getColor(2131100108));
            this.master.setTextColor(ThemeUtils.getColor(2131100108));
            this.advanced.setTextColor(ThemeUtils.getColor(2131100140));
        } else if (i != 3) {
            textView = textView2;
        } else {
            textView = this.master;
            this.beginner.setTextColor(ThemeUtils.getColor(2131100108));
            this.advanced.setTextColor(ThemeUtils.getColor(2131100108));
            this.master.setTextColor(ThemeUtils.getColor(2131100140));
        }
        textView.setTypeface(null, 1);
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public String getHeaderTitle() {
        return Activities.getString(2131886520);
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public Set<ContactField> getListenFields() {
        return EnumSet.of(ContactField.phone);
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public int getPriority() {
        return 90;
    }

    public void loadHeaderImage() {
        if (this.communityCardHolder != null) {
            this.presentersContainer.safeRunOnUIThread(new Runnable() { // from class: com.callapp.contacts.activity.analytics.cards.CommunityCard.4
                @Override // java.lang.Runnable
                public void run() {
                    if (!StringUtils.m26045b((CharSequence) CommunityCard.this.userImageUrl)) {
                        CommunityCard.this.communityCardHolder.f19540q.setDefaultProfilePic();
                        return;
                    }
                    ProfilePictureView profilePictureView = CommunityCard.this.communityCardHolder.f19540q;
                    GlideUtils.GlideRequestBuilder m27018b = new GlideUtils.GlideRequestBuilder(CommunityCard.this.userImageUrl).m27018b(CallAppApplication.get().getResources().getDimensionPixelOffset(2131165387), ThemeUtils.getColor(2131100140));
                    m27018b.f28246l = true;
                    profilePictureView.m26684a(m27018b);
                }
            });
        }
    }

    @Override // com.callapp.contacts.activity.analytics.data.UpdateAnalyticsCardEvent
    public void onAnalyticsRefreshCard(PresentersContainer.MODE mode) {
        this.mode = mode;
        refreshCardData();
    }

    public void onBindViewHolder(CommunityCardHolder communityCardHolder) {
        this.alreadyBounded = true;
        this.totalContribution = 0;
        loadHeaderImage();
        TextView textView = communityCardHolder.f19535l;
        this.beginner = textView;
        textView.setText(Activities.getText(2131886315));
        this.beginner.setTextColor(ThemeUtils.getColor(2131100140));
        TextView textView2 = communityCardHolder.f19536m;
        this.advanced = textView2;
        textView2.setText(Activities.getText(2131886222));
        this.advanced.setTextColor(ThemeUtils.getColor(2131100140));
        TextView textView3 = communityCardHolder.f19537n;
        this.master = textView3;
        textView3.setTextColor(ThemeUtils.getColor(2131100140));
        this.master.setText(Activities.getText(2131887139));
        communityCardHolder.f19524a.setBackgroundColor(ThemeUtils.getColor(2131099686));
        communityCardHolder.f19526c.setText(Activities.getString(2131886611));
        communityCardHolder.f19528e.setText(Activities.getString(2131886618));
        communityCardHolder.f19530g.setText(Activities.getString(2131886617));
        communityCardHolder.f19527d.setText(Activities.getString(2131886657));
        communityCardHolder.f19527d.setTextColor(ThemeUtils.getColor(2131100140));
        communityCardHolder.f19539p.setTextColor(ThemeUtils.getColor(2131100140));
        communityCardHolder.f19531h.setText(Activities.getString(2131887438));
        communityCardHolder.f19531h.setTextColor(ThemeUtils.getColor(2131100140));
        communityCardHolder.f19529f.setText(Activities.getString(2131887742));
        communityCardHolder.f19529f.setTextColor(ThemeUtils.getColor(2131100140));
        communityCardHolder.f19533j.setText(this.communityCardDate.getContactConfirm() < 1000 ? String.valueOf(this.communityCardDate.getContactConfirm()) : "1K");
        this.totalContribution += this.communityCardDate.getContactConfirm();
        communityCardHolder.f19532i.setText(this.communityCardDate.getProfilePhotoChecked() < 1000 ? String.valueOf(this.communityCardDate.getProfilePhotoChecked()) : "1K");
        this.totalContribution += this.communityCardDate.getProfilePhotoChecked();
        String str = "1K";
        if (this.communityCardDate.getSpammersReport() < 1000) {
            str = String.valueOf(this.communityCardDate.getSpammersReport());
        }
        communityCardHolder.f19534k.setText(str);
        int spammersReport = this.totalContribution + this.communityCardDate.getSpammersReport();
        this.totalContribution = spammersReport;
        if (spammersReport >= ADVANCED && spammersReport < MASTER) {
            this.level = CommunityContributionLevel.ADVANCED;
        } else if (spammersReport >= MASTER) {
            this.level = CommunityContributionLevel.MASTER;
        } else {
            this.level = CommunityContributionLevel.BEGINNER;
        }
        if (Prefs.f26557gP.get() == CommunityContributionLevel.INIT) {
            AnalyticsManager.get().m28449a(Constants.INSIGHTS, "InsightsCommunityFirstStatus", this.level.name());
            Prefs.f26557gP.set(this.level);
        } else if (this.level != Prefs.f26557gP.get()) {
            AnalyticsManager.get().m28449a(Constants.INSIGHTS, "InsightsCommunityStatusChange", this.level.name());
            Prefs.f26557gP.set(this.level);
        }
        communityCardHolder.f19538o.setMax(MASTER + 6.0f);
        communityCardHolder.f19524a.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.analytics.cards.CommunityCard.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                CommunityCard communityCard = CommunityCard.this;
                communityCard.openDialog(communityCard.contact, false, true);
            }
        });
        if (this.shouldShowAnimation) {
            handleGraph(this.level, this.contact, this.totalContribution);
        }
        if (this.level == CommunityContributionLevel.BEGINNER) {
            communityCardHolder.f19539p.setText(Activities.getString(2131886313));
        } else if (this.level == CommunityContributionLevel.ADVANCED) {
            communityCardHolder.f19539p.setText(Activities.getString(2131886228));
        } else {
            communityCardHolder.f19539p.setText(Activities.getString(2131887141));
        }
        if (Prefs.f26552gK.get().booleanValue()) {
            Prefs.f26552gK.set(Boolean.FALSE);
            openDialog(this.contact, true, false);
        }
    }

    @Override // com.callapp.contacts.activity.analytics.cards.CommunityCardDialog.UserClickOnConfirmPhone
    public void onClickConfirm() {
        if (this.presentersContainer.getRealContext() instanceof InsightActivity) {
            PhoneVerifierManager.get();
            PhoneVerifierManager.m28522a((Activity) ((InsightActivity) this.presentersContainer.getRealContext()), false);
        }
    }

    @Override // com.callapp.contacts.model.contact.ContactDataChangeListener
    public void onContactChanged(ContactData contactData, Set<ContactField> set) {
        this.userImageUrl = contactData.getPhotoUrl();
        this.contact = contactData;
        refreshCardData();
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public CommunityCardHolder onCreateViewHolder(ViewGroup viewGroup) {
        this.communityCardHolder = new CommunityCardHolder(viewGroup);
        InlineVisibilityTracker inlineVisibilityTracker = new InlineVisibilityTracker(this.presentersContainer.getRealContext(), viewGroup, viewGroup, 500, 500);
        this.communitiyVisibilityTracker = inlineVisibilityTracker;
        inlineVisibilityTracker.setInlineVisibilityTrackerListener(new InlineVisibilityTracker.InlineVisibilityTrackerListener() { // from class: com.callapp.contacts.activity.analytics.cards.CommunityCard.2
            @Override // com.mopub.mobileads.InlineVisibilityTracker.InlineVisibilityTrackerListener
            public void onVisibilityChanged() {
                CommunityCard.this.shouldShowAnimation = true;
                if (CommunityCard.this.alreadyBounded) {
                    CommunityCard communityCard = CommunityCard.this;
                    communityCard.handleGraph(communityCard.level, CommunityCard.this.contact, CommunityCard.this.totalContribution);
                }
                if (CommunityCard.this.communitiyVisibilityTracker != null) {
                    CommunityCard.this.communitiyVisibilityTracker.destroy();
                    CommunityCard.this.communitiyVisibilityTracker = null;
                }
            }
        });
        return this.communityCardHolder;
    }

    @Override // com.callapp.contacts.activity.analytics.cards.base.AnalyticsWrapperCard, com.callapp.contacts.activity.contact.cards.framework.ContactCard, com.callapp.contacts.event.listener.DestroyListener
    public void onDestroy() {
        PhoneVerifierManager.get().m28520a(this.phoneAuthCallBack);
        InlineVisibilityTracker inlineVisibilityTracker = this.communitiyVisibilityTracker;
        if (inlineVisibilityTracker != null) {
            inlineVisibilityTracker.destroy();
            this.communitiyVisibilityTracker = null;
        }
        super.onDestroy();
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public boolean showShouldExpandButton() {
        return false;
    }

    public void updateCardData(CommunityCardItem communityCardItem, boolean z) {
        this.communityCardDate = communityCardItem;
        showCard(true);
    }
}
