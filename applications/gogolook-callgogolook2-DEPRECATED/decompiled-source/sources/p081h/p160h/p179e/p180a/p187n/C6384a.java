package p081h.p160h.p179e.p180a.p187n;

import android.content.Context;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.exifinterface.media.ExifInterface;
import com.gogolook.whoscallsdk.core.num.data.Ask;
import com.gogolook.whoscallsdk.core.num.data.CInfo;
import com.gogolook.whoscallsdk.core.num.data.CustomHitrateObject;
import com.gogolook.whoscallsdk.core.num.data.DataWrapper;
import com.gogolook.whoscallsdk.core.num.data.Hitrate;
import com.gogolook.whoscallsdk.core.num.data.NumInfo;
import com.google.gson.Gson;
import gogolook.callgogolook2.gson.NumberInfo;
import gogolook.callgogolook2.realm.obj.iap.IapProductRealmObject;
import java.net.URLEncoder;
import java.nio.charset.Charset;
import java.nio.charset.UnsupportedCharsetException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import kotlin.Metadata;
import org.json.JSONException;
import org.json.JSONObject;
import p081h.p160h.p179e.p180a.C6334a;
import p081h.p160h.p179e.p180a.C6341b;
import p081h.p160h.p179e.p180a.C6344e;
import p081h.p160h.p179e.p180a.p183i.C6357a;
import p081h.p160h.p179e.p180a.p183i.C6359b;
import p081h.p160h.p179e.p180a.p184j.C6364a;
import p081h.p160h.p179e.p180a.p186m.AbstractC6378d;
import p081h.p160h.p179e.p180a.p186m.AsyncTaskC6381g;
import p081h.p160h.p179e.p180a.p186m.C6382h;
import p081h.p160h.p179e.p180a.p190p.C6432e;
import p081h.p160h.p179e.p180a.p190p.C6438i;
import p081h.p160h.p179e.p180a.p190p.C6439j;
import p626l.C14984n;
import p626l.C14986p;
import p626l.C14989s;
import p626l.p631e0.C14938c;
import p626l.p631e0.C14966w;
import p626l.p641z.p642c.AbstractC15107a;
import p626l.p641z.p643d.AbstractC15150l;
import p626l.p641z.p643d.C15136c0;
import p626l.p641z.p643d.C15149k;
import p626l.p641z.p643d.C15164z;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0094\u0001\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0010\b\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000f\bÆ\u0002\u0018��2\u00020\u0001:\u0001qB\u0007\b\u0002¢\u0006\u0002\u0010\u0002J*\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020\u00042\u0006\u0010&\u001a\u00020\u00042\b\u0010'\u001a\u0004\u0018\u00010\u00042\u0006\u0010(\u001a\u00020)H\u0002J\b\u0010*\u001a\u00020$H\u0007J\b\u0010+\u001a\u00020$H\u0007J\u0010\u0010,\u001a\u00020$2\u0006\u0010%\u001a\u00020\u0004H\u0007J,\u0010-\u001a\u00020.2\u0006\u0010%\u001a\u00020\u00042\u0006\u0010&\u001a\u00020\u00042\b\u0010/\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u00100\u001a\u000201H\u0002J\u0010\u00102\u001a\u00020$2\u0006\u0010%\u001a\u00020\u0004H\u0007J\u0010\u00103\u001a\u0002042\u0006\u00105\u001a\u00020\u0006H\u0007J\n\u00106\u001a\u0004\u0018\u00010\u0004H\u0002J\b\u00107\u001a\u00020\u0004H\u0002J\b\u00108\u001a\u00020\u0004H\u0002J%\u00109\u001a\u00020$2\u0006\u0010:\u001a\u0002012\u0006\u0010;\u001a\u0002012\u0006\u0010<\u001a\u00020 H��¢\u0006\u0002\b=J\u0018\u0010>\u001a\u0002012\u0006\u0010?\u001a\u00020@2\u0006\u0010A\u001a\u00020\u0004H\u0002J-\u0010B\u001a\u0002012\u000e\u0010C\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010D2\u000e\u0010E\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010DH��¢\u0006\u0002\bFJ\u0012\u0010G\u001a\u0004\u0018\u00010 2\u0006\u0010H\u001a\u00020\u0004H\u0002J*\u0010I\u001a\u00020J2\u0006\u0010%\u001a\u00020\u00042\u0006\u0010&\u001a\u00020\u00042\b\u0010/\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u00100\u001a\u000201J\u0010\u0010K\u001a\u00020$2\u0006\u0010L\u001a\u00020\u0004H\u0002J\u001d\u0010M\u001a\u00020$2\u0006\u0010%\u001a\u00020\u00042\u0006\u0010<\u001a\u00020 H\u0001¢\u0006\u0002\bNJ\b\u0010O\u001a\u00020$H\u0007J\u001c\u0010P\u001a\u00020$\"\u0004\b��\u0010Q2\f\u0010R\u001a\b\u0012\u0004\u0012\u0002HQ0SH\u0002J&\u0010T\u001a\u00020$2\b\b\u0001\u0010U\u001a\u00020\u00042\b\b\u0001\u0010&\u001a\u00020\u00042\b\u0010V\u001a\u0004\u0018\u00010WH\u0007J\u001c\u0010X\u001a\u0004\u0018\u00010 2\b\b\u0001\u0010%\u001a\u00020\u00042\u0006\u0010&\u001a\u00020\u0004H\u0007J0\u0010X\u001a\u0004\u0018\u00010 2\b\b\u0001\u0010%\u001a\u00020\u00042\u0006\u0010&\u001a\u00020\u00042\b\b\u0002\u0010Y\u001a\u0002012\b\b\u0002\u0010;\u001a\u000201H\u0007J.\u0010Z\u001a\u0004\u0018\u00010 2\b\b\u0001\u0010%\u001a\u00020\u00042\u0006\u0010&\u001a\u00020\u00042\b\b\u0002\u0010Y\u001a\u0002012\b\b\u0002\u0010;\u001a\u000201J2\u0010[\u001a\u0004\u0018\u00010 2\b\b\u0001\u0010%\u001a\u00020\u00042\b\b\u0001\u0010&\u001a\u00020\u00042\b\b\u0002\u0010Y\u001a\u0002012\b\b\u0002\u0010;\u001a\u000201H\u0007J\"\u0010\\\u001a\u0004\u0018\u00010 2\u0006\u0010%\u001a\u00020\u00042\u0006\u0010&\u001a\u00020\u00042\u0006\u0010]\u001a\u00020JH\u0002J&\u0010^\u001a\u00020$2\b\b\u0001\u0010%\u001a\u00020\u00042\b\b\u0001\u0010&\u001a\u00020\u00042\b\u0010V\u001a\u0004\u0018\u00010WH\u0007J.\u0010^\u001a\u00020$2\b\b\u0001\u0010%\u001a\u00020\u00042\b\b\u0001\u0010&\u001a\u00020\u00042\b\u0010V\u001a\u0004\u0018\u00010W2\u0006\u0010_\u001a\u00020`H\u0007J\u001f\u0010a\u001a\u00020$2\u0006\u0010<\u001a\u00020 2\b\u0010b\u001a\u0004\u0018\u00010cH��¢\u0006\u0002\bdJ\u001a\u0010a\u001a\u00020$2\u0006\u0010%\u001a\u00020\u00042\b\u0010b\u001a\u0004\u0018\u00010cH\u0007J@\u0010e\u001a\u00020$2\u0006\u0010f\u001a\u00020\u00062\u0006\u0010g\u001a\u00020\u00062\u0006\u0010h\u001a\u00020\u00062\u0006\u0010i\u001a\u00020\u00062\u0006\u0010j\u001a\u00020\u00062\u0006\u0010k\u001a\u00020\u00062\u0006\u0010l\u001a\u00020\u0006H\u0002J\u0018\u0010m\u001a\u00020$2\u0006\u0010<\u001a\u00020 2\u0006\u0010]\u001a\u00020JH\u0002J \u0010n\u001a\u00020$2\u0006\u0010%\u001a\u00020\u00042\u0006\u0010o\u001a\u00020.2\u0006\u0010p\u001a\u00020JH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\b\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\n\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u000b\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\f\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\r\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u000e\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u000f\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0010\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0011\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0012\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0013\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0014\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n��R\"\u0010\u0015\u001a\n \u0017*\u0004\u0018\u00010\u00160\u0016X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bR\u000e\u0010\u001c\u001a\u00020\u001dX\u0082\u0004¢\u0006\u0002\n��R\u001a\u0010\u001e\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020 0\u001fX\u0082\u0004¢\u0006\u0002\n��R\u001a\u0010!\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020 0\u001fX\u0082\u0004¢\u0006\u0002\n��R\u0010\u0010\"\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n��¨\u0006r"}, m815d2 = {"Lcom/gogolook/whoscallsdk/core/num/WCNumManager;", "", "()V", "DATA_SOURCE_CF", "", "HITRATE_CACHE_MAX_SIZE", "", "KEY_DATA_SOURCE", "MAX_SIZE", "NUM_IMAGE_DEFAULT_PREFIX_PRODUCTION", "NUM_IMAGE_DEFAULT_PREFIX_STAGING", "NUM_URL_PRODUCTION", "NUM_URL_STAGING", "PATH_NUM_V10", "PATH_NUM_V10_SIGNED", "PREF_NUM_SIGNED", "STATUS_CDN_EXPIRED", "STATUS_IN_DISK_CACHE", "STATUS_IN_MEMORY_CACHE", "STATUS_NOT_MODIFIED", "STATUS_OK", "executor", "Ljava/util/concurrent/ExecutorService;", "kotlin.jvm.PlatformType", "getExecutor", "()Ljava/util/concurrent/ExecutorService;", "setExecutor", "(Ljava/util/concurrent/ExecutorService;)V", "gson", "Lcom/google/gson/Gson;", "hitrateCache", "Lcom/gogolook/whoscallsdk/core/utils/LruCache;", "Lcom/gogolook/whoscallsdk/core/num/data/NumInfo;", "memCache", "sCdnSigned", "checkNumExpired", "", "num", "region", "etag", IapProductRealmObject.EXPIRED_TIME, "", "clearDiskCache", "clearMemoryCache", "clearNumberMemCache", "createNumSearchRequest", "Lcom/gogolook/whoscallsdk/core/WCApiRequestObject;", "eTag", "isForceUpdate", "", "decreaseAskCount", "getCache", "Lorg/json/JSONObject;", "type", "getCdnSigned", "getImagePrefix", "getNumUrl", "handleHitrate", "isAutoHitrate", "isTrackHitrate", "numInfo", "handleHitrate$whoscallSDK_core_whoscallDebug", "isContact", "context", "Landroid/content/Context;", "number", "isEqualList", "list1", "", "list2", "isEqualList$whoscallSDK_core_whoscallDebug", "jsonToNumInfo", "jsonString", "numSearchSync", "Lcom/gogolook/whoscallsdk/core/net/WCHttpResultObject;", "putCdnSigned", "signed", "putMemCache", "putMemCache$whoscallSDK_core_whoscallDebug", "removeExpiredCache", "runTaskAsync", ExifInterface.GPS_DIRECTION_TRUE, "func", "Lkotlin/Function0;", "search", "e164", "numCallback", "Lcom/gogolook/whoscallsdk/core/num/WCNumSearchCallback;", "searchInCache", "isAutoHitRate", "searchInDbcache", "searchInMemcache", "searchResultToNumInfo", "searchResult", "searchSync", "numSearchConfig", "Lcom/gogolook/whoscallsdk/core/num/WCNumSearchConfig;", "trackHitrate", "customHitrateObject", "Lcom/gogolook/whoscallsdk/core/num/data/CustomHitrateObject;", "trackHitrate$whoscallSDK_core_whoscallDebug", "trackingSearchIssue", "status", "memCost", "diskCost", "serverCost", "callbackCost", "totalCost", "bodySzie", "updateDataSource", "writeSearchLog", "apiRequestObject", "resultObject", "doAsync", "whoscallSDK_core_whoscallDebug"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: h.h.e.a.n.a */
/* loaded from: classes2-dex2jar.jar:h/h/e/a/n/a.class */
public final class C6384a {

