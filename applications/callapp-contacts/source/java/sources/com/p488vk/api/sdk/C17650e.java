package com.p488vk.api.sdk;

import android.content.Context;
import com.p488vk.api.sdk.p496e.AbstractC17660a;
import com.p488vk.api.sdk.p496e.p497a.AbstractC17665c;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��p\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b%\n\u0002\u0018\u0002\n\u0002\b \b\u0086\b\u0018�� i2\u00020\u0001:\u0002hiB\u008b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t\u0012\u000e\b\u0002\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000b\u0012\b\b\u0002\u0010\r\u001a\u00020\f\u0012\b\b\u0002\u0010\u000e\u001a\u00020\u000f\u0012\b\b\u0002\u0010\u0010\u001a\u00020\u0011\u0012\u000e\b\u0002\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\f0\u000b\u0012\u0010\b\u0002\u0010\u0013\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\f0\u000b\u0012\b\b\u0002\u0010\u0014\u001a\u00020\f\u0012\b\b\u0002\u0010\u0015\u001a\u00020\u0016\u0012\u000e\b\u0002\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00160\u000b\u0012\b\b\u0002\u0010\u0018\u001a\u00020\u0005\u0012\u000e\b\u0002\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\f0\u001a\u0012\b\b\u0002\u0010\u001b\u001a\u00020\f\u0012\b\b\u0002\u0010\u001c\u001a\u00020\u001d\u0012\u000e\b\u0002\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\f0\u000b\u0012\b\b\u0002\u0010\u001f\u001a\u00020 \u0012\u0014\b\u0002\u0010!\u001a\u000e\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\u00160\"\u0012\b\b\u0002\u0010#\u001a\u00020$¢\u0006\u0002\u0010%J\u0006\u0010I\u001a\u00020JJ\u000e\u0010K\u001a\u00020J2\u0006\u0010\u0002\u001a\u00020\u0003J\t\u0010L\u001a\u00020\u0003HÆ\u0003J\u0016\u0010M\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\f0\u000bHÀ\u0003¢\u0006\u0002\bNJ\t\u0010O\u001a\u00020\fHÆ\u0003J\t\u0010P\u001a\u00020\u0016HÆ\u0003J\u000f\u0010Q\u001a\b\u0012\u0004\u0012\u00020\u00160\u000bHÆ\u0003J\t\u0010R\u001a\u00020\u0005HÆ\u0003J\u000f\u0010S\u001a\b\u0012\u0004\u0012\u00020\f0\u001aHÆ\u0003J\t\u0010T\u001a\u00020\fHÆ\u0003J\t\u0010U\u001a\u00020\u001dHÆ\u0003J\u000f\u0010V\u001a\b\u0012\u0004\u0012\u00020\f0\u000bHÆ\u0003J\t\u0010W\u001a\u00020 HÆ\u0003J\t\u0010X\u001a\u00020\u0005HÆ\u0003J\u0015\u0010Y\u001a\u000e\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\u00160\"HÆ\u0003J\t\u0010Z\u001a\u00020$HÆ\u0003J\u000b\u0010[\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010\\\u001a\u0004\u0018\u00010\tHÆ\u0003J\u000f\u0010]\u001a\b\u0012\u0004\u0012\u00020\f0\u000bHÆ\u0003J\t\u0010^\u001a\u00020\fHÆ\u0003J\t\u0010_\u001a\u00020\u000fHÆ\u0003J\t\u0010`\u001a\u00020\u0011HÆ\u0003J\u0014\u0010a\u001a\b\u0012\u0004\u0012\u00020\f0\u000bHÀ\u0003¢\u0006\u0002\bbJ\u0091\u0002\u0010c\u001a\u00020��2\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\u000e\b\u0002\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000b2\b\b\u0002\u0010\r\u001a\u00020\f2\b\b\u0002\u0010\u000e\u001a\u00020\u000f2\b\b\u0002\u0010\u0010\u001a\u00020\u00112\u000e\b\u0002\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\f0\u000b2\u0010\b\u0002\u0010\u0013\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\f0\u000b2\b\b\u0002\u0010\u0014\u001a\u00020\f2\b\b\u0002\u0010\u0015\u001a\u00020\u00162\u000e\b\u0002\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00160\u000b2\b\b\u0002\u0010\u0018\u001a\u00020\u00052\u000e\b\u0002\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\f0\u001a2\b\b\u0002\u0010\u001b\u001a\u00020\f2\b\b\u0002\u0010\u001c\u001a\u00020\u001d2\u000e\b\u0002\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\f0\u000b2\b\b\u0002\u0010\u001f\u001a\u00020 2\u0014\b\u0002\u0010!\u001a\u000e\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\u00160\"2\b\b\u0002\u0010#\u001a\u00020$HÆ\u0001J\u0013\u0010d\u001a\u00020\u00162\b\u0010e\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010f\u001a\u00020\u0005HÖ\u0001J\t\u0010g\u001a\u00020\fHÖ\u0001R\u001a\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\f0\u000bX\u0080\u0004¢\u0006\b\n��\u001a\u0004\b&\u0010'R\u0013\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\b\n��\u001a\u0004\b(\u0010)R\u0011\u0010#\u001a\u00020$¢\u0006\b\n��\u001a\u0004\b*\u0010+R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n��\u001a\u0004\b,\u0010-R\u0011\u0010\u0018\u001a\u00020\u0005¢\u0006\b\n��\u001a\u0004\b.\u0010-R\u0011\u0010\u0014\u001a\u00020\f¢\u0006\b\n��\u001a\u0004\b/\u00100R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b1\u00102R\u0017\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\f0\u000b¢\u0006\b\n��\u001a\u0004\b3\u0010'R\u0017\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00160\u000b¢\u0006\b\n��\u001a\u0004\b4\u0010'R\u0017\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000b¢\u0006\b\n��\u001a\u0004\b5\u0010'R\u0017\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\f0\u001a¢\u0006\b\n��\u001a\u0004\b6\u00107R\u0011\u0010\u001c\u001a\u00020\u001d¢\u0006\b\n��\u001a\u0004\b8\u00109R\u0011\u0010\u001b\u001a\u00020\f¢\u0006\b\n��\u001a\u0004\b:\u00100R\u0011\u0010\u0015\u001a\u00020\u0016¢\u0006\b\n��\u001a\u0004\b;\u0010<R\u0011\u0010\u0010\u001a\u00020\u0011¢\u0006\b\n��\u001a\u0004\b=\u0010>R\u0011\u0010\u000e\u001a\u00020\u000f¢\u0006\b\n��\u001a\u0004\b?\u0010@R\u0011\u0010\u001f\u001a\u00020 ¢\u0006\b\n��\u001a\u0004\bA\u0010BR\u001c\u0010\u0013\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\f0\u000bX\u0080\u0004¢\u0006\b\n��\u001a\u0004\bC\u0010'R\u001d\u0010!\u001a\u000e\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\u00160\"¢\u0006\b\n��\u001a\u0004\bD\u0010ER\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n��\u001a\u0004\bF\u0010GR\u0011\u0010\r\u001a\u00020\f¢\u0006\b\n��\u001a\u0004\bH\u00100¨\u0006j"}, m4298d2 = {"Lcom/vk/api/sdk/VKApiConfig;", "", "context", "Landroid/content/Context;", "appId", "", "validationHandler", "Lcom/vk/api/sdk/VKApiValidationHandler;", "apiCallListener", "Lcom/vk/api/sdk/VKApiCallListener;", "deviceId", "Lkotlin/Lazy;", "", "version", "okHttpProvider", "Lcom/vk/api/sdk/VKOkHttpProvider;", "logger", "Lcom/vk/api/sdk/utils/log/Logger;", "accessToken", "secret", "clientSecret", "logFilterCredentials", "", "debugCycleCalls", "callsPerSecondLimit", "httpApiHostProvider", "Lkotlin/Function0;", "lang", "keyValueStorage", "Lcom/vk/api/sdk/VKKeyValueStorage;", "customApiEndpoint", "rateLimitBackoffTimeoutMs", "", "useMsgPackSerialization", "Lkotlin/Function1;", "apiMethodPriorityBackoff", "Lcom/vk/api/sdk/utils/ApiMethodPriorityBackoff;", "(Landroid/content/Context;ILcom/vk/api/sdk/VKApiValidationHandler;Lcom/vk/api/sdk/VKApiCallListener;Lkotlin/Lazy;Ljava/lang/String;Lcom/vk/api/sdk/VKOkHttpProvider;Lcom/vk/api/sdk/utils/log/Logger;Lkotlin/Lazy;Lkotlin/Lazy;Ljava/lang/String;ZLkotlin/Lazy;ILkotlin/jvm/functions/Function0;Ljava/lang/String;Lcom/vk/api/sdk/VKKeyValueStorage;Lkotlin/Lazy;JLkotlin/jvm/functions/Function1;Lcom/vk/api/sdk/utils/ApiMethodPriorityBackoff;)V", "getAccessToken$libapi_sdk_core_release", "()Lkotlin/Lazy;", "getApiCallListener", "()Lcom/vk/api/sdk/VKApiCallListener;", "getApiMethodPriorityBackoff", "()Lcom/vk/api/sdk/utils/ApiMethodPriorityBackoff;", "getAppId", "()I", "getCallsPerSecondLimit", "getClientSecret", "()Ljava/lang/String;", "getContext", "()Landroid/content/Context;", "getCustomApiEndpoint", "getDebugCycleCalls", "getDeviceId", "getHttpApiHostProvider", "()Lkotlin/jvm/functions/Function0;", "getKeyValueStorage", "()Lcom/vk/api/sdk/VKKeyValueStorage;", "getLang", "getLogFilterCredentials", "()Z", "getLogger", "()Lcom/vk/api/sdk/utils/log/Logger;", "getOkHttpProvider", "()Lcom/vk/api/sdk/VKOkHttpProvider;", "getRateLimitBackoffTimeoutMs", "()J", "getSecret$libapi_sdk_core_release", "getUseMsgPackSerialization", "()Lkotlin/jvm/functions/Function1;", "getValidationHandler", "()Lcom/vk/api/sdk/VKApiValidationHandler;", "getVersion", "buildUpon", "Lcom/vk/api/sdk/VKApiConfig$Builder;", "builder", "component1", "component10", "component10$libapi_sdk_core_release", "component11", "component12", "component13", "component14", "component15", "component16", "component17", "component18", "component19", "component2", "component20", "component21", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "component9$libapi_sdk_core_release", "copy", "equals", "other", "hashCode", "toString", "Builder", "Companion", "libapi-sdk-core_release"}, m4297k = 1, m4296mv = {1, 4, 2})
/* renamed from: com.vk.api.sdk.e */
/* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/e.class */
public final class C17650e {

