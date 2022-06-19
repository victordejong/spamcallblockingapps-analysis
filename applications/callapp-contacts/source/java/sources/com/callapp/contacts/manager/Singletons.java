package com.callapp.contacts.manager;

import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.calllog.FirstTimeExperienceCallLog;
import com.callapp.contacts.activity.contact.list.RetentionAnalytics;
import com.callapp.contacts.activity.marketplace.catalog.CatalogManager;
import com.callapp.contacts.api.helper.backup.DropBoxHelper;
import com.callapp.contacts.api.helper.backup.GoogleDriveHelper;
import com.callapp.contacts.api.helper.common.RemoteAccountHelper;
import com.callapp.contacts.api.helper.facebook.FacebookHelper;
import com.callapp.contacts.api.helper.foursquare.FoursquareHelper;
import com.callapp.contacts.api.helper.gmail.GmailManager;
import com.callapp.contacts.api.helper.google.GoogleHelper;
import com.callapp.contacts.api.helper.instagram.InstagramHelper;
import com.callapp.contacts.api.helper.instantmessaging.AlloSenderHelper;
import com.callapp.contacts.api.helper.instantmessaging.DuoSenderHelper;
import com.callapp.contacts.api.helper.instantmessaging.EmailSenderHelper;
import com.callapp.contacts.api.helper.instantmessaging.FacebookImSenderHelper;
import com.callapp.contacts.api.helper.instantmessaging.GooglePlusHangoutSenderHelper;
import com.callapp.contacts.api.helper.instantmessaging.InstagramImSenderHelper;
import com.callapp.contacts.api.helper.instantmessaging.MessengerImSenderHelper;
import com.callapp.contacts.api.helper.instantmessaging.SignalSenderHelper;
import com.callapp.contacts.api.helper.instantmessaging.SkypeSenderHelper;
import com.callapp.contacts.api.helper.instantmessaging.SmsSenderHelper;
import com.callapp.contacts.api.helper.instantmessaging.TelegramSenderHelper;
import com.callapp.contacts.api.helper.instantmessaging.TwitterImSenderHelper;
import com.callapp.contacts.api.helper.instantmessaging.ViberSenderHelper;
import com.callapp.contacts.api.helper.instantmessaging.WeChatSenderHelper;
import com.callapp.contacts.api.helper.instantmessaging.WhatsApp4BSenderHelper;
import com.callapp.contacts.api.helper.instantmessaging.WhatsAppSenderHelper;
import com.callapp.contacts.api.helper.instantmessaging.YahooSenderHelper;
import com.callapp.contacts.api.helper.instantmessaging.basetypes.ImSender;
import com.callapp.contacts.api.helper.p237vk.VKHelper;
import com.callapp.contacts.api.helper.pinterest.PinterestHelper;
import com.callapp.contacts.api.helper.twitter.TwitterHelper;
import com.callapp.contacts.manager.NotificationExtractors.SignalNotificationDataExtractor;
import com.callapp.contacts.manager.NotificationExtractors.TelegramNotificationDataExtractor;
import com.callapp.contacts.manager.NotificationExtractors.ViberNotificationDataExtractor;
import com.callapp.contacts.manager.NotificationExtractors.VonageNotificationDataExtractor;
import com.callapp.contacts.manager.NotificationExtractors.WhatsAppNotificationDataExtractor;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.cache.CacheManager;
import com.callapp.contacts.manager.keyguard.KeyguardActivityStateManager;
import com.callapp.contacts.manager.keyguard.LockscreenKeyguardManager;
import com.callapp.contacts.manager.messaging.FcmManager;
import com.callapp.contacts.manager.permission.PermissionManager;
import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.contacts.manager.phone.PhoneStateManager;
import com.callapp.contacts.manager.popup.PopupManager;
import com.callapp.contacts.manager.preferences.LocalPrefsStore;
import com.callapp.contacts.manager.preferences.LocationPrefs;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.manager.preferences.prefs.LongPref;
import com.callapp.contacts.manager.sim.SimManager;
import com.callapp.contacts.receiver.ScreenOffReceiver;
import com.callapp.contacts.recorder.CallRecorderManager;
import com.callapp.contacts.recorder.recordertest.RecorderTestManager;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.video.VideoCacheManager;
import com.callapp.contacts.wearable.WearableClientHandler;
import com.callapp.contacts.widget.floatingwidget.p240ui.callapp.CallAppChatHeadLifecycleObserverManager;
import java.lang.ref.WeakReference;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/Singletons.class */
public class Singletons {

