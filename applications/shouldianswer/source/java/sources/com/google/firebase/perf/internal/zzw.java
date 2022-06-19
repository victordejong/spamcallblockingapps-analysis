package com.google.firebase.perf.internal;

import android.util.Log;
import com.google.android.gms.internal.firebase-perf.zzan;
import com.google.android.gms.internal.firebase-perf.zzaz;
import com.google.android.gms.internal.firebase-perf.zzcg;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/google/firebase/perf/internal/zzw.class */
final class zzw {
    private static final long zzem = TimeUnit.MINUTES.toMicros(1);
    private final zzan zzay;
    private final boolean zzef;
    private long zzen;
    private long zzeo;
    private zzaz zzep = new com.google.android.gms.internal.firebase_perf.zzaz();
    private long zzeq;
    private long zzer;
    private long zzes;
    private long zzet;
    private long zzeu;

    /* JADX WARN: Type inference failed for: r0v47, types: [long] */
    /* JADX WARN: Type inference failed for: r0v49, types: [long] */
    /* JADX WARN: Type inference failed for: r0v56, types: [long] */
    /* JADX WARN: Type inference failed for: r0v58, types: [long] */
    public zzw(long j, long j2, zzan zzanVar, RemoteConfigManager remoteConfigManager, zzu zzuVar, boolean z) {
        this.zzay = zzanVar;
        this.zzen = j2;
        this.zzeo = j;
        this.zzeq = j2;
        long longValue = ((Long) remoteConfigManager.zzb(zzuVar.zzbd(), 0L)).longValue();
        char zzaz = longValue <= 0 ? zzuVar.zzaz() : TimeUnit.SECONDS.toMinutes(longValue);
        long longValue2 = ((Long) remoteConfigManager.zzb(zzuVar.zzbe(), Long.valueOf(zzuVar.zzba()))).longValue();
        this.zzer = longValue2 / zzaz;
        this.zzes = longValue2;
        if (this.zzes != zzuVar.zzba() || this.zzer != zzuVar.zzba() / zzuVar.zzaz()) {
            Log.d("FirebasePerformance", String.format("Foreground %s logging rate:%d, burst capacity:%d", zzuVar.toString(), Long.valueOf(this.zzer), Long.valueOf(this.zzes)));
        }
        long longValue3 = ((Long) remoteConfigManager.zzb(zzuVar.zzbf(), 0L)).longValue();
        char zzbb = longValue3 <= 0 ? zzuVar.zzbb() : TimeUnit.SECONDS.toMinutes(longValue3);
        long longValue4 = ((Long) remoteConfigManager.zzb(zzuVar.zzbg(), Long.valueOf(zzuVar.zzbc()))).longValue();
        this.zzet = longValue4 / zzbb;
        this.zzeu = longValue4;
        if (this.zzeu != zzuVar.zzbc() || this.zzet != zzuVar.zzbc() / zzuVar.zzbb()) {
            Log.d("FirebasePerformance", String.format("Background %s logging rate:%d, capacity:%d", zzuVar.toString(), Long.valueOf(this.zzet), Long.valueOf(this.zzeu)));
        }
        this.zzef = z;
    }

    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    /* JADX WARN: Type inference failed for: r0v13, types: [long] */
    /* JADX WARN: Type inference failed for: r0v15, types: [long] */
    /* JADX WARN: Type inference failed for: r0v9, types: [long] */
    public final void zzb(boolean z) {
        synchronized (this) {
            this.zzeo = z ? this.zzer : this.zzet;
            this.zzen = z ? this.zzes : this.zzeu;
        }
    }

    public final boolean zzb(zzcg zzcgVar) {
        synchronized (this) {
            zzaz zzazVar = new com.google.android.gms.internal.firebase_perf.zzaz();
            this.zzeq = Math.min(this.zzeq + Math.max(0L, (this.zzep.zzk(zzazVar) * this.zzeo) / zzem), this.zzen);
            if (this.zzeq > 0) {
                this.zzeq--;
                this.zzep = zzazVar;
                return true;
            }
            if (this.zzef) {
                Log.w("FirebasePerformance", "Exceeded log rate limit, dropping the log.");
            }
            return false;
        }
    }
}
