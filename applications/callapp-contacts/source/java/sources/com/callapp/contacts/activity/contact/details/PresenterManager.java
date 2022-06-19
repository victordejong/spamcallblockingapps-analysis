package com.callapp.contacts.activity.contact.details;

import android.os.Build;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.analytics.cards.AnalyticsLargeAdCard;
import com.callapp.contacts.activity.analytics.cards.AnalyticsSmallAdCard;
import com.callapp.contacts.activity.analytics.cards.BannerCard;
import com.callapp.contacts.activity.analytics.cards.CDAnalyticsAdCard;
import com.callapp.contacts.activity.analytics.cards.CDCommunityCard;
import com.callapp.contacts.activity.analytics.cards.CDHoursCard;
import com.callapp.contacts.activity.analytics.cards.CallAppPlusCard;
import com.callapp.contacts.activity.analytics.cards.CommunityCard;
import com.callapp.contacts.activity.analytics.cards.HitListsCard;
import com.callapp.contacts.activity.analytics.cards.HoursCard;
import com.callapp.contacts.activity.analytics.cards.IncomingVsOutgoingCard;
import com.callapp.contacts.activity.analytics.cards.UnansweredCallsCard;
import com.callapp.contacts.activity.analytics.cards.WhoViewedMyProfileCard;
import com.callapp.contacts.activity.analytics.cards.base.AnalyticsMultiCardWrapper;
import com.callapp.contacts.activity.analytics.cards.callappForYou.BlockSpamCard;
import com.callapp.contacts.activity.analytics.cards.callappForYou.CallsIdentifiedCard;
import com.callapp.contacts.activity.analytics.cards.callappForYou.CustomizationCard;
import com.callapp.contacts.activity.analytics.cards.myCallsCard.CDMyCallsCard;
import com.callapp.contacts.activity.analytics.cards.myCallsCard.MyCallsCard;
import com.callapp.contacts.activity.contact.cards.AnalyticsCarouselCard;
import com.callapp.contacts.activity.contact.cards.BirthdayCard;
import com.callapp.contacts.activity.contact.cards.BizMenuAndReservationDuoCard;
import com.callapp.contacts.activity.contact.cards.CDLargeAdCard;
import com.callapp.contacts.activity.contact.cards.CDSmallAdCard;
import com.callapp.contacts.activity.contact.cards.CallHistoryCard;
import com.callapp.contacts.activity.contact.cards.CallRecorderPlayerCard;
import com.callapp.contacts.activity.contact.cards.ContactInfoCard;
import com.callapp.contacts.activity.contact.cards.DummyTransparentCard;
import com.callapp.contacts.activity.contact.cards.GoogleMapsCard;
import com.callapp.contacts.activity.contact.cards.ImCommunicationCard;
import com.callapp.contacts.activity.contact.cards.LastCommunicationsCard;
import com.callapp.contacts.activity.contact.cards.MultiCard;
import com.callapp.contacts.activity.contact.cards.MutualFriendsCard;
import com.callapp.contacts.activity.contact.cards.MyPersonalInfoCard;
import com.callapp.contacts.activity.contact.cards.MySocialProfileCard;
import com.callapp.contacts.activity.contact.cards.NoteCard;
import com.callapp.contacts.activity.contact.cards.OpeningHoursCard;
import com.callapp.contacts.activity.contact.cards.PhonesCard;
import com.callapp.contacts.activity.contact.cards.PostCallCard;
import com.callapp.contacts.activity.contact.cards.PostCallFirstTime;
import com.callapp.contacts.activity.contact.cards.ReferAndEarnCard;
import com.callapp.contacts.activity.contact.cards.SocialFeedCard;
import com.callapp.contacts.activity.contact.cards.SocialImagesCard;
import com.callapp.contacts.activity.contact.cards.VerifyPhoneNumberCard;
import com.callapp.contacts.activity.contact.cards.VideoCallCard;
import com.callapp.contacts.activity.contact.cards.VideoRingtoneCard;
import com.callapp.contacts.activity.contact.cards.YouTubeCard;
import com.callapp.contacts.activity.contact.cards.confirmProfile.ConfirmSocialProfileCard;
import com.callapp.contacts.activity.contact.cards.framework.ContactCard;
import com.callapp.contacts.activity.contact.details.PresentersContainer;
import com.callapp.contacts.activity.contact.details.presenter.BasePresenter;
import com.callapp.contacts.activity.contact.details.presenter.ContactListCollapsingBottomBarPresenter;
import com.callapp.contacts.activity.contact.details.presenter.IsSpamPresenter;
import com.callapp.contacts.activity.contact.details.presenter.PostCallDurationPresenter;
import com.callapp.contacts.activity.contact.details.presenter.UserCorrectedInfoPresenter;
import com.callapp.contacts.activity.contact.details.presenter.callbarpresenter.CallBarPresenter;
import com.callapp.contacts.activity.contact.details.presenter.simple.CategoriesPresenter;
import com.callapp.contacts.activity.contact.details.presenter.simple.NamePresenter;
import com.callapp.contacts.activity.contact.details.presenter.simple.PhonesPresenter;
import com.callapp.contacts.activity.contact.details.presenter.simple.PhotoPresenter;
import com.callapp.contacts.activity.contact.details.presenter.simple.ProfilePicturePresenter;
import com.callapp.contacts.activity.contact.details.presenter.simple.TopSheetPresenter;
import com.callapp.contacts.manager.inAppBilling.BillingManager;
import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.contacts.recorder.recordertest.RecorderTestManager;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.GooglePlayUtils;
import com.callapp.framework.util.CollectionUtils;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.Random;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/details/PresenterManager.class */
public class PresenterManager {