    /* renamed from: c */
    public static String f15892c;

    /* renamed from: f */
    public static final C6384a f15895f = new C6384a();

    /* renamed from: a */
    public static final C6439j<String, NumInfo> f15890a = new C6439j<>(100);

    /* renamed from: b */
    public static final C6439j<String, NumInfo> f15891b = new C6439j<>(20);

    /* renamed from: d */
    public static final Gson f15893d = new Gson();

    /* renamed from: e */
    public static ExecutorService f15894e = Executors.newSingleThreadExecutor();

    /* renamed from: h.h.e.a.n.a$a */
    /* loaded from: classes2-dex2jar.jar:h/h/e/a/n/a$a.class */
    public static final class C6385a extends AbstractC15150l implements AbstractC15107a<C14989s> {

        /* renamed from: a */
        public final /* synthetic */ String f15896a;

        /* renamed from: b */
        public final /* synthetic */ String f15897b;

        /* renamed from: c */
        public final /* synthetic */ String f15898c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C6385a(String str, String str2, String str3) {
            super(0);
            this.f15896a = str;
            this.f15897b = str2;
            this.f15898c = str3;
        }

        /* renamed from: b */
        public final void m22848b() {
            C6382h b = C6384a.m22859b(C6384a.f15895f, this.f15896a, this.f15897b, this.f15898c, false, 8, null);
            C6438i.m22578d("[Debug] checkNumExpired status code = " + b.f15879a + ", num = " + this.f15896a + ", original etag = " + this.f15898c);
            int i = b.f15879a;
            if (i == 304) {
                C6384a aVar = C6384a.f15895f;
                NumInfo numInfo = (NumInfo) C6384a.f15890a.m22573a((C6439j) this.f15896a);
                if (numInfo != null) {
                    C6384a.f15895f.m22880a(numInfo, b);
                    numInfo.serverLatency = b.f15888j;
                }
                C6394d.m22831a(this.f15896a, this.f15898c, Long.valueOf(b.f15887i), numInfo);
            } else if (i == 200) {
                NumInfo a = C6384a.f15895f.m22870a(this.f15896a, this.f15897b, b);
                C6384a aVar2 = C6384a.f15895f;
                NumInfo numInfo2 = (NumInfo) C6384a.f15890a.m22573a((C6439j) this.f15896a);
                if (a == null) {
                    return;
                }
                if (numInfo2 != null) {
                    Ask ask = numInfo2.ask;
                    if (ask.ask_times == 0 && C6384a.f15895f.m22864a(ask.name, a.ask.name) && C6384a.f15895f.m22864a(numInfo2.ask.spam, a.ask.spam)) {
                        a.ask.ask_times = 0;
                    }
                    C6384a aVar3 = C6384a.f15895f;
                    C6384a.f15890a.m22572a(this.f15896a, a);
                    C6394d.m22831a(this.f15896a, b.f15882d, Long.valueOf(b.f15887i), a);
                    return;
                }
                C6384a aVar4 = C6384a.f15895f;
                C6384a.f15890a.m22572a(this.f15896a, a);
                String str = this.f15896a;
                String str2 = b.f15882d;
                C15149k.m383a((Object) str2, "searchResult.eTag");
                C6394d.m22832a(str, str2, b.f15887i, a);
            }
        }

