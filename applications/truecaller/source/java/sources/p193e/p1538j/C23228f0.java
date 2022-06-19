package p193e.p1538j;

import android.app.Application;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.AsyncTask;
import com.facebook.AccessToken;
import com.facebook.appevents.C1094v;
import com.facebook.appevents.p031m0.C1033f;
import com.facebook.internal.C1115a0;
import com.facebook.internal.C1127d0;
import com.facebook.internal.C1141j0;
import com.facebook.internal.C1146l0;
import com.facebook.internal.C1161o0;
import com.facebook.internal.C1168q0;
import com.facebook.internal.C1171r;
import com.facebook.internal.C1172r0;
import com.facebook.internal.p037u0.p040m.C1220a;
import com.mopub.network.ImpressionData;
import com.razorpay.AnalyticsConstants;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Locale;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.FutureTask;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Metadata;
import p193e.p1538j.C23271v0;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import s1.f0.r;
import s1.z.c.l;
@Metadata(d1 = {"��\u0090\u0001\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0010\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0017\n\u0002\u0010\"\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u0011\n\u0002\b\u0016\bÆ\u0002\u0018��2\u00020\u0001:\u0004\u008e\u0001\u008f\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010C\u001a\u00020D2\u0006\u0010E\u001a\u00020=H\u0007J\b\u0010F\u001a\u00020DH\u0007J\b\u0010G\u001a\u00020DH\u0007J\b\u0010H\u001a\u00020(H\u0007J\b\u0010I\u001a\u00020$H\u0007J\b\u0010J\u001a\u00020\u0004H\u0007J\n\u0010K\u001a\u0004\u0018\u00010\u0004H\u0007J\u0014\u0010L\u001a\u0004\u0018\u00010\u00042\b\u0010M\u001a\u0004\u0018\u00010$H\u0007J\b\u0010N\u001a\u00020(H\u0007J\b\u0010O\u001a\u00020(H\u0007J\n\u0010P\u001a\u0004\u0018\u00010+H\u0007J\b\u0010Q\u001a\u00020\u0015H\u0007J\b\u0010R\u001a\u00020\u0004H\u0007J\b\u0010S\u001a\u00020(H\u0007J\b\u0010T\u001a\u00020(H\u0007J\b\u0010U\u001a\u000200H\u0007J\b\u0010V\u001a\u00020\u0004H\u0007J\b\u0010W\u001a\u00020\u0004H\u0007J\b\u0010X\u001a\u00020\u0004H\u0007J\b\u0010Y\u001a\u00020\u0004H\u0007J\u0010\u0010Z\u001a\u00020(2\u0006\u0010M\u001a\u00020$H\u0007J\u000e\u0010[\u001a\b\u0012\u0004\u0012\u00020=0\\H\u0007J\b\u0010]\u001a\u00020(H\u0007J\b\u0010^\u001a\u00020_H\u0007J\b\u0010`\u001a\u00020\u0004H\u0007J\b\u0010a\u001a\u00020(H\u0007J\u0010\u0010b\u001a\u00020(2\u0006\u0010c\u001a\u00020\u0015H\u0007J\b\u00109\u001a\u00020(H\u0007J\b\u0010d\u001a\u00020(H\u0007J\b\u0010:\u001a\u00020(H\u0007J\u0010\u0010e\u001a\u00020(2\u0006\u0010E\u001a\u00020=H\u0007J\u0017\u0010f\u001a\u00020D2\b\u0010M\u001a\u0004\u0018\u00010$H\u0001¢\u0006\u0002\bgJ\u0018\u0010h\u001a\u00020D2\u0006\u0010M\u001a\u00020$2\u0006\u0010%\u001a\u00020\u0004H\u0003J\u0018\u0010i\u001a\u00020D2\u0006\u0010M\u001a\u00020$2\u0006\u0010%\u001a\u00020\u0004H\u0007J\u0010\u0010j\u001a\u00020D2\u0006\u0010E\u001a\u00020=H\u0007J\u0010\u0010k\u001a\u00020D2\u0006\u0010#\u001a\u00020$H\u0007J\u001a\u0010k\u001a\u00020D2\u0006\u0010#\u001a\u00020$2\b\u0010l\u001a\u0004\u0018\u00010mH\u0007J\u0018\u0010k\u001a\u00020D2\u0006\u0010#\u001a\u00020$2\u0006\u0010,\u001a\u00020\u0015H\u0007J\"\u0010k\u001a\u00020D2\u0006\u0010#\u001a\u00020$2\u0006\u0010,\u001a\u00020\u00152\b\u0010l\u001a\u0004\u0018\u00010mH\u0007J\u0010\u0010n\u001a\u00020D2\u0006\u0010o\u001a\u00020(H\u0007J\u0010\u0010p\u001a\u00020D2\u0006\u0010%\u001a\u00020\u0004H\u0007J\u0012\u0010q\u001a\u00020D2\b\u0010&\u001a\u0004\u0018\u00010\u0004H\u0007J\u0010\u0010r\u001a\u00020D2\u0006\u0010o\u001a\u00020(H\u0007J\u0010\u0010s\u001a\u00020D2\u0006\u0010o\u001a\u00020(H\u0007J\u0010\u0010t\u001a\u00020D2\u0006\u0010)\u001a\u00020+H\u0007J\u0012\u0010u\u001a\u00020D2\b\u0010v\u001a\u0004\u0018\u00010\u0004H\u0007J\u0010\u0010w\u001a\u00020D2\u0006\u0010o\u001a\u00020(H\u0007J\u001d\u0010x\u001a\u00020D2\u000e\u0010y\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010zH\u0007¢\u0006\u0002\u0010{J-\u0010x\u001a\u00020D2\u000e\u0010y\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010z2\u0006\u0010|\u001a\u00020\u00152\u0006\u0010}\u001a\u00020\u0015H\u0007¢\u0006\u0002\u0010~J\u0010\u0010\u007f\u001a\u00020D2\u0006\u0010/\u001a\u000200H\u0007J\u0011\u0010\u0080\u0001\u001a\u00020D2\u0006\u00101\u001a\u00020\u0004H\u0007J\u0011\u0010\u0081\u0001\u001a\u00020D2\u0006\u00102\u001a\u00020\u0004H\u0007J\u0017\u0010\u0082\u0001\u001a\u00020D2\u0006\u00103\u001a\u000204H\u0001¢\u0006\u0003\b\u0083\u0001J\u0012\u0010\u0084\u0001\u001a\u00020D2\u0007\u0010\u0085\u0001\u001a\u00020(H\u0007J\u0012\u0010\u0086\u0001\u001a\u00020D2\u0007\u0010\u0087\u0001\u001a\u00020(H\u0007J\u001a\u0010\u0088\u0001\u001a\u00020D2\u0006\u0010M\u001a\u00020$2\u0007\u0010\u0089\u0001\u001a\u00020(H\u0007J\u0011\u0010\u008a\u0001\u001a\u00020D2\u0006\u0010o\u001a\u00020(H\u0007J\u0012\u0010\u008b\u0001\u001a\u00020D2\u0007\u0010\u008c\u0001\u001a\u00020_H\u0007J\t\u0010\u008d\u0001\u001a\u00020DH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\b\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\n\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\r\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u000e\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u000f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0010\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0011\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0012\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0013\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0016\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0017\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0018\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0019\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u001a\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u001b\u001a\u00020\u001cX\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u001d\u001a\u00020\u0015X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u001e\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u001f\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u0010\u0010 \u001a\u0004\u0018\u00010\u0004X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010!\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u0010\u0010\"\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010#\u001a\u00020$X\u0082.¢\u0006\u0002\n��R\u0010\u0010%\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010&\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n��R\u0012\u0010'\u001a\u00020(8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n��R\u0014\u0010)\u001a\b\u0012\u0004\u0012\u00020+0*X\u0082.¢\u0006\u0002\n��R\u000e\u0010,\u001a\u00020\u0015X\u0082\u000e¢\u0006\u0002\n��R\u0012\u0010-\u001a\u0004\u0018\u00010(X\u0082\u000e¢\u0006\u0004\n\u0002\u0010.R\u0010\u0010/\u001a\u0004\u0018\u000100X\u0082\u000e¢\u0006\u0002\n��R\u000e\u00101\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n��R\u000e\u00102\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n��R\u000e\u00103\u001a\u000204X\u0082\u000e¢\u0006\u0002\n��R\u0012\u00105\u001a\u00020(8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n��R\u0012\u00106\u001a\u00020(8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n��R\u000e\u00107\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n��R\u000e\u00108\u001a\u00020(X\u0082\u000e¢\u0006\u0002\n��R\u000e\u00109\u001a\u00020(X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010:\u001a\u00020(X\u0082\u000e¢\u0006\u0002\n��R\u001e\u0010;\u001a\u0012\u0012\u0004\u0012\u00020=0<j\b\u0012\u0004\u0012\u00020=`>X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010?\u001a\u00020@X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010A\u001a\u00020BX\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0090\u0001"}, d2 = {"Lcom/facebook/FacebookSdk;", "", "()V", "ADVERTISER_ID_COLLECTION_ENABLED_PROPERTY", "", "APPLICATION_ID_PROPERTY", "APPLICATION_NAME_PROPERTY", "APP_EVENT_PREFERENCES", "ATTRIBUTION_PREFERENCES", "AUTO_INIT_ENABLED_PROPERTY", "AUTO_LOG_APP_EVENTS_ENABLED_PROPERTY", "CALLBACK_OFFSET_CHANGED_AFTER_INIT", "CALLBACK_OFFSET_NEGATIVE", "CALLBACK_OFFSET_PROPERTY", "CLIENT_TOKEN_PROPERTY", "CODELESS_DEBUG_LOG_ENABLED_PROPERTY", "DATA_PROCESSING_OPTIONS_PREFERENCES", "DATA_PROCESSION_OPTIONS", "DATA_PROCESSION_OPTIONS_COUNTRY", "DATA_PROCESSION_OPTIONS_STATE", "DEFAULT_CALLBACK_REQUEST_CODE_OFFSET", "", "FACEBOOK_COM", "FB_GG", "GAMING", "INSTAGRAM", "INSTAGRAM_COM", "LOCK", "Ljava/util/concurrent/locks/ReentrantLock;", "MAX_REQUEST_CODE_RANGE", "MONITOR_ENABLED_PROPERTY", "PUBLISH_ACTIVITY_PATH", "TAG", "WEB_DIALOG_THEME", "appClientToken", "applicationContext", "Landroid/content/Context;", "applicationId", "applicationName", "bypassAppSwitch", "", "cacheDir", "Lcom/facebook/internal/LockOnGetVariable;", "Ljava/io/File;", "callbackRequestCodeOffset", "codelessDebugLogEnabled", "Ljava/lang/Boolean;", "executor", "Ljava/util/concurrent/Executor;", "facebookDomain", "graphApiVersion", "graphRequestCreator", "Lcom/facebook/FacebookSdk$GraphRequestCreator;", "hasCustomTabsPrefetching", "ignoreAppSwitchToLoggedOut", "instagramDomain", "isDebugEnabledField", "isFullyInitialized", "isLegacyTokenUpgradeSupported", "loggingBehaviors", "Ljava/util/HashSet;", "Lcom/facebook/LoggingBehavior;", "Lkotlin/collections/HashSet;", "onProgressThreshold", "Ljava/util/concurrent/atomic/AtomicLong;", "sdkInitialized", "Ljava/util/concurrent/atomic/AtomicBoolean;", "addLoggingBehavior", "", "behavior", "clearLoggingBehaviors", "fullyInitialize", "getAdvertiserIDCollectionEnabled", "getApplicationContext", "getApplicationId", "getApplicationName", "getApplicationSignature", AnalyticsConstants.CONTEXT, "getAutoInitEnabled", "getAutoLogAppEventsEnabled", "getCacheDir", "getCallbackRequestCodeOffset", "getClientToken", "getCodelessDebugLogEnabled", "getCodelessSetupEnabled", "getExecutor", "getFacebookDomain", "getGraphApiVersion", "getGraphDomain", "getInstagramDomain", "getLimitEventAndDataUsage", "getLoggingBehaviors", "", "getMonitorEnabled", "getOnProgressThreshold", "", "getSdkVersion", "isDebugEnabled", "isFacebookRequestCode", "requestCode", "isInitialized", "isLoggingBehaviorEnabled", "loadDefaultsFromMetadata", "loadDefaultsFromMetadata$facebook_core_release", "publishInstallAndWaitForResponse", "publishInstallAsync", "removeLoggingBehavior", "sdkInitialize", "callback", "Lcom/facebook/FacebookSdk$InitializeCallback;", "setAdvertiserIDCollectionEnabled", "flag", "setApplicationId", "setApplicationName", "setAutoInitEnabled", "setAutoLogAppEventsEnabled", "setCacheDir", "setClientToken", "clientToken", "setCodelessDebugLogEnabled", "setDataProcessingOptions", "options", "", "([Ljava/lang/String;)V", ImpressionData.COUNTRY, "state", "([Ljava/lang/String;II)V", "setExecutor", "setFacebookDomain", "setGraphApiVersion", "setGraphRequestCreator", "setGraphRequestCreator$facebook_core_release", "setIsDebugEnabled", "enabled", "setLegacyTokenUpgradeSupported", "supported", "setLimitEventAndDataUsage", "limitEventUsage", "setMonitorEnabled", "setOnProgressThreshold", "threshold", "updateGraphDebugBehavior", "GraphRequestCreator", "InitializeCallback", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* renamed from: e.j.f0 */
/* loaded from: classes2-dex2jar.jar:e/j/f0.class */
public final class C23228f0 {

    /* renamed from: b */
    public static final HashSet<EnumC23248n0> f64292b;

    /* renamed from: c */
    public static Executor f64293c;

    /* renamed from: d */
    public static volatile String f64294d;

    /* renamed from: e */
    public static volatile String f64295e;

    /* renamed from: f */
    public static volatile String f64296f;

    /* renamed from: g */
    public static volatile Boolean f64297g;

    /* renamed from: i */
    public static volatile boolean f64299i;

    /* renamed from: j */
    public static Context f64300j;

    /* renamed from: n */
    public static boolean f64304n;

    /* renamed from: o */
    public static boolean f64305o;

    /* renamed from: p */
    public static boolean f64306p;

    /* renamed from: u */
    public static boolean f64311u;

    /* renamed from: a */
    public static final C23228f0 f64291a = new C23228f0();

    /* renamed from: h */
    public static AtomicLong f64298h = new AtomicLong(65536);

    /* renamed from: k */
    public static int f64301k = 64206;

    /* renamed from: l */
    public static final ReentrantLock f64302l = new ReentrantLock();

    /* renamed from: m */
    public static String f64303m = "v13.0";

    /* renamed from: q */
    public static final AtomicBoolean f64307q = new AtomicBoolean(false);

    /* renamed from: r */
    public static volatile String f64308r = "instagram.com";

    /* renamed from: s */
    public static volatile String f64309s = "facebook.com";

    /* renamed from: t */
    public static AbstractC23229a f64310t = C23247n.f64342a;

    @Metadata(d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\bá\u0080\u0001\u0018��2\u00020\u0001J0\u0010\u0002\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u00072\b\u0010\b\u001a\u0004\u0018\u00010\t2\b\u0010\n\u001a\u0004\u0018\u00010\u000bH&¨\u0006\f"}, d2 = {"Lcom/facebook/FacebookSdk$GraphRequestCreator;", "", "createPostRequest", "Lcom/facebook/GraphRequest;", "accessToken", "Lcom/facebook/AccessToken;", "publishUrl", "", "publishParams", "Lorg/json/JSONObject;", "callback", "Lcom/facebook/GraphRequest$Callback;", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* renamed from: e.j.f0$a */
    /* loaded from: classes2-dex2jar.jar:e/j/f0$a.class */
    public interface AbstractC23229a {
    }

    @Metadata(d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u0002\n��\bæ\u0080\u0001\u0018��2\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&¨\u0006\u0004"}, d2 = {"Lcom/facebook/FacebookSdk$InitializeCallback;", "", "onInitialized", "", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* renamed from: e.j.f0$b */
    /* loaded from: classes2-dex2jar.jar:e/j/f0$b.class */
    public interface AbstractC23230b {
        /* renamed from: a */
        void m7337a();
    }

    static {
        EnumC23248n0[] enumC23248n0Arr = {EnumC23248n0.DEVELOPER_ERRORS};
        l.e(enumC23248n0Arr, "elements");
        HashSet<EnumC23248n0> hashSet = new HashSet<>(C25225a.m3942Y1(1));
        C25225a.m3927b3(enumC23248n0Arr, hashSet);
        f64292b = hashSet;
        C1161o0 c1161o0 = C1161o0.f3173a;
        C1161o0 c1161o02 = C1161o0.f3173a;
    }

    /* renamed from: a */
    public static final Context m7354a() {
        C1172r0 c1172r0 = C1172r0.f3203a;
        C1172r0.m41649f();
        Context context = f64300j;
        if (context != null) {
            return context;
        }
        l.l("applicationContext");
        throw null;
    }

    /* renamed from: b */
    public static final String m7353b() {
        C1172r0 c1172r0 = C1172r0.f3203a;
        C1172r0.m41649f();
        String str = f64294d;
        if (str != null) {
            return str;
        }
        throw new C23222c0("A valid Facebook app id must be set in the AndroidManifest.xml or set by calling FacebookSdk.setApplicationId before initializing the sdk.");
    }

    /* renamed from: c */
    public static final boolean m7352c() {
        C23271v0 c23271v0 = C23271v0.f64400a;
        return C23271v0.m7309b();
    }

    /* renamed from: d */
    public static final String m7351d() {
        C1172r0 c1172r0 = C1172r0.f3203a;
        C1172r0.m41649f();
        String str = f64296f;
        if (str != null) {
            return str;
        }
        throw new C23222c0("A valid Facebook client token must be set in the AndroidManifest.xml or set by calling FacebookSdk.setClientToken before initializing the sdk. Visit https://developers.facebook.com/docs/android/getting-started#add-app_id for more information.");
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: e */
    public static final Executor m7350e() {
        ReentrantLock reentrantLock = f64302l;
        reentrantLock.lock();
        try {
            if (f64293c == null) {
                f64293c = AsyncTask.THREAD_POOL_EXECUTOR;
            }
            reentrantLock.unlock();
            Executor executor = f64293c;
            if (executor == null) {
                throw new IllegalStateException("Required value was null.".toString());
            }
            return executor;
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    /* renamed from: f */
    public static final String m7349f() {
        l.d(String.format("getGraphApiVersion: %s", Arrays.copyOf(new Object[]{f64303m}, 1)), "java.lang.String.format(format, *args)");
        return f64303m;
    }

    /* renamed from: g */
    public static final String m7348g() {
        String str;
        AccessToken.C0907c c0907c = AccessToken.f2460l;
        AccessToken m42030b = AccessToken.C0907c.m42030b();
        String str2 = m42030b != null ? m42030b.f2475k : null;
        String str3 = f64309s;
        if (str2 == null) {
            str = str3;
        } else if (l.a(str2, "gaming")) {
            str = r.t(str3, "facebook.com", "fb.gg", false, 4);
        } else {
            str = str3;
            if (l.a(str2, "instagram")) {
                str = r.t(str3, "facebook.com", "instagram.com", false, 4);
            }
        }
        return str;
    }

    /* renamed from: h */
    public static final boolean m7347h(Context context) {
        l.e(context, AnalyticsConstants.CONTEXT);
        C1172r0 c1172r0 = C1172r0.f3203a;
        C1172r0.m41649f();
        return context.getSharedPreferences("com.facebook.sdk.appEventPreferences", 0).getBoolean("limitEventUsage", false);
    }

    /* renamed from: i */
    public static final boolean m7346i() {
        boolean z;
        synchronized (C23228f0.class) {
            try {
                z = f64311u;
            } catch (Throwable th) {
                throw th;
            }
        }
        return z;
    }

    /* renamed from: j */
    public static final boolean m7345j() {
        return f64307q.get();
    }

    /* renamed from: k */
    public static final boolean m7344k(EnumC23248n0 enumC23248n0) {
        boolean z;
        l.e(enumC23248n0, "behavior");
        HashSet<EnumC23248n0> hashSet = f64292b;
        synchronized (hashSet) {
            if (f64299i) {
                if (hashSet.contains(enumC23248n0)) {
                    z = true;
                }
            }
            z = false;
        }
        return z;
    }

    /* renamed from: l */
    public static final void m7343l(Context context) {
        try {
            ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
            if (applicationInfo.metaData == null) {
                return;
            }
            if (f64294d == null) {
                Object obj = applicationInfo.metaData.get("com.facebook.sdk.ApplicationId");
                if (obj instanceof String) {
                    String str = (String) obj;
                    Locale locale = Locale.ROOT;
                    l.d(locale, "ROOT");
                    String lowerCase = str.toLowerCase(locale);
                    l.d(lowerCase, "(this as java.lang.String).toLowerCase(locale)");
                    if (r.y(lowerCase, "fb", false, 2)) {
                        String substring = str.substring(2);
                        l.d(substring, "(this as java.lang.String).substring(startIndex)");
                        f64294d = substring;
                    } else {
                        f64294d = str;
                    }
                } else if (obj instanceof Number) {
                    throw new C23222c0("App Ids cannot be directly placed in the manifest.They must be prefixed by 'fb' or be placed in the string resource file.");
                }
            }
            if (f64295e == null) {
                f64295e = applicationInfo.metaData.getString("com.facebook.sdk.ApplicationName");
            }
            if (f64296f == null) {
                f64296f = applicationInfo.metaData.getString("com.facebook.sdk.ClientToken");
            }
            if (f64301k == 64206) {
                f64301k = applicationInfo.metaData.getInt("com.facebook.sdk.CallbackOffset", 64206);
            }
            if (f64297g != null) {
                return;
            }
            f64297g = Boolean.valueOf(applicationInfo.metaData.getBoolean("com.facebook.sdk.CodelessDebugLogEnabled", false));
        } catch (PackageManager.NameNotFoundException e) {
        }
    }

    /* renamed from: m */
    public static final void m7342m(Context context) {
        synchronized (C23228f0.class) {
            try {
                l.e(context, "applicationContext");
                m7341n(context, null);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:57:0x0195 -> B:14:0x0040). Please submit an issue!!! */
    /* renamed from: n */
    public static final void m7341n(Context context, AbstractC23230b abstractC23230b) {
        synchronized (C23228f0.class) {
            try {
                l.e(context, "applicationContext");
                if (f64307q.get()) {
                    return;
                }
                C1172r0 c1172r0 = C1172r0.f3203a;
                l.e(context, AnalyticsConstants.CONTEXT);
                PackageManager packageManager = context.getPackageManager();
                if (packageManager != null) {
                    try {
                        packageManager.getActivityInfo(new ComponentName(context, "com.facebook.FacebookActivity"), 1);
                    } catch (PackageManager.NameNotFoundException e) {
                    }
                }
                C1172r0 c1172r02 = C1172r0.f3203a;
                l.e(context, AnalyticsConstants.CONTEXT);
                context.checkCallingOrSelfPermission("android.permission.INTERNET");
                Context applicationContext = context.getApplicationContext();
                l.d(applicationContext, "applicationContext.applicationContext");
                f64300j = applicationContext;
                C1094v.m41768a(context);
                Context context2 = f64300j;
                if (context2 == null) {
                    l.l("applicationContext");
                    throw null;
                }
                m7343l(context2);
                if (C1168q0.m41700B(f64294d)) {
                    throw new C23222c0("A valid Facebook app id must be set in the AndroidManifest.xml or set by calling FacebookSdk.setApplicationId before initializing the sdk.");
                }
                f64307q.set(true);
                C23271v0 c23271v0 = C23271v0.f64400a;
                boolean z = false;
                if (!C1220a.m41623b(C23271v0.class)) {
                    c23271v0.m7307d();
                    z = C23271v0.f64404e.m7300a();
                }
                if (z) {
                    f64311u = true;
                }
                Context context3 = f64300j;
                if (context3 == null) {
                    l.l("applicationContext");
                    throw null;
                }
                if (context3 instanceof Application) {
                    C23271v0 c23271v02 = C23271v0.f64400a;
                    if (C23271v0.m7309b()) {
                        C1033f c1033f = C1033f.f2846a;
                        Context context4 = f64300j;
                        if (context4 == null) {
                            l.l("applicationContext");
                            throw null;
                        }
                        C1033f.m41869c((Application) context4, f64294d);
                    }
                }
                C1127d0 c1127d0 = C1127d0.f3107a;
                C1127d0.m41741c();
                C1146l0 c1146l0 = C1146l0.f3146a;
                C1146l0.m41715l();
                Context context5 = f64300j;
                if (context5 == null) {
                    l.l("applicationContext");
                    throw null;
                }
                C1171r.m41655b(context5);
                new C1141j0(CallableC23245m.f64337a);
                C1115a0 c1115a0 = C1115a0.f3048a;
                C1115a0.m41752a(C1115a0.EnumC1117b.Instrument, C23227f.f64290a);
                C1115a0.m41752a(C1115a0.EnumC1117b.AppEvents, C23237j.f64317a);
                C1115a0.m41752a(C1115a0.EnumC1117b.ChromeCustomTabsPrefetching, C23243l.f64329a);
                C1115a0.m41752a(C1115a0.EnumC1117b.IgnoreAppSwitchToLoggedOut, C23231g.f64312a);
                C1115a0.m41752a(C1115a0.EnumC1117b.BypassAppSwitch, C23233h.f64313a);
                m7350e().execute(new FutureTask(new Callable() { // from class: e.j.i
                    @Override // java.util.concurrent.Callable
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                        To view partially-correct add '--show-bad-code' argument
                    */
                    public final java.lang.Object call() {
                        /*
                            Method dump skipped, instructions count: 483
                            To view this dump add '--comments-level debug' option
                        */
                        throw new UnsupportedOperationException("Method not decompiled: p193e.p1538j.CallableC23235i.call():java.lang.Object");
                    }
                }));
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: o */
    public static final void m7340o(boolean z) {
        C23271v0 c23271v0 = C23271v0.f64400a;
        if (C1220a.m41623b(C23271v0.class)) {
            return;
        }
        try {
            C23271v0.C23272a c23272a = C23271v0.f64406g;
            c23272a.f64412c = Boolean.valueOf(z);
            c23272a.f64413d = System.currentTimeMillis();
            if (C23271v0.f64402c.get()) {
                c23271v0.m7301j(c23272a);
            } else {
                c23271v0.m7307d();
            }
        } catch (Throwable th) {
            C1220a.m41624a(th, C23271v0.class);
        }
    }

    /* renamed from: p */
    public static final void m7339p(boolean z) {
        C23271v0 c23271v0 = C23271v0.f64400a;
        if (!C1220a.m41623b(C23271v0.class)) {
            try {
                C23271v0.C23272a c23272a = C23271v0.f64404e;
                c23272a.f64412c = Boolean.valueOf(z);
                c23272a.f64413d = System.currentTimeMillis();
                if (C23271v0.f64402c.get()) {
                    c23271v0.m7301j(c23272a);
                } else {
                    c23271v0.m7307d();
                }
            } catch (Throwable th) {
                C1220a.m41624a(th, C23271v0.class);
            }
        }
        if (z) {
            f64311u = true;
        }
    }

    /* renamed from: q */
    public static final void m7338q(boolean z) {
        C23271v0 c23271v0 = C23271v0.f64400a;
        if (!C1220a.m41623b(C23271v0.class)) {
            try {
                C23271v0.C23272a c23272a = C23271v0.f64405f;
                c23272a.f64412c = Boolean.valueOf(z);
                c23272a.f64413d = System.currentTimeMillis();
                if (C23271v0.f64402c.get()) {
                    c23271v0.m7301j(c23272a);
                } else {
                    c23271v0.m7307d();
                }
            } catch (Throwable th) {
                C1220a.m41624a(th, C23271v0.class);
            }
        }
        if (z) {
            Application application = (Application) m7354a();
            C1033f c1033f = C1033f.f2846a;
            C1033f.m41869c(application, m7353b());
        }
    }
}
