package com.google.android.gms.stats;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.PowerManager;
import android.os.WorkSource;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.providers.PooledExecutorsProvider;
import com.google.android.gms.common.util.Strings;
import com.google.android.gms.common.util.WorkSourceUtil;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.atomic.AtomicInteger;
import javax.annotation.concurrent.ThreadSafe;
@ShowFirstParty
@ThreadSafe
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/stats/WakeLock.class */
public class WakeLock {
    private static ScheduledExecutorService zzn;
    private static volatile zza zzo = new com.google.android.gms.stats.zza();
    private final Object zza;
    private final PowerManager.WakeLock zzb;
    private WorkSource zzc;
    private final int zzd;
    private final String zze;
    private final String zzf;
    private final String zzg;
    private final Context zzh;
    private boolean zzi;
    private final Map<String, Integer[]> zzj;
    private final Set<Future<?>> zzk;
    private int zzl;
    private AtomicInteger zzm;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/stats/WakeLock$zza.class */
    public interface zza {
    }

    @KeepForSdk
    public WakeLock(Context context, int i, String str) {
        this(context, i, str, null, context == null ? null : context.getPackageName());
    }

    private WakeLock(Context context, int i, String str, String str2, String str3) {
        this(context, i, str, null, str3, null);
    }

    @SuppressLint({"UnwrappedWakeLock"})
    private WakeLock(Context context, int i, String str, String str2, String str3, String str4) {
        this.zza = this;
        this.zzi = true;
        this.zzj = new HashMap();
        this.zzk = Collections.synchronizedSet(new HashSet());
        this.zzm = new AtomicInteger(0);
        Preconditions.checkNotNull(context, "WakeLock: context must not be null");
        Preconditions.checkNotEmpty(str, "WakeLock: wakeLockName must not be empty");
        this.zzd = i;
        this.zzf = null;
        this.zzg = null;
        Context applicationContext = context.getApplicationContext();
        this.zzh = applicationContext;
        if (!"com.google.android.gms".equals(context.getPackageName())) {
            String valueOf = String.valueOf(str);
            this.zze = valueOf.length() != 0 ? "*gcore*:".concat(valueOf) : new String("*gcore*:");
        } else {
            this.zze = str;
        }
        PowerManager.WakeLock newWakeLock = ((PowerManager) context.getSystemService("power")).newWakeLock(i, str);
        this.zzb = newWakeLock;
        if (WorkSourceUtil.hasWorkSourcePermission(context)) {
            WorkSource fromPackage = WorkSourceUtil.fromPackage(context, Strings.isEmptyOrWhitespace(str3) ? context.getPackageName() : str3);
            this.zzc = fromPackage;
            if (fromPackage != null && WorkSourceUtil.hasWorkSourcePermission(applicationContext)) {
                WorkSource workSource = this.zzc;
                if (workSource != null) {
                    workSource.add(fromPackage);
                } else {
                    this.zzc = fromPackage;
                }
                try {
                    newWakeLock.setWorkSource(this.zzc);
                } catch (ArrayIndexOutOfBoundsException | IllegalArgumentException e) {
                    Log.wtf("WakeLock", e.toString());
                }
            }
        }
        if (zzn == null) {
            zzn = PooledExecutorsProvider.getInstance().newSingleThreadScheduledExecutor();
        }
    }

    private final String zza(String str) {
        if (this.zzi && !TextUtils.isEmpty(str)) {
            return str;
        }
        return this.zzf;
    }

    private final List<String> zza() {
        return WorkSourceUtil.getNames(this.zzc);
    }