    /* renamed from: N */
    private static final Singletons f25772N = new Singletons();

    /* renamed from: aa */
    private static WhatsAppSenderHelper f25773aa;

    /* renamed from: ab */
    private static WhatsApp4BSenderHelper f25774ab;

    /* renamed from: ac */
    private static FacebookImSenderHelper f25775ac;

    /* renamed from: ad */
    private static MessengerImSenderHelper f25776ad;

    /* renamed from: ae */
    private static TwitterImSenderHelper f25777ae;

    /* renamed from: af */
    private static InstagramImSenderHelper f25778af;

    /* renamed from: ag */
    private static TelegramSenderHelper f25779ag;

    /* renamed from: ah */
    private static ViberSenderHelper f25780ah;

    /* renamed from: ai */
    private static GooglePlusHangoutSenderHelper f25781ai;

    /* renamed from: aj */
    private static WeChatSenderHelper f25782aj;

    /* renamed from: ak */
    private static SkypeSenderHelper f25783ak;

    /* renamed from: al */
    private static YahooSenderHelper f25784al;

    /* renamed from: am */
    private static EmailSenderHelper f25785am;

    /* renamed from: an */
    private static SmsSenderHelper f25786an;

    /* renamed from: ao */
    private static DuoSenderHelper f25787ao;

    /* renamed from: ap */
    private static SignalSenderHelper f25788ap;

    /* renamed from: aq */
    private static AlloSenderHelper f25789aq;

    /* renamed from: A */
    public SignalNotificationDataExtractor f25790A;

    /* renamed from: B */
    public WearableClientHandler f25791B;

    /* renamed from: C */
    public CallAppRemoteConfigManager f25792C;

    /* renamed from: D */
    public CallAppClipboardManager f25793D;

    /* renamed from: E */
    public LocationPrefs f25794E;

    /* renamed from: F */
    public RetentionAnalytics f25795F;

    /* renamed from: G */
    public VideoCacheManager f25796G;

    /* renamed from: H */
    public WeakReference<CallAppApplication> f25797H;

    /* renamed from: I */
    public ExceptionManager f25798I;

    /* renamed from: J */
    public SimManager f25799J;

    /* renamed from: K */
    public FirstTimeExperienceCallLog f25800K;

    /* renamed from: L */
    public CallRecorderManager f25801L;

    /* renamed from: M */
    public KeyguardActivityStateManager f25802M;

    /* renamed from: O */
    private AreaCodesDB f25803O;

    /* renamed from: P */
    private ScreenOffReceiver f25804P;

    /* renamed from: Q */
    private PermissionManager f25805Q;

    /* renamed from: R */
    private FacebookHelper f25806R;

    /* renamed from: S */
    private TwitterHelper f25807S;

    /* renamed from: T */
    private GoogleHelper f25808T;

    /* renamed from: U */
    private VKHelper f25809U;

    /* renamed from: V */
    private FoursquareHelper f25810V;

    /* renamed from: W */
    private InstagramHelper f25811W;

    /* renamed from: X */
    private PinterestHelper f25812X;

    /* renamed from: Y */
    private DropBoxHelper f25813Y;

    /* renamed from: Z */
    private GoogleDriveHelper f25814Z;

    /* renamed from: a */
    public ActionsManager f25815a;

    /* renamed from: ar */
    private RecorderTestManager f25816ar;

    /* renamed from: b */
    public UserProfileManager f25817b;

    /* renamed from: c */
    public PhoneVerifierManager f25818c;

    /* renamed from: d */
    public FeedbackManager f25819d;

    /* renamed from: e */
    public CallAppChatHeadLifecycleObserverManager f25820e;

    /* renamed from: f */
    public PhoneStateManager f25821f;

    /* renamed from: g */
    public OverlayManager f25822g;

    /* renamed from: h */
    public PhoneManager f25823h;

    /* renamed from: i */
    public PopupManager f25824i;

    /* renamed from: j */
    public FcmManager f25825j;

    /* renamed from: k */
    public NotificationManager f25826k;

    /* renamed from: l */
    public CacheManager f25827l;

    /* renamed from: m */
    public LockscreenKeyguardManager f25828m;

    /* renamed from: n */
    public WifiLockManager f25829n;

    /* renamed from: o */
    public ProximityManager f25830o;

    /* renamed from: p */
    public AnalyticsManager f25831p;

    /* renamed from: q */
    public LocalPrefsStore f25832q;

    /* renamed from: r */
    public GmailManager f25833r;

    /* renamed from: s */
    public ContactLoaderManager f25834s;

