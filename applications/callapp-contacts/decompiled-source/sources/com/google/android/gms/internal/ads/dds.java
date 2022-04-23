package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dds.class */
public final class dds {

    /* renamed from: a  reason: collision with root package name */
    public static final String f26764a = new ddv().a();

    /* renamed from: b  reason: collision with root package name */
    public static final String f26765b = new ded().a();

    /* renamed from: c  reason: collision with root package name */
    private static final String f26766c = new dei().a();

    /* renamed from: d  reason: collision with root package name */
    private static final String f26767d = new dec().a();
    private static final String e = new deo().a();
    private static final String f = new des().a();
    private static final String g = new dej().a();
    private static final String h = new det().a();
    @Deprecated
    private static final djc i;
    @Deprecated
    private static final djc j;
    @Deprecated
    private static final djc k;

    static {
        djc a2 = djc.a();
        i = a2;
        j = a2;
        k = a2;
        try {
            a();
        } catch (GeneralSecurityException e2) {
            throw new ExceptionInInitializerError(e2);
        }
    }

    public static void a() throws GeneralSecurityException {
        dft.a();
        ddm.a((dcu) new ddv());
        ddm.a((dcu) new dec());
        ddm.a((dcu) new ded());
        if (dei.e()) {
            ddm.a((dcu) new dei());
        }
        ddm.a((dcu) new dej());
        ddm.a((dcu) new deo());
        ddm.a((dcu) new des());
        ddm.a((dcu) new det());
        ddm.a((ddh) new ddr());
    }
}
