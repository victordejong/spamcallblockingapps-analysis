package com.google.android.gms.internal.firebase_perf;

import com.google.android.gms.internal.firebase-perf.zzeq;
import com.google.android.gms.internal.firebase-perf.zzfr;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_perf/zzer.class */
public class zzer extends IOException {
    private zzfr zzqy = null;

    public zzer(String str) {
        super(str);
    }

    public static zzeq zzgu() {
        return new zzeq("Protocol message tag had invalid wire type.");
    }
}
