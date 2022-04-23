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
import com.callapp.contacts.api.helper.pinterest.PinterestHelper;
import com.callapp.contacts.api.helper.twitter.TwitterHelper;
import com.callapp.contacts.api.helper.vk.VKHelper;
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
import com.callapp.contacts.widget.floatingwidget.ui.callapp.CallAppChatHeadLifecycleObserverManager;
import java.lang.ref.WeakReference;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/Singletons.class */
public class Singletons {
    private static final Singletons N = new Singletons();
    private static WhatsAppSenderHelper aa;
    private static WhatsApp4BSenderHelper ab;
    private static FacebookImSenderHelper ac;
    private static MessengerImSenderHelper ad;
    private static TwitterImSenderHelper ae;
    private static InstagramImSenderHelper af;
    private static TelegramSenderHelper ag;
    private static ViberSenderHelper ah;
    private static GooglePlusHangoutSenderHelper ai;
    private static WeChatSenderHelper aj;
    private static SkypeSenderHelper ak;
    private static YahooSenderHelper al;
    private static EmailSenderHelper am;
    private static SmsSenderHelper an;
    private static DuoSenderHelper ao;
    private static SignalSenderHelper ap;
    private static AlloSenderHelper aq;
    public SignalNotificationDataExtractor A;
    public WearableClientHandler B;
    public CallAppRemoteConfigManager C;
    public CallAppClipboardManager D;
    public LocationPrefs E;
    public RetentionAnalytics F;
    public VideoCacheManager G;
    public WeakReference<CallAppApplication> H;
    public ExceptionManager I;
    public SimManager J;
    public FirstTimeExperienceCallLog K;
    public CallRecorderManager L;
    public KeyguardActivityStateManager M;
    private AreaCodesDB O;
    private ScreenOffReceiver P;
    private PermissionManager Q;
    private FacebookHelper R;
    private TwitterHelper S;
    private GoogleHelper T;
    private VKHelper U;
    private FoursquareHelper V;
    private InstagramHelper W;
    private PinterestHelper X;
    private DropBoxHelper Y;
    private GoogleDriveHelper Z;

    /* renamed from: a */
    public ActionsManager f14931a;
    private RecorderTestManager ar;

    /* renamed from: b */
    public UserProfileManager f14932b;

    /* renamed from: c */
    public PhoneVerifierManager f14933c;

    /* renamed from: d */
    public FeedbackManager f14934d;
    public CallAppChatHeadLifecycleObserverManager e;
    public PhoneStateManager f;
    public OverlayManager g;
    public PhoneManager h;
    public PopupManager i;
    public FcmManager j;
    public NotificationManager k;
    public CacheManager l;
    public LockscreenKeyguardManager m;
    public WifiLockManager n;
    public ProximityManager o;
    public AnalyticsManager p;
    public LocalPrefsStore q;
    public GmailManager r;
    public ContactLoaderManager s;
    public RecognizedContactNotificationManager t;
    public CatalogManager u;
    public IncognitoCallManager v;
    public WhatsAppNotificationDataExtractor w;
    public ViberNotificationDataExtractor x;
    public TelegramNotificationDataExtractor y;
    public VonageNotificationDataExtractor z;

