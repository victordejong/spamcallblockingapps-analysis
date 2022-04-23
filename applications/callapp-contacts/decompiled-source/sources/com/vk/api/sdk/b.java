package com.vk.api.sdk;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import com.callapp.contacts.model.Constants;
import com.facebook.AccessToken;
import com.vk.api.sdk.a.c;
import com.vk.api.sdk.a.d;
import com.vk.api.sdk.a.e;
import com.vk.api.sdk.a.f;
import com.vk.api.sdk.e.g;
import com.vk.api.sdk.exceptions.VKApiException;
import com.vk.api.sdk.exceptions.VKApiExecutionException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.h;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.p;
import kotlin.jvm.internal.r;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0086\u0001\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\n\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u0013H\u0007J\u0010\u0010\u001e\u001a\u00020\u001c2\u0006\u0010\u001f\u001a\u00020 H\u0007J.\u0010!\u001a\u00020\u001c\"\u0004\b��\u0010\"2\f\u0010#\u001a\b\u0012\u0004\u0012\u0002H\"0$2\u0010\b\u0002\u0010%\u001a\n\u0012\u0004\u0012\u0002H\"\u0018\u00010&H\u0007J!\u0010'\u001a\u0002H\"\"\u0004\b��\u0010\"2\f\u0010(\u001a\b\u0012\u0004\u0012\u0002H\"0$H\u0007¢\u0006\u0002\u0010)J\b\u0010*\u001a\u00020\u0004H\u0007J\u0010\u0010+\u001a\u00020\u000e2\u0006\u0010\u001f\u001a\u00020 H\u0007J\u0010\u0010,\u001a\u00020\u000e2\u0006\u0010\u001f\u001a\u00020 H\u0002J\b\u0010-\u001a\u00020\u000eH\u0007J\r\u0010.\u001a\u00020\u001cH��¢\u0006\u0002\b/J\u0010\u00100\u001a\u00020\u001c2\u0006\u0010\u001f\u001a\u00020 H\u0007J\b\u00101\u001a\u000202H\u0007J \u00103\u001a\u00020\u001c2\u0006\u00104\u001a\u0002052\u000e\b\u0002\u00106\u001a\b\u0012\u0004\u0012\u00020807H\u0007J\b\u00109\u001a\u00020\u001cH\u0007J*\u0010:\u001a\u0002022\u0006\u0010;\u001a\u00020\u000e2\u0006\u0010<\u001a\u00020\u000e2\b\u0010=\u001a\u0004\u0018\u00010>2\u0006\u0010%\u001a\u00020?H\u0007J\u0010\u0010@\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u0013H\u0007J*\u0010A\u001a\u00020\u001c2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010B\u001a\u00020\u000e2\u0006\u0010C\u001a\u00020\u00042\b\u0010D\u001a\u0004\u0018\u00010\u0004H\u0007J\u0010\u0010E\u001a\u00020\u001c2\u0006\u0010\u000f\u001a\u00020\u0010H\u0007J4\u0010F\u001a\u00020\u001c2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010B\u001a\u00020\u000e2\u0006\u0010C\u001a\u00020\u00042\b\u0010D\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010G\u001a\u000202H\u0007J\b\u0010H\u001a\u00020\u001cH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u001a\u0010\u0005\u001a\u00020\u0006X\u0080.¢\u0006\u000e\n��\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u000e\u0010\u000b\u001a\u00020\fX\u0082.¢\u0006\u0002\n��R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e¢\u0006\u0002\n��R\u0012\u0010\u000f\u001a\u00020\u00108\u0002@\u0002X\u0083.¢\u0006\u0002\n��R\u001e\u0010\u0011\u001a\u0012\u0012\u0004\u0012\u00020\u00130\u0012j\b\u0012\u0004\u0012\u00020\u0013`\u0014X\u0082\u0004¢\u0006\u0002\n��R\u001b\u0010\u0015\u001a\u00020\u00168FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u0017\u0010\u0018¨\u0006I"}, d2 = {"Lcom/vk/api/sdk/VK;", "", "()V", "SDK_APP_ID", "", "apiManager", "Lcom/vk/api/sdk/VKApiManager;", "getApiManager$libapi_sdk_core_release", "()Lcom/vk/api/sdk/VKApiManager;", "setApiManager$libapi_sdk_core_release", "(Lcom/vk/api/sdk/VKApiManager;)V", "authManager", "Lcom/vk/api/sdk/auth/VKAuthManager;", "cachedResourceAppId", "", "config", "Lcom/vk/api/sdk/VKApiConfig;", "tokenExpiredHandlers", "Ljava/util/ArrayList;", "Lcom/vk/api/sdk/VKTokenExpiredHandler;", "Lkotlin/collections/ArrayList;", "urlResolver", "Lcom/vk/api/sdk/utils/VKUrlResolver;", "getUrlResolver", "()Lcom/vk/api/sdk/utils/VKUrlResolver;", "urlResolver$delegate", "Lkotlin/Lazy;", "addTokenExpiredHandler", "", "handler", "clearAccessToken", "context", "Landroid/content/Context;", "execute", "T", "request", "Lcom/vk/api/sdk/internal/ApiCommand;", "callback", "Lcom/vk/api/sdk/VKApiCallback;", "executeSync", "cmd", "(Lcom/vk/api/sdk/internal/ApiCommand;)Ljava/lang/Object;", "getApiVersion", "getAppId", "getAppIdFromResources", "getUserId", "handleTokenExpired", "handleTokenExpired$libapi_sdk_core_release", "initialize", "isLoggedIn", "", "login", "activity", "Landroid/app/Activity;", "scopes", "", "Lcom/vk/api/sdk/auth/VKScope;", "logout", "onActivityResult", "requestCode", "resultCode", "data", "Landroid/content/Intent;", "Lcom/vk/api/sdk/auth/VKAuthCallback;", "removeTokenExpiredHandler", "saveAccessToken", "userId", "accessToken", "secret", "setConfig", "setCredentials", "saveAccessTokenToStorage", "trackVisitor", "libapi-sdk-core_release"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/b.class */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    public static g f35953a;

    /* renamed from: c  reason: collision with root package name */
    private static e f35955c;

    /* renamed from: d  reason: collision with root package name */
    private static c f35956d;
    private static int f;

    /* renamed from: b  reason: collision with root package name */
    public static final b f35954b = new b();
    private static final ArrayList<p> e = new ArrayList<>();
    private static final Lazy g = h.a(C0574b.f35968a);

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata(bv = {1, 0, 3}, d1 = {"��\n\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u0001\"\u0004\b��\u0010\u0002H\n¢\u0006\u0002\b\u0003"}, d2 = {"<anonymous>", "", "T", "run"}, k = 3, mv = {1, 4, 2})
    /* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/b$a.class */
    public static final class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.vk.api.sdk.internal.a f35957a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ d f35958b;

        a(com.vk.api.sdk.internal.a aVar, d dVar) {
            this.f35957a = aVar;
            this.f35958b = dVar;
        }

        @Override // java.lang.Runnable
        public final void run() {
            try {
                final Object a2 = b.a(this.f35957a);
                o.a(new Runnable() { // from class: com.vk.api.sdk.b.a.1
                    @Override // java.lang.Runnable
                    public final void run() {
                    }
                });
            } catch (Exception e) {
                o.a(new Runnable() { // from class: com.vk.api.sdk.b.a.2
                    @Override // java.lang.Runnable
                    public final void run() {
                        Exception exc = e;
                        if ((exc instanceof VKApiExecutionException) && ((VKApiExecutionException) exc).a()) {
                            b bVar = b.f35954b;
                            b.d();
                        }
                    }
                });
            }
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\b\n��\n\u0002\u0018\u0002\n��\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Lcom/vk/api/sdk/utils/VKUrlResolver;", "invoke"}, k = 3, mv = {1, 4, 2})
    /* renamed from: com.vk.api.sdk.b$b  reason: collision with other inner class name */
    /* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/b$b.class */
    static final class C0574b extends r implements Function0<g> {

        /* renamed from: a  reason: collision with root package name */
        public static final C0574b f35968a = new C0574b();

        C0574b() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ g invoke() {
            return new g();
        }
    }

    private b() {
    }

    public static final <T> T a(com.vk.api.sdk.internal.a<T> cmd) throws InterruptedException, IOException, VKApiException {
        p.d(cmd, "cmd");
        g gVar = f35953a;
        if (gVar == null) {
            p.a("apiManager");
        }
        return cmd.b(gVar);
    }

    public static final void a() {
        c cVar = f35956d;
        if (cVar == null) {
            p.a("authManager");
        }
        cVar.b();
        com.vk.api.sdk.e.h hVar = com.vk.api.sdk.e.h.f36063a;
        e eVar = f35955c;
        if (eVar == null) {
            p.a("config");
        }
        com.vk.api.sdk.e.h.a(eVar.f36036a);
    }

    public static final void a(Activity activity, Collection<? extends f> scopes) {
        p.d(activity, "activity");
        p.d(scopes, "scopes");
        if (f35956d == null) {
            p.a("authManager");
        }
        p.d(activity, "activity");
        p.d(scopes, "scopes");
        Activity activity2 = activity;
        d dVar = new d(b(activity2), null, scopes, 2, null);
        if (com.vk.api.sdk.e.h.a(activity2, "com.vkontakte.android.action.SDK_AUTH", "com.vkontakte.android")) {
            c.a(activity, dVar);
        } else {
            c.b(activity, dVar);
        }
    }

    public static final void a(Context context) {
        p.d(context, "context");
        e config = new e(context, c(context), new j(context), null, null, null, null, null, null, null, null, false, null, 0, null, null, null, null, 0L, null, null, 2097144, null);
        p.d(config, "config");
        f35955c = config;
        f35953a = new g(config);
        c cVar = new c(config.m);
        f35956d = cVar;
        com.vk.api.sdk.a.a a2 = cVar.a();
        if (a2 != null) {
            g gVar = f35953a;
            if (gVar == null) {
                p.a("apiManager");
            }
            gVar.a(a2.f35940b, a2.f35941c);
        }
        if (b()) {
            e();
        }
    }

    public static final void a(p handler) {
        p.d(handler, "handler");
        e.add(handler);
    }

    public static final boolean a(int i, int i2, Intent intent, com.vk.api.sdk.a.b callback) {
        p.d(callback, "callback");
        c cVar = f35956d;
        if (cVar == null) {
            p.a("authManager");
        }
        p.d(callback, "callback");
        boolean z = true;
        boolean z2 = false;
        if (i != 282) {
            z = false;
        } else if (intent == null) {
            callback.a();
        } else {
            e a2 = c.a(intent);
            if (i2 == -1 && a2 != null) {
                if (a2.f35952b != 0) {
                    z2 = true;
                }
                if (!z2) {
                    com.vk.api.sdk.a.a aVar = a2.f35951a;
                    p.a(aVar);
                    k storage = cVar.f35946a;
                    p.d(storage, "storage");
                    HashMap hashMap = new HashMap();
                    hashMap.put(AccessToken.ACCESS_TOKEN_KEY, aVar.f35940b);
                    hashMap.put("secret", aVar.f35941c);
                    hashMap.put("https_required", aVar.h ? "1" : "0");
                    hashMap.put("created", String.valueOf(aVar.f35942d));
                    hashMap.put(AccessToken.EXPIRES_IN_KEY, String.valueOf(aVar.i));
                    hashMap.put(AccessToken.USER_ID_KEY, String.valueOf(aVar.f35939a));
                    hashMap.put("email", aVar.e);
                    hashMap.put(Constants.EXTRA_PHONE_NUMBER, aVar.f);
                    hashMap.put("phone_access_key", aVar.g);
                    for (Map.Entry entry : hashMap.entrySet()) {
                        storage.b((String) entry.getKey(), (String) entry.getValue());
                    }
                    g gVar = f35953a;
                    if (gVar == null) {
                        p.a("apiManager");
                    }
                    gVar.a(a2.f35951a.f35940b, a2.f35951a.f35941c);
                    callback.a(a2.f35951a);
                }
            }
            callback.a();
        }
        if (z && b()) {
            e();
        }
        return z;
    }

    private static int b(Context context) {
        int i;
        p.d(context, "context");
        try {
            g gVar = f35953a;
            if (gVar == null) {
                p.a("apiManager");
            }
            i = gVar.f36080c.f36037b;
        } catch (Exception e2) {
            i = c(context);
        }
        return i;
    }

    private static /* synthetic */ void b(com.vk.api.sdk.internal.a request) {
        p.d(request, "request");
        o oVar = o.f36108a;
        o.a().submit(new a(request, null));
    }

    public static final boolean b() {
        c cVar = f35956d;
        if (cVar == null) {
            p.a("authManager");
        }
        com.vk.api.sdk.a.a a2 = cVar.a();
        if (a2 == null) {
            return false;
        }
        return (a2.i > 0L ? 1 : (a2.i == 0L ? 0 : -1)) <= 0 || ((a2.f35942d + (a2.i * 1000)) > System.currentTimeMillis() ? 1 : ((a2.f35942d + (a2.i * 1000)) == System.currentTimeMillis() ? 0 : -1)) > 0;
    }

    private static int c(Context context) {
        int i;
        int i2 = f;
        if (i2 != 0) {
            return i2;
        }
        try {
            i = context.getResources().getInteger(context.getResources().getIdentifier("com_vk_sdk_AppId", "integer", context.getPackageName()));
        } catch (Exception e2) {
            i = 0;
        }
        if (i != 0) {
            f = i;
            return i;
        }
        throw new RuntimeException("<integer name=\"com_vk_sdk_AppId\">your_app_id</integer> is not found in your resources.xml");
    }

    public static final String c() {
        e eVar = f35955c;
        if (eVar == null) {
            p.a("config");
        }
        return eVar.e;
    }

    public static void d() {
        c cVar = f35956d;
        if (cVar == null) {
            p.a("authManager");
        }
        cVar.b();
        Iterator<T> it2 = e.iterator();
        while (it2.hasNext()) {
            it2.next();
        }
    }

    private static void e() {
        b(new com.vk.api.sdk.d.a("stats.trackVisitor"));
    }
}
