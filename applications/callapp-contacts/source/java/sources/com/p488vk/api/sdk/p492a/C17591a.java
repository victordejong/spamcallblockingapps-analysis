package com.p488vk.api.sdk.p492a;

import com.callapp.contacts.model.Constants;
import com.facebook.AccessToken;
import com.p488vk.api.sdk.AbstractC17698k;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import kotlin.C20126t;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.p518a.C18247ai;
import kotlin.p518a.C18282n;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��D\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\b\n��\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010$\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018�� &2\u00020\u0001:\u0001&B!\b\u0010\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0007B\u001b\u0012\u0014\u0010\b\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00050\t¢\u0006\u0002\u0010\nJ\u000e\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\"J\u000e\u0010\u001f\u001a\u00020 2\u0006\u0010#\u001a\u00020$J\u0016\u0010%\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00050\tH\u0002R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n��\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\r\u001a\u00020\u000e¢\u0006\b\n��\u001a\u0004\b\u000f\u0010\u0010R\u0013\u0010\u0011\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n��\u001a\u0004\b\u0012\u0010\fR\u000e\u0010\u0013\u001a\u00020\u000eX\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u0004¢\u0006\u0002\n��R\u0011\u0010\u0016\u001a\u00020\u00158F¢\u0006\u0006\u001a\u0004\b\u0016\u0010\u0017R\u0013\u0010\u0018\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n��\u001a\u0004\b\u0019\u0010\fR\u0013\u0010\u001a\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n��\u001a\u0004\b\u001b\u0010\fR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n��\u001a\u0004\b\u001c\u0010\fR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\u001d\u0010\u001e¨\u0006'"}, m4298d2 = {"Lcom/vk/api/sdk/auth/VKAccessToken;", "", "userId", "", "accessToken", "", "secret", "(ILjava/lang/String;Ljava/lang/String;)V", "params", "", "(Ljava/util/Map;)V", "getAccessToken", "()Ljava/lang/String;", "created", "", "getCreated", "()J", "email", "getEmail", "expirationDate", "httpsRequired", "", "isValid", "()Z", Constants.EXTRA_PHONE_NUMBER, "getPhone", "phoneAccessKey", "getPhoneAccessKey", "getSecret", "getUserId", "()I", "save", "", "bundle", "Landroid/os/Bundle;", "storage", "Lcom/vk/api/sdk/VKKeyValueStorage;", "toMap", "Companion", "libapi-sdk-core_release"}, m4297k = 1, m4296mv = {1, 4, 2})
/* renamed from: com.vk.api.sdk.a.a */
/* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/a/a.class */
public final class C17591a {

    /* renamed from: j */
    public static final C17592a f62312j = new C17592a(null);

    /* renamed from: k */
    private static final List<String> f62313k = C18282n.m4167b((Object[]) new String[]{AccessToken.ACCESS_TOKEN_KEY, AccessToken.EXPIRES_IN_KEY, AccessToken.USER_ID_KEY, "secret", "https_required", "created", "vk_access_token", "email", Constants.EXTRA_PHONE_NUMBER, "phone_access_key"});

    /* renamed from: a */
    public final int f62314a;

    /* renamed from: b */
    public final String f62315b;

    /* renamed from: c */
    public final String f62316c;

    /* renamed from: d */
    public final long f62317d;

    /* renamed from: e */
    public final String f62318e;

    /* renamed from: f */
    public final String f62319f;

    /* renamed from: g */
    public final String f62320g;

    /* renamed from: h */
    public final boolean f62321h;

