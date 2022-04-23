package com.facebook.internal;

import java.util.concurrent.ConcurrentHashMap;
import kotlin.Metadata;
import kotlin.jvm.internal.p;
import org.json.JSONObject;
@Metadata(bv = {1, 0, 3}, d1 = {"��$\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\bÀ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\b\u001a\u00020\u0005H\u0007J\u0018\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00052\u0006\u0010\f\u001a\u00020\u0006H\u0007R\u001a\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004X\u0082\u0004¢\u0006\u0002\n��¨\u0006\r"}, d2 = {"Lcom/facebook/internal/ProfileInformationCache;", "", "()V", "infoCache", "Ljava/util/concurrent/ConcurrentHashMap;", "", "Lorg/json/JSONObject;", "getProfileInformation", "accessToken", "putProfileInformation", "", "key", "value", "facebook-core_release"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes3-dex2jar.jar:com/facebook/internal/ab.class */
public final class ab {

    /* renamed from: a  reason: collision with root package name */
    public static final ab f19809a = new ab();

    /* renamed from: b  reason: collision with root package name */
    private static final ConcurrentHashMap<String, JSONObject> f19810b = new ConcurrentHashMap<>();

    private ab() {
    }

    public static final JSONObject a(String accessToken) {
        p.d(accessToken, "accessToken");
        return f19810b.get(accessToken);
    }

    public static final void a(String key, JSONObject value) {
        p.d(key, "key");
        p.d(value, "value");
        f19810b.put(key, value);
    }
}