        @Override // p626l.p641z.p642c.AbstractC15107a
        public /* synthetic */ C14989s invoke() {
            m22848b();
            return C14989s.f33022a;
        }
    }

    /* renamed from: h.h.e.a.n.a$b */
    /* loaded from: classes2-dex2jar.jar:h/h/e/a/n/a$b.class */
    public static final class C6386b extends AbstractC15150l implements AbstractC15107a<C14989s> {

        /* renamed from: a */
        public final /* synthetic */ String f15899a;

        /* renamed from: b */
        public final /* synthetic */ NumInfo f15900b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C6386b(String str, NumInfo numInfo) {
            super(0);
            this.f15899a = str;
            this.f15900b = numInfo;
        }

        /* renamed from: b */
        public final void m22847b() {
            C6394d.m22833a(this.f15899a, this.f15900b);
        }

        @Override // p626l.p641z.p642c.AbstractC15107a
        public /* synthetic */ C14989s invoke() {
            m22847b();
            return C14989s.f33022a;
        }
    }

    /* renamed from: h.h.e.a.n.a$c */
    /* loaded from: classes2-dex2jar.jar:h/h/e/a/n/a$c.class */
    public static final class RunnableC6387c implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ AbstractC15107a f15901a;

        public RunnableC6387c(AbstractC15107a aVar) {
            this.f15901a = aVar;
        }