    /* renamed from: i */
    public final long f62322i;

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��4\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\b\b\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015J\u0012\u0010\u0016\u001a\u0004\u0018\u00010\u00172\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019J\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0014\u001a\u00020\u0015R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\b\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u0017\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00040\n¢\u0006\b\n��\u001a\u0004\b\u000b\u0010\fR\u000e\u0010\r\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u000e\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u000f\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0010\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0011\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��¨\u0006\u001a"}, m4298d2 = {"Lcom/vk/api/sdk/auth/VKAccessToken$Companion;", "", "()V", "ACCESS_TOKEN", "", "CREATED", "EMAIL", "EXPIRES_IN", "HTTPS_REQUIRED", "KEYS", "", "getKEYS", "()Ljava/util/List;", "PHONE", "PHONE_ACCESS_KEY", "SECRET", "USER_ID", "VK_ACCESS_TOKEN_KEY", "remove", "", "keyValueStorage", "Lcom/vk/api/sdk/VKKeyValueStorage;", "restore", "Lcom/vk/api/sdk/auth/VKAccessToken;", "bundle", "Landroid/os/Bundle;", "libapi-sdk-core_release"}, m4297k = 1, m4296mv = {1, 4, 2})
    /* renamed from: com.vk.api.sdk.a.a$a */
    /* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/a/a$a.class */
    public static final class C17592a {
        private C17592a() {
        }

        public /* synthetic */ C17592a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: a */
        public static void m4901a(AbstractC17698k keyValueStorage) {
            C18524p.m3840d(keyValueStorage, "keyValueStorage");
            for (String str : C17591a.f62313k) {
                keyValueStorage.mo4800b(str);
            }
        }

        /* renamed from: b */
        public static C17591a m4900b(AbstractC17698k keyValueStorage) {
            C18524p.m3840d(keyValueStorage, "keyValueStorage");
            HashMap hashMap = new HashMap(C17591a.f62313k.size());
            for (String str : C17591a.f62313k) {
                String mo4802a = keyValueStorage.mo4802a(str);
                if (mo4802a != null) {
                    hashMap.put(str, mo4802a);
                }
            }
            if (!hashMap.containsKey(AccessToken.ACCESS_TOKEN_KEY) || !hashMap.containsKey(AccessToken.USER_ID_KEY)) {
                return null;
            }
            return new C17591a(hashMap);
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public C17591a(int i, String accessToken, String str) {
        this(C18247ai.m4251a(C20126t.m1103a(AccessToken.USER_ID_KEY, String.valueOf(i)), C20126t.m1103a(AccessToken.ACCESS_TOKEN_KEY, accessToken), C20126t.m1103a("secret", str), C20126t.m1103a("https_required", "1")));
        C18524p.m3840d(accessToken, "accessToken");
    }

    /* JADX WARN: Type inference failed for: r0v48, types: [long] */
    /* JADX WARN: Type inference failed for: r0v49, types: [long] */
    /* JADX WARN: Type inference failed for: r0v55, types: [long] */
    public C17591a(Map<String, String> params) {
        char c;
        char c2;
        C18524p.m3840d(params, "params");
        String str = params.get(AccessToken.USER_ID_KEY);
        Integer valueOf = str != null ? Integer.valueOf(Integer.parseInt(str)) : null;
        C18524p.m3851a(valueOf);
        this.f62314a = valueOf.intValue();
        String str2 = params.get(AccessToken.ACCESS_TOKEN_KEY);
        C18524p.m3851a((Object) str2);
        this.f62315b = str2;
        this.f62316c = params.get("secret");
        this.f62321h = C18524p.m3850a((Object) "1", (Object) params.get("https_required"));
        if (params.containsKey("created")) {
            String str3 = params.get("created");
            C18524p.m3851a((Object) str3);
            c = Long.parseLong(str3);
        } else {
            c = System.currentTimeMillis();
        }
        this.f62317d = c;
        if (params.containsKey(AccessToken.EXPIRES_IN_KEY)) {
            String str4 = params.get(AccessToken.EXPIRES_IN_KEY);
            C18524p.m3851a((Object) str4);
            c2 = Long.parseLong(str4);
        } else {
            c2 = 65535;
        }
        this.f62322i = c2;
        this.f62318e = params.containsKey("email") ? params.get("email") : null;
        this.f62319f = params.containsKey(Constants.EXTRA_PHONE_NUMBER) ? params.get(Constants.EXTRA_PHONE_NUMBER) : null;
        this.f62320g = params.containsKey("phone_access_key") ? params.get("phone_access_key") : null;
    }
}
