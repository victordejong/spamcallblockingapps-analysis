package com.vk.api.sdk.a;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
import com.vk.api.sdk.a.a;
import com.vk.api.sdk.e.h;
import com.vk.api.sdk.k;
import com.vk.api.sdk.ui.VKWebViewAuthActivity;
import java.util.HashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.a.n;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��\\\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\b��\u0018��  2\u00020\u0001:\u0001 B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0006\u0010\u0005\u001a\u00020\u0006J\b\u0010\u0007\u001a\u0004\u0018\u00010\bJ\u0006\u0010\t\u001a\u00020\nJ\u001c\u0010\u000b\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\r2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00100\u000fJ(\u0010\u0011\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00132\b\u0010\u0015\u001a\u0004\u0018\u00010\u00162\u0006\u0010\u0017\u001a\u00020\u0018J\u0012\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\u0006\u0010\u001b\u001a\u00020\u0016H\u0002J\u0018\u0010\u001c\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u001d\u001a\u00020\u001eH\u0002J\u0018\u0010\u001f\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u001d\u001a\u00020\u001eH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��¨\u0006!"}, d2 = {"Lcom/vk/api/sdk/auth/VKAuthManager;", "", "keyValueStorage", "Lcom/vk/api/sdk/VKKeyValueStorage;", "(Lcom/vk/api/sdk/VKKeyValueStorage;)V", "clearAccessToken", "", "getCurrentToken", "Lcom/vk/api/sdk/auth/VKAccessToken;", "isLoggedIn", "", "login", "activity", "Landroid/app/Activity;", "scopes", "", "Lcom/vk/api/sdk/auth/VKScope;", "onActivityResult", "requestCode", "", "resultCode", "data", "Landroid/content/Intent;", "callback", "Lcom/vk/api/sdk/auth/VKAuthCallback;", "processResult", "Lcom/vk/api/sdk/auth/VKAuthResult;", "result", "startAuthActivity", "params", "Lcom/vk/api/sdk/auth/VKAuthParams;", "startInternalAuthActivity", "Companion", "libapi-sdk-core_release"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/a/c.class */
public final class c {

    /* renamed from: b  reason: collision with root package name */
    public static final a f35945b = new a(null);

    /* renamed from: a  reason: collision with root package name */
    public final k f35946a;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u001a\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0010\b\n\u0002\b\u0004\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��¨\u0006\n"}, d2 = {"Lcom/vk/api/sdk/auth/VKAuthManager$Companion;", "", "()V", "VK_APP_AUTH_ACTION", "", "VK_APP_AUTH_CODE", "", "VK_APP_PACKAGE_ID", "VK_AUTH_ERROR", "VK_EXTRA_TOKEN_DATA", "libapi-sdk-core_release"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/a/c$a.class */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public c(k keyValueStorage) {
        p.d(keyValueStorage, "keyValueStorage");
        this.f35946a = keyValueStorage;
    }

    public static e a(Intent intent) {
        e eVar;
        Map<String, String> map;
        if (intent.hasExtra("extra-token-data")) {
            map = h.a(intent.getStringExtra("extra-token-data"));
        } else {
            eVar = null;
            if (intent.getExtras() != null) {
                HashMap hashMap = new HashMap();
                Bundle extras = intent.getExtras();
                p.a(extras);
                for (String key : extras.keySet()) {
                    p.b(key, "key");
                    Bundle extras2 = intent.getExtras();
                    p.a(extras2);
                    hashMap.put(key, String.valueOf(extras2.get(key)));
                }
                map = hashMap;
            }
            return eVar;
        }
        eVar = null;
        if (map != null) {
            eVar = null;
            if (map.get("error") == null) {
                try {
                    eVar = new e(new com.vk.api.sdk.a.a(map), 0, 2, null);
                } catch (Exception e) {
                    Log.e(c.class.getSimpleName(), "Failed to get VK token", e);
                    eVar = null;
                }
            }
        }
        return eVar;
    }

    public static void a(Activity activity, d dVar) {
        Intent intent = new Intent("com.vkontakte.android.action.SDK_AUTH", (Uri) null);
        intent.setPackage("com.vkontakte.android");
        Bundle bundle = new Bundle();
        bundle.putInt("client_id", dVar.f35949b);
        bundle.putBoolean("revoke", true);
        bundle.putString("scope", n.a(dVar.f35948a, ",", (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, (Function1) null, 62));
        bundle.putString("redirect_url", dVar.f35950c);
        intent.putExtras(bundle);
        activity.startActivityForResult(intent, 282);
    }

    public static void b(Activity activity, d params) {
        VKWebViewAuthActivity.a aVar = VKWebViewAuthActivity.f36138a;
        p.d(activity, "activity");
        p.d(params, "params");
        Intent putExtra = new Intent(activity, VKWebViewAuthActivity.class).putExtra("vk_auth_params", params.a());
        p.b(putExtra, "Intent(activity, VKWebVi…ARAMS, params.toBundle())");
        activity.startActivityForResult(putExtra, 282);
    }

    public final com.vk.api.sdk.a.a a() {
        a.C0572a aVar = com.vk.api.sdk.a.a.j;
        return a.C0572a.b(this.f35946a);
    }

    public final void b() {
        a.C0572a aVar = com.vk.api.sdk.a.a.j;
        a.C0572a.a(this.f35946a);
    }
}
