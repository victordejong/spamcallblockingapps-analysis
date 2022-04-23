package com.facebook.internal;

import kotlin.Metadata;
import kotlin.h.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��$\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\n\u0010\n\u001a\u0004\u0018\u00010\u0004H\u0007J\u0010\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u0004H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n��R\u001a\u0010\u0006\u001a\u00020\u00078FX\u0087\u0004¢\u0006\f\u0012\u0004\b\b\u0010\u0002\u001a\u0004\b\u0006\u0010\t¨\u0006\u000e"}, d2 = {"Lcom/facebook/internal/InternalSettings;", "", "()V", "UNITY_PREFIX", "", "customUserAgent", "isUnityApp", "", "isUnityApp$annotations", "()Z", "getCustomUserAgent", "setCustomUserAgent", "", "value", "facebook-core_release"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes3-dex2jar.jar:com/facebook/internal/v.class */
public final class v {

    /* renamed from: a  reason: collision with root package name */
    public static final v f20008a = new v();

    /* renamed from: b  reason: collision with root package name */
    private static volatile String f20009b;

    private v() {
    }

    public static final String a() {
        return f20009b;
    }

    public static final boolean b() {
        String str = f20009b;
        return str != null && p.a(str, "Unity.", false);
    }
}