    /* renamed from: t */
    public RecognizedContactNotificationManager f25835t;

    /* renamed from: u */
    public CatalogManager f25836u;

    /* renamed from: v */
    public IncognitoCallManager f25837v;

    /* renamed from: w */
    public WhatsAppNotificationDataExtractor f25838w;

    /* renamed from: x */
    public ViberNotificationDataExtractor f25839x;

    /* renamed from: y */
    public TelegramNotificationDataExtractor f25840y;

    /* renamed from: z */
    public VonageNotificationDataExtractor f25841z;

    /* renamed from: com.callapp.contacts.manager.Singletons$2 */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/Singletons$2.class */
    public static /* synthetic */ class C74212 {

        /* renamed from: a */
        static final /* synthetic */ int[] f25844a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:37:0x00d1 -> B:64:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:38:0x00d5 -> B:78:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:39:0x00d9 -> B:74:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:40:0x00dd -> B:86:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:41:0x00e1 -> B:82:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:42:0x00e5 -> B:60:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:43:0x00e9 -> B:56:0x0058). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:44:0x00ed -> B:68:0x0064). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:45:0x00f1 -> B:62:0x0070). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:46:0x00f5 -> B:76:0x007c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:47:0x00f9 -> B:72:0x0088). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:48:0x00fd -> B:84:0x0094). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:49:0x0101 -> B:80:0x00a0). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:50:0x0105 -> B:58:0x00ac). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:51:0x0109 -> B:54:0x00b8). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:52:0x010d -> B:66:0x00c4). Please submit an issue!!! */
        static {
            int[] iArr = new int[SenderType.values().length];
            f25844a = iArr;
            try {
                iArr[SenderType.WHATSAPP.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f25844a[SenderType.WHATSAPP4B.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f25844a[SenderType.TELEGRAM.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f25844a[SenderType.VIBER.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f25844a[SenderType.GOOGLE_PLUS_HANGOUT.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f25844a[SenderType.YAHOO.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f25844a[SenderType.WE_CHAT.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f25844a[SenderType.SKYPE.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f25844a[SenderType.EMAIL.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
            try {
                f25844a[SenderType.SMS.ordinal()] = 10;
            } catch (NoSuchFieldError e10) {
            }
            try {
                f25844a[SenderType.DUO.ordinal()] = 11;
            } catch (NoSuchFieldError e11) {
            }
            try {
                f25844a[SenderType.SIGNAL.ordinal()] = 12;
            } catch (NoSuchFieldError e12) {
            }
            try {
                f25844a[SenderType.ALLO.ordinal()] = 13;
            } catch (NoSuchFieldError e13) {
            }
            try {
                f25844a[SenderType.FACEBOOK.ordinal()] = 14;
            } catch (NoSuchFieldError e14) {
            }
            try {
                f25844a[SenderType.TWITTER.ordinal()] = 15;
            } catch (NoSuchFieldError e15) {
            }
            try {
                f25844a[SenderType.INSTAGRAM.ordinal()] = 16;
            } catch (NoSuchFieldError e16) {
            }
            try {
                f25844a[SenderType.MESSENGER.ordinal()] = 17;
            } catch (NoSuchFieldError e17) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/Singletons$SenderType.class */
    public enum SenderType {
        SMS(SmsSenderHelper.class, Singletons.f25786an, Prefs.f26375ct),
        EMAIL(EmailSenderHelper.class, Singletons.f25785am, Prefs.f26374cs),
        WHATSAPP(WhatsAppSenderHelper.class, Singletons.f25773aa, Prefs.f26365cj),
        WHATSAPP4B(WhatsApp4BSenderHelper.class, Singletons.f25774ab, Prefs.f26366ck),
        TELEGRAM(TelegramSenderHelper.class, Singletons.f25779ag, Prefs.f26367cl),
        WE_CHAT(WeChatSenderHelper.class, Singletons.f25782aj, Prefs.f26370co),
        VIBER(ViberSenderHelper.class, Singletons.f25780ah, Prefs.f26368cm),
        SKYPE(SkypeSenderHelper.class, Singletons.f25783ak, Prefs.f26371cp),
        GOOGLE_PLUS_HANGOUT(GooglePlusHangoutSenderHelper.class, Singletons.f25781ai, Prefs.f26369cn),
        YAHOO(YahooSenderHelper.class, Singletons.f25784al, Prefs.f26373cr),
        FACEBOOK(FacebookImSenderHelper.class, Singletons.f25775ac, null),
        TWITTER(TwitterImSenderHelper.class, Singletons.f25777ae, null),
        MESSENGER(MessengerImSenderHelper.class, Singletons.f25776ad, Prefs.f26372cq),
        INSTAGRAM(InstagramImSenderHelper.class, Singletons.f25778af, null),
        DUO(DuoSenderHelper.class, Singletons.f25787ao, Prefs.f26377cv),
        SIGNAL(SignalSenderHelper.class, Singletons.f25788ap, Prefs.f26378cw),
        ALLO(AlloSenderHelper.class, Singletons.f25789aq, Prefs.f26379cx);
        
        private final LongPref openCount;
        private final Class senderClass;
        private ManagedLifecycle singletonMember;

        SenderType(Class cls, ManagedLifecycle managedLifecycle, LongPref longPref) {
            this.senderClass = cls;
            this.singletonMember = managedLifecycle;
            this.openCount = longPref;
        }

        public static /* synthetic */ ManagedLifecycle access$1800(SenderType senderType) {
            return senderType.singletonMember;
        }

        public static /* synthetic */ ManagedLifecycle access$1802(SenderType senderType, ManagedLifecycle managedLifecycle) {
            senderType.singletonMember = managedLifecycle;
            return managedLifecycle;
        }

        private ManagedLifecycle getNewInstance() {
            switch (C74212.f25844a[ordinal()]) {
                case 1:
                    return new WhatsAppSenderHelper();
                case 2:
                    return new WhatsApp4BSenderHelper();
                case 3:
                    return new TelegramSenderHelper();
                case 4:
                    return new ViberSenderHelper();
                case 5:
                    return new GooglePlusHangoutSenderHelper();
                case 6:
                    return new YahooSenderHelper();
                case 7:
                    return new WeChatSenderHelper();
                case 8:
                    return new SkypeSenderHelper();
                case 9:
                    return new EmailSenderHelper();
                case 10:
                    return new SmsSenderHelper();
                case 11:
                    return new DuoSenderHelper();
                case 12:
                    return new SignalSenderHelper();
                case 13:
                    return new AlloSenderHelper();
                case 14:
                    return new FacebookImSenderHelper();
                case 15:
                    return new TwitterImSenderHelper();
                case 16:
                    return new InstagramImSenderHelper();
                case 17:
                    return new MessengerImSenderHelper();
                default:
                    return null;
            }
        }

        public ImSender getSenderInstance() {
            if (this.singletonMember == null) {
                synchronized (this.senderClass) {
                    if (this.singletonMember == null) {
                        ManagedLifecycle newInstance = getNewInstance();
                        this.singletonMember = newInstance;
                        this.singletonMember = newInstance.init();
                    }
                }
            }
            return (ImSender) this.singletonMember;
        }

        public void incUseCount() {
            this.openCount.m28168a();
        }

        public final long getUseCount() {
            return this.openCount.get().longValue();
        }
    }

    /* renamed from: a */
    public static ImSender m28494a(SenderType senderType) {
        return senderType.getSenderInstance();
    }

    /* renamed from: a */
    public static <T> T m28493a(String str) {
        return (T) get().getApplication().m31868a(str);
    }

    /* renamed from: a */
    public static void m28495a(ManagedLifecycle managedLifecycle) {
        if (managedLifecycle != null) {
            try {
                managedLifecycle.destroy();
            } catch (RuntimeException e) {
                CLog.m27596b(Singletons.class, e);
            }
        }
    }

    /* renamed from: b */
    public static void m28490b(SenderType senderType) {
        senderType.incUseCount();
    }

    public static Singletons get() {
        return f25772N;
    }

    public ActionsManager getActionsManager() {
        if (this.f25815a == null) {
            synchronized (ActionsManager.class) {
                try {
                    if (this.f25815a == null) {
                        ActionsManager actionsManager = new ActionsManager();
                        actionsManager.init();
                        this.f25815a = actionsManager;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.f25815a;
    }

    public AnalyticsManager getAnalyticsManager() {
        if (this.f25831p == null) {
            synchronized (AnalyticsManager.class) {
                try {
                    if (this.f25831p == null) {
                        AnalyticsManager analyticsManager = new AnalyticsManager();
                        analyticsManager.init();
                        this.f25831p = analyticsManager;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.f25831p;
    }

    public CallAppApplication getApplication() {
        WeakReference<CallAppApplication> weakReference = this.f25797H;
        if (weakReference == null) {
            return null;
        }
        return weakReference.get();
    }

    public AreaCodesDB getAreaCodesDB() {
        if (this.f25803O == null) {
            synchronized (AreaCodesDB.class) {
                try {
                    if (this.f25803O == null) {
                        this.f25803O = new AreaCodesDB();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.f25803O;
    }

    public CacheManager getCacheManager() {
        if (this.f25827l == null) {
            synchronized (CacheManager.class) {
                try {
                    if (this.f25827l == null) {
                        CacheManager cacheManager = new CacheManager();
                        cacheManager.init();
                        this.f25827l = cacheManager;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.f25827l;
    }

    public CallAppChatHeadLifecycleObserverManager getCallAppChatHeadLifecycleObserverManager() {
        if (this.f25820e == null) {
            synchronized (CallAppChatHeadLifecycleObserverManager.class) {
                try {
                    if (this.f25820e == null) {
                        CallAppChatHeadLifecycleObserverManager callAppChatHeadLifecycleObserverManager = new CallAppChatHeadLifecycleObserverManager();
                        callAppChatHeadLifecycleObserverManager.init();
                        this.f25820e = callAppChatHeadLifecycleObserverManager;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.f25820e;
    }

    public CallAppClipboardManager getCallAppClipboardManager() {
        if (this.f25793D == null) {
            synchronized (CallAppClipboardManager.class) {
                try {
                    if (this.f25793D == null) {
                        CallAppClipboardManager callAppClipboardManager = new CallAppClipboardManager();
                        callAppClipboardManager.init();
                        this.f25793D = callAppClipboardManager;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.f25793D;
    }

    public CallAppRemoteConfigManager getCallAppRemoteConfigManager() {
        if (this.f25792C == null) {
            synchronized (CallAppRemoteConfigManager.class) {
                try {
                    if (this.f25792C == null) {
                        CallAppRemoteConfigManager callAppRemoteConfigManager = new CallAppRemoteConfigManager();
                        callAppRemoteConfigManager.init();
                        this.f25792C = callAppRemoteConfigManager;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.f25792C;
    }

    public CatalogManager getCatalogManager() {
        if (this.f25836u == null) {
            synchronized (CatalogManager.class) {
                try {
                    if (this.f25836u == null) {
                        CatalogManager catalogManager = new CatalogManager();
                        catalogManager.init();
                        this.f25836u = catalogManager;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.f25836u;
    }

    public ContactLoaderManager getContactLoaderManager() {
        if (this.f25834s == null) {
            synchronized (ContactLoaderManager.class) {
                try {
                    if (this.f25834s == null) {
                        ContactLoaderManager contactLoaderManager = new ContactLoaderManager();
                        contactLoaderManager.init();
                        this.f25834s = contactLoaderManager;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.f25834s;
    }

    public DropBoxHelper getDropBoxHelper() {
        if (this.f25813Y == null) {
            synchronized (DropBoxHelper.class) {
                try {
                    if (this.f25813Y == null) {
                        this.f25813Y = new DropBoxHelper();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.f25813Y;
    }

    public ExceptionManager getExceptionManager() {
        if (this.f25798I == null) {
            synchronized (ExceptionManager.class) {
                try {
                    if (this.f25798I == null) {
                        ExceptionManager exceptionManager = new ExceptionManager();
                        exceptionManager.init();
                        this.f25798I = exceptionManager;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.f25798I;
    }

    public FacebookHelper getFacebookHelper() {
        if (this.f25806R == null) {
            synchronized (FacebookHelper.class) {
                try {
                    if (this.f25806R == null) {
                        this.f25806R = new FacebookHelper();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.f25806R;
    }

    public FcmManager getFcmManager() {
        if (this.f25825j == null) {
            synchronized (FcmManager.class) {
                try {
                    if (this.f25825j == null) {
                        FcmManager fcmManager = new FcmManager();
                        fcmManager.init();
                        this.f25825j = fcmManager;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.f25825j;
    }

    public FeedbackManager getFeedbackManager() {
        if (this.f25819d == null) {
            synchronized (FeedbackManager.class) {
                try {
                    if (this.f25819d == null) {
                        FeedbackManager feedbackManager = new FeedbackManager();
                        feedbackManager.init();
                        this.f25819d = feedbackManager;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.f25819d;
    }

    public FirstTimeExperienceCallLog getFirstTimeExperienceCallLog() {
        if (this.f25800K == null) {
            synchronized (FirstTimeExperienceCallLog.class) {
                try {
                    if (this.f25800K == null) {
                        FirstTimeExperienceCallLog firstTimeExperienceCallLog = new FirstTimeExperienceCallLog();
                        firstTimeExperienceCallLog.init();
                        this.f25800K = firstTimeExperienceCallLog;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.f25800K;
    }

    public FoursquareHelper getFoursquareHelper() {
        if (this.f25810V == null) {
            synchronized (FoursquareHelper.class) {
                try {
                    if (this.f25810V == null) {
                        this.f25810V = new FoursquareHelper();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.f25810V;
    }

    public GmailManager getGmailManager() {
        if (this.f25833r == null) {
            synchronized (GmailManager.class) {
                try {
                    if (this.f25833r == null) {
                        GmailManager gmailManager = new GmailManager();
                        gmailManager.init();
                        this.f25833r = gmailManager;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.f25833r;
    }

    public GoogleDriveHelper getGoogleDriveHelper() {
        if (this.f25814Z == null) {
            synchronized (GoogleDriveHelper.class) {
                try {
                    if (this.f25814Z == null) {
                        this.f25814Z = new GoogleDriveHelper();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.f25814Z;
    }

    public GoogleHelper getGoogleHelper() {
        if (this.f25808T == null) {
            synchronized (GoogleHelper.class) {
                try {
                    if (this.f25808T == null) {
                        this.f25808T = new GoogleHelper();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.f25808T;
    }

    public IncognitoCallManager getIncognitoCallManager() {
        if (this.f25837v == null) {
            synchronized (IncognitoCallManager.class) {
                try {
                    if (this.f25837v == null) {
                        IncognitoCallManager incognitoCallManager = new IncognitoCallManager();
                        incognitoCallManager.init();
                        this.f25837v = incognitoCallManager;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.f25837v;
    }

    public InstagramHelper getInstagramHelper() {
        if (this.f25811W == null) {
            synchronized (InstagramHelper.class) {
                try {
                    if (this.f25811W == null) {
                        this.f25811W = new InstagramHelper();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.f25811W;
    }

    public KeyguardActivityStateManager getKeyguardActivityStateManager() {
        if (this.f25802M == null) {
            synchronized (KeyguardActivityStateManager.class) {
                try {
                    if (this.f25802M == null) {
                        KeyguardActivityStateManager keyguardActivityStateManager = new KeyguardActivityStateManager();
                        keyguardActivityStateManager.init();
                        this.f25802M = keyguardActivityStateManager;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.f25802M;
    }

    public LocationPrefs getLocationPrefs() {
        if (this.f25794E == null) {
            synchronized (LocationPrefs.class) {
                try {
                    if (this.f25794E == null) {
                        LocationPrefs locationPrefs = new LocationPrefs();
                        locationPrefs.init();
                        this.f25794E = locationPrefs;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.f25794E;
    }

    public LockscreenKeyguardManager getLockscreenKeyguardManager() {
        if (this.f25828m == null) {
            synchronized (LockscreenKeyguardManager.class) {
                try {
                    if (this.f25828m == null) {
                        LockscreenKeyguardManager lockscreenKeyguardManager = new LockscreenKeyguardManager();
                        lockscreenKeyguardManager.init();
                        this.f25828m = lockscreenKeyguardManager;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.f25828m;
    }

    public NotificationManager getNotificationManager() {
        if (this.f25826k == null) {
            synchronized (NotificationManager.class) {
                try {
                    if (this.f25826k == null) {
                        NotificationManager notificationManager = new NotificationManager();
                        notificationManager.init();
                        this.f25826k = notificationManager;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.f25826k;
    }

    public OverlayManager getOverlayManager() {
        if (this.f25822g == null) {
            synchronized (OverlayManager.class) {
                try {
                    if (this.f25822g == null) {
                        OverlayManager overlayManager = new OverlayManager();
                        overlayManager.init();
                        this.f25822g = overlayManager;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.f25822g;
    }

    public PermissionManager getPermissionManager() {
        if (this.f25805Q == null) {
            synchronized (PermissionManager.class) {
                try {
                    if (this.f25805Q == null) {
                        PermissionManager permissionManager = new PermissionManager();
                        permissionManager.init();
                        this.f25805Q = permissionManager;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.f25805Q;
    }

    public PhoneManager getPhoneManager() {
        if (this.f25823h == null) {
            synchronized (PhoneManager.class) {
                try {
                    if (this.f25823h == null) {
                        PhoneManager phoneManager = new PhoneManager();
                        phoneManager.init();
                        this.f25823h = phoneManager;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.f25823h;
    }

    public PhoneStateManager getPhoneStateManager() {
        if (this.f25821f == null) {
            synchronized (PhoneStateManager.class) {
                try {
                    if (this.f25821f == null) {
                        PhoneStateManager phoneStateManager = new PhoneStateManager();
                        phoneStateManager.init();
                        this.f25821f = phoneStateManager;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.f25821f;
    }

    public PhoneVerifierManager getPhoneVerifierManager() {
        if (this.f25818c == null) {
            synchronized (PhoneVerifierManager.class) {
                try {
                    if (this.f25818c == null) {
                        PhoneVerifierManager phoneVerifierManager = new PhoneVerifierManager();
                        phoneVerifierManager.init();
                        this.f25818c = phoneVerifierManager;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.f25818c;
    }

    public PinterestHelper getPinterestHelper() {
        if (this.f25812X == null) {
            synchronized (PinterestHelper.class) {
                try {
                    if (this.f25812X == null) {
                        this.f25812X = new PinterestHelper();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.f25812X;
    }

    public PopupManager getPopupManager() {
        if (this.f25824i == null) {
            synchronized (PopupManager.class) {
                try {
                    if (this.f25824i == null) {
                        PopupManager popupManager = new PopupManager();
                        popupManager.init();
                        this.f25824i = popupManager;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.f25824i;
    }

    public LocalPrefsStore getPrefsStore() {
        if (this.f25832q == null) {
            synchronized (LocalPrefsStore.class) {
                try {
                    if (this.f25832q == null) {
                        LocalPrefsStore localPrefsStore = new LocalPrefsStore();
                        localPrefsStore.init();
                        this.f25832q = localPrefsStore;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.f25832q;
    }

    public ProximityManager getProximityManager() {
        if (this.f25830o == null) {
            synchronized (ProximityManager.class) {
                try {
                    if (this.f25830o == null) {
                        ProximityManager proximityManager = new ProximityManager();
                        proximityManager.init();
                        this.f25830o = proximityManager;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.f25830o;
    }

    public RecognizedContactNotificationManager getRecognizedContactNotificationManager() {
        if (this.f25835t == null) {
            synchronized (RecognizedContactNotificationManager.class) {
                try {
                    if (this.f25835t == null) {
                        RecognizedContactNotificationManager recognizedContactNotificationManager = new RecognizedContactNotificationManager();
                        recognizedContactNotificationManager.init();
                        this.f25835t = recognizedContactNotificationManager;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.f25835t;
    }

    public CallRecorderManager getRecordManager() {
        if (this.f25801L == null) {
            synchronized (CallRecorderManager.class) {
                try {
                    if (this.f25801L == null) {
                        CallRecorderManager callRecorderManager = new CallRecorderManager();
                        callRecorderManager.init();
                        this.f25801L = callRecorderManager;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.f25801L;
    }

    public RecorderTestManager getRecordTestManager() {
        if (this.f25816ar == null) {
            synchronized (RecorderTestManager.class) {
                try {
                    if (this.f25816ar == null) {
                        RecorderTestManager recorderTestManager = new RecorderTestManager();
                        recorderTestManager.init();
                        this.f25816ar = recorderTestManager;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.f25816ar;
    }

    public RemoteAccountHelper getRemoteAccountHelper(int i) {
        if (i != 1) {
            if (i == 4) {
                return getTwitterHelper();
            }
            if (i == 5) {
                return getGoogleHelper();
            }
            if (i == 6) {
                return getFoursquareHelper();
            }
            if (i == 7) {
                return getInstagramHelper();
            }
            if (i == 9) {
                return getPinterestHelper();
            }
            if (i == 10) {
                return getVKHelper();
            }
            return null;
        }
        return getFacebookHelper();
    }

    public RetentionAnalytics getRetentionAnalytics() {
        if (this.f25795F == null) {
            synchronized (RetentionAnalytics.class) {
                try {
                    if (this.f25795F == null) {
                        RetentionAnalytics retentionAnalytics = new RetentionAnalytics();
                        retentionAnalytics.init();
                        this.f25795F = retentionAnalytics;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.f25795F;
    }

    public ScreenOffReceiver getScreenOffReceiver() {
        if (this.f25804P == null) {
            synchronized (ScreenOffReceiver.class) {
                try {
                    if (this.f25804P == null) {
                        this.f25804P = new ScreenOffReceiver();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.f25804P;
    }

    public SignalNotificationDataExtractor getSignalNotificationDataExtractor() {
        if (this.f25790A == null) {
            synchronized (SignalNotificationDataExtractor.class) {
                try {
                    if (this.f25790A == null) {
                        SignalNotificationDataExtractor signalNotificationDataExtractor = new SignalNotificationDataExtractor();
                        signalNotificationDataExtractor.init();
                        this.f25790A = signalNotificationDataExtractor;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.f25790A;
    }

    public SimManager getSimManager() {
        if (this.f25799J == null) {
            synchronized (SimManager.class) {
                try {
                    if (this.f25799J == null) {
                        SimManager simManager = new SimManager();
                        simManager.init();
                        this.f25799J = simManager;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.f25799J;
    }

    public TelegramNotificationDataExtractor getTelegramNotificationDataExtractor() {
        if (this.f25840y == null) {
            synchronized (TelegramNotificationDataExtractor.class) {
                try {
                    if (this.f25840y == null) {
                        TelegramNotificationDataExtractor telegramNotificationDataExtractor = new TelegramNotificationDataExtractor();
                        telegramNotificationDataExtractor.init();
                        this.f25840y = telegramNotificationDataExtractor;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.f25840y;
    }

    public TwitterHelper getTwitterHelper() {
        if (this.f25807S == null) {
            synchronized (TwitterHelper.class) {
                try {
                    if (this.f25807S == null) {
                        this.f25807S = new TwitterHelper();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.f25807S;
    }

    public UserProfileManager getUserProfileManager() {
        if (this.f25817b == null) {
            synchronized (UserProfileManager.class) {
                try {
                    if (this.f25817b == null) {
                        UserProfileManager userProfileManager = new UserProfileManager();
                        userProfileManager.init();
                        this.f25817b = userProfileManager;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.f25817b;
    }

    public VKHelper getVKHelper() {
        if (this.f25809U == null) {
            synchronized (VKHelper.class) {
                try {
                    if (this.f25809U == null) {
                        this.f25809U = new VKHelper();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.f25809U;
    }

    public ViberNotificationDataExtractor getViberNotificationDataExtractor() {
        if (this.f25839x == null) {
            synchronized (ViberNotificationDataExtractor.class) {
                try {
                    if (this.f25839x == null) {
                        ViberNotificationDataExtractor viberNotificationDataExtractor = new ViberNotificationDataExtractor();
                        viberNotificationDataExtractor.init();
                        this.f25839x = viberNotificationDataExtractor;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.f25839x;
    }

    public VideoCacheManager getVideoCacheManager() {
        if (this.f25796G == null) {
            synchronized (VideoCacheManager.class) {
                try {
                    if (this.f25796G == null) {
                        VideoCacheManager videoCacheManager = new VideoCacheManager();
                        videoCacheManager.init();
                        this.f25796G = videoCacheManager;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.f25796G;
    }

    public VonageNotificationDataExtractor getVonageNotificationDataExtractor() {
        if (this.f25841z == null) {
            synchronized (VonageNotificationDataExtractor.class) {
                try {
                    if (this.f25841z == null) {
                        VonageNotificationDataExtractor vonageNotificationDataExtractor = new VonageNotificationDataExtractor();
                        vonageNotificationDataExtractor.init();
                        this.f25841z = vonageNotificationDataExtractor;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.f25841z;
    }

    public WearableClientHandler getWearableClientHandler() {
        if (this.f25791B == null) {
            synchronized (WearableClientHandler.class) {
                try {
                    if (this.f25791B == null) {
                        WearableClientHandler wearableClientHandler = new WearableClientHandler();
                        wearableClientHandler.init();
                        this.f25791B = wearableClientHandler;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.f25791B;
    }

    public WhatsAppNotificationDataExtractor getWhatsAppNotificationDataExtractor() {
        if (this.f25838w == null) {
            synchronized (WhatsAppNotificationDataExtractor.class) {
                try {
                    if (this.f25838w == null) {
                        WhatsAppNotificationDataExtractor whatsAppNotificationDataExtractor = new WhatsAppNotificationDataExtractor();
                        whatsAppNotificationDataExtractor.init();
                        this.f25838w = whatsAppNotificationDataExtractor;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.f25838w;
    }

    public WifiLockManager getWifiLockManager() {
        if (this.f25829n == null) {
            synchronized (WifiLockManager.class) {
                try {
                    if (this.f25829n == null) {
                        WifiLockManager wifiLockManager = new WifiLockManager();
                        wifiLockManager.init();
                        this.f25829n = wifiLockManager;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.f25829n;
    }

    public void setHelpersFromSync(boolean z) {
        getFacebookHelper().setFromSync(z);
        getGoogleHelper().setFromSync(z);
        getTwitterHelper().setFromSync(z);
        getFoursquareHelper().setFromSync(z);
        getInstagramHelper().setFromSync(z);
        getPinterestHelper().setFromSync(z);
        getVKHelper().setFromSync(z);
    }
}