        @Override // java.lang.Runnable
        public final void run() {
            this.f15901a.invoke();
        }
    }

    /* renamed from: h.h.e.a.n.a$d */
    /* loaded from: classes2-dex2jar.jar:h/h/e/a/n/a$d.class */
    public static final class C6388d extends AbstractC15150l implements AbstractC15107a<C14989s> {

        /* renamed from: a */
        public final /* synthetic */ String f15902a;

        /* renamed from: b */
        public final /* synthetic */ C15164z f15903b;

        /* renamed from: c */
        public final /* synthetic */ C15164z f15904c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C6388d(String str, C15164z zVar, C15164z zVar2) {
            super(0);
            this.f15902a = str;
            this.f15903b = zVar;
            this.f15904c = zVar2;
        }

        /* renamed from: b */
        public final void m22846b() {
            String str = this.f15902a;
            String str2 = ((C6382h) this.f15903b.f33152a).f15882d;
            C15149k.m383a((Object) str2, "searchResult.eTag");
            long j = ((C6382h) this.f15903b.f33152a).f15887i;
            NumInfo numInfo = (NumInfo) this.f15904c.f33152a;
            if (numInfo != null) {
                C6394d.m22832a(str, str2, j, numInfo);
            } else {
                C15149k.m378b();
                throw null;
            }
        }

        @Override // p626l.p641z.p642c.AbstractC15107a
        public /* synthetic */ C14989s invoke() {
            m22846b();
            return C14989s.f33022a;
        }
    }

    /* renamed from: h.h.e.a.n.a$e */
    /* loaded from: classes2-dex2jar.jar:h/h/e/a/n/a$e.class */
    public static final class CallableC6389e implements Callable<NumInfo> {

        /* renamed from: a */
        public final /* synthetic */ String f15905a;

        /* renamed from: b */
        public final /* synthetic */ String f15906b;

        /* renamed from: c */
        public final /* synthetic */ boolean f15907c;

        /* renamed from: d */
        public final /* synthetic */ C6392c f15908d;

        public CallableC6389e(String str, String str2, boolean z, C6392c cVar) {
            this.f15905a = str;
            this.f15906b = str2;
            this.f15907c = z;
            this.f15908d = cVar;
        }

        /* renamed from: a */
        public NumInfo call() {
            try {
                return C6384a.f15895f.m22865a(this.f15905a, this.f15906b, this.f15907c, this.f15908d.f15915d >= 2);
            } catch (Exception e) {
                return null;
            }
        }
    }

    /* renamed from: h.h.e.a.n.a$f */
    /* loaded from: classes2-dex2jar.jar:h/h/e/a/n/a$f.class */
    public static final class C6390f extends AbstractC15150l implements AbstractC15107a<C14989s> {

        /* renamed from: a */
        public final /* synthetic */ NumInfo f15909a;

        /* renamed from: b */
        public final /* synthetic */ CustomHitrateObject f15910b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C6390f(NumInfo numInfo, CustomHitrateObject customHitrateObject) {
            super(0);
            this.f15909a = numInfo;
            this.f15910b = customHitrateObject;
        }

        /* renamed from: b */
        public final void m22844b() {
            try {
                Hitrate hitrate = new Hitrate(null, null, null, null, 0L, null, 63, null);
                StringBuilder sb = new StringBuilder();
                C6334a s = C6334a.m23211s();
                C15149k.m383a((Object) s, "WCApiManager.getInstance()");
                sb.append(s.m23220j());
                sb.append("_");
                sb.append(System.currentTimeMillis());
                hitrate.setId(sb.toString());
                hitrate.setAws_id(this.f15909a.getAmzId$whoscallSDK_core_whoscallDebug());
                hitrate.setData_id(this.f15909a.getEtag$whoscallSDK_core_whoscallDebug());
                hitrate.setNginx_id(this.f15909a.getRequestId$whoscallSDK_core_whoscallDebug());
                hitrate.getData().setS_info(this.f15909a.hit);
                hitrate.getData().getC_info().setBiz_category(this.f15909a.bizcate);
                hitrate.getData().getC_info().setStatus(this.f15909a.getDataSource$whoscallSDK_core_whoscallDebug());
                CInfo c_info = hitrate.getData().getC_info();
                C6384a aVar = C6384a.f15895f;
                C6334a s2 = C6334a.m23211s();
                C15149k.m383a((Object) s2, "WCApiManager.getInstance()");
                Context i = s2.m23221i();
                C15149k.m383a((Object) i, "WCApiManager.getInstance().context");
                c_info.setContact(aVar.m22882a(i, this.f15909a.num));
                hitrate.getData().getC_info().setOri_num(this.f15909a.num);
                hitrate.getData().getC_info().setName(this.f15909a.hasName());
                hitrate.getData().getC_info().setName_d(this.f15909a.name);
                hitrate.getData().getC_info().setName_type(this.f15909a.type);
                if (this.f15909a.getDataSource$whoscallSDK_core_whoscallDebug() == NumInfo.SOURCE_SERVER) {
                    hitrate.getData().getC_info().setServer_latency(this.f15909a.serverLatency);
                } else {
                    hitrate.getData().getC_info().setServer_latency(-1);
                }
                hitrate.getData().getC_info().setSpam(this.f15909a.isSpam());
                hitrate.getData().getC_info().setSpam_type(this.f15909a.spam);
                if (this.f15910b != null) {
                    hitrate.getData().getC_info().setName(this.f15910b.name);
                    CInfo c_info2 = hitrate.getData().getC_info();
                    String str = this.f15910b.name_d;
                    if (str == null) {
                        str = this.f15909a.name;
                    }
                    c_info2.setName_d(str);
                    CInfo c_info3 = hitrate.getData().getC_info();
                    String str2 = this.f15910b.name_type;
                    if (str2 == null) {
                        str2 = this.f15909a.type;
                    }
                    c_info3.setName_type(str2);
                    hitrate.getData().getC_info().setLnglat(this.f15910b.lnglat);
                    hitrate.getData().getC_info().setDuration(this.f15910b.duration);
                    CInfo c_info4 = hitrate.getData().getC_info();
                    String str3 = this.f15910b.lookup_source;
                    if (str3 == null) {
                        str3 = hitrate.getData().getC_info().getLookup_source();
                    }
                    c_info4.setLookup_source(str3);
                    DataWrapper data = hitrate.getData();
                    Map<String, ? extends Object> map = this.f15910b.off_info;
                    if (map == null) {
                        map = new HashMap<>();
                    }
                    data.setOff_info(map);
                    DataWrapper data2 = hitrate.getData();
                    Map<String, ? extends Object> map2 = this.f15910b.hit;
                    if (map2 == null) {
                        map2 = hitrate.getData().getS_info();
                    }
                    data2.setS_info(map2);
                    CInfo c_info5 = hitrate.getData().getC_info();
                    String str4 = this.f15910b.num;
                    if (str4 == null) {
                        str4 = "";
                    }
                    c_info5.setNum(str4);
                    CInfo c_info6 = hitrate.getData().getC_info();
                    String str5 = this.f15910b.ori_num;
                    if (str5 == null) {
                        str5 = hitrate.getData().getC_info().getOri_num();
                    }
                    c_info6.setOri_num(str5);
                }
                if (C6344e.m23196a()) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("[Debug] hitrate = ");
                    C6384a aVar2 = C6384a.f15895f;
                    sb2.append(new JSONObject(C6384a.f15893d.m30988a(hitrate)).toString());
                    C6438i.m22578d(sb2.toString());
                }
                C6384a aVar3 = C6384a.f15895f;
                C6357a.m23024a(new JSONObject(C6384a.f15893d.m30988a(hitrate)), C6359b.m23012b(), (AbstractC6378d) null);
            } catch (JSONException e) {
                C6438i.m22583a(e);
            }
        }

        @Override // p626l.p641z.p642c.AbstractC15107a
        public /* synthetic */ C14989s invoke() {
            m22844b();
            return C14989s.f33022a;
        }
    }

    /* renamed from: a */
    public static final NumInfo m22871a(@NonNull String str, String str2) {
        C15149k.m377b(str, "num");
        C15149k.m377b(str2, "region");
        return m22856b(str, str2, true, true);
    }

    /* renamed from: a */
    public static /* synthetic */ C6341b m22875a(C6384a aVar, String str, String str2, String str3, boolean z, int i, Object obj) {
        if ((i & 8) != 0) {
            z = false;
        }
        return aVar.m22866a(str, str2, str3, z);
    }

    /* renamed from: a */
    public static final void m22873a(String str, CustomHitrateObject customHitrateObject) {
        NumInfo a;
        C15149k.m377b(str, "num");
        if (!TextUtils.isEmpty(str) && customHitrateObject != null && (a = f15891b.m22573a((C6439j<String, NumInfo>) str)) != null) {
            f15895f.m22881a(a, customHitrateObject);
            f15891b.m22570b(str);
        }
    }

    /* renamed from: a */
    public static final void m22869a(@NonNull String str, @NonNull String str2, AbstractC6391b bVar) {
        C15149k.m377b(str, "num");
        C15149k.m377b(str2, "region");
        m22868a(str, str2, bVar, C6392c.f15911e.m22843a());
    }

    /* JADX WARN: Type inference failed for: r1v19, types: [com.gogolook.whoscallsdk.core.num.data.NumInfo, T] */
    /* JADX WARN: Type inference failed for: r1v23, types: [T, h.h.e.a.m.h] */
    /* JADX WARN: Type inference failed for: r1v31, types: [com.gogolook.whoscallsdk.core.num.data.NumInfo, T] */
    /* JADX WARN: Type inference failed for: r1v58, types: [com.gogolook.whoscallsdk.core.num.data.NumInfo, T] */
    /* JADX WARN: Type inference failed for: r1v63, types: [com.gogolook.whoscallsdk.core.num.data.NumInfo, T] */
    /* JADX WARN: Type inference failed for: r1v7, types: [com.gogolook.whoscallsdk.core.num.data.NumInfo, T] */
    /* renamed from: a */
    public static final void m22868a(@NonNull String str, @NonNull String str2, AbstractC6391b bVar, C6392c cVar) {
        int i;
        int i2;
        int i3;
        int i4;
        C15149k.m377b(str, "num");
        C15149k.m377b(str2, "region");
        C15149k.m377b(cVar, "numSearchConfig");
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            long currentTimeMillis = System.currentTimeMillis();
            C15164z zVar = new C15164z();
            boolean z = false;
            boolean z2 = cVar.f15912a && !cVar.f15913b;
            long currentTimeMillis2 = System.currentTimeMillis();
            zVar.f33152a = m22853c(str, str2, z2, cVar.f15915d >= 3);
            int currentTimeMillis3 = (int) (System.currentTimeMillis() - currentTimeMillis2);
            if (((NumInfo) zVar.f33152a) != null) {
                if (bVar != null) {
                    long currentTimeMillis4 = System.currentTimeMillis();
                    bVar.mo4668a(201, NumInfo.copy$default((NumInfo) zVar.f33152a, null, null, null, null, null, null, null, null, null, null, null, null, null, 0, 0, null, null, null, null, null, 0, null, 0L, null, null, null, 0, 134217727, null));
                    i4 = ((int) (System.currentTimeMillis() - currentTimeMillis4)) + 0;
                } else {
                    i4 = 0;
                }
                i = i4;
                if (!cVar.f15913b) {
                    if (!z2) {
                        f15895f.m22883a(201, currentTimeMillis3, -1, -1, i4, (int) (System.currentTimeMillis() - currentTimeMillis), 0);
                        return;
                    }
                    return;
                }
            } else if (bVar != null) {
                long currentTimeMillis5 = System.currentTimeMillis();
                bVar.mo7787b();
                i = ((int) (System.currentTimeMillis() - currentTimeMillis5)) + 0;
            } else {
                i = 0;
            }
            if (((NumInfo) zVar.f33152a) == null) {
                long currentTimeMillis6 = System.currentTimeMillis();
                if (!z2) {
                    Future submit = f15894e.submit(new CallableC6389e(str, str2, z2, cVar));
                    try {
                        zVar.f33152a = (NumInfo) submit.get(800L, TimeUnit.MILLISECONDS);
                    } catch (TimeoutException e) {
                        submit.cancel(true);
                    }
                } else {
                    C6384a aVar = f15895f;
                    if (cVar.f15915d >= 2) {
                        z = true;
                    }
                    zVar.f33152a = aVar.m22865a(str, str2, z2, z);
                }
                int currentTimeMillis7 = (int) (System.currentTimeMillis() - currentTimeMillis6);
                if (((NumInfo) zVar.f33152a) != null) {
                    int i5 = i;
                    if (bVar != null) {
                        long currentTimeMillis8 = System.currentTimeMillis();
                        bVar.mo4668a(202, NumInfo.copy$default((NumInfo) zVar.f33152a, null, null, null, null, null, null, null, null, null, null, null, null, null, 0, 0, null, null, null, null, null, 0, null, 0L, null, null, null, 0, 134217727, null));
                        i5 = i + ((int) (System.currentTimeMillis() - currentTimeMillis8));
                    }
                    i = i5;
                    if (!cVar.f15913b) {
                        if (!z2) {
                            f15895f.m22883a(202, currentTimeMillis3, currentTimeMillis7, -1, i5, (int) (System.currentTimeMillis() - currentTimeMillis), 0);
                            return;
                        }
                        return;
                    }
                } else {
                    i = i;
                    if (bVar != null) {
                        long currentTimeMillis9 = System.currentTimeMillis();
                        bVar.mo7788a();
                        i += (int) (System.currentTimeMillis() - currentTimeMillis9);
                    }
                }
                i2 = currentTimeMillis7;
            } else {
                i2 = -1;
            }
            int i6 = -403;
            if (cVar.f15914c) {
                long currentTimeMillis10 = System.currentTimeMillis();
                C15164z zVar2 = new C15164z();
                zVar2.f33152a = f15895f.m22857b(str, str2, (String) null, cVar.f15913b);
                int currentTimeMillis11 = (int) (System.currentTimeMillis() - currentTimeMillis10);
                T t = zVar2.f33152a;
                if (((C6382h) t).f15879a == 200) {
                    zVar.f33152a = f15895f.m22870a(str, str2, (C6382h) t);
                    T t2 = zVar.f33152a;
                    if (((NumInfo) t2) != null) {
                        f15890a.m22572a(str, (NumInfo) t2);
                        f15895f.m22863a(new C6388d(str, zVar2, zVar));
                        int i7 = i;
                        if (bVar != null) {
                            ((NumInfo) zVar.f33152a).setDataSource$whoscallSDK_core_whoscallDebug(NumInfo.SOURCE_SERVER);
                            long currentTimeMillis12 = System.currentTimeMillis();
                            bVar.mo4668a(200, NumInfo.copy$default((NumInfo) zVar.f33152a, null, null, null, null, null, null, null, null, null, null, null, null, null, 0, 0, null, null, null, null, null, 0, null, 0L, null, null, null, 0, 134217727, null));
                            i7 = i + ((int) (System.currentTimeMillis() - currentTimeMillis12));
                        }
                        f15895f.m22862a(cVar.f15912a, true, (NumInfo) zVar.f33152a);
                        if (!z2) {
                            if (!TextUtils.isEmpty(((C6382h) zVar2.f33152a).f15881c)) {
                                String str3 = ((C6382h) zVar2.f33152a).f15881c;
                                C15149k.m383a((Object) str3, "searchResult.resultString");
                                Charset charset = C14938c.f32979a;
                                if (str3 != null) {
                                    byte[] bytes = str3.getBytes(charset);
                                    C15149k.m383a((Object) bytes, "(this as java.lang.String).getBytes(charset)");
                                    i3 = bytes.length;
                                } else {
                                    throw new C14986p("null cannot be cast to non-null type java.lang.String");
                                }
                            } else {
                                i3 = 0;
                            }
                            f15895f.m22883a(200, currentTimeMillis3, i2, currentTimeMillis11, i7, (int) (System.currentTimeMillis() - currentTimeMillis), i3);
                            return;
                        }
                        return;
                    }
                    ((C6382h) zVar2.f33152a).f15879a = -400;
                } else {
                    C6432e.m22605a("NumError", String.valueOf(((C6382h) t).f15879a));
                }
                i6 = ((C6382h) zVar2.f33152a).f15879a;
            }
            if (bVar != null) {
                bVar.mo4669a(i6);
            }
            if (((NumInfo) zVar.f33152a) == null) {
                zVar.f33152a = new NumInfo(null, null, null, null, null, null, null, null, null, null, null, null, null, 0, 0, null, null, null, null, null, 0, null, 0L, null, null, null, 0, 134217727, null);
            }
            T t3 = zVar.f33152a;
            ((NumInfo) t3).num = str;
            ((NumInfo) t3).setDataSource$whoscallSDK_core_whoscallDebug(i6);
            C6438i.m22579c("[Info][Num] search error : " + ((NumInfo) zVar.f33152a).toString());
            f15895f.m22862a(cVar.f15912a, true, (NumInfo) zVar.f33152a);
        } else if (bVar != null) {
            bVar.mo4669a(-100);
        }
    }

    /* renamed from: b */
    public static final NumInfo m22856b(@NonNull String str, String str2, boolean z, boolean z2) {
        C15149k.m377b(str, "num");
        C15149k.m377b(str2, "region");
        NumInfo c = m22853c(str, str2, z, z2);
        return c != null ? c : f15895f.m22865a(str, str2, z, z2);
    }

    /* renamed from: b */
    public static /* synthetic */ C6382h m22859b(C6384a aVar, String str, String str2, String str3, boolean z, int i, Object obj) {
        if ((i & 8) != 0) {
            z = false;
        }
        return aVar.m22857b(str, str2, str3, z);
    }

    /* renamed from: c */
    public static final NumInfo m22853c(@NonNull String str, @NonNull String str2, boolean z, boolean z2) {
        C15149k.m377b(str, "num");
        C15149k.m377b(str2, "region");
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            NumInfo a = f15890a.m22573a((C6439j<String, NumInfo>) str);
            if (a == null || a.getExpiredTime$whoscallSDK_core_whoscallDebug() <= System.currentTimeMillis()) {
                return null;
            }
            if (!TextUtils.isEmpty(a.getRegion()) && !C14966w.m715b(a.getRegion(), str2, true)) {
                return null;
            }
            a.setDataSource$whoscallSDK_core_whoscallDebug(NumInfo.SOURCE_MEMCACHE);
            f15895f.m22862a(z, z2, a);
            return a;
        } catch (Exception e) {
            if (C6344e.m23196a()) {
            }
            return null;
        }
    }

    /* renamed from: c */
    public static final void m22854c(String str) {
        C15149k.m377b(str, "num");
        if (!TextUtils.isEmpty(str)) {
            f15890a.m22570b(str);
        }
    }

    /* renamed from: d */
    public static final void m22852d() {
        C6394d.m22842a();
    }

    /* renamed from: d */
    public static final void m22851d(String str) {
        NumInfo a;
        Ask ask;
        int i;
        C15149k.m377b(str, "num");
        if (!TextUtils.isEmpty(str) && (a = f15890a.m22573a((C6439j<String, NumInfo>) str)) != null && (i = (ask = a.ask).ask_times) > 0) {
            ask.ask_times = i - 1;
            f15895f.m22863a(new C6386b(str, a));
        }
    }

    /* renamed from: e */
    public static final void m22850e() {
        f15890a.m22575a();
    }

    /* renamed from: f */
    public static final void m22849f() {
        long currentTimeMillis = System.currentTimeMillis() - 604800000;
        C6438i.m22578d("remove cache expired before " + currentTimeMillis);
        try {
            C6394d.m22836a(currentTimeMillis);
        } catch (Exception e) {
            C6438i.m22583a(e);
        }
    }

    /* renamed from: a */
    public final NumInfo m22874a(String str) {
        NumInfo numInfo = (NumInfo) f15893d.m30982a(str, (Class<Object>) NumInfo.class);
        if (numInfo != null) {
            numInfo.images.setPrefix(m22861b());
        }
        return numInfo;
    }

    /* renamed from: a */
    public final NumInfo m22870a(String str, String str2, C6382h hVar) {
        try {
            String str3 = hVar.f15881c;
            C15149k.m383a((Object) str3, "searchResult.resultString");
            NumInfo a = m22874a(str3);
            if (a != null) {
                a.serverLatency = hVar.f15888j;
                String str4 = hVar.f15883e;
                if (str4 == null) {
                    str4 = "";
                }
                a.setAmzId$whoscallSDK_core_whoscallDebug(str4);
                String str5 = hVar.f15884f;
                if (str5 == null) {
                    str5 = "";
                }
                a.setRequestId$whoscallSDK_core_whoscallDebug(str5);
                String str6 = hVar.f15882d;
                C15149k.m383a((Object) str6, "searchResult.eTag");
                a.setEtag$whoscallSDK_core_whoscallDebug(str6);
                a.num = str;
                a.setExpiredTime$whoscallSDK_core_whoscallDebug(hVar.f15887i);
                a.setRegion(str2);
                if (!TextUtils.isEmpty(a.getSigned$whoscallSDK_core_whoscallDebug())) {
                    m22858b(a.getSigned$whoscallSDK_core_whoscallDebug());
                    a.setSigned$whoscallSDK_core_whoscallDebug("");
                }
                m22880a(a, hVar);
            }
            return a;
        } catch (Exception e) {
            C6438i.m22583a(e);
            return null;
        }
    }

    /* renamed from: a */
    public final NumInfo m22865a(@NonNull String str, String str2, boolean z, boolean z2) {
        C14984n<NumInfo, Long, String> a;
        NumInfo d;
        C15149k.m377b(str, "num");
        C15149k.m377b(str2, "region");
        if (TextUtils.isEmpty(str) || (d = (a = C6394d.m22834a(str)).m647d()) == null) {
            return null;
        }
        if (!TextUtils.isEmpty(d.getRegion()) && !C14966w.m715b(d.getRegion(), str2, true)) {
            return null;
        }
        f15890a.m22572a(str, d);
        d.setDataSource$whoscallSDK_core_whoscallDebug(NumInfo.SOURCE_DISKCACHE);
        m22862a(z, z2, d);
        m22867a(str, str2, a.m645f(), a.m646e().longValue());
        return d;
    }

    /* renamed from: a */
    public final C6341b m22866a(String str, String str2, String str3, boolean z) {
        C6341b bVar = new C6341b();
        String c = m22855c();
        String a = m22884a();
        try {
            String encode = URLEncoder.encode(str, "UTF-8");
            C15149k.m383a((Object) encode, "URLEncoder.encode(num, \"UTF-8\")");
            str = encode;
        } catch (UnsupportedCharsetException e) {
        }
        if (z || TextUtils.isEmpty(a)) {
            StringBuilder sb = new StringBuilder();
            sb.append(c);
            C15136c0 c0Var = C15136c0.f33133a;
            Object[] objArr = {str2, str, String.valueOf(C6364a.m22967g())};
            String format = String.format("/searchback/v10/%s/%s?ss=%s&signed=1", Arrays.copyOf(objArr, objArr.length));
            C15149k.m383a((Object) format, "java.lang.String.format(format, *args)");
            sb.append(format);
            bVar.f15755a = sb.toString();
        } else {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(c);
            C15136c0 c0Var2 = C15136c0.f33133a;
            Object[] objArr2 = {str2, str, String.valueOf(C6364a.m22967g()), a};
            String format2 = String.format("/search/v10/%s/%s?ss=%s&%s", Arrays.copyOf(objArr2, objArr2.length));
            C15149k.m383a((Object) format2, "java.lang.String.format(format, *args)");
            sb2.append(format2);
            bVar.f15755a = sb2.toString();
            bVar.f15762h = str3;
        }
        bVar.f15756b = "GET";
        bVar.f15758d = C6364a.m22991a();
        bVar.f15768n = true;
        bVar.f15769o = true;
        bVar.f15770p = true;
        return bVar;
    }

    /* renamed from: a */
    public final String m22884a() {
        if (f15892c == null) {
            f15892c = C6334a.m23211s().m23246a("pref_num_signed", "", true);
        }
        return f15892c;
    }

    /* renamed from: a */
    public final void m22883a(int i, int i2, int i3, int i4, int i5, int i6, int i7) {
    }

    /* renamed from: a */
    public final void m22881a(NumInfo numInfo, CustomHitrateObject customHitrateObject) {
        C15149k.m377b(numInfo, "numInfo");
        m22863a(new C6390f(numInfo, customHitrateObject));
    }

    /* renamed from: a */
    public final void m22880a(NumInfo numInfo, C6382h hVar) {
        numInfo.hit.put(NumberInfo.KEY_DATA_SOURCE, hVar.f15886h);
        String valueOf = String.valueOf(numInfo.hit.get(NumberInfo.KEY_DATA_SOURCE));
        if (!TextUtils.isEmpty(valueOf) && valueOf.equals(NumberInfo.VALUE_DATA_SOURCE_CF) && !TextUtils.isEmpty(hVar.f15885g)) {
            HashMap<String, Object> hashMap = numInfo.hit;
            hashMap.put(NumberInfo.KEY_DATA_SOURCE, valueOf + "-" + hVar.f15885g);
        }
    }

    /* renamed from: a */
    public final void m22872a(String str, C6341b bVar, C6382h hVar) {
        int i = hVar.f15879a;
        if (i == 200 || i == 304) {
            C6438i.m22579c("[Info][Num] result from " + str + " = " + hVar.toString());
            return;
        }
        C6438i.m22579c("[Info][Num] result from " + str + " = " + hVar.toString() + ", request = " + bVar.toString());
    }

    /* renamed from: a */
    public final void m22867a(String str, String str2, String str3, long j) {
        if (j < System.currentTimeMillis()) {
            m22863a(new C6385a(str, str2, str3));
        }
    }

    /* renamed from: a */
    public final <T> void m22863a(AbstractC15107a<? extends T> aVar) {
        Thread thread = new Thread(new RunnableC6387c(aVar));
        thread.setPriority(1);
        C6334a.m23211s().m23242a(thread);
    }

    /* renamed from: a */
    public final void m22862a(boolean z, boolean z2, NumInfo numInfo) {
        C15149k.m377b(numInfo, "numInfo");
        if (!z2) {
            return;
        }
        if (z) {
            m22881a(numInfo, (CustomHitrateObject) null);
        } else if (f15891b.m22573a((C6439j<String, NumInfo>) numInfo.num) == null) {
            f15891b.m22572a(numInfo.num, NumInfo.copy$default(numInfo, null, null, null, null, null, null, null, null, null, null, null, null, null, 0, 0, null, null, null, null, null, 0, null, 0L, null, null, null, 0, 134217727, null));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x005f  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m22882a(android.content.Context r8, java.lang.String r9) {
        /*
            r7 = this;
            r0 = r9
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            r10 = r0
            r0 = 0
            r11 = r0
            r0 = r10
            if (r0 != 0) goto L_0x0057
            android.net.Uri r0 = android.provider.ContactsContract.PhoneLookup.CONTENT_FILTER_URI     // Catch: Exception -> 0x004c
            r1 = r9
            java.lang.String r1 = android.net.Uri.encode(r1)     // Catch: Exception -> 0x004c
            android.net.Uri r0 = android.net.Uri.withAppendedPath(r0, r1)     // Catch: Exception -> 0x004c
            r9 = r0
            r0 = r8
            android.content.ContentResolver r0 = r0.getContentResolver()     // Catch: Exception -> 0x004c
            r1 = r9
            r2 = 2
            java.lang.String[] r2 = new java.lang.String[r2]     // Catch: Exception -> 0x004c
            r3 = r2
            r4 = 0
            java.lang.String r5 = "display_name"
            r3[r4] = r5     // Catch: Exception -> 0x004c
            r3 = r2
            r4 = 1
            java.lang.String r5 = "number"
            r3[r4] = r5     // Catch: Exception -> 0x004c
            r3 = 0
            r4 = 0
            r5 = 0
            android.database.Cursor r0 = r0.query(r1, r2, r3, r4, r5)     // Catch: Exception -> 0x004c
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L_0x0057
            r0 = r8
            int r0 = r0.getCount()     // Catch: Exception -> 0x004c
            r12 = r0
            r0 = r8
            r0.close()     // Catch: Exception -> 0x0048
            goto L_0x005a
        L_0x0048:
            r8 = move-exception
            goto L_0x0050
        L_0x004c:
            r8 = move-exception
            r0 = 0
            r12 = r0
        L_0x0050:
            r0 = r8
            p081h.p160h.p179e.p180a.p190p.C6438i.m22583a(r0)
            goto L_0x005a
        L_0x0057:
            r0 = 0
            r12 = r0
        L_0x005a:
            r0 = r12
            if (r0 <= 0) goto L_0x0062
            r0 = 1
            r11 = r0
        L_0x0062:
            r0 = r11
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p081h.p160h.p179e.p180a.p187n.C6384a.m22882a(android.content.Context, java.lang.String):boolean");
    }

    /* renamed from: a */
    public final boolean m22864a(List<String> list, List<String> list2) {
        boolean z = true;
        if (list == null || list2 == null) {
            if (!(list == null && list2 == null)) {
                z = false;
            }
            return z;
        } else if (list.size() != list2.size()) {
            return false;
        } else {
            int size = list.size();
            for (int i = 0; i < size; i++) {
                if (!list.get(i).equals(list2.get(i))) {
                    return false;
                }
            }
            return true;
        }
    }

    /* renamed from: b */
    public final C6382h m22857b(String str, String str2, String str3, boolean z) {
        C15149k.m377b(str, "num");
        C15149k.m377b(str2, "region");
        String h = C6364a.m22966h();
        String b = C6364a.m22978b();
        if (TextUtils.isEmpty(h) || TextUtils.isEmpty(b)) {
            return new C6382h(-5, null);
        }
        if (!z && !TextUtils.isEmpty(m22884a())) {
            C6341b a = m22866a(str, str2, str3, false);
            C6334a s = C6334a.m23211s();
            C15149k.m383a((Object) s, "WCApiManager.getInstance()");
            C6382h a2 = AsyncTaskC6381g.m22894a(s.m23221i(), a);
            C15149k.m383a((Object) a2, "resultObject");
            m22872a(str, a, a2);
            if (a2.f15879a != 403) {
                return a2;
            }
            m22858b("");
        }
        C6341b a3 = m22866a(str, str2, str3, true);
        C6334a s2 = C6334a.m23211s();
        C15149k.m383a((Object) s2, "WCApiManager.getInstance()");
        C6382h a4 = AsyncTaskC6381g.m22894a(s2.m23221i(), a3);
        C15149k.m383a((Object) a4, "resultObject");
        m22872a(str, a3, a4);
        if (a4.f15879a != 403 || C6364a.m22964j() || C6364a.m22973b(C6364a.m22968f(), "403: ") != 200) {
            return a4;
        }
        C6341b a5 = m22875a(this, str, str2, str3, false, 8, (Object) null);
        C6438i.m22578d("[Debug] renew token apiRequestObject = " + a5.toString());
        C6334a s3 = C6334a.m23211s();
        C15149k.m383a((Object) s3, "WCApiManager.getInstance()");
        C6382h a6 = AsyncTaskC6381g.m22894a(s3.m23221i(), a5);
        C15149k.m383a((Object) a6, "WCHttpAsync.doHttpReques…t, retryApiRequestObject)");
        return a6;
    }

    /* renamed from: b */
    public final String m22861b() {
        return C6344e.m23186g() ? "https://s3-ap-northeast-1.amazonaws.com/whoscall-image-resize" : "https://s3-ap-northeast-1.amazonaws.com/whoscall-image-resize/dev";
    }

    /* renamed from: b */
    public final void m22858b(String str) {
        String str2 = f15892c;
        if (str2 == null || !C14966w.m714b(str2, str, false, 2, null)) {
            C6438i.m22578d("[Debug] putCdnSigned : " + str);
            f15892c = str;
            C6334a.m23211s().m23233b("pref_num_signed", f15892c, true);
        }
    }

    /* renamed from: c */
    public final String m22855c() {
        return C6344e.m23186g() ? "https://apiscdn.whoscall.com" : "https://apiscdn-staging.whoscall.com";
    }
}
