package com.google.android.gms.internal.firebase_perf;

import com.google.android.gms.common.api.Api;
import com.google.android.gms.internal.firebase-perf.zzds;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_perf/zzdp.class */
public abstract class zzdp {
    private int zzmp;
    private int zzmq;
    private boolean zzmr;

    private zzdp() {
        this.zzmp = 100;
        this.zzmq = Api.BaseClientBuilder.API_PRIORITY_OTHER;
        this.zzmr = false;
    }

    public /* synthetic */ zzdp(zzds zzdsVar) {
        this();
    }

    public static com.google.android.gms.internal.firebase-perf.zzdp zza(byte[] bArr, int i, int i2, boolean z) {
        zzdr zzdrVar = new zzdr(bArr, 0, i2, false, null);
        try {
            zzdrVar.zzt(i2);
            return zzdrVar;
        } catch (zzer e) {
            throw new IllegalArgumentException(e);
        }
    }

    public abstract int zzfs();

    public abstract int zzt(int i);
}