    /* renamed from: com.callapp.contacts.manager.Singletons$2 */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/Singletons$2.class */
    public static /* synthetic */ class AnonymousClass2 {

        /* renamed from: a */
        static final /* synthetic */ int[] f14937a;

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
            f14937a = iArr;
            try {
                iArr[SenderType.WHATSAPP.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f14937a[SenderType.WHATSAPP4B.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f14937a[SenderType.TELEGRAM.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f14937a[SenderType.VIBER.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f14937a[SenderType.GOOGLE_PLUS_HANGOUT.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f14937a[SenderType.YAHOO.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f14937a[SenderType.WE_CHAT.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f14937a[SenderType.SKYPE.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f14937a[SenderType.EMAIL.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
            try {
                f14937a[SenderType.SMS.ordinal()] = 10;
            } catch (NoSuchFieldError e10) {
            }
            try {
                f14937a[SenderType.DUO.ordinal()] = 11;
            } catch (NoSuchFieldError e11) {
            }
            try {
                f14937a[SenderType.SIGNAL.ordinal()] = 12;
            } catch (NoSuchFieldError e12) {
            }
            try {
                f14937a[SenderType.ALLO.ordinal()] = 13;
            } catch (NoSuchFieldError e13) {
            }
            try {
                f14937a[SenderType.FACEBOOK.ordinal()] = 14;
            } catch (NoSuchFieldError e14) {
            }
            try {
                f14937a[SenderType.TWITTER.ordinal()] = 15;
            } catch (NoSuchFieldError e15) {
            }
            try {
                f14937a[SenderType.INSTAGRAM.ordinal()] = 16;
            } catch (NoSuchFieldError e16) {
            }
            try {
                f14937a[SenderType.MESSENGER.ordinal()] = 17;
            } catch (NoSuchFieldError e17) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/Singletons$SenderType.class */
    public enum SenderType {
        SMS(SmsSenderHelper.class, Singletons.an, Prefs.ct),
        EMAIL(EmailSenderHelper.class, Singletons.am, Prefs.cs),
        WHATSAPP(WhatsAppSenderHelper.class, Singletons.aa, Prefs.cj),
        WHATSAPP4B(WhatsApp4BSenderHelper.class, Singletons.ab, Prefs.ck),
        TELEGRAM(TelegramSenderHelper.class, Singletons.ag, Prefs.cl),
        WE_CHAT(WeChatSenderHelper.class, Singletons.aj, Prefs.co),
        VIBER(ViberSenderHelper.class, Singletons.ah, Prefs.cm),
        SKYPE(SkypeSenderHelper.class, Singletons.ak, Prefs.cp),
        GOOGLE_PLUS_HANGOUT(GooglePlusHangoutSenderHelper.class, Singletons.ai, Prefs.cn),
        YAHOO(YahooSenderHelper.class, Singletons.al, Prefs.cr),
        FACEBOOK(FacebookImSenderHelper.class, Singletons.ac, null),
        TWITTER(TwitterImSenderHelper.class, Singletons.ae, null),
        MESSENGER(MessengerImSenderHelper.class, Singletons.ad, Prefs.cq),
        INSTAGRAM(InstagramImSenderHelper.class, Singletons.af, null),
        DUO(DuoSenderHelper.class, Singletons.ao, Prefs.cv),
        SIGNAL(SignalSenderHelper.class, Singletons.ap, Prefs.cw),
        ALLO(AlloSenderHelper.class, Singletons.aq, Prefs.cx);
        
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
            switch (AnonymousClass2.f14937a[ordinal()]) {
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
            this.openCount.a();
        }

        public final long getUseCount() {
            return this.openCount.get().longValue();
        }
    }

    public static ImSender a(SenderType senderType) {
        return senderType.getSenderInstance();
    }

    public static <T> T a(String str) {
        return (T) get().getApplication().a(str);
    }

    public static void a(ManagedLifecycle managedLifecycle) {
        if (managedLifecycle != null) {
            try {
                managedLifecycle.destroy();
            } catch (RuntimeException e) {
                CLog.b(Singletons.class, e);
            }
        }
    }

    public static void b(SenderType senderType) {
        senderType.incUseCount();
    }

    public static Singletons get() {
        return N;
    }

    public ActionsManager getActionsManager() {
        if (this.f14931a == null) {
            synchronized (ActionsManager.class) {
                try {
                    if (this.f14931a == null) {
                        ActionsManager actionsManager = new ActionsManager();
                        actionsManager.init();
                        this.f14931a = actionsManager;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.f14931a;
    }

    public AnalyticsManager getAnalyticsManager() {
        if (this.p == null) {
            synchronized (AnalyticsManager.class) {
                try {
                    if (this.p == null) {
                        AnalyticsManager analyticsManager = new AnalyticsManager();
                        analyticsManager.init();
                        this.p = analyticsManager;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.p;
    }

    public CallAppApplication getApplication() {
        WeakReference<CallAppApplication> weakReference = this.H;
        if (weakReference == null) {
            return null;
        }
        return weakReference.get();
    }

    public AreaCodesDB getAreaCodesDB() {
        if (this.O == null) {
            synchronized (AreaCodesDB.class) {
                try {
                    if (this.O == null) {
                        this.O = new AreaCodesDB();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.O;
    }

    public CacheManager getCacheManager() {
        if (this.l == null) {
            synchronized (CacheManager.class) {
                try {
                    if (this.l == null) {
                        CacheManager cacheManager = new CacheManager();
                        cacheManager.init();
                        this.l = cacheManager;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.l;
    }

    public CallAppChatHeadLifecycleObserverManager getCallAppChatHeadLifecycleObserverManager() {
        if (this.e == null) {
            synchronized (CallAppChatHeadLifecycleObserverManager.class) {
                try {
                    if (this.e == null) {
                        CallAppChatHeadLifecycleObserverManager callAppChatHeadLifecycleObserverManager = new CallAppChatHeadLifecycleObserverManager();
                        callAppChatHeadLifecycleObserverManager.init();
                        this.e = callAppChatHeadLifecycleObserverManager;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.e;
    }

    public CallAppClipboardManager getCallAppClipboardManager() {
        if (this.D == null) {
            synchronized (CallAppClipboardManager.class) {
                try {
                    if (this.D == null) {
                        CallAppClipboardManager callAppClipboardManager = new CallAppClipboardManager();
                        callAppClipboardManager.init();
                        this.D = callAppClipboardManager;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.D;
    }

    public CallAppRemoteConfigManager getCallAppRemoteConfigManager() {
        if (this.C == null) {
            synchronized (CallAppRemoteConfigManager.class) {
                try {
                    if (this.C == null) {
                        CallAppRemoteConfigManager callAppRemoteConfigManager = new CallAppRemoteConfigManager();
                        callAppRemoteConfigManager.init();
                        this.C = callAppRemoteConfigManager;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.C;
    }

    public CatalogManager getCatalogManager() {
        if (this.u == null) {
            synchronized (CatalogManager.class) {
                try {
                    if (this.u == null) {
                        CatalogManager catalogManager = new CatalogManager();
                        catalogManager.init();
                        this.u = catalogManager;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.u;
    }

    public ContactLoaderManager getContactLoaderManager() {
        if (this.s == null) {
            synchronized (ContactLoaderManager.class) {
                try {
                    if (this.s == null) {
                        ContactLoaderManager contactLoaderManager = new ContactLoaderManager();
                        contactLoaderManager.init();
                        this.s = contactLoaderManager;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.s;
    }

    public DropBoxHelper getDropBoxHelper() {
        if (this.Y == null) {
            synchronized (DropBoxHelper.class) {
                try {
                    if (this.Y == null) {
                        this.Y = new DropBoxHelper();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.Y;
    }

    public ExceptionManager getExceptionManager() {
        if (this.I == null) {
            synchronized (ExceptionManager.class) {
                try {
                    if (this.I == null) {
                        ExceptionManager exceptionManager = new ExceptionManager();
                        exceptionManager.init();
                        this.I = exceptionManager;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.I;
    }

    public FacebookHelper getFacebookHelper() {
        if (this.R == null) {
            synchronized (FacebookHelper.class) {
                try {
                    if (this.R == null) {
                        this.R = new FacebookHelper();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.R;
    }

    public FcmManager getFcmManager() {
        if (this.j == null) {
            synchronized (FcmManager.class) {
                try {
                    if (this.j == null) {
                        FcmManager fcmManager = new FcmManager();
                        fcmManager.init();
                        this.j = fcmManager;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.j;
    }

    public FeedbackManager getFeedbackManager() {
        if (this.f14934d == null) {
            synchronized (FeedbackManager.class) {
                try {
                    if (this.f14934d == null) {
                        FeedbackManager feedbackManager = new FeedbackManager();
                        feedbackManager.init();
                        this.f14934d = feedbackManager;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.f14934d;
    }

    public FirstTimeExperienceCallLog getFirstTimeExperienceCallLog() {
        if (this.K == null) {
            synchronized (FirstTimeExperienceCallLog.class) {
                try {
                    if (this.K == null) {
                        FirstTimeExperienceCallLog firstTimeExperienceCallLog = new FirstTimeExperienceCallLog();
                        firstTimeExperienceCallLog.init();
                        this.K = firstTimeExperienceCallLog;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.K;
    }

    public FoursquareHelper getFoursquareHelper() {
        if (this.V == null) {
            synchronized (FoursquareHelper.class) {
                try {
                    if (this.V == null) {
                        this.V = new FoursquareHelper();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.V;
    }

    public GmailManager getGmailManager() {
        if (this.r == null) {
            synchronized (GmailManager.class) {
                try {
                    if (this.r == null) {
                        GmailManager gmailManager = new GmailManager();
                        gmailManager.init();
                        this.r = gmailManager;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.r;
    }

    public GoogleDriveHelper getGoogleDriveHelper() {
        if (this.Z == null) {
            synchronized (GoogleDriveHelper.class) {
                try {
                    if (this.Z == null) {
                        this.Z = new GoogleDriveHelper();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.Z;
    }

    public GoogleHelper getGoogleHelper() {
        if (this.T == null) {
            synchronized (GoogleHelper.class) {
                try {
                    if (this.T == null) {
                        this.T = new GoogleHelper();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.T;
    }

    public IncognitoCallManager getIncognitoCallManager() {
        if (this.v == null) {
            synchronized (IncognitoCallManager.class) {
                try {
                    if (this.v == null) {
                        IncognitoCallManager incognitoCallManager = new IncognitoCallManager();
                        incognitoCallManager.init();
                        this.v = incognitoCallManager;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.v;
    }

    public InstagramHelper getInstagramHelper() {
        if (this.W == null) {
            synchronized (InstagramHelper.class) {
                try {
                    if (this.W == null) {
                        this.W = new InstagramHelper();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.W;
    }

    public KeyguardActivityStateManager getKeyguardActivityStateManager() {
        if (this.M == null) {
            synchronized (KeyguardActivityStateManager.class) {
                try {
                    if (this.M == null) {
                        KeyguardActivityStateManager keyguardActivityStateManager = new KeyguardActivityStateManager();
                        keyguardActivityStateManager.init();
                        this.M = keyguardActivityStateManager;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.M;
    }

    public LocationPrefs getLocationPrefs() {
        if (this.E == null) {
            synchronized (LocationPrefs.class) {
                try {
                    if (this.E == null) {
                        LocationPrefs locationPrefs = new LocationPrefs();
                        locationPrefs.init();
                        this.E = locationPrefs;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.E;
    }

    public LockscreenKeyguardManager getLockscreenKeyguardManager() {
        if (this.m == null) {
            synchronized (LockscreenKeyguardManager.class) {
                try {
                    if (this.m == null) {
                        LockscreenKeyguardManager lockscreenKeyguardManager = new LockscreenKeyguardManager();
                        lockscreenKeyguardManager.init();
                        this.m = lockscreenKeyguardManager;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.m;
    }

    public NotificationManager getNotificationManager() {
        if (this.k == null) {
            synchronized (NotificationManager.class) {
                try {
                    if (this.k == null) {
                        NotificationManager notificationManager = new NotificationManager();
                        notificationManager.init();
                        this.k = notificationManager;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.k;
    }

    public OverlayManager getOverlayManager() {
        if (this.g == null) {
            synchronized (OverlayManager.class) {
                try {
                    if (this.g == null) {
                        OverlayManager overlayManager = new OverlayManager();
                        overlayManager.init();
                        this.g = overlayManager;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.g;
    }

    public PermissionManager getPermissionManager() {
        if (this.Q == null) {
            synchronized (PermissionManager.class) {
                try {
                    if (this.Q == null) {
                        PermissionManager permissionManager = new PermissionManager();
                        permissionManager.init();
                        this.Q = permissionManager;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.Q;
    }

    public PhoneManager getPhoneManager() {
        if (this.h == null) {
            synchronized (PhoneManager.class) {
                try {
                    if (this.h == null) {
                        PhoneManager phoneManager = new PhoneManager();
                        phoneManager.init();
                        this.h = phoneManager;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.h;
    }

    public PhoneStateManager getPhoneStateManager() {
        if (this.f == null) {
            synchronized (PhoneStateManager.class) {
                try {
                    if (this.f == null) {
                        PhoneStateManager phoneStateManager = new PhoneStateManager();
                        phoneStateManager.init();
                        this.f = phoneStateManager;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.f;
    }

    public PhoneVerifierManager getPhoneVerifierManager() {
        if (this.f14933c == null) {
            synchronized (PhoneVerifierManager.class) {
                try {
                    if (this.f14933c == null) {
                        PhoneVerifierManager phoneVerifierManager = new PhoneVerifierManager();
                        phoneVerifierManager.init();
                        this.f14933c = phoneVerifierManager;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.f14933c;
    }

    public PinterestHelper getPinterestHelper() {
        if (this.X == null) {
            synchronized (PinterestHelper.class) {
                try {
                    if (this.X == null) {
                        this.X = new PinterestHelper();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.X;
    }

    public PopupManager getPopupManager() {
        if (this.i == null) {
            synchronized (PopupManager.class) {
                try {
                    if (this.i == null) {
                        PopupManager popupManager = new PopupManager();
                        popupManager.init();
                        this.i = popupManager;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.i;
    }

    public LocalPrefsStore getPrefsStore() {
        if (this.q == null) {
            synchronized (LocalPrefsStore.class) {
                try {
                    if (this.q == null) {
                        LocalPrefsStore localPrefsStore = new LocalPrefsStore();
                        localPrefsStore.init();
                        this.q = localPrefsStore;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.q;
    }

    public ProximityManager getProximityManager() {
        if (this.o == null) {
            synchronized (ProximityManager.class) {
                try {
                    if (this.o == null) {
                        ProximityManager proximityManager = new ProximityManager();
                        proximityManager.init();
                        this.o = proximityManager;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.o;
    }

    public RecognizedContactNotificationManager getRecognizedContactNotificationManager() {
        if (this.t == null) {
            synchronized (RecognizedContactNotificationManager.class) {
                try {
                    if (this.t == null) {
                        RecognizedContactNotificationManager recognizedContactNotificationManager = new RecognizedContactNotificationManager();
                        recognizedContactNotificationManager.init();
                        this.t = recognizedContactNotificationManager;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.t;
    }

    public CallRecorderManager getRecordManager() {
        if (this.L == null) {
            synchronized (CallRecorderManager.class) {
                try {
                    if (this.L == null) {
                        CallRecorderManager callRecorderManager = new CallRecorderManager();
                        callRecorderManager.init();
                        this.L = callRecorderManager;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.L;
    }

    public RecorderTestManager getRecordTestManager() {
        if (this.ar == null) {
            synchronized (RecorderTestManager.class) {
                try {
                    if (this.ar == null) {
                        RecorderTestManager recorderTestManager = new RecorderTestManager();
                        recorderTestManager.init();
                        this.ar = recorderTestManager;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.ar;
    }

    public RemoteAccountHelper getRemoteAccountHelper(int i) {
        if (i == 1) {
            return getFacebookHelper();
        }
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
        if (i != 10) {
            return null;
        }
        return getVKHelper();
    }

    public RetentionAnalytics getRetentionAnalytics() {
        if (this.F == null) {
            synchronized (RetentionAnalytics.class) {
                try {
                    if (this.F == null) {
                        RetentionAnalytics retentionAnalytics = new RetentionAnalytics();
                        retentionAnalytics.init();
                        this.F = retentionAnalytics;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.F;
    }

    public ScreenOffReceiver getScreenOffReceiver() {
        if (this.P == null) {
            synchronized (ScreenOffReceiver.class) {
                try {
                    if (this.P == null) {
                        this.P = new ScreenOffReceiver();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.P;
    }

    public SignalNotificationDataExtractor getSignalNotificationDataExtractor() {
        if (this.A == null) {
            synchronized (SignalNotificationDataExtractor.class) {
                try {
                    if (this.A == null) {
                        SignalNotificationDataExtractor signalNotificationDataExtractor = new SignalNotificationDataExtractor();
                        signalNotificationDataExtractor.init();
                        this.A = signalNotificationDataExtractor;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.A;
    }

    public SimManager getSimManager() {
        if (this.J == null) {
            synchronized (SimManager.class) {
                try {
                    if (this.J == null) {
                        SimManager simManager = new SimManager();
                        simManager.init();
                        this.J = simManager;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.J;
    }

    public TelegramNotificationDataExtractor getTelegramNotificationDataExtractor() {
        if (this.y == null) {
            synchronized (TelegramNotificationDataExtractor.class) {
                try {
                    if (this.y == null) {
                        TelegramNotificationDataExtractor telegramNotificationDataExtractor = new TelegramNotificationDataExtractor();
                        telegramNotificationDataExtractor.init();
                        this.y = telegramNotificationDataExtractor;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.y;
    }

    public TwitterHelper getTwitterHelper() {
        if (this.S == null) {
            synchronized (TwitterHelper.class) {
                try {
                    if (this.S == null) {
                        this.S = new TwitterHelper();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.S;
    }

    public UserProfileManager getUserProfileManager() {
        if (this.f14932b == null) {
            synchronized (UserProfileManager.class) {
                try {
                    if (this.f14932b == null) {
                        UserProfileManager userProfileManager = new UserProfileManager();
                        userProfileManager.init();
                        this.f14932b = userProfileManager;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.f14932b;
    }

    public VKHelper getVKHelper() {
        if (this.U == null) {
            synchronized (VKHelper.class) {
                try {
                    if (this.U == null) {
                        this.U = new VKHelper();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.U;
    }

    public ViberNotificationDataExtractor getViberNotificationDataExtractor() {
        if (this.x == null) {
            synchronized (ViberNotificationDataExtractor.class) {
                try {
                    if (this.x == null) {
                        ViberNotificationDataExtractor viberNotificationDataExtractor = new ViberNotificationDataExtractor();
                        viberNotificationDataExtractor.init();
                        this.x = viberNotificationDataExtractor;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.x;
    }

    public VideoCacheManager getVideoCacheManager() {
        if (this.G == null) {
            synchronized (VideoCacheManager.class) {
                try {
                    if (this.G == null) {
                        VideoCacheManager videoCacheManager = new VideoCacheManager();
                        videoCacheManager.init();
                        this.G = videoCacheManager;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.G;
    }

    public VonageNotificationDataExtractor getVonageNotificationDataExtractor() {
        if (this.z == null) {
            synchronized (VonageNotificationDataExtractor.class) {
                try {
                    if (this.z == null) {
                        VonageNotificationDataExtractor vonageNotificationDataExtractor = new VonageNotificationDataExtractor();
                        vonageNotificationDataExtractor.init();
                        this.z = vonageNotificationDataExtractor;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.z;
    }

    public WearableClientHandler getWearableClientHandler() {
        if (this.B == null) {
            synchronized (WearableClientHandler.class) {
                try {
                    if (this.B == null) {
                        WearableClientHandler wearableClientHandler = new WearableClientHandler();
                        wearableClientHandler.init();
                        this.B = wearableClientHandler;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.B;
    }

    public WhatsAppNotificationDataExtractor getWhatsAppNotificationDataExtractor() {
        if (this.w == null) {
            synchronized (WhatsAppNotificationDataExtractor.class) {
                try {
                    if (this.w == null) {
                        WhatsAppNotificationDataExtractor whatsAppNotificationDataExtractor = new WhatsAppNotificationDataExtractor();
                        whatsAppNotificationDataExtractor.init();
                        this.w = whatsAppNotificationDataExtractor;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.w;
    }

    public WifiLockManager getWifiLockManager() {
        if (this.n == null) {
            synchronized (WifiLockManager.class) {
                try {
                    if (this.n == null) {
                        WifiLockManager wifiLockManager = new WifiLockManager();
                        wifiLockManager.init();
                        this.n = wifiLockManager;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.n;
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
