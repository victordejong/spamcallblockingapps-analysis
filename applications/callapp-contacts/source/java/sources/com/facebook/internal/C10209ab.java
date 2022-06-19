package com.facebook.internal;

import java.util.concurrent.ConcurrentHashMap;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import org.json.JSONObject;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��$\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\bÀ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\b\u001a\u00020\u0005H\u0007J\u0018\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00052\u0006\u0010\f\u001a\u00020\u0006H\u0007R\u001a\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004X\u0082\u0004¢\u0006\u0002\n��¨\u0006\r"}, m4298d2 = {"Lcom/facebook/internal/ProfileInformationCache;", "", "()V", "infoCache", "Ljava/util/concurrent/ConcurrentHashMap;", "", "Lorg/json/JSONObject;", "getProfileInformation", "accessToken", "putProfileInformation", "", "key", "value", "facebook-core_release"}, m4297k = 1, m4296mv = {1, 4, 0})
/* renamed from: com.facebook.internal.ab */
/* loaded from: classes3-dex2jar.jar:com/facebook/internal/ab.class */
public final class C10209ab {

    /* renamed from: a */
    public static final C10209ab f33652a = new C10209ab();

    /* renamed from: b */
    private static final ConcurrentHashMap<String, JSONObject> f33653b = new ConcurrentHashMap<>();

    private C10209ab() {
    }

    /* renamed from: a */
    public static final JSONObject m23260a(String accessToken) {
        C18524p.m3840d(accessToken, "accessToken");
        return f33653b.get(accessToken);
    }

    /* renamed from: a */
    public static final void m23259a(String key, JSONObject value) {
        C18524p.m3840d(key, "key");
        C18524p.m3840d(value, "value");
        f33653b.put(key, value);
    }
}
