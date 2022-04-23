package com.vk.api.sdk;

import android.content.Context;
import com.vk.api.sdk.e.a;
import com.vk.api.sdk.e.a.c;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
import kotlin.jvm.internal.r;
@Metadata(bv = {1, 0, 3}, d1 = {"��p\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b%\n\u0002\u0018\u0002\n\u0002\b \b\u0086\b\u0018�� i2\u00020\u0001:\u0002hiB\u008b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t\u0012\u000e\b\u0002\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000b\u0012\b\b\u0002\u0010\r\u001a\u00020\f\u0012\b\b\u0002\u0010\u000e\u001a\u00020\u000f\u0012\b\b\u0002\u0010\u0010\u001a\u00020\u0011\u0012\u000e\b\u0002\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\f0\u000b\u0012\u0010\b\u0002\u0010\u0013\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\f0\u000b\u0012\b\b\u0002\u0010\u0014\u001a\u00020\f\u0012\b\b\u0002\u0010\u0015\u001a\u00020\u0016\u0012\u000e\b\u0002\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00160\u000b\u0012\b\b\u0002\u0010\u0018\u001a\u00020\u0005\u0012\u000e\b\u0002\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\f0\u001a\u0012\b\b\u0002\u0010\u001b\u001a\u00020\f\u0012\b\b\u0002\u0010\u001c\u001a\u00020\u001d\u0012\u000e\b\u0002\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\f0\u000b\u0012\b\b\u0002\u0010\u001f\u001a\u00020 \u0012\u0014\b\u0002\u0010!\u001a\u000e\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\u00160\"\u0012\b\b\u0002\u0010#\u001a\u00020$¢\u0006\u0002\u0010%J\u0006\u0010I\u001a\u00020JJ\u000e\u0010K\u001a\u00020J2\u0006\u0010\u0002\u001a\u00020\u0003J\t\u0010L\u001a\u00020\u0003HÆ\u0003J\u0016\u0010M\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\f0\u000bHÀ\u0003¢\u0006\u0002\bNJ\t\u0010O\u001a\u00020\fHÆ\u0003J\t\u0010P\u001a\u00020\u0016HÆ\u0003J\u000f\u0010Q\u001a\b\u0012\u0004\u0012\u00020\u00160\u000bHÆ\u0003J\t\u0010R\u001a\u00020\u0005HÆ\u0003J\u000f\u0010S\u001a\b\u0012\u0004\u0012\u00020\f0\u001aHÆ\u0003J\t\u0010T\u001a\u00020\fHÆ\u0003J\t\u0010U\u001a\u00020\u001dHÆ\u0003J\u000f\u0010V\u001a\b\u0012\u0004\u0012\u00020\f0\u000bHÆ\u0003J\t\u0010W\u001a\u00020 HÆ\u0003J\t\u0010X\u001a\u00020\u0005HÆ\u0003J\u0015\u0010Y\u001a\u000e\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\u00160\"HÆ\u0003J\t\u0010Z\u001a\u00020$HÆ\u0003J\u000b\u0010[\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010\\\u001a\u0004\u0018\u00010\tHÆ\u0003J\u000f\u0010]\u001a\b\u0012\u0004\u0012\u00020\f0\u000bHÆ\u0003J\t\u0010^\u001a\u00020\fHÆ\u0003J\t\u0010_\u001a\u00020\u000fHÆ\u0003J\t\u0010`\u001a\u00020\u0011HÆ\u0003J\u0014\u0010a\u001a\b\u0012\u0004\u0012\u00020\f0\u000bHÀ\u0003¢\u0006\u0002\bbJ\u0091\u0002\u0010c\u001a\u00020��2\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\u000e\b\u0002\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000b2\b\b\u0002\u0010\r\u001a\u00020\f2\b\b\u0002\u0010\u000e\u001a\u00020\u000f2\b\b\u0002\u0010\u0010\u001a\u00020\u00112\u000e\b\u0002\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\f0\u000b2\u0010\b\u0002\u0010\u0013\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\f0\u000b2\b\b\u0002\u0010\u0014\u001a\u00020\f2\b\b\u0002\u0010\u0015\u001a\u00020\u00162\u000e\b\u0002\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00160\u000b2\b\b\u0002\u0010\u0018\u001a\u00020\u00052\u000e\b\u0002\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\f0\u001a2\b\b\u0002\u0010\u001b\u001a\u00020\f2\b\b\u0002\u0010\u001c\u001a\u00020\u001d2\u000e\b\u0002\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\f0\u000b2\b\b\u0002\u0010\u001f\u001a\u00020 2\u0014\b\u0002\u0010!\u001a\u000e\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\u00160\"2\b\b\u0002\u0010#\u001a\u00020$HÆ\u0001J\u0013\u0010d\u001a\u00020\u00162\b\u0010e\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010f\u001a\u00020\u0005HÖ\u0001J\t\u0010g\u001a\u00020\fHÖ\u0001R\u001a\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\f0\u000bX\u0080\u0004¢\u0006\b\n��\u001a\u0004\b&\u0010'R\u0013\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\b\n��\u001a\u0004\b(\u0010)R\u0011\u0010#\u001a\u00020$¢\u0006\b\n��\u001a\u0004\b*\u0010+R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n��\u001a\u0004\b,\u0010-R\u0011\u0010\u0018\u001a\u00020\u0005¢\u0006\b\n��\u001a\u0004\b.\u0010-R\u0011\u0010\u0014\u001a\u00020\f¢\u0006\b\n��\u001a\u0004\b/\u00100R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b1\u00102R\u0017\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\f0\u000b¢\u0006\b\n��\u001a\u0004\b3\u0010'R\u0017\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00160\u000b¢\u0006\b\n��\u001a\u0004\b4\u0010'R\u0017\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000b¢\u0006\b\n��\u001a\u0004\b5\u0010'R\u0017\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\f0\u001a¢\u0006\b\n��\u001a\u0004\b6\u00107R\u0011\u0010\u001c\u001a\u00020\u001d¢\u0006\b\n��\u001a\u0004\b8\u00109R\u0011\u0010\u001b\u001a\u00020\f¢\u0006\b\n��\u001a\u0004\b:\u00100R\u0011\u0010\u0015\u001a\u00020\u0016¢\u0006\b\n��\u001a\u0004\b;\u0010<R\u0011\u0010\u0010\u001a\u00020\u0011¢\u0006\b\n��\u001a\u0004\b=\u0010>R\u0011\u0010\u000e\u001a\u00020\u000f¢\u0006\b\n��\u001a\u0004\b?\u0010@R\u0011\u0010\u001f\u001a\u00020 ¢\u0006\b\n��\u001a\u0004\bA\u0010BR\u001c\u0010\u0013\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\f0\u000bX\u0080\u0004¢\u0006\b\n��\u001a\u0004\bC\u0010'R\u001d\u0010!\u001a\u000e\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\u00160\"¢\u0006\b\n��\u001a\u0004\bD\u0010ER\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n��\u001a\u0004\bF\u0010GR\u0011\u0010\r\u001a\u00020\f¢\u0006\b\n��\u001a\u0004\bH\u00100¨\u0006j"}, d2 = {"Lcom/vk/api/sdk/VKApiConfig;", "", "context", "Landroid/content/Context;", "appId", "", "validationHandler", "Lcom/vk/api/sdk/VKApiValidationHandler;", "apiCallListener", "Lcom/vk/api/sdk/VKApiCallListener;", "deviceId", "Lkotlin/Lazy;", "", "version", "okHttpProvider", "Lcom/vk/api/sdk/VKOkHttpProvider;", "logger", "Lcom/vk/api/sdk/utils/log/Logger;", "accessToken", "secret", "clientSecret", "logFilterCredentials", "", "debugCycleCalls", "callsPerSecondLimit", "httpApiHostProvider", "Lkotlin/Function0;", "lang", "keyValueStorage", "Lcom/vk/api/sdk/VKKeyValueStorage;", "customApiEndpoint", "rateLimitBackoffTimeoutMs", "", "useMsgPackSerialization", "Lkotlin/Function1;", "apiMethodPriorityBackoff", "Lcom/vk/api/sdk/utils/ApiMethodPriorityBackoff;", "(Landroid/content/Context;ILcom/vk/api/sdk/VKApiValidationHandler;Lcom/vk/api/sdk/VKApiCallListener;Lkotlin/Lazy;Ljava/lang/String;Lcom/vk/api/sdk/VKOkHttpProvider;Lcom/vk/api/sdk/utils/log/Logger;Lkotlin/Lazy;Lkotlin/Lazy;Ljava/lang/String;ZLkotlin/Lazy;ILkotlin/jvm/functions/Function0;Ljava/lang/String;Lcom/vk/api/sdk/VKKeyValueStorage;Lkotlin/Lazy;JLkotlin/jvm/functions/Function1;Lcom/vk/api/sdk/utils/ApiMethodPriorityBackoff;)V", "getAccessToken$libapi_sdk_core_release", "()Lkotlin/Lazy;", "getApiCallListener", "()Lcom/vk/api/sdk/VKApiCallListener;", "getApiMethodPriorityBackoff", "()Lcom/vk/api/sdk/utils/ApiMethodPriorityBackoff;", "getAppId", "()I", "getCallsPerSecondLimit", "getClientSecret", "()Ljava/lang/String;", "getContext", "()Landroid/content/Context;", "getCustomApiEndpoint", "getDebugCycleCalls", "getDeviceId", "getHttpApiHostProvider", "()Lkotlin/jvm/functions/Function0;", "getKeyValueStorage", "()Lcom/vk/api/sdk/VKKeyValueStorage;", "getLang", "getLogFilterCredentials", "()Z", "getLogger", "()Lcom/vk/api/sdk/utils/log/Logger;", "getOkHttpProvider", "()Lcom/vk/api/sdk/VKOkHttpProvider;", "getRateLimitBackoffTimeoutMs", "()J", "getSecret$libapi_sdk_core_release", "getUseMsgPackSerialization", "()Lkotlin/jvm/functions/Function1;", "getValidationHandler", "()Lcom/vk/api/sdk/VKApiValidationHandler;", "getVersion", "buildUpon", "Lcom/vk/api/sdk/VKApiConfig$Builder;", "builder", "component1", "component10", "component10$libapi_sdk_core_release", "component11", "component12", "component13", "component14", "component15", "component16", "component17", "component18", "component19", "component2", "component20", "component21", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "component9$libapi_sdk_core_release", "copy", "equals", "other", "hashCode", "toString", "Builder", "Companion", "libapi-sdk-core_release"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/e.class */
public final class e {
    public static final a q = new a(null);

    /* renamed from: a  reason: collision with root package name */
    public final Context f36036a;

    /* renamed from: b  reason: collision with root package name */
    public final int f36037b;

    /* renamed from: c  reason: collision with root package name */
    final i f36038c;

    /* renamed from: d  reason: collision with root package name */
    public final Lazy<String> f36039d;
    public final String e;
    public final m f;
    public final c g;
    public final Lazy<String> h;
    public final Lazy<String> i;
    public final boolean j;
    public final Function0<String> k;
    public final String l;
    final k m;
    public final Lazy<String> n;
    final long o;
    final a p;
    private final c r;
    private final String s;
    private final Lazy<Boolean> t;
    private final int u;
    private final Function1<String, Boolean> v;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\b\n��\n\u0002\u0010\u000e\n��\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 4, 2})
    /* renamed from: com.vk.api.sdk.e$1  reason: invalid class name */
    /* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/e$1.class */
    static final class AnonymousClass1 extends r implements Function0<String> {

        /* renamed from: a  reason: collision with root package name */
        public static final AnonymousClass1 f36040a = new AnonymousClass1();

        AnonymousClass1() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* bridge */ /* synthetic */ String invoke() {
            return "";
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\b\n��\n\u0002\u0018\u0002\n��\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Lcom/vk/api/sdk/utils/log/Logger$LogLevel;", "invoke"}, k = 3, mv = {1, 4, 2})
    /* renamed from: com.vk.api.sdk.e$2  reason: invalid class name */
    /* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/e$2.class */
    static final class AnonymousClass2 extends r implements Function0<c.a> {

        /* renamed from: a  reason: collision with root package name */
        public static final AnonymousClass2 f36041a = new AnonymousClass2();

        AnonymousClass2() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* bridge */ /* synthetic */ c.a invoke() {
            return c.a.NONE;
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\b\n��\n\u0002\u0010\u000e\n��\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 4, 2})
    /* renamed from: com.vk.api.sdk.e$3  reason: invalid class name */
    /* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/e$3.class */
    static final class AnonymousClass3 extends r implements Function0<String> {

        /* renamed from: a  reason: collision with root package name */
        public static final AnonymousClass3 f36042a = new AnonymousClass3();

        AnonymousClass3() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* bridge */ /* synthetic */ String invoke() {
            return "";
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\b\n��\n\u0002\u0010\u0001\n��\u0010��\u001a\u0004\u0018\u00010\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 4, 2})
    /* renamed from: com.vk.api.sdk.e$4  reason: invalid class name */
    /* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/e$4.class */
    static final class AnonymousClass4 extends r implements Function0 {

        /* renamed from: a  reason: collision with root package name */
        public static final AnonymousClass4 f36043a = new AnonymousClass4();

        AnonymousClass4() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* bridge */ /* synthetic */ Object invoke() {
            return null;
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\b\n��\n\u0002\u0010\u000b\n��\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 4, 2})
    /* renamed from: com.vk.api.sdk.e$5  reason: invalid class name */
    /* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/e$5.class */
    static final class AnonymousClass5 extends r implements Function0<Boolean> {

        /* renamed from: a  reason: collision with root package name */
        public static final AnonymousClass5 f36044a = new AnonymousClass5();

        AnonymousClass5() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* bridge */ /* synthetic */ Boolean invoke() {
            return Boolean.FALSE;
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\b\n��\n\u0002\u0010\u000e\n��\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 4, 2})
    /* renamed from: com.vk.api.sdk.e$6  reason: invalid class name */
    /* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/e$6.class */
    static final class AnonymousClass6 extends r implements Function0<String> {

        /* renamed from: a  reason: collision with root package name */
        public static final AnonymousClass6 f36045a = new AnonymousClass6();

        AnonymousClass6() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* bridge */ /* synthetic */ String invoke() {
            return "api.vk.com";
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\b\n��\n\u0002\u0010\u000e\n��\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 4, 2})
    /* renamed from: com.vk.api.sdk.e$7  reason: invalid class name */
    /* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/e$7.class */
    static final class AnonymousClass7 extends r implements Function0<String> {

        /* renamed from: a  reason: collision with root package name */
        public static final AnonymousClass7 f36046a = new AnonymousClass7();

        AnonymousClass7() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* bridge */ /* synthetic */ String invoke() {
            return "https://api.vk.com/method";
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u000e\n��\n\u0002\u0010\u000b\n��\n\u0002\u0010\u000e\n��\u0010��\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "it", "", "invoke"}, k = 3, mv = {1, 4, 2})
    /* renamed from: com.vk.api.sdk.e$8  reason: invalid class name */
    /* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/e$8.class */
    static final class AnonymousClass8 extends r implements Function1<String, Boolean> {

        /* renamed from: a  reason: collision with root package name */
        public static final AnonymousClass8 f36047a = new AnonymousClass8();

        AnonymousClass8() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ Boolean invoke(String str) {
            String it2 = str;
            p.d(it2, "it");
            return Boolean.FALSE;
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0014\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��¨\u0006\n"}, d2 = {"Lcom/vk/api/sdk/VKApiConfig$Companion;", "", "()V", "DEFAULT_API_DOMAIN", "", "DEFAULT_API_ENDPOINT", "DEFAULT_API_VERSION", "DEFAULT_DOMAIN", "DEFAULT_OAUTH_DOMAIN", "DEFAULT_STATIC_DOMAIN", "libapi-sdk-core_release"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/e$a.class */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public e(Context context, int i, i iVar, c cVar, Lazy<String> deviceId, String version, m okHttpProvider, c logger, Lazy<String> accessToken, Lazy<String> secret, String clientSecret, boolean z, Lazy<Boolean> debugCycleCalls, int i2, Function0<String> httpApiHostProvider, String lang, k keyValueStorage, Lazy<String> customApiEndpoint, long j, Function1<? super String, Boolean> useMsgPackSerialization, a apiMethodPriorityBackoff) {
        p.d(context, "context");
        p.d(deviceId, "deviceId");
        p.d(version, "version");
        p.d(okHttpProvider, "okHttpProvider");
        p.d(logger, "logger");
        p.d(accessToken, "accessToken");
        p.d(secret, "secret");
        p.d(clientSecret, "clientSecret");
        p.d(debugCycleCalls, "debugCycleCalls");
        p.d(httpApiHostProvider, "httpApiHostProvider");
        p.d(lang, "lang");
        p.d(keyValueStorage, "keyValueStorage");
        p.d(customApiEndpoint, "customApiEndpoint");
        p.d(useMsgPackSerialization, "useMsgPackSerialization");
        p.d(apiMethodPriorityBackoff, "apiMethodPriorityBackoff");
        this.f36036a = context;
        this.f36037b = i;
        this.f36038c = iVar;
        this.r = cVar;
        this.f36039d = deviceId;
        this.e = version;
        this.f = okHttpProvider;
        this.g = logger;
        this.h = accessToken;
        this.i = secret;
        this.s = clientSecret;
        this.j = z;
        this.t = debugCycleCalls;
        this.u = i2;
        this.k = httpApiHostProvider;
        this.l = lang;
        this.m = keyValueStorage;
        this.n = customApiEndpoint;
        this.o = j;
        this.v = useMsgPackSerialization;
        this.p = apiMethodPriorityBackoff;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ e(android.content.Context r25, int r26, com.vk.api.sdk.i r27, com.vk.api.sdk.c r28, kotlin.Lazy r29, java.lang.String r30, com.vk.api.sdk.m r31, com.vk.api.sdk.e.a.c r32, kotlin.Lazy r33, kotlin.Lazy r34, java.lang.String r35, boolean r36, kotlin.Lazy r37, int r38, kotlin.jvm.functions.Function0 r39, java.lang.String r40, com.vk.api.sdk.k r41, kotlin.Lazy r42, long r43, kotlin.jvm.functions.Function1 r45, com.vk.api.sdk.e.a r46, int r47, kotlin.jvm.internal.DefaultConstructorMarker r48) {
        /*
            Method dump skipped, instructions count: 446
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vk.api.sdk.e.<init>(android.content.Context, int, com.vk.api.sdk.i, com.vk.api.sdk.c, kotlin.Lazy, java.lang.String, com.vk.api.sdk.m, com.vk.api.sdk.e.a.c, kotlin.Lazy, kotlin.Lazy, java.lang.String, boolean, kotlin.Lazy, int, kotlin.jvm.functions.Function0, java.lang.String, com.vk.api.sdk.k, kotlin.Lazy, long, kotlin.jvm.functions.Function1, com.vk.api.sdk.e.a, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof e)) {
            return false;
        }
        e eVar = (e) obj;
        return p.a(this.f36036a, eVar.f36036a) && this.f36037b == eVar.f36037b && p.a(this.f36038c, eVar.f36038c) && p.a(this.r, eVar.r) && p.a(this.f36039d, eVar.f36039d) && p.a((Object) this.e, (Object) eVar.e) && p.a(this.f, eVar.f) && p.a(this.g, eVar.g) && p.a(this.h, eVar.h) && p.a(this.i, eVar.i) && p.a((Object) this.s, (Object) eVar.s) && this.j == eVar.j && p.a(this.t, eVar.t) && this.u == eVar.u && p.a(this.k, eVar.k) && p.a((Object) this.l, (Object) eVar.l) && p.a(this.m, eVar.m) && p.a(this.n, eVar.n) && this.o == eVar.o && p.a(this.v, eVar.v) && p.a(this.p, eVar.p);
    }

    public final int hashCode() {
        Context context = this.f36036a;
        int i = 0;
        int hashCode = context != null ? context.hashCode() : 0;
        int i2 = this.f36037b;
        i iVar = this.f36038c;
        int hashCode2 = iVar != null ? iVar.hashCode() : 0;
        c cVar = this.r;
        int hashCode3 = cVar != null ? cVar.hashCode() : 0;
        Lazy<String> lazy = this.f36039d;
        int hashCode4 = lazy != null ? lazy.hashCode() : 0;
        String str = this.e;
        int hashCode5 = str != null ? str.hashCode() : 0;
        m mVar = this.f;
        int hashCode6 = mVar != null ? mVar.hashCode() : 0;
        c cVar2 = this.g;
        int hashCode7 = cVar2 != null ? cVar2.hashCode() : 0;
        Lazy<String> lazy2 = this.h;
        int hashCode8 = lazy2 != null ? lazy2.hashCode() : 0;
        Lazy<String> lazy3 = this.i;
        int hashCode9 = lazy3 != null ? lazy3.hashCode() : 0;
        String str2 = this.s;
        int hashCode10 = str2 != null ? str2.hashCode() : 0;
        boolean z = this.j;
        int i3 = z ? 1 : 0;
        if (z) {
            i3 = 1;
        }
        Lazy<Boolean> lazy4 = this.t;
        int hashCode11 = lazy4 != null ? lazy4.hashCode() : 0;
        int i4 = this.u;
        Function0<String> function0 = this.k;
        int hashCode12 = function0 != null ? function0.hashCode() : 0;
        String str3 = this.l;
        int hashCode13 = str3 != null ? str3.hashCode() : 0;
        k kVar = this.m;
        int hashCode14 = kVar != null ? kVar.hashCode() : 0;
        Lazy<String> lazy5 = this.n;
        int hashCode15 = lazy5 != null ? lazy5.hashCode() : 0;
        long j = this.o;
        int i5 = (int) (j ^ (j >>> 32));
        Function1<String, Boolean> function1 = this.v;
        int hashCode16 = function1 != null ? function1.hashCode() : 0;
        a aVar = this.p;
        if (aVar != null) {
            i = aVar.hashCode();
        }
        return (((((((((((((((((((((((((((((((((((((((hashCode * 31) + i2) * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + hashCode7) * 31) + hashCode8) * 31) + hashCode9) * 31) + hashCode10) * 31) + i3) * 31) + hashCode11) * 31) + i4) * 31) + hashCode12) * 31) + hashCode13) * 31) + hashCode14) * 31) + hashCode15) * 31) + i5) * 31) + hashCode16) * 31) + i;
    }

    public final String toString() {
        return "VKApiConfig(context=" + this.f36036a + ", appId=" + this.f36037b + ", validationHandler=" + this.f36038c + ", apiCallListener=" + this.r + ", deviceId=" + this.f36039d + ", version=" + this.e + ", okHttpProvider=" + this.f + ", logger=" + this.g + ", accessToken=" + this.h + ", secret=" + this.i + ", clientSecret=" + this.s + ", logFilterCredentials=" + this.j + ", debugCycleCalls=" + this.t + ", callsPerSecondLimit=" + this.u + ", httpApiHostProvider=" + this.k + ", lang=" + this.l + ", keyValueStorage=" + this.m + ", customApiEndpoint=" + this.n + ", rateLimitBackoffTimeoutMs=" + this.o + ", useMsgPackSerialization=" + this.v + ", apiMethodPriorityBackoff=" + this.p + ")";
    }
}
