package com.p488vk.api.sdk.p492a;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
import com.p488vk.api.sdk.AbstractC17698k;
import com.p488vk.api.sdk.p492a.C17591a;
import com.p488vk.api.sdk.p496e.C17676h;
import com.p488vk.api.sdk.p498ui.VKWebViewAuthActivity;
import java.util.HashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.p518a.C18282n;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\\\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\b��\u0018��  2\u00020\u0001:\u0001 B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0006\u0010\u0005\u001a\u00020\u0006J\b\u0010\u0007\u001a\u0004\u0018\u00010\bJ\u0006\u0010\t\u001a\u00020\nJ\u001c\u0010\u000b\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\r2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00100\u000fJ(\u0010\u0011\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00132\b\u0010\u0015\u001a\u0004\u0018\u00010\u00162\u0006\u0010\u0017\u001a\u00020\u0018J\u0012\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\u0006\u0010\u001b\u001a\u00020\u0016H\u0002J\u0018\u0010\u001c\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u001d\u001a\u00020\u001eH\u0002J\u0018\u0010\u001f\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u001d\u001a\u00020\u001eH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��¨\u0006!"}, m4298d2 = {"Lcom/vk/api/sdk/auth/VKAuthManager;", "", "keyValueStorage", "Lcom/vk/api/sdk/VKKeyValueStorage;", "(Lcom/vk/api/sdk/VKKeyValueStorage;)V", "clearAccessToken", "", "getCurrentToken", "Lcom/vk/api/sdk/auth/VKAccessToken;", "isLoggedIn", "", "login", "activity", "Landroid/app/Activity;", "scopes", "", "Lcom/vk/api/sdk/auth/VKScope;", "onActivityResult", "requestCode", "", "resultCode", "data", "Landroid/content/Intent;", "callback", "Lcom/vk/api/sdk/auth/VKAuthCallback;", "processResult", "Lcom/vk/api/sdk/auth/VKAuthResult;", "result", "startAuthActivity", "params", "Lcom/vk/api/sdk/auth/VKAuthParams;", "startInternalAuthActivity", "Companion", "libapi-sdk-core_release"}, m4297k = 1, m4296mv = {1, 4, 2})
/* renamed from: com.vk.api.sdk.a.c */
/* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/a/c.class */
public final class C17595c {

    /* renamed from: b */
    public static final C17596a f62325b = new C17596a(null);

    /* renamed from: a */
    public final AbstractC17698k f62326a;

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u001a\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0010\b\n\u0002\b\u0004\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��¨\u0006\n"}, m4298d2 = {"Lcom/vk/api/sdk/auth/VKAuthManager$Companion;", "", "()V", "VK_APP_AUTH_ACTION", "", "VK_APP_AUTH_CODE", "", "VK_APP_PACKAGE_ID", "VK_AUTH_ERROR", "VK_EXTRA_TOKEN_DATA", "libapi-sdk-core_release"}, m4297k = 1, m4296mv = {1, 4, 2})
    /* renamed from: com.vk.api.sdk.a.c$a */
    /* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/a/c$a.class */
    public static final class C17596a {
        private C17596a() {
        }

        public /* synthetic */ C17596a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public C17595c(AbstractC17698k keyValueStorage) {
        C18524p.m3840d(keyValueStorage, "keyValueStorage");
        this.f62326a = keyValueStorage;
    }

    /* renamed from: a */
    public static C17599e m4895a(Intent intent) {
        C17599e c17599e;
        Map<String, String> map;
        if (!intent.hasExtra("extra-token-data")) {
            c17599e = null;
            if (intent.getExtras() != null) {
                HashMap hashMap = new HashMap();
                Bundle extras = intent.getExtras();
                C18524p.m3851a(extras);
                for (String key : extras.keySet()) {
                    C18524p.m3843b(key, "key");
                    Bundle extras2 = intent.getExtras();
                    C18524p.m3851a(extras2);
                    hashMap.put(key, String.valueOf(extras2.get(key)));
                }
                map = hashMap;
            }
            return c17599e;
        }
        map = C17676h.m4836a(intent.getStringExtra("extra-token-data"));
        c17599e = null;
        if (map != null) {
            c17599e = null;
            if (map.get("error") == null) {
                try {
                    c17599e = new C17599e(new C17591a(map), 0, 2, null);
                } catch (Exception e) {
                    Log.e(C17595c.class.getSimpleName(), "Failed to get VK token", e);
                    c17599e = null;
                }
            }
        }
        return c17599e;
    }

    /* renamed from: a */
    public static void m4896a(Activity activity, C17597d c17597d) {
        Intent intent = new Intent("com.vkontakte.android.action.SDK_AUTH", (Uri) null);
        intent.setPackage("com.vkontakte.android");
        Bundle bundle = new Bundle();
        bundle.putInt("client_id", c17597d.f62329b);
        bundle.putBoolean("revoke", true);
        bundle.putString("scope", C18282n.m4148a(c17597d.f62328a, ",", (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, (Function1) null, 62));
        bundle.putString("redirect_url", c17597d.f62330c);
        intent.putExtras(bundle);
        activity.startActivityForResult(intent, 282);
    }

    /* renamed from: b */
    public static void m4893b(Activity activity, C17597d params) {
        VKWebViewAuthActivity.C17725a c17725a = VKWebViewAuthActivity.f62576a;
        C18524p.m3840d(activity, "activity");
        C18524p.m3840d(params, "params");
        Intent putExtra = new Intent(activity, VKWebViewAuthActivity.class).putExtra("vk_auth_params", params.m4892a());
        C18524p.m3843b(putExtra, "Intent(activity, VKWebVi…ARAMS, params.toBundle())");
        activity.startActivityForResult(putExtra, 282);
    }

    /* renamed from: a */
    public final C17591a m4897a() {
        C17591a.C17592a c17592a = C17591a.f62312j;
        return C17591a.C17592a.m4900b(this.f62326a);
    }

    /* renamed from: b */
    public final void m4894b() {
        C17591a.C17592a c17592a = C17591a.f62312j;
        C17591a.C17592a.m4901a(this.f62326a);
    }
}