    public final void zza(int i) {
        if (this.zzb.isHeld()) {
            try {
                this.zzb.release();
            } catch (RuntimeException e) {
                if (!e.getClass().equals(RuntimeException.class)) {
                    throw e;
                }
                String.valueOf(this.zze).concat(" was already released!");
            }
            this.zzb.isHeld();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0092, code lost:
        if (r18 == false) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x00a0, code lost:
        if (r12.zzl == 0) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00a6, code lost:
        com.google.android.gms.common.stats.WakeLockTracker.getInstance().registerEvent(r12.zzh, com.google.android.gms.common.stats.StatsUtils.getEventKey(r12.zzb, r0), 7, r12.zze, r0, null, r12.zzd, zza(), r13);
        r12.zzl++;
     */
    @com.google.android.gms.common.annotation.KeepForSdk
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void acquire(long r13) {
        /*
            Method dump skipped, instructions count: 254
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.stats.WakeLock.acquire(long):void");
    }

    @KeepForSdk
    public boolean isHeld() {
        return this.zzb.isHeld();
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0072, code lost:
        if (r14 != false) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0081, code lost:
        if (r10.zzl == 1) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0087, code lost:
        com.google.android.gms.common.stats.WakeLockTracker.getInstance().registerEvent(r10.zzh, com.google.android.gms.common.stats.StatsUtils.getEventKey(r10.zzb, r0), 8, r10.zze, r0, null, r10.zzd, zza());
        r10.zzl--;
     */
    @com.google.android.gms.common.annotation.KeepForSdk
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void release() {
        /*
            r10 = this;
            r0 = r10
            java.util.concurrent.atomic.AtomicInteger r0 = r0.zzm
            int r0 = r0.decrementAndGet()
            if (r0 >= 0) goto L18
            r0 = r10
            java.lang.String r0 = r0.zze
            java.lang.String r0 = java.lang.String.valueOf(r0)
            java.lang.String r1 = " release without a matched acquire!"
            java.lang.String r0 = r0.concat(r1)
        L18:
            r0 = r10
            r1 = 0
            java.lang.String r0 = r0.zza(r1)
            r11 = r0
            r0 = r10
            java.lang.Object r0 = r0.zza
            r12 = r0
            r0 = r12
            monitor-enter(r0)
            r0 = r10
            boolean r0 = r0.zzi     // Catch: java.lang.Throwable -> Lb8
            if (r0 == 0) goto L75
            r0 = r10
            java.util.Map<java.lang.String, java.lang.Integer[]> r0 = r0.zzj     // Catch: java.lang.Throwable -> Lb8
            r1 = r11
            java.lang.Object r0 = r0.get(r1)     // Catch: java.lang.Throwable -> Lb8
            java.lang.Integer[] r0 = (java.lang.Integer[]) r0     // Catch: java.lang.Throwable -> Lb8
            r13 = r0
            r0 = r13
            if (r0 != 0) goto L44
        L3e:
            r0 = 0
            r14 = r0
            goto L70
        L44:
            r0 = r13
            r1 = 0
            r0 = r0[r1]     // Catch: java.lang.Throwable -> Lb8
            int r0 = r0.intValue()     // Catch: java.lang.Throwable -> Lb8
            r1 = 1
            if (r0 != r1) goto L5f
            r0 = r10
            java.util.Map<java.lang.String, java.lang.Integer[]> r0 = r0.zzj     // Catch: java.lang.Throwable -> Lb8
            r1 = r11
            java.lang.Object r0 = r0.remove(r1)     // Catch: java.lang.Throwable -> Lb8
            r0 = 1
            r14 = r0
            goto L70
        L5f:
            r0 = r13
            r1 = 0
            r2 = r13
            r3 = 0
            r2 = r2[r3]     // Catch: java.lang.Throwable -> Lb8
            int r2 = r2.intValue()     // Catch: java.lang.Throwable -> Lb8
            r3 = 1
            int r2 = r2 - r3
            java.lang.Integer r2 = java.lang.Integer.valueOf(r2)     // Catch: java.lang.Throwable -> Lb8
            r0[r1] = r2     // Catch: java.lang.Throwable -> Lb8
            goto L3e
        L70:
            r0 = r14
            if (r0 != 0) goto L84
        L75:
            r0 = r10
            boolean r0 = r0.zzi     // Catch: java.lang.Throwable -> Lb8
            if (r0 != 0) goto Lb0
            r0 = r10
            int r0 = r0.zzl     // Catch: java.lang.Throwable -> Lb8
            r1 = 1
            if (r0 != r1) goto Lb0
        L84:
            com.google.android.gms.common.stats.WakeLockTracker r0 = com.google.android.gms.common.stats.WakeLockTracker.getInstance()     // Catch: java.lang.Throwable -> Lb8 java.lang.Throwable -> Lb8
            r1 = r10
            android.content.Context r1 = r1.zzh     // Catch: java.lang.Throwable -> Lb8
            r2 = r10
            android.os.PowerManager$WakeLock r2 = r2.zzb     // Catch: java.lang.Throwable -> Lb8
            r3 = r11
            java.lang.String r2 = com.google.android.gms.common.stats.StatsUtils.getEventKey(r2, r3)     // Catch: java.lang.Throwable -> Lb8
            r3 = 8
            r4 = r10
            java.lang.String r4 = r4.zze     // Catch: java.lang.Throwable -> Lb8
            r5 = r11
            r6 = 0
            r7 = r10
            int r7 = r7.zzd     // Catch: java.lang.Throwable -> Lb8
            r8 = r10
            java.util.List r8 = r8.zza()     // Catch: java.lang.Throwable -> Lb8
            r0.registerEvent(r1, r2, r3, r4, r5, r6, r7, r8)     // Catch: java.lang.Throwable -> Lb8
            r0 = r10
            r1 = r10
            int r1 = r1.zzl     // Catch: java.lang.Throwable -> Lb8
            r2 = 1
            int r1 = r1 - r2
            r0.zzl = r1     // Catch: java.lang.Throwable -> Lb8
        Lb0:
            r0 = r12
            monitor-exit(r0)     // Catch: java.lang.Throwable -> Lb8
            r0 = r10
            r1 = 0
            r0.zza(r1)
            return
        Lb8:
            r11 = move-exception
            r0 = r12
            monitor-exit(r0)     // Catch: java.lang.Throwable -> Lb8
            r0 = r11
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.stats.WakeLock.release():void");
    }

    @KeepForSdk
    public void setReferenceCounted(boolean z) {
        this.zzb.setReferenceCounted(z);
        this.zzi = z;
    }
}
