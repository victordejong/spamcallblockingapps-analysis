package com.google.android.gms.internal.firebase_perf;

import com.google.android.flexbox.FlexItem;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_perf/zzhr.class */
public final class zzhr extends Enum<zzhr> {
    public static final com.google.android.gms.internal.firebase-perf.zzhr zzwb = new zzhr("INT", 0, 0);
    public static final com.google.android.gms.internal.firebase-perf.zzhr zzwc = new zzhr("LONG", 1, 0L);
    public static final com.google.android.gms.internal.firebase-perf.zzhr zzwd = new zzhr("FLOAT", 2, Float.valueOf((float) FlexItem.FLEX_GROW_DEFAULT));
    public static final com.google.android.gms.internal.firebase-perf.zzhr zzwe = new zzhr("DOUBLE", 3, Double.valueOf((double) FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE));
    public static final com.google.android.gms.internal.firebase-perf.zzhr zzwf = new zzhr("BOOLEAN", 4, false);
    public static final com.google.android.gms.internal.firebase-perf.zzhr zzwg = new zzhr("STRING", 5, "");
    public static final com.google.android.gms.internal.firebase-perf.zzhr zzwh = new zzhr("BYTE_STRING", 6, zzdd.zzmh);
    public static final com.google.android.gms.internal.firebase-perf.zzhr zzwi = new zzhr("ENUM", 7, null);
    public static final com.google.android.gms.internal.firebase-perf.zzhr zzwj = new zzhr("MESSAGE", 8, null);
    private static final /* synthetic */ com.google.android.gms.internal.firebase-perf.zzhr[] zzwk = {zzwb, zzwc, zzwd, zzwe, zzwf, zzwg, zzwh, zzwi, zzwj};
    private final Object zzrl;

    private zzhr(String str, int i, Object obj) {
        super(str, i);
        this.zzrl = obj;
    }

    public static com.google.android.gms.internal.firebase-perf.zzhr[] values() {
        return (zzhr[]) zzwk.clone();
    }
}
