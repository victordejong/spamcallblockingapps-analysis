package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dft.class */
public final class dft {

    /* renamed from: a  reason: collision with root package name */
    private static final String f26807a = new dfp().a();
    @Deprecated

    /* renamed from: b  reason: collision with root package name */
    private static final djc f26808b;
    @Deprecated

    /* renamed from: c  reason: collision with root package name */
    private static final djc f26809c;
    @Deprecated

    /* renamed from: d  reason: collision with root package name */
    private static final djc f26810d;

    static {
        djc a2 = djc.a();
        f26808b = a2;
        f26809c = a2;
        f26810d = a2;
        try {
            a();
        } catch (GeneralSecurityException e) {
            throw new ExceptionInInitializerError(e);
        }
    }

    public static void a() throws GeneralSecurityException {
        ddm.a((dcu) new dfp());
        ddm.a((dcu) new dfo());
        ddm.a((ddh) new dfw());
    }
}
