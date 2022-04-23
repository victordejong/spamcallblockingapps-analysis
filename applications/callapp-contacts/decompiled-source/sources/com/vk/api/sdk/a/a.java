package com.vk.api.sdk.a;

import com.callapp.contacts.model.Constants;
import com.facebook.AccessToken;
import com.vk.api.sdk.k;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.a.ai;
import kotlin.a.n;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
import kotlin.t;
@Metadata(bv = {1, 0, 3}, d1 = {"��D\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\b\n��\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010$\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018�� &2\u00020\u0001:\u0001&B!\b\u0010\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0007B\u001b\u0012\u0014\u0010\b\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00050\t¢\u0006\u0002\u0010\nJ\u000e\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\"J\u000e\u0010\u001f\u001a\u00020 2\u0006\u0010#\u001a\u00020$J\u0016\u0010%\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00050\tH\u0002R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n��\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\r\u001a\u00020\u000e¢\u0006\b\n��\u001a\u0004\b\u000f\u0010\u0010R\u0013\u0010\u0011\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n��\u001a\u0004\b\u0012\u0010\fR\u000e\u0010\u0013\u001a\u00020\u000eX\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u0004¢\u0006\u0002\n��R\u0011\u0010\u0016\u001a\u00020\u00158F¢\u0006\u0006\u001a\u0004\b\u0016\u0010\u0017R\u0013\u0010\u0018\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n��\u001a\u0004\b\u0019\u0010\fR\u0013\u0010\u001a\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n��\u001a\u0004\b\u001b\u0010\fR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n��\u001a\u0004\b\u001c\u0010\fR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\u001d\u0010\u001e¨\u0006'"}, d2 = {"Lcom/vk/api/sdk/auth/VKAccessToken;", "", "userId", "", "accessToken", "", "secret", "(ILjava/lang/String;Ljava/lang/String;)V", "params", "", "(Ljava/util/Map;)V", "getAccessToken", "()Ljava/lang/String;", "created", "", "getCreated", "()J", "email", "getEmail", "expirationDate", "httpsRequired", "", "isValid", "()Z", Constants.EXTRA_PHONE_NUMBER, "getPhone", "phoneAccessKey", "getPhoneAccessKey", "getSecret", "getUserId", "()I", "save", "", "bundle", "Landroid/os/Bundle;", "storage", "Lcom/vk/api/sdk/VKKeyValueStorage;", "toMap", "Companion", "libapi-sdk-core_release"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/a/a.class */
public final class a {
    public static final C0572a j = new C0572a(null);
    private static final List<String> k = n.b((Object[]) new String[]{AccessToken.ACCESS_TOKEN_KEY, AccessToken.EXPIRES_IN_KEY, AccessToken.USER_ID_KEY, "secret", "https_required", "created", "vk_access_token", "email", Constants.EXTRA_PHONE_NUMBER, "phone_access_key"});

    /* renamed from: a  reason: collision with root package name */
    public final int f35939a;

    /* renamed from: b  reason: collision with root package name */
    public final String f35940b;

    /* renamed from: c  reason: collision with root package name */
    public final String f35941c;

    /* renamed from: d  reason: collision with root package name */
    public final long f35942d;
    public final String e;
    public final String f;
    public final String g;
    public final boolean h;
    public final long i;

    @Metadata(bv = {1, 0, 3}, d1 = {"��4\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\b\b\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015J\u0012\u0010\u0016\u001a\u0004\u0018\u00010\u00172\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019J\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0014\u001a\u00020\u0015R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\b\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u0017\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00040\n¢\u0006\b\n��\u001a\u0004\b\u000b\u0010\fR\u000e\u0010\r\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u000e\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u000f\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0010\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0011\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��¨\u0006\u001a"}, d2 = {"Lcom/vk/api/sdk/auth/VKAccessToken$Companion;", "", "()V", "ACCESS_TOKEN", "", "CREATED", "EMAIL", "EXPIRES_IN", "HTTPS_REQUIRED", "KEYS", "", "getKEYS", "()Ljava/util/List;", "PHONE", "PHONE_ACCESS_KEY", "SECRET", "USER_ID", "VK_ACCESS_TOKEN_KEY", "remove", "", "keyValueStorage", "Lcom/vk/api/sdk/VKKeyValueStorage;", "restore", "Lcom/vk/api/sdk/auth/VKAccessToken;", "bundle", "Landroid/os/Bundle;", "libapi-sdk-core_release"}, k = 1, mv = {1, 4, 2})
    /* renamed from: com.vk.api.sdk.a.a$a  reason: collision with other inner class name */
    /* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/a/a$a.class */
    public static final class C0572a {
        private C0572a() {
        }

        public /* synthetic */ C0572a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static void a(k keyValueStorage) {
            p.d(keyValueStorage, "keyValueStorage");
            for (String str : a.k) {
                keyValueStorage.b(str);
            }
        }

        public static a b(k keyValueStorage) {
            p.d(keyValueStorage, "keyValueStorage");
            HashMap hashMap = new HashMap(a.k.size());
            for (String str : a.k) {
                String a2 = keyValueStorage.a(str);
                if (a2 != null) {
                    hashMap.put(str, a2);
                }
            }
            if (!hashMap.containsKey(AccessToken.ACCESS_TOKEN_KEY) || !hashMap.containsKey(AccessToken.USER_ID_KEY)) {
                return null;
            }
            return new a(hashMap);
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public a(int i, String accessToken, String str) {
        this(ai.a(t.a(AccessToken.USER_ID_KEY, String.valueOf(i)), t.a(AccessToken.ACCESS_TOKEN_KEY, accessToken), t.a("secret", str), t.a("https_required", "1")));
        p.d(accessToken, "accessToken");
    }

    public a(Map<String, String> params) {
        long j2;
        long j3;
        p.d(params, "params");
        String str = params.get(AccessToken.USER_ID_KEY);
        String str2 = null;
        Integer valueOf = str != null ? Integer.valueOf(Integer.parseInt(str)) : null;
        p.a(valueOf);
        this.f35939a = valueOf.intValue();
        String str3 = params.get(AccessToken.ACCESS_TOKEN_KEY);
        p.a((Object) str3);
        this.f35940b = str3;
        this.f35941c = params.get("secret");
        this.h = p.a((Object) "1", (Object) params.get("https_required"));
        if (params.containsKey("created")) {
            String str4 = params.get("created");
            p.a((Object) str4);
            j2 = Long.parseLong(str4);
        } else {
            j2 = System.currentTimeMillis();
        }
        this.f35942d = j2;
        if (params.containsKey(AccessToken.EXPIRES_IN_KEY)) {
            String str5 = params.get(AccessToken.EXPIRES_IN_KEY);
            p.a((Object) str5);
            j3 = Long.parseLong(str5);
        } else {
            j3 = -1;
        }
        this.i = j3;
        this.e = params.containsKey("email") ? params.get("email") : null;
        this.f = params.containsKey(Constants.EXTRA_PHONE_NUMBER) ? params.get(Constants.EXTRA_PHONE_NUMBER) : null;
        this.g = params.containsKey("phone_access_key") ? params.get("phone_access_key") : str2;
    }
}
