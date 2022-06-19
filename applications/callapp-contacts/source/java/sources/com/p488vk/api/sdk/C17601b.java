package com.p488vk.api.sdk;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import com.callapp.contacts.model.Constants;
import com.facebook.AccessToken;
import com.p488vk.api.sdk.exceptions.VKApiException;
import com.p488vk.api.sdk.exceptions.VKApiExecutionException;
import com.p488vk.api.sdk.internal.AbstractC17692a;
import com.p488vk.api.sdk.p492a.AbstractC17593b;
import com.p488vk.api.sdk.p492a.C17591a;
import com.p488vk.api.sdk.p492a.C17595c;
import com.p488vk.api.sdk.p492a.C17597d;
import com.p488vk.api.sdk.p492a.C17599e;
import com.p488vk.api.sdk.p492a.EnumC17600f;
import com.p488vk.api.sdk.p495d.C17647a;
import com.p488vk.api.sdk.p496e.C17674g;
import com.p488vk.api.sdk.p496e.C17676h;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import kotlin.C18399h;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.jvm.internal.C18524p;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0086\u0001\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\n\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u0013H\u0007J\u0010\u0010\u001e\u001a\u00020\u001c2\u0006\u0010\u001f\u001a\u00020 H\u0007J.\u0010!\u001a\u00020\u001c\"\u0004\b��\u0010\"2\f\u0010#\u001a\b\u0012\u0004\u0012\u0002H\"0$2\u0010\b\u0002\u0010%\u001a\n\u0012\u0004\u0012\u0002H\"\u0018\u00010&H\u0007J!\u0010'\u001a\u0002H\"\"\u0004\b��\u0010\"2\f\u0010(\u001a\b\u0012\u0004\u0012\u0002H\"0$H\u0007¢\u0006\u0002\u0010)J\b\u0010*\u001a\u00020\u0004H\u0007J\u0010\u0010+\u001a\u00020\u000e2\u0006\u0010\u001f\u001a\u00020 H\u0007J\u0010\u0010,\u001a\u00020\u000e2\u0006\u0010\u001f\u001a\u00020 H\u0002J\b\u0010-\u001a\u00020\u000eH\u0007J\r\u0010.\u001a\u00020\u001cH��¢\u0006\u0002\b/J\u0010\u00100\u001a\u00020\u001c2\u0006\u0010\u001f\u001a\u00020 H\u0007J\b\u00101\u001a\u000202H\u0007J \u00103\u001a\u00020\u001c2\u0006\u00104\u001a\u0002052\u000e\b\u0002\u00106\u001a\b\u0012\u0004\u0012\u00020807H\u0007J\b\u00109\u001a\u00020\u001cH\u0007J*\u0010:\u001a\u0002022\u0006\u0010;\u001a\u00020\u000e2\u0006\u0010<\u001a\u00020\u000e2\b\u0010=\u001a\u0004\u0018\u00010>2\u0006\u0010%\u001a\u00020?H\u0007J\u0010\u0010@\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u0013H\u0007J*\u0010A\u001a\u00020\u001c2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010B\u001a\u00020\u000e2\u0006\u0010C\u001a\u00020\u00042\b\u0010D\u001a\u0004\u0018\u00010\u0004H\u0007J\u0010\u0010E\u001a\u00020\u001c2\u0006\u0010\u000f\u001a\u00020\u0010H\u0007J4\u0010F\u001a\u00020\u001c2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010B\u001a\u00020\u000e2\u0006\u0010C\u001a\u00020\u00042\b\u0010D\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010G\u001a\u000202H\u0007J\b\u0010H\u001a\u00020\u001cH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u001a\u0010\u0005\u001a\u00020\u0006X\u0080.¢\u0006\u000e\n��\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u000e\u0010\u000b\u001a\u00020\fX\u0082.¢\u0006\u0002\n��R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e¢\u0006\u0002\n��R\u0012\u0010\u000f\u001a\u00020\u00108\u0002@\u0002X\u0083.¢\u0006\u0002\n��R\u001e\u0010\u0011\u001a\u0012\u0012\u0004\u0012\u00020\u00130\u0012j\b\u0012\u0004\u0012\u00020\u0013`\u0014X\u0082\u0004¢\u0006\u0002\n��R\u001b\u0010\u0015\u001a\u00020\u00168FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u0017\u0010\u0018¨\u0006I"}, m4298d2 = {"Lcom/vk/api/sdk/VK;", "", "()V", "SDK_APP_ID", "", "apiManager", "Lcom/vk/api/sdk/VKApiManager;", "getApiManager$libapi_sdk_core_release", "()Lcom/vk/api/sdk/VKApiManager;", "setApiManager$libapi_sdk_core_release", "(Lcom/vk/api/sdk/VKApiManager;)V", "authManager", "Lcom/vk/api/sdk/auth/VKAuthManager;", "cachedResourceAppId", "", "config", "Lcom/vk/api/sdk/VKApiConfig;", "tokenExpiredHandlers", "Ljava/util/ArrayList;", "Lcom/vk/api/sdk/VKTokenExpiredHandler;", "Lkotlin/collections/ArrayList;", "urlResolver", "Lcom/vk/api/sdk/utils/VKUrlResolver;", "getUrlResolver", "()Lcom/vk/api/sdk/utils/VKUrlResolver;", "urlResolver$delegate", "Lkotlin/Lazy;", "addTokenExpiredHandler", "", "handler", "clearAccessToken", "context", "Landroid/content/Context;", "execute", "T", "request", "Lcom/vk/api/sdk/internal/ApiCommand;", "callback", "Lcom/vk/api/sdk/VKApiCallback;", "executeSync", "cmd", "(Lcom/vk/api/sdk/internal/ApiCommand;)Ljava/lang/Object;", "getApiVersion", "getAppId", "getAppIdFromResources", "getUserId", "handleTokenExpired", "handleTokenExpired$libapi_sdk_core_release", "initialize", "isLoggedIn", "", "login", "activity", "Landroid/app/Activity;", "scopes", "", "Lcom/vk/api/sdk/auth/VKScope;", "logout", "onActivityResult", "requestCode", "resultCode", "data", "Landroid/content/Intent;", "Lcom/vk/api/sdk/auth/VKAuthCallback;", "removeTokenExpiredHandler", "saveAccessToken", "userId", "accessToken", "secret", "setConfig", "setCredentials", "saveAccessTokenToStorage", "trackVisitor", "libapi-sdk-core_release"}, m4297k = 1, m4296mv = {1, 4, 2})
/* renamed from: com.vk.api.sdk.b */
/* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/b.class */
public final class C17601b {

