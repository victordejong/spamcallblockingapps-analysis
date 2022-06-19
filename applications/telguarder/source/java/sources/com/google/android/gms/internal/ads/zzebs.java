package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzebs.class */
public final class zzebs {
    public static final String zzicj = new zzebv().getKeyType();
    public static final String zzick = new zzecc().getKeyType();
    private static final String zzicl = new zzech().getKeyType();
    private static final String zzicm = new zzecb().getKeyType();
    private static final String zzicn = new zzecn().getKeyType();
    private static final String zzico = new zzecr().getKeyType();
    private static final String zzicp = new zzeci().getKeyType();
    private static final String zzicq = new zzecs().getKeyType();
    @Deprecated
    private static final zzegy zzicr;
    @Deprecated
    private static final zzegy zzics;
    @Deprecated
    private static final zzegy zzict;

    static {
        zzegy zzbfk = zzegy.zzbfk();
        zzicr = zzbfk;
        zzics = zzbfk;
        zzict = zzbfk;
        try {
            zzbba();
        } catch (GeneralSecurityException e) {
            throw new ExceptionInInitializerError(e);
        }
    }

    public static void zzbba() throws GeneralSecurityException {
        zzedr.zzbba();
        zzebm.zza((zzeax) new zzebv(), true);
        zzebm.zza((zzeax) new zzecb(), true);
        zzebm.zza((zzeax) new zzecc(), true);
        zzech.zzbq(true);
        zzebm.zza((zzeax) new zzeci(), true);
        zzebm.zza((zzeax) new zzecn(), true);
        zzebm.zza((zzeax) new zzecr(), true);
        zzebm.zza((zzeax) new zzecs(), true);
        zzebm.zza(new zzebr());
    }
}
