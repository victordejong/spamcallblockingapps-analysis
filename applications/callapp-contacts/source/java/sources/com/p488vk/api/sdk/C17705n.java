package com.p488vk.api.sdk;

import android.content.Context;
import android.content.SharedPreferences;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0004\u0018�� \u00102\u00020\u0001:\u0001\u0010B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0012\u0010\n\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u000b\u001a\u00020\u0005H\u0016J\u0018\u0010\f\u001a\u00020\r2\u0006\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\u0005H\u0016J\u0010\u0010\u000f\u001a\u00020\r2\u0006\u0010\u000b\u001a\u00020\u0005H\u0016R\u0016\u0010\u0007\u001a\n \t*\u0004\u0018\u00010\b0\bX\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0011"}, m4298d2 = {"Lcom/vk/api/sdk/VKPreferencesKeyValueStorage;", "Lcom/vk/api/sdk/VKKeyValueStorage;", "context", "Landroid/content/Context;", "prefsName", "", "(Landroid/content/Context;Ljava/lang/String;)V", "prefs", "Landroid/content/SharedPreferences;", "kotlin.jvm.PlatformType", "get", "key", "put", "", "value", "remove", "Companion", "libapi-sdk-core_release"}, m4297k = 1, m4296mv = {1, 4, 2})
/* renamed from: com.vk.api.sdk.n */
/* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/n.class */
public final class C17705n implements AbstractC17698k {

    /* renamed from: a */
    public static final C17706a f62543a = new C17706a(null);

    /* renamed from: b */
    private final SharedPreferences f62544b;

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��¨\u0006\u0005"}, m4298d2 = {"Lcom/vk/api/sdk/VKPreferencesKeyValueStorage$Companion;", "", "()V", "PREFERENCE_NAME", "", "libapi-sdk-core_release"}, m4297k = 1, m4296mv = {1, 4, 2})
    /* renamed from: com.vk.api.sdk.n$a */
    /* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/n$a.class */
    public static final class C17706a {
        private C17706a() {
        }

        public /* synthetic */ C17706a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public C17705n(Context context, String prefsName) {
        C18524p.m3840d(context, "context");
        C18524p.m3840d(prefsName, "prefsName");
        this.f62544b = context.getSharedPreferences(prefsName, 0);
    }

    public /* synthetic */ C17705n(Context context, String str, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i & 2) != 0 ? "com.vkontakte.android_pref_name" : str);
    }

    @Override // com.p488vk.api.sdk.AbstractC17698k
    /* renamed from: a */
    public final String mo4802a(String key) {
        C18524p.m3840d(key, "key");
        return this.f62544b.getString(key, null);
    }

    @Override // com.p488vk.api.sdk.AbstractC17698k
    /* renamed from: a */
    public final void mo4801a(String key, String value) {
        C18524p.m3840d(key, "key");
        C18524p.m3840d(value, "value");
        this.f62544b.edit().putString(key, value).apply();
    }

    @Override // com.p488vk.api.sdk.AbstractC17698k
    /* renamed from: b */
    public final void mo4800b(String key) {
        C18524p.m3840d(key, "key");
        this.f62544b.edit().remove(key).apply();
    }

    @Override // com.p488vk.api.sdk.AbstractC17698k
    /* renamed from: b */
    public final void mo4799b(String key, String str) {
        C18524p.m3840d(key, "key");
        C18524p.m3840d(key, "key");
        if (str != null) {
            mo4801a(key, str);
        } else {
            mo4800b(key);
        }
    }
}