    /* renamed from: q */
    public static final C17659a f62435q = new C17659a(null);

    /* renamed from: a */
    public final Context f62436a;

    /* renamed from: b */
    public final int f62437b;

    /* renamed from: c */
    final AbstractC17689i f62438c;

    /* renamed from: d */
    public final Lazy<String> f62439d;

    /* renamed from: e */
    public final String f62440e;

    /* renamed from: f */
    public final AbstractC17702m f62441f;

    /* renamed from: g */
    public final AbstractC17665c f62442g;

    /* renamed from: h */
    public final Lazy<String> f62443h;

    /* renamed from: i */
    public final Lazy<String> f62444i;

    /* renamed from: j */
    public final boolean f62445j;

    /* renamed from: k */
    public final Function0<String> f62446k;

    /* renamed from: l */
    public final String f62447l;

    /* renamed from: m */
    final AbstractC17698k f62448m;

    /* renamed from: n */
    public final Lazy<String> f62449n;

    /* renamed from: o */
    final long f62450o;

    /* renamed from: p */
    final AbstractC17660a f62451p;

    /* renamed from: r */
    private final AbstractC17625c f62452r;

    /* renamed from: s */
    private final String f62453s;

    /* renamed from: t */
    private final Lazy<Boolean> f62454t;

    /* renamed from: u */
    private final int f62455u;

