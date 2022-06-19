package com.google.android.gms.stats;

import android.content.Context;
import android.os.PowerManager;
import android.os.WorkSource;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.internal.Preconditions;
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
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/stats/WakeLock.class */
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

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/stats/WakeLock$zza.class */
    public interface zza {
    }

    public WakeLock(Context context, int i, String str) {
        this(context, i, str, null, context == null ? null : context.getPackageName());
    }

    private WakeLock(Context context, int i, String str, String str2, String str3) {
        this(context, i, str, null, str3, null);
    }

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
                Log.e("WakeLock", String.valueOf(this.zze).concat(" was already released!"), e);
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
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void acquire(long r13) {
        /*
            Method dump skipped, instructions count: 252
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.stats.WakeLock.acquire(long):void");
    }

    public boolean isHeld() {
        return this.zzb.isHeld();
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0077, code lost:
        if (r14 != false) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0086, code lost:
        if (r10.zzl == 1) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x008c, code lost:
        com.google.android.gms.common.stats.WakeLockTracker.getInstance().registerEvent(r10.zzh, com.google.android.gms.common.stats.StatsUtils.getEventKey(r10.zzb, r0), 8, r10.zze, r0, null, r10.zzd, zza());
        r10.zzl--;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void release() {
        /*
            Method dump skipped, instructions count: 194
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.stats.WakeLock.release():void");
    }

    public void setReferenceCounted(boolean z) {
        this.zzb.setReferenceCounted(z);
        this.zzi = z;
    }
}
