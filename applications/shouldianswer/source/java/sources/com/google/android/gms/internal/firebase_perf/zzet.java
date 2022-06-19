package com.google.android.gms.internal.firebase_perf;

import com.google.android.flexbox.FlexItem;
import com.google.android.gms.internal.firebase-perf.zzdd;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_perf/zzet.class */
public final class zzet extends Enum<zzet> {
    public static final com.google.android.gms.internal.firebase-perf.zzet zzqz = new zzet("VOID", 0, Void.class, Void.class, null);
    public static final com.google.android.gms.internal.firebase-perf.zzet zzra = new zzet("INT", 1, Integer.TYPE, Integer.class, 0);
    public static final com.google.android.gms.internal.firebase-perf.zzet zzrb = new zzet("LONG", 2, Long.TYPE, Long.class, 0L);
    public static final com.google.android.gms.internal.firebase-perf.zzet zzrc = new zzet("FLOAT", 3, Float.TYPE, Float.class, Float.valueOf((float) FlexItem.FLEX_GROW_DEFAULT));
    public static final com.google.android.gms.internal.firebase-perf.zzet zzrd = new zzet("DOUBLE", 4, Double.TYPE, Double.class, Double.valueOf((double) FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE));
    public static final com.google.android.gms.internal.firebase-perf.zzet zzre = new zzet("BOOLEAN", 5, Boolean.TYPE, Boolean.class, false);
    public static final com.google.android.gms.internal.firebase-perf.zzet zzrf = new zzet("STRING", 6, String.class, String.class, "");
    public static final com.google.android.gms.internal.firebase-perf.zzet zzrg = new zzet("BYTE_STRING", 7, zzdd.class, zzdd.class, zzdd.zzmh);
    public static final com.google.android.gms.internal.firebase-perf.zzet zzrh = new zzet("ENUM", 8, Integer.TYPE, Integer.class, null);
    public static final com.google.android.gms.internal.firebase-perf.zzet zzri = new zzet("MESSAGE", 9, Object.class, Object.class, null);
    private static final /* synthetic */ com.google.android.gms.internal.firebase-perf.zzet[] zzrm = {zzqz, zzra, zzrb, zzrc, zzrd, zzre, zzrf, zzrg, zzrh, zzri};
    private final Class<?> zzrj;
    private final Class<?> zzrk;
    private final Object zzrl;

    private zzet(String str, int i, Class cls, Class cls2, Object obj) {
        super(str, i);
        this.zzrj = cls;
        this.zzrk = cls2;
        this.zzrl = obj;
    }

    public static com.google.android.gms.internal.firebase-perf.zzet[] values() {
        return (zzet[]) zzrm.clone();
    }

    public final Class<?> zzgw() {
        return this.zzrk;
    }
}