    /* renamed from: v */
    private final Function1<String, Boolean> f62456v;

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\b\n��\n\u0002\u0010\u000e\n��\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, m4298d2 = {"<anonymous>", "", "invoke"}, m4297k = 3, m4296mv = {1, 4, 2})
    /* renamed from: com.vk.api.sdk.e$1 */
    /* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/e$1.class */
    public static final class C176511 extends AbstractC18526r implements Function0<String> {

        /* renamed from: a */
        public static final C176511 f62457a = new C176511();

        C176511() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* bridge */ /* synthetic */ String invoke() {
            return "";
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\b\n��\n\u0002\u0018\u0002\n��\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, m4298d2 = {"<anonymous>", "Lcom/vk/api/sdk/utils/log/Logger$LogLevel;", "invoke"}, m4297k = 3, m4296mv = {1, 4, 2})
    /* renamed from: com.vk.api.sdk.e$2 */
    /* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/e$2.class */
    public static final class C176522 extends AbstractC18526r implements Function0<AbstractC17665c.EnumC17666a> {

        /* renamed from: a */
        public static final C176522 f62458a = new C176522();

        C176522() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* bridge */ /* synthetic */ AbstractC17665c.EnumC17666a invoke() {
            return AbstractC17665c.EnumC17666a.NONE;
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\b\n��\n\u0002\u0010\u000e\n��\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, m4298d2 = {"<anonymous>", "", "invoke"}, m4297k = 3, m4296mv = {1, 4, 2})
    /* renamed from: com.vk.api.sdk.e$3 */
    /* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/e$3.class */
    public static final class C176533 extends AbstractC18526r implements Function0<String> {

        /* renamed from: a */
        public static final C176533 f62459a = new C176533();

        C176533() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* bridge */ /* synthetic */ String invoke() {
            return "";
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\b\n��\n\u0002\u0010\u0001\n��\u0010��\u001a\u0004\u0018\u00010\u0001H\n¢\u0006\u0002\b\u0002"}, m4298d2 = {"<anonymous>", "", "invoke"}, m4297k = 3, m4296mv = {1, 4, 2})
    /* renamed from: com.vk.api.sdk.e$4 */
    /* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/e$4.class */
    public static final class C176544 extends AbstractC18526r implements Function0 {

        /* renamed from: a */
        public static final C176544 f62460a = new C176544();

        C176544() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* bridge */ /* synthetic */ Object invoke() {
            return null;
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\b\n��\n\u0002\u0010\u000b\n��\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, m4298d2 = {"<anonymous>", "", "invoke"}, m4297k = 3, m4296mv = {1, 4, 2})
    /* renamed from: com.vk.api.sdk.e$5 */
    /* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/e$5.class */
    public static final class C176555 extends AbstractC18526r implements Function0<Boolean> {

        /* renamed from: a */
        public static final C176555 f62461a = new C176555();

        C176555() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* bridge */ /* synthetic */ Boolean invoke() {
            return Boolean.FALSE;
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\b\n��\n\u0002\u0010\u000e\n��\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, m4298d2 = {"<anonymous>", "", "invoke"}, m4297k = 3, m4296mv = {1, 4, 2})
    /* renamed from: com.vk.api.sdk.e$6 */
    /* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/e$6.class */
    public static final class C176566 extends AbstractC18526r implements Function0<String> {

        /* renamed from: a */
        public static final C176566 f62462a = new C176566();

        C176566() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* bridge */ /* synthetic */ String invoke() {
            return "api.vk.com";
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\b\n��\n\u0002\u0010\u000e\n��\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, m4298d2 = {"<anonymous>", "", "invoke"}, m4297k = 3, m4296mv = {1, 4, 2})
    /* renamed from: com.vk.api.sdk.e$7 */
    /* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/e$7.class */
    public static final class C176577 extends AbstractC18526r implements Function0<String> {

        /* renamed from: a */
        public static final C176577 f62463a = new C176577();

        C176577() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* bridge */ /* synthetic */ String invoke() {
            return "https://api.vk.com/method";
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u000e\n��\n\u0002\u0010\u000b\n��\n\u0002\u0010\u000e\n��\u0010��\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, m4298d2 = {"<anonymous>", "", "it", "", "invoke"}, m4297k = 3, m4296mv = {1, 4, 2})
    /* renamed from: com.vk.api.sdk.e$8 */
    /* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/e$8.class */
    public static final class C176588 extends AbstractC18526r implements Function1<String, Boolean> {

        /* renamed from: a */
        public static final C176588 f62464a = new C176588();

        C176588() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ Boolean invoke(String str) {
            String it2 = str;
            C18524p.m3840d(it2, "it");
            return Boolean.FALSE;
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0014\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��¨\u0006\n"}, m4298d2 = {"Lcom/vk/api/sdk/VKApiConfig$Companion;", "", "()V", "DEFAULT_API_DOMAIN", "", "DEFAULT_API_ENDPOINT", "DEFAULT_API_VERSION", "DEFAULT_DOMAIN", "DEFAULT_OAUTH_DOMAIN", "DEFAULT_STATIC_DOMAIN", "libapi-sdk-core_release"}, m4297k = 1, m4296mv = {1, 4, 2})
    /* renamed from: com.vk.api.sdk.e$a */
    /* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/e$a.class */
    public static final class C17659a {
        private C17659a() {
        }

        public /* synthetic */ C17659a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public C17650e(Context context, int i, AbstractC17689i abstractC17689i, AbstractC17625c abstractC17625c, Lazy<String> deviceId, String version, AbstractC17702m okHttpProvider, AbstractC17665c logger, Lazy<String> accessToken, Lazy<String> secret, String clientSecret, boolean z, Lazy<Boolean> debugCycleCalls, int i2, Function0<String> httpApiHostProvider, String lang, AbstractC17698k keyValueStorage, Lazy<String> customApiEndpoint, long j, Function1<? super String, Boolean> useMsgPackSerialization, AbstractC17660a apiMethodPriorityBackoff) {
        C18524p.m3840d(context, "context");
        C18524p.m3840d(deviceId, "deviceId");
        C18524p.m3840d(version, "version");
        C18524p.m3840d(okHttpProvider, "okHttpProvider");
        C18524p.m3840d(logger, "logger");
        C18524p.m3840d(accessToken, "accessToken");
        C18524p.m3840d(secret, "secret");
        C18524p.m3840d(clientSecret, "clientSecret");
        C18524p.m3840d(debugCycleCalls, "debugCycleCalls");
        C18524p.m3840d(httpApiHostProvider, "httpApiHostProvider");
        C18524p.m3840d(lang, "lang");
        C18524p.m3840d(keyValueStorage, "keyValueStorage");
        C18524p.m3840d(customApiEndpoint, "customApiEndpoint");
        C18524p.m3840d(useMsgPackSerialization, "useMsgPackSerialization");
        C18524p.m3840d(apiMethodPriorityBackoff, "apiMethodPriorityBackoff");
        this.f62436a = context;
        this.f62437b = i;
        this.f62438c = abstractC17689i;
        this.f62452r = abstractC17625c;
        this.f62439d = deviceId;
        this.f62440e = version;
        this.f62441f = okHttpProvider;
        this.f62442g = logger;
        this.f62443h = accessToken;
        this.f62444i = secret;
        this.f62453s = clientSecret;
        this.f62445j = z;
        this.f62454t = debugCycleCalls;
        this.f62455u = i2;
        this.f62446k = httpApiHostProvider;
        this.f62447l = lang;
        this.f62448m = keyValueStorage;
        this.f62449n = customApiEndpoint;
        this.f62450o = j;
        this.f62456v = useMsgPackSerialization;
        this.f62451p = apiMethodPriorityBackoff;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v46, types: [long] */
    /* JADX WARN: Type inference failed for: r43v1 */
    /* JADX WARN: Type inference failed for: r43v2 */
    /* JADX WARN: Type inference failed for: r43v3 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ C17650e(android.content.Context r25, int r26, com.p488vk.api.sdk.AbstractC17689i r27, com.p488vk.api.sdk.AbstractC17625c r28, kotlin.Lazy r29, java.lang.String r30, com.p488vk.api.sdk.AbstractC17702m r31, com.p488vk.api.sdk.p496e.p497a.AbstractC17665c r32, kotlin.Lazy r33, kotlin.Lazy r34, java.lang.String r35, boolean r36, kotlin.Lazy r37, int r38, kotlin.jvm.functions.Function0 r39, java.lang.String r40, com.p488vk.api.sdk.AbstractC17698k r41, kotlin.Lazy r42, long r43, kotlin.jvm.functions.Function1 r45, com.p488vk.api.sdk.p496e.AbstractC17660a r46, int r47, kotlin.jvm.internal.DefaultConstructorMarker r48) {
        /*
            Method dump skipped, instructions count: 446
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.p488vk.api.sdk.C17650e.<init>(android.content.Context, int, com.vk.api.sdk.i, com.vk.api.sdk.c, kotlin.Lazy, java.lang.String, com.vk.api.sdk.m, com.vk.api.sdk.e.a.c, kotlin.Lazy, kotlin.Lazy, java.lang.String, boolean, kotlin.Lazy, int, kotlin.jvm.functions.Function0, java.lang.String, com.vk.api.sdk.k, kotlin.Lazy, long, kotlin.jvm.functions.Function1, com.vk.api.sdk.e.a, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C17650e)) {
                return false;
            }
            C17650e c17650e = (C17650e) obj;
            return C18524p.m3850a(this.f62436a, c17650e.f62436a) && this.f62437b == c17650e.f62437b && C18524p.m3850a(this.f62438c, c17650e.f62438c) && C18524p.m3850a(this.f62452r, c17650e.f62452r) && C18524p.m3850a(this.f62439d, c17650e.f62439d) && C18524p.m3850a((Object) this.f62440e, (Object) c17650e.f62440e) && C18524p.m3850a(this.f62441f, c17650e.f62441f) && C18524p.m3850a(this.f62442g, c17650e.f62442g) && C18524p.m3850a(this.f62443h, c17650e.f62443h) && C18524p.m3850a(this.f62444i, c17650e.f62444i) && C18524p.m3850a((Object) this.f62453s, (Object) c17650e.f62453s) && this.f62445j == c17650e.f62445j && C18524p.m3850a(this.f62454t, c17650e.f62454t) && this.f62455u == c17650e.f62455u && C18524p.m3850a(this.f62446k, c17650e.f62446k) && C18524p.m3850a((Object) this.f62447l, (Object) c17650e.f62447l) && C18524p.m3850a(this.f62448m, c17650e.f62448m) && C18524p.m3850a(this.f62449n, c17650e.f62449n) && this.f62450o == c17650e.f62450o && C18524p.m3850a(this.f62456v, c17650e.f62456v) && C18524p.m3850a(this.f62451p, c17650e.f62451p);
        }
        return true;
    }

    public final int hashCode() {
        Context context = this.f62436a;
        int i = 0;
        int hashCode = context != null ? context.hashCode() : 0;
        int i2 = this.f62437b;
        AbstractC17689i abstractC17689i = this.f62438c;
        int hashCode2 = abstractC17689i != null ? abstractC17689i.hashCode() : 0;
        AbstractC17625c abstractC17625c = this.f62452r;
        int hashCode3 = abstractC17625c != null ? abstractC17625c.hashCode() : 0;
        Lazy<String> lazy = this.f62439d;
        int hashCode4 = lazy != null ? lazy.hashCode() : 0;
        String str = this.f62440e;
        int hashCode5 = str != null ? str.hashCode() : 0;
        AbstractC17702m abstractC17702m = this.f62441f;
        int hashCode6 = abstractC17702m != null ? abstractC17702m.hashCode() : 0;
        AbstractC17665c abstractC17665c = this.f62442g;
        int hashCode7 = abstractC17665c != null ? abstractC17665c.hashCode() : 0;
        Lazy<String> lazy2 = this.f62443h;
        int hashCode8 = lazy2 != null ? lazy2.hashCode() : 0;
        Lazy<String> lazy3 = this.f62444i;
        int hashCode9 = lazy3 != null ? lazy3.hashCode() : 0;
        String str2 = this.f62453s;
        int hashCode10 = str2 != null ? str2.hashCode() : 0;
        boolean z = this.f62445j;
        int i3 = z ? 1 : 0;
        if (z) {
            i3 = 1;
        }
        Lazy<Boolean> lazy4 = this.f62454t;
        int hashCode11 = lazy4 != null ? lazy4.hashCode() : 0;
        int i4 = this.f62455u;
        Function0<String> function0 = this.f62446k;
        int hashCode12 = function0 != null ? function0.hashCode() : 0;
        String str3 = this.f62447l;
        int hashCode13 = str3 != null ? str3.hashCode() : 0;
        AbstractC17698k abstractC17698k = this.f62448m;
        int hashCode14 = abstractC17698k != null ? abstractC17698k.hashCode() : 0;
        Lazy<String> lazy5 = this.f62449n;
        int hashCode15 = lazy5 != null ? lazy5.hashCode() : 0;
        long j = this.f62450o;
        int i5 = (int) (j ^ (j >>> 32));
        Function1<String, Boolean> function1 = this.f62456v;
        int hashCode16 = function1 != null ? function1.hashCode() : 0;
        AbstractC17660a abstractC17660a = this.f62451p;
        if (abstractC17660a != null) {
            i = abstractC17660a.hashCode();
        }
        return (((((((((((((((((((((((((((((((((((((((hashCode * 31) + i2) * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + hashCode7) * 31) + hashCode8) * 31) + hashCode9) * 31) + hashCode10) * 31) + i3) * 31) + hashCode11) * 31) + i4) * 31) + hashCode12) * 31) + hashCode13) * 31) + hashCode14) * 31) + hashCode15) * 31) + i5) * 31) + hashCode16) * 31) + i;
    }

    public final String toString() {
        return "VKApiConfig(context=" + this.f62436a + ", appId=" + this.f62437b + ", validationHandler=" + this.f62438c + ", apiCallListener=" + this.f62452r + ", deviceId=" + this.f62439d + ", version=" + this.f62440e + ", okHttpProvider=" + this.f62441f + ", logger=" + this.f62442g + ", accessToken=" + this.f62443h + ", secret=" + this.f62444i + ", clientSecret=" + this.f62453s + ", logFilterCredentials=" + this.f62445j + ", debugCycleCalls=" + this.f62454t + ", callsPerSecondLimit=" + this.f62455u + ", httpApiHostProvider=" + this.f62446k + ", lang=" + this.f62447l + ", keyValueStorage=" + this.f62448m + ", customApiEndpoint=" + this.f62449n + ", rateLimitBackoffTimeoutMs=" + this.f62450o + ", useMsgPackSerialization=" + this.f62456v + ", apiMethodPriorityBackoff=" + this.f62451p + ")";
    }
}