    /* renamed from: a */
    private final Collection<BasePresenter> f21888a = new ArrayList();

    /* renamed from: b */
    private final Collection<ContactCard> f21889b = new ArrayList();

    /* renamed from: c */
    private boolean f21890c = false;

    /* renamed from: d */
    private final Object f21891d = new Object();

    /* renamed from: e */
    private final Object f21892e;

    /* renamed from: com.callapp.contacts.activity.contact.details.PresenterManager$1 */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/details/PresenterManager$1.class */
    public static /* synthetic */ class C62481 {

        /* renamed from: a */
        static final /* synthetic */ int[] f21893a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x00ad -> B:57:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:32:0x00b1 -> B:53:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:33:0x00b5 -> B:65:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:34:0x00b9 -> B:61:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:35:0x00bd -> B:71:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:36:0x00c1 -> B:67:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:37:0x00c5 -> B:49:0x0058). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:38:0x00c9 -> B:45:0x0064). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:39:0x00cd -> B:55:0x0070). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:40:0x00d1 -> B:51:0x007c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:41:0x00d5 -> B:63:0x0088). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:42:0x00d9 -> B:59:0x0094). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:43:0x00dd -> B:69:0x00a0). Please submit an issue!!! */
        static {
            int[] iArr = new int[PresentersContainer.MODE.values().length];
            f21893a = iArr;
            try {
                iArr[PresentersContainer.MODE.EDIT_USER_PROFILE_ACTIVITY.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f21893a[PresentersContainer.MODE.CONTACT_DETAILS_SCREEN.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f21893a[PresentersContainer.MODE.CONFERENCE_SCREEN.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f21893a[PresentersContainer.MODE.POST_CALL_SCREEN.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f21893a[PresentersContainer.MODE.INCOMING_SMS_OVERLAY.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f21893a[PresentersContainer.MODE.CLIPBOARD_AUTO_SEARCH_OVERLAY.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f21893a[PresentersContainer.MODE.DURING_CALL_OVERLAY.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f21893a[PresentersContainer.MODE.CALL_RECORDER_POPUP.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f21893a[PresentersContainer.MODE.MISSED_CALL.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
            try {
                f21893a[PresentersContainer.MODE.SUMMERY_MISSED_CALL.ordinal()] = 10;
            } catch (NoSuchFieldError e10) {
            }
            try {
                f21893a[PresentersContainer.MODE.CONTACT_LIST.ordinal()] = 11;
            } catch (NoSuchFieldError e11) {
            }
            try {
                f21893a[PresentersContainer.MODE.INSIGHTS.ordinal()] = 12;
            } catch (NoSuchFieldError e12) {
            }
            try {
                f21893a[PresentersContainer.MODE.STATISTICS.ordinal()] = 13;
            } catch (NoSuchFieldError e13) {
            }
            try {
                f21893a[PresentersContainer.MODE.RECORDER_TEST_SCREEN.ordinal()] = 14;
            } catch (NoSuchFieldError e14) {
            }
        }
    }

    public PresenterManager(PresentersContainer.MODE mode) {
        Object obj = new Object();
        this.f21892e = obj;
        synchronized (obj) {
            switch (C62481.f21893a[mode.ordinal()]) {
                case 1:
                    m30926a(new NamePresenter());
                    m30926a(new PhotoPresenter());
                    break;
                case 2:
                    m30926a(new NamePresenter());
                    m30926a(new CategoriesPresenter());
                    m30926a(new PhotoPresenter());
                    m30926a(new PhonesPresenter());
                    m30926a(new TopSheetPresenter());
                    m30926a(new CallBarPresenter());
                    m30926a(new UserCorrectedInfoPresenter());
                    m30926a(new IsSpamPresenter());
                    m30926a(new PostCallDurationPresenter());
                    break;
                case 3:
                    m30926a(new CallBarPresenter());
                    break;
                case 4:
                    m30924b();
                    m30926a(new TopSheetPresenter());
                    m30926a(new UserCorrectedInfoPresenter());
                    m30926a(new IsSpamPresenter());
                    m30926a(new PostCallDurationPresenter());
                    break;
                case 5:
                    m30924b();
                    break;
                case 6:
                    m30924b();
                    break;
                case 7:
                    m30924b();
                    break;
                case 8:
                case 9:
                    m30926a(new NamePresenter());
                    m30926a(new ProfilePicturePresenter());
                    m30926a(new CategoriesPresenter());
                    break;
                case 10:
                    m30926a(new ProfilePicturePresenter());
                    break;
                case 11:
                    m30926a(new ContactListCollapsingBottomBarPresenter());
                    break;
            }
        }
    }

    /* renamed from: a */
    private void m30926a(BasePresenter basePresenter) {
        if (basePresenter.shouldAdd()) {
            synchronized (this.f21892e) {
                this.f21888a.add(basePresenter);
            }
        }
    }

    /* renamed from: b */
    private void m30924b() {
        m30926a(new NamePresenter());
        m30926a(new ProfilePicturePresenter());
        m30926a(new CategoriesPresenter());
        m30926a(new PhonesPresenter());
    }

    /* renamed from: a */
    public final <T> T m30925a(Class<T> cls) {
        T t;
        synchronized (this.f21892e) {
            Iterator<BasePresenter> it2 = this.f21888a.iterator();
            do {
                if (!it2.hasNext()) {
                    return null;
                }
                t = (T) it2.next();
            } while (!t.getClass().equals(cls));
            return t;
        }
    }

    /* renamed from: a */
    public final void m30928a() {
        synchronized (this.f21892e) {
            this.f21888a.clear();
        }
        synchronized (this.f21891d) {
            this.f21889b.clear();
        }
    }

    /* renamed from: a */
    public final void m30927a(PresentersContainer presentersContainer) {
        synchronized (this.f21891d) {
            if (!this.f21890c) {
                m30923b(presentersContainer);
            }
        }
    }

    /* renamed from: b */
    public final <T> T m30922b(Class<T> cls) {
        T t;
        synchronized (this.f21891d) {
            Iterator<ContactCard> it2 = this.f21889b.iterator();
            do {
                if (!it2.hasNext()) {
                    return null;
                }
                t = (T) it2.next();
            } while (!t.getClass().equals(cls));
            return t;
        }
    }

    /* renamed from: b */
    public final void m30923b(PresentersContainer presentersContainer) {
        synchronized (this.f21891d) {
            if (CollectionUtils.m26068b(this.f21889b)) {
                return;
            }
            int i = C62481.f21893a[presentersContainer.getContainerMode().ordinal()];
            if (i == 1) {
                this.f21889b.add(new VerifyPhoneNumberCard(presentersContainer));
                this.f21889b.add(new MySocialProfileCard(presentersContainer));
                this.f21889b.add(new MyPersonalInfoCard(presentersContainer));
                this.f21889b.add(new DummyTransparentCard(presentersContainer, CallAppApplication.get().getResources().getDimensionPixelSize(2131165652)));
            } else if (i != 2) {
                switch (i) {
                    case 12:
                        this.f21889b.add(new CommunityCard(presentersContainer));
                        this.f21889b.add(new WhoViewedMyProfileCard(presentersContainer));
                        this.f21889b.add(new BannerCard(presentersContainer, BannerCard.BannerType.PREMIUM));
                        this.f21889b.add(new HoursCard(presentersContainer));
                        this.f21889b.add(new UnansweredCallsCard(presentersContainer));
                        this.f21889b.add(new HitListsCard(presentersContainer));
                        this.f21889b.add(new DummyTransparentCard(presentersContainer, CallAppApplication.get().getResources().getDimensionPixelSize(2131165414)));
                        break;
                    case 13:
                        AnalyticsMultiCardWrapper analyticsMultiCardWrapper = new AnalyticsMultiCardWrapper(presentersContainer, Activities.getString(2131886519), 40);
                        this.f21889b.add(new CustomizationCard(analyticsMultiCardWrapper));
                        this.f21889b.add(new BlockSpamCard(analyticsMultiCardWrapper));
                        this.f21889b.add(new CallsIdentifiedCard(analyticsMultiCardWrapper));
                        this.f21889b.add(analyticsMultiCardWrapper);
                        this.f21889b.add(new BannerCard(presentersContainer, BannerCard.BannerType.DEFAULT_DIALER));
                        this.f21889b.add(new BannerCard(presentersContainer, BannerCard.BannerType.PREMIUM));
                        this.f21889b.add(new IncomingVsOutgoingCard(presentersContainer));
                        this.f21889b.add(new MyCallsCard(presentersContainer));
                        if (Activities.isNotificationListenerServiceSupportedOnDevice()) {
                            this.f21889b.add(new CallAppPlusCard(presentersContainer));
                        }
                        this.f21889b.add(new AnalyticsLargeAdCard(presentersContainer));
                        this.f21889b.add(new AnalyticsSmallAdCard(presentersContainer));
                        this.f21889b.add(new DummyTransparentCard(presentersContainer, CallAppApplication.get().getResources().getDimensionPixelSize(2131165270)));
                        break;
                    case 14:
                        if (RecorderTestManager.get().isInRecorderTestMode()) {
                            this.f21889b.add(new DummyTransparentCard(presentersContainer, CallAppApplication.get().getResources().getDimensionPixelSize(2131165994)));
                            break;
                        }
                        break;
                }
            } else {
                MultiCard multiCard = new MultiCard(presentersContainer, Activities.getString(2131886646), 10);
                this.f21889b.add(new PhonesCard(multiCard));
                this.f21889b.add(new OpeningHoursCard(multiCard));
                this.f21889b.add(new ContactInfoCard(multiCard, GooglePlayUtils.isGooglePlayServicesAvailable() ? new GoogleMapsCard(presentersContainer) : null));
                this.f21889b.add(multiCard);
                AnalyticsCarouselCard analyticsCarouselCard = new AnalyticsCarouselCard(presentersContainer, "", 93);
                ArrayList arrayList = new ArrayList();
                arrayList.add(1);
                arrayList.add(2);
                arrayList.add(3);
                int intValue = ((Integer) arrayList.get(new Random().nextInt(arrayList.size()))).intValue();
                arrayList.remove(Integer.valueOf(intValue));
                this.f21889b.add(new CDHoursCard(analyticsCarouselCard, intValue));
                int intValue2 = ((Integer) arrayList.get(new Random().nextInt(arrayList.size()))).intValue();
                arrayList.remove(Integer.valueOf(intValue2));
                this.f21889b.add(new CDMyCallsCard(analyticsCarouselCard, intValue2));
                int intValue3 = ((Integer) arrayList.get(new Random().nextInt(arrayList.size()))).intValue();
                arrayList.remove(Integer.valueOf(intValue3));
                this.f21889b.add(new CDCommunityCard(analyticsCarouselCard, intValue3));
                this.f21889b.add(analyticsCarouselCard);
                this.f21889b.add(new CDAnalyticsAdCard(presentersContainer, 94));
                this.f21889b.add(new PostCallCard(presentersContainer));
                this.f21889b.add(new PostCallFirstTime(presentersContainer));
                ConfirmSocialProfileCard confirmSocialProfileCard = new ConfirmSocialProfileCard(presentersContainer);
                this.f21889b.add(confirmSocialProfileCard);
                this.f21889b.add(new ReferAndEarnCard(presentersContainer));
                MultiCard multiCard2 = new MultiCard(presentersContainer, Activities.getString(2131886610), 85);
                new CallHistoryCard(multiCard2);
                this.f21889b.add(new ImCommunicationCard(multiCard2));
                this.f21889b.add(new LastCommunicationsCard(multiCard2));
                this.f21889b.add(multiCard2);
                MultiCard multiCard3 = new MultiCard(presentersContainer, Activities.getString(2131887728), 190);
                this.f21889b.add(new SocialFeedCard(multiCard3, confirmSocialProfileCard));
                this.f21889b.add(new SocialImagesCard(multiCard3));
                this.f21889b.add(multiCard3);
                this.f21889b.add(new BirthdayCard(presentersContainer));
                this.f21889b.add(new CallRecorderPlayerCard(presentersContainer));
                if (Build.VERSION.SDK_INT >= 23 && PhoneManager.get().isDefaultPhoneApp()) {
                    this.f21889b.add(new VideoCallCard(presentersContainer));
                }
                this.f21889b.add(new NoteCard(presentersContainer));
                if (BillingManager.isBillingAvailable()) {
                    this.f21889b.add(new VideoRingtoneCard(presentersContainer));
                }
                this.f21889b.add(new CDSmallAdCard(presentersContainer));
                this.f21889b.add(new CDLargeAdCard(presentersContainer));
                this.f21889b.add(new MutualFriendsCard(presentersContainer));
                this.f21889b.add(new YouTubeCard(presentersContainer));
                this.f21889b.add(new BizMenuAndReservationDuoCard(presentersContainer));
                this.f21889b.add(new DummyTransparentCard(presentersContainer, CallAppApplication.get().getResources().getDimensionPixelSize(2131165420)));
            }
            this.f21890c = true;
        }
    }

    /* renamed from: c */
    public final void m30921c(PresentersContainer presentersContainer) {
        synchronized (this.f21892e) {
            for (BasePresenter basePresenter : this.f21888a) {
                basePresenter.setPresentersContainer(presentersContainer);
                basePresenter.onCreate(presentersContainer);
            }
        }
    }
}