    /* renamed from: a */
    public static C17685g f62333a;

    /* renamed from: c */
    private static C17650e f62335c;

    /* renamed from: d */
    private static C17595c f62336d;

    /* renamed from: f */
    private static int f62338f;

    /* renamed from: b */
    public static final C17601b f62334b = new C17601b();

    /* renamed from: e */
    private static final ArrayList<AbstractC17711p> f62337e = new ArrayList<>();

    /* renamed from: g */
    private static final Lazy f62339g = C18399h.m3897a(C17605b.f62346a);

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\n\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u0001\"\u0004\b��\u0010\u0002H\n¢\u0006\u0002\b\u0003"}, m4298d2 = {"<anonymous>", "", "T", "run"}, m4297k = 3, m4296mv = {1, 4, 2})
    /* renamed from: com.vk.api.sdk.b$a */
    /* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/b$a.class */
    public static final class RunnableC17602a implements Runnable {

        /* renamed from: a */
        final /* synthetic */ AbstractC17692a f62340a;

        /* renamed from: b */
        final /* synthetic */ AbstractC17646d f62341b;

        RunnableC17602a(AbstractC17692a abstractC17692a, AbstractC17646d abstractC17646d) {
            this.f62340a = abstractC17692a;
            this.f62341b = abstractC17646d;
        }

        @Override // java.lang.Runnable
        public final void run() {
            try {
                final Object m4887a = C17601b.m4887a(this.f62340a);
                C17707o.m4797a(new Runnable() { // from class: com.vk.api.sdk.b.a.1
                    @Override // java.lang.Runnable
                    public final void run() {
                    }
                });
            } catch (Exception e) {
                C17707o.m4797a(new Runnable() { // from class: com.vk.api.sdk.b.a.2
                    @Override // java.lang.Runnable
                    public final void run() {
                        Exception exc = e;
                        if (!(exc instanceof VKApiExecutionException) || !((VKApiExecutionException) exc).m4831a()) {
                            return;
                        }
                        C17601b c17601b = C17601b.f62334b;
                        C17601b.m4880d();
                    }
                });
            }
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\b\n��\n\u0002\u0018\u0002\n��\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, m4298d2 = {"<anonymous>", "Lcom/vk/api/sdk/utils/VKUrlResolver;", "invoke"}, m4297k = 3, m4296mv = {1, 4, 2})
    /* renamed from: com.vk.api.sdk.b$b */
    /* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/b$b.class */
    static final class C17605b extends AbstractC18526r implements Function0<C17674g> {

        /* renamed from: a */
        public static final C17605b f62346a = new C17605b();

        C17605b() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ C17674g invoke() {
            return new C17674g();
        }
    }

    private C17601b() {
    }

    /* renamed from: a */
    public static final <T> T m4887a(AbstractC17692a<T> cmd) throws InterruptedException, IOException, VKApiException {
        C18524p.m3840d(cmd, "cmd");
        C17685g c17685g = f62333a;
        if (c17685g == null) {
            C18524p.m3848a("apiManager");
        }
        return cmd.m4823b(c17685g);
    }

    /* renamed from: a */
    public static final void m4891a() {
        C17595c c17595c = f62336d;
        if (c17595c == null) {
            C18524p.m3848a("authManager");
        }
        c17595c.m4894b();
        C17676h c17676h = C17676h.f62484a;
        C17650e c17650e = f62335c;
        if (c17650e == null) {
            C18524p.m3848a("config");
        }
        C17676h.m4838a(c17650e.f62436a);
    }

    /* renamed from: a */
    public static final void m4889a(Activity activity, Collection<? extends EnumC17600f> scopes) {
        C18524p.m3840d(activity, "activity");
        C18524p.m3840d(scopes, "scopes");
        if (f62336d == null) {
            C18524p.m3848a("authManager");
        }
        C18524p.m3840d(activity, "activity");
        C18524p.m3840d(scopes, "scopes");
        Activity activity2 = activity;
        C17597d c17597d = new C17597d(m4884b(activity2), null, scopes, 2, null);
        if (C17676h.m4837a(activity2, "com.vkontakte.android.action.SDK_AUTH", "com.vkontakte.android")) {
            C17595c.m4896a(activity, c17597d);
        } else {
            C17595c.m4893b(activity, c17597d);
        }
    }

    /* renamed from: a */
    public static final void m4888a(Context context) {
        C18524p.m3840d(context, "context");
        C17650e config = new C17650e(context, m4881c(context), new C17697j(context), null, null, null, null, null, null, null, null, false, null, 0, null, null, null, null, 0L, null, null, 2097144, null);
        C18524p.m3840d(config, "config");
        f62335c = config;
        f62333a = new C17685g(config);
        C17595c c17595c = new C17595c(config.f62448m);
        f62336d = c17595c;
        C17591a m4897a = c17595c.m4897a();
        if (m4897a != null) {
            C17685g c17685g = f62333a;
            if (c17685g == null) {
                C18524p.m3848a("apiManager");
            }
            c17685g.m4827a(m4897a.f62315b, m4897a.f62316c);
        }
        if (m4885b()) {
            m4879e();
        }
    }

    /* renamed from: a */
    public static final void m4886a(AbstractC17711p handler) {
        C18524p.m3840d(handler, "handler");
        f62337e.add(handler);
    }

    /* renamed from: a */
    public static final boolean m4890a(int i, int i2, Intent intent, AbstractC17593b callback) {
        C18524p.m3840d(callback, "callback");
        C17595c c17595c = f62336d;
        if (c17595c == null) {
            C18524p.m3848a("authManager");
        }
        C18524p.m3840d(callback, "callback");
        boolean z = true;
        if (i != 282) {
            z = false;
        } else if (intent == null) {
            callback.mo4899a();
        } else {
            C17599e m4895a = C17595c.m4895a(intent);
            if (i2 == -1 && m4895a != null) {
                boolean z2 = false;
                if (m4895a.f62332b != 0) {
                    z2 = true;
                }
                if (!z2) {
                    C17591a c17591a = m4895a.f62331a;
                    C18524p.m3851a(c17591a);
                    AbstractC17698k storage = c17595c.f62326a;
                    C18524p.m3840d(storage, "storage");
                    HashMap hashMap = new HashMap();
                    hashMap.put(AccessToken.ACCESS_TOKEN_KEY, c17591a.f62315b);
                    hashMap.put("secret", c17591a.f62316c);
                    hashMap.put("https_required", c17591a.f62321h ? "1" : "0");
                    hashMap.put("created", String.valueOf(c17591a.f62317d));
                    hashMap.put(AccessToken.EXPIRES_IN_KEY, String.valueOf(c17591a.f62322i));
                    hashMap.put(AccessToken.USER_ID_KEY, String.valueOf(c17591a.f62314a));
                    hashMap.put("email", c17591a.f62318e);
                    hashMap.put(Constants.EXTRA_PHONE_NUMBER, c17591a.f62319f);
                    hashMap.put("phone_access_key", c17591a.f62320g);
                    for (Map.Entry entry : hashMap.entrySet()) {
                        storage.mo4799b((String) entry.getKey(), (String) entry.getValue());
                    }
                    C17685g c17685g = f62333a;
                    if (c17685g == null) {
                        C18524p.m3848a("apiManager");
                    }
                    c17685g.m4827a(m4895a.f62331a.f62315b, m4895a.f62331a.f62316c);
                    callback.mo4898a(m4895a.f62331a);
                }
            }
            callback.mo4899a();
        }
        if (z && m4885b()) {
            m4879e();
        }
        return z;
    }

    /* renamed from: b */
    private static int m4884b(Context context) {
        int i;
        C18524p.m3840d(context, "context");
        try {
            C17685g c17685g = f62333a;
            if (c17685g == null) {
                C18524p.m3848a("apiManager");
            }
            i = c17685g.f62507c.f62437b;
        } catch (Exception e) {
            i = m4881c(context);
        }
        return i;
    }

    /* renamed from: b */
    private static /* synthetic */ void m4883b(AbstractC17692a request) {
        C18524p.m3840d(request, "request");
        C17707o c17707o = C17707o.f62545a;
        C17707o.m4798a().submit(new RunnableC17602a(request, null));
    }

    /* renamed from: b */
    public static final boolean m4885b() {
        C17595c c17595c = f62336d;
        if (c17595c == null) {
            C18524p.m3848a("authManager");
        }
        C17591a m4897a = c17595c.m4897a();
        if (m4897a != null) {
            return (m4897a.f62322i > 0L ? 1 : (m4897a.f62322i == 0L ? 0 : -1)) <= 0 || ((m4897a.f62317d + (m4897a.f62322i * 1000)) > System.currentTimeMillis() ? 1 : ((m4897a.f62317d + (m4897a.f62322i * 1000)) == System.currentTimeMillis() ? 0 : -1)) > 0;
        }
        return false;
    }

    /* renamed from: c */
    private static int m4881c(Context context) {
        int i;
        int i2 = f62338f;
        if (i2 != 0) {
            return i2;
        }
        try {
            i = context.getResources().getInteger(context.getResources().getIdentifier("com_vk_sdk_AppId", "integer", context.getPackageName()));
        } catch (Exception e) {
            i = 0;
        }
        if (i == 0) {
            throw new RuntimeException("<integer name=\"com_vk_sdk_AppId\">your_app_id</integer> is not found in your resources.xml");
        }
        f62338f = i;
        return i;
    }

    /* renamed from: c */
    public static final String m4882c() {
        C17650e c17650e = f62335c;
        if (c17650e == null) {
            C18524p.m3848a("config");
        }
        return c17650e.f62440e;
    }

    /* renamed from: d */
    public static void m4880d() {
        C17595c c17595c = f62336d;
        if (c17595c == null) {
            C18524p.m3848a("authManager");
        }
        c17595c.m4894b();
        Iterator<T> it2 = f62337e.iterator();
        while (it2.hasNext()) {
            it2.next();
        }
    }

    /* renamed from: e */
    private static void m4879e() {
        m4883b(new C17647a("stats.trackVisitor"));
    }
}
