package com.vk.api.sdk;

import android.content.Context;
import android.content.SharedPreferences;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0004\u0018�� \u00102\u00020\u0001:\u0001\u0010B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0012\u0010\n\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u000b\u001a\u00020\u0005H\u0016J\u0018\u0010\f\u001a\u00020\r2\u0006\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\u0005H\u0016J\u0010\u0010\u000f\u001a\u00020\r2\u0006\u0010\u000b\u001a\u00020\u0005H\u0016R\u0016\u0010\u0007\u001a\n \t*\u0004\u0018\u00010\b0\bX\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0011"}, d2 = {"Lcom/vk/api/sdk/VKPreferencesKeyValueStorage;", "Lcom/vk/api/sdk/VKKeyValueStorage;", "context", "Landroid/content/Context;", "prefsName", "", "(Landroid/content/Context;Ljava/lang/String;)V", "prefs", "Landroid/content/SharedPreferences;", "kotlin.jvm.PlatformType", "get", "key", "put", "", "value", "remove", "Companion", "libapi-sdk-core_release"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/n.class */
public final class n implements k {

    /* renamed from: a  reason: collision with root package name */
    public static final a f36106a = new a(null);

    /* renamed from: b  reason: collision with root package name */
    private final SharedPreferences f36107b;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��¨\u0006\u0005"}, d2 = {"Lcom/vk/api/sdk/VKPreferencesKeyValueStorage$Companion;", "", "()V", "PREFERENCE_NAME", "", "libapi-sdk-core_release"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/n$a.class */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public n(Context context, String prefsName) {
        p.d(context, "context");
        p.d(prefsName, "prefsName");
        this.f36107b = context.getSharedPreferences(prefsName, 0);
    }

    public /* synthetic */ n(Context context, String str, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i & 2) != 0 ? "com.vkontakte.android_pref_name" : str);
    }

    @Override // com.vk.api.sdk.k
    public final String a(String key) {
        p.d(key, "key");
        return this.f36107b.getString(key, null);
    }

    @Override // com.vk.api.sdk.k
    public final void a(String key, String value) {
        p.d(key, "key");
        p.d(value, "value");
        this.f36107b.edit().putString(key, value).apply();
    }

    @Override // com.vk.api.sdk.k
    public final void b(String key) {
        p.d(key, "key");
        this.f36107b.edit().remove(key).apply();
    }

    @Override // com.vk.api.sdk.k
    public final void b(String key, String str) {
        p.d(key, "key");
        p.d(key, "key");
        if (str != null) {
            a(key, str);
        } else {
            b(key);
        }
    }
}
