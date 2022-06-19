package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.facebook.appevents.AppEventsConstants;
import com.google.android.gms.common.util.CollectionUtils;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbev.class */
public final class zzbev extends zzzb {
    private boolean zzady;
    private boolean zzadz;
    private int zzafa;
    private zzzd zzdnk;
    private final zzbbo zzeix;
    private final boolean zzety;
    private final boolean zzetz;
    private boolean zzeua;
    private float zzeuc;
    private float zzeud;
    private float zzeue;
    private zzagd zzeuf;
    private final Object lock = new Object();
    private boolean zzeub = true;

    public zzbev(zzbbo zzbboVar, float f, boolean z, boolean z2) {
        this.zzeix = zzbboVar;
        this.zzeuc = f;
        this.zzety = z;
        this.zzetz = z2;
    }

    private final void zza(int i, int i2, boolean z, boolean z2) {
        zzazp.zzeig.execute(new Runnable(this, i, i2, z, z2) { // from class: com.google.android.gms.internal.ads.zzbex
            private final int zzefe;
            private final int zzeff;
            private final boolean zzers;
            private final boolean zzert;
            private final zzbev zzeug;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzeug = this;
                this.zzefe = i;
                this.zzeff = i2;
                this.zzers = z;
                this.zzert = z2;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zzeug.zzb(this.zzefe, this.zzeff, this.zzers, this.zzert);
            }
        });
    }

    private final void zze(String str, Map<String, String> map) {
        HashMap hashMap = map == null ? new HashMap() : new HashMap(map);
        hashMap.put("action", str);
        zzazp.zzeig.execute(new Runnable(this, hashMap) { // from class: com.google.android.gms.internal.ads.zzbey
            private final Map zzehx;
            private final zzbev zzeug;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzeug = this;
                this.zzehx = hashMap;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zzeug.zzl(this.zzehx);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzzc
    public final float getAspectRatio() {
        float f;
        synchronized (this.lock) {
            f = this.zzeue;
        }
        return f;
    }

    @Override // com.google.android.gms.internal.ads.zzzc
    public final float getCurrentTime() {
        float f;
        synchronized (this.lock) {
            f = this.zzeud;
        }
        return f;
    }

    @Override // com.google.android.gms.internal.ads.zzzc
    public final float getDuration() {
        float f;
        synchronized (this.lock) {
            f = this.zzeuc;
        }
        return f;
    }

    @Override // com.google.android.gms.internal.ads.zzzc
    public final int getPlaybackState() {
        int i;
        synchronized (this.lock) {
            i = this.zzafa;
        }
        return i;
    }

    @Override // com.google.android.gms.internal.ads.zzzc
    public final boolean isClickToExpandEnabled() {
        boolean z;
        boolean isCustomControlsEnabled = isCustomControlsEnabled();
        synchronized (this.lock) {
            if (!isCustomControlsEnabled) {
                if (this.zzadz && this.zzetz) {
                    z = true;
                }
            }
            z = false;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.zzzc
    public final boolean isCustomControlsEnabled() {
        boolean z;
        synchronized (this.lock) {
            z = this.zzety && this.zzady;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.zzzc
    public final boolean isMuted() {
        boolean z;
        synchronized (this.lock) {
            z = this.zzeub;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.zzzc
    public final void mute(boolean z) {
        zze(z ? "mute" : "unmute", null);
    }

    @Override // com.google.android.gms.internal.ads.zzzc
    public final void pause() {
        zze("pause", null);
    }

    @Override // com.google.android.gms.internal.ads.zzzc
    public final void play() {
        zze("play", null);
    }

    @Override // com.google.android.gms.internal.ads.zzzc
    public final void stop() {
        zze("stop", null);
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0061 A[Catch: all -> 0x009f, TryCatch #1 {, blocks: (B:4:0x0009, B:6:0x0012, B:11:0x0028, B:13:0x0061, B:15:0x006f), top: B:32:0x0009 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zza(float r7, float r8, int r9, boolean r10, float r11) {
        /*
            r6 = this;
            r0 = r6
            java.lang.Object r0 = r0.lock
            r12 = r0
            r0 = r12
            monitor-enter(r0)
            r0 = r8
            r1 = r6
            float r1 = r1.zzeuc     // Catch: java.lang.Throwable -> L9f
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L25
            r0 = r11
            r1 = r6
            float r1 = r1.zzeue     // Catch: java.lang.Throwable -> L9f
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L1f
            goto L25
        L1f:
            r0 = 0
            r13 = r0
            goto L28
        L25:
            r0 = 1
            r13 = r0
        L28:
            r0 = r6
            r1 = r8
            r0.zzeuc = r1     // Catch: java.lang.Throwable -> L9f
            r0 = r6
            r1 = r7
            r0.zzeud = r1     // Catch: java.lang.Throwable -> L9f
            r0 = r6
            boolean r0 = r0.zzeub     // Catch: java.lang.Throwable -> L9f
            r14 = r0
            r0 = r6
            r1 = r10
            r0.zzeub = r1     // Catch: java.lang.Throwable -> L9f
            r0 = r6
            int r0 = r0.zzafa     // Catch: java.lang.Throwable -> L9f
            r15 = r0
            r0 = r6
            r1 = r9
            r0.zzafa = r1     // Catch: java.lang.Throwable -> L9f
            r0 = r6
            float r0 = r0.zzeue     // Catch: java.lang.Throwable -> L9f
            r7 = r0
            r0 = r6
            r1 = r11
            r0.zzeue = r1     // Catch: java.lang.Throwable -> L9f
            r0 = r11
            r1 = r7
            float r0 = r0 - r1
            float r0 = java.lang.Math.abs(r0)     // Catch: java.lang.Throwable -> L9f
            r1 = 953267991(0x38d1b717, float:1.0E-4)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L6d
            r0 = r6
            com.google.android.gms.internal.ads.zzbbo r0 = r0.zzeix     // Catch: java.lang.Throwable -> L9f
            android.view.View r0 = r0.getView()     // Catch: java.lang.Throwable -> L9f
            r0.invalidate()     // Catch: java.lang.Throwable -> L9f
        L6d:
            r0 = r12
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L9f
            r0 = r13
            if (r0 == 0) goto L93
            r0 = r6
            com.google.android.gms.internal.ads.zzagd r0 = r0.zzeuf     // Catch: android.os.RemoteException -> L8a
            r12 = r0
            r0 = r12
            if (r0 == 0) goto L93
            r0 = r12
            r0.zztw()     // Catch: android.os.RemoteException -> L8a
            goto L93
        L8a:
            r12 = move-exception
            java.lang.String r0 = "#007 Could not call remote method."
            r1 = r12
            com.google.android.gms.internal.ads.zzazk.zze(r0, r1)
        L93:
            r0 = r6
            r1 = r15
            r2 = r9
            r3 = r14
            r4 = r10
            r0.zza(r1, r2, r3, r4)
            return
        L9f:
            r16 = move-exception
            r0 = r12
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L9f
            r0 = r16
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbev.zza(float, float, int, boolean, float):void");
    }

    public final void zza(zzagd zzagdVar) {
        synchronized (this.lock) {
            this.zzeuf = zzagdVar;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzzc
    public final void zza(zzzd zzzdVar) {
        synchronized (this.lock) {
            this.zzdnk = zzzdVar;
        }
    }

    public final void zzaej() {
        boolean z;
        int i;
        synchronized (this.lock) {
            z = this.zzeub;
            i = this.zzafa;
            this.zzafa = 3;
        }
        zza(i, 3, z, z);
    }

    /* JADX WARN: Code restructure failed: missing block: B:39:0x0080, code lost:
        if (r4 != false) goto L40;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* synthetic */ void zzb(int r4, int r5, boolean r6, boolean r7) {
        /*
            Method dump skipped, instructions count: 292
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbev.zzb(int, int, boolean, boolean):void");
    }

    public final void zzb(zzaau zzaauVar) {
        boolean z = zzaauVar.zzadx;
        boolean z2 = zzaauVar.zzady;
        boolean z3 = zzaauVar.zzadz;
        synchronized (this.lock) {
            this.zzady = z2;
            this.zzadz = z3;
        }
        zze("initialState", CollectionUtils.mapOf("muteStart", z ? "1" : AppEventsConstants.EVENT_PARAM_VALUE_NO, "customControlsRequested", z2 ? "1" : AppEventsConstants.EVENT_PARAM_VALUE_NO, "clickToExpandRequested", z3 ? "1" : AppEventsConstants.EVENT_PARAM_VALUE_NO));
    }

    public final void zze(float f) {
        synchronized (this.lock) {
            this.zzeud = f;
        }
    }

    public final /* synthetic */ void zzl(Map map) {
        this.zzeix.zza("pubVideoCmd", map);
    }

    @Override // com.google.android.gms.internal.ads.zzzc
    public final zzzd zzrg() throws RemoteException {
        zzzd zzzdVar;
        synchronized (this.lock) {
            zzzdVar = this.zzdnk;
        }
        return zzzdVar;
    }
}
