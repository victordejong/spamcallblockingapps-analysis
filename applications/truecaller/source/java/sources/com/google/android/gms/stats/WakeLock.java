package com.google.android.gms.stats;

import android.os.PowerManager;
import android.os.WorkSource;
import android.text.TextUtils;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.DefaultClock;
import com.google.android.gms.internal.stats.zzb;
import e.m.a.f.p.a;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import p193e.p1577m.p1578a.p1642f.p1669p.C25134b;
@ShowFirstParty
@KeepForSdk
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/stats/WakeLock.class */
public class WakeLock {

    /* renamed from: p */
    public static final long f6471p = TimeUnit.DAYS.toMillis(366);

    /* renamed from: q */
    public static volatile ScheduledExecutorService f6472q = null;

    /* renamed from: r */
    public static final Object f6473r = new Object();

    /* renamed from: s */
    public static volatile zzd f6474s = new a();

    /* renamed from: b */
    public final PowerManager.WakeLock f6476b;

    /* renamed from: d */
    public Future<?> f6478d;

    /* renamed from: e */
    public long f6479e;

    /* renamed from: h */
    public int f6482h;

    /* renamed from: k */
    public WorkSource f6485k;

    /* renamed from: l */
    public final String f6486l;

    /* renamed from: o */
    public final ScheduledExecutorService f6489o;

    /* renamed from: a */
    public final Object f6475a = new Object();

    /* renamed from: c */
    public int f6477c = 0;

    /* renamed from: f */
    public final Set<zze> f6480f = new HashSet();

    /* renamed from: g */
    public boolean f6481g = true;

    /* renamed from: j */
    public Clock f6484j = DefaultClock.f6131a;

    /* renamed from: m */
    public final Map<String, C25134b> f6487m = new HashMap();

    /* renamed from: n */
    public AtomicInteger f6488n = new AtomicInteger(0);

    /* renamed from: i */
    public zzb f6483i = null;

    /* JADX WARN: Removed duplicated region for block: B:20:0x00ea  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0212  */
    @com.google.android.gms.common.annotation.KeepForSdk
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public WakeLock(android.content.Context r8, int r9, java.lang.String r10) {
        /*
            Method dump skipped, instructions count: 615
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.stats.WakeLock.<init>(android.content.Context, int, java.lang.String):void");
    }

    /* JADX WARN: Type inference failed for: r0v51, types: [long] */
    /* JADX WARN: Type inference failed for: r0v64, types: [long] */
    /* JADX WARN: Type inference failed for: r0v7, types: [long] */
    @KeepForSdk
    /* renamed from: a */
    public void m38546a(long j) {
        this.f6488n.incrementAndGet();
        ?? max = Math.max(Math.min((long) RecyclerView.FOREVER_NS, f6471p), 1L);
        char c = max;
        if (j > 0) {
            c = Math.min(j, (long) max);
        }
        synchronized (this.f6475a) {
            if (!m38545b()) {
                this.f6483i = zzb.zza(false, null);
                this.f6476b.acquire();
                this.f6484j.mo38789a();
            }
            this.f6477c++;
            this.f6482h++;
            m38543d();
            C25134b c25134b = this.f6487m.get(null);
            C25134b c25134b2 = c25134b;
            if (c25134b == null) {
                c25134b2 = new C25134b(null);
                this.f6487m.put(null, c25134b2);
            }
            c25134b2.f70368a++;
            long mo38789a = this.f6484j.mo38789a();
            char c2 = 65535;
            if (RecyclerView.FOREVER_NS - mo38789a > c) {
                c2 = mo38789a + c;
            }
            if (c2 > this.f6479e) {
                this.f6479e = c2;
                Future<?> future = this.f6478d;
                if (future != null) {
                    future.cancel(false);
                }
                this.f6478d = this.f6489o.schedule(new Runnable() { // from class: com.google.android.gms.stats.zza
                    @Override // java.lang.Runnable
                    public final void run() {
                        WakeLock wakeLock = WakeLock.this;
                        synchronized (wakeLock.f6475a) {
                            if (!wakeLock.m38545b()) {
                                return;
                            }
                            String.valueOf(wakeLock.f6486l).concat(" ** IS FORCE-RELEASED ON TIMEOUT **");
                            wakeLock.m38542e();
                            if (!wakeLock.m38545b()) {
                                return;
                            }
                            wakeLock.f6477c = 1;
                            wakeLock.m38541f(0);
                        }
                    }
                }, c, TimeUnit.MILLISECONDS);
            }
        }
    }

    @KeepForSdk
    /* renamed from: b */
    public boolean m38545b() {
        boolean z;
        synchronized (this.f6475a) {
            z = this.f6477c > 0;
        }
        return z;
    }

    @KeepForSdk
    /* renamed from: c */
    public void m38544c() {
        if (this.f6488n.decrementAndGet() < 0) {
            String.valueOf(this.f6486l).concat(" release without a matched acquire!");
        }
        synchronized (this.f6475a) {
            m38543d();
            if (this.f6487m.containsKey(null)) {
                C25134b c25134b = this.f6487m.get(null);
                if (c25134b != null) {
                    int i = c25134b.f70368a - 1;
                    c25134b.f70368a = i;
                    if (i == 0) {
                        this.f6487m.remove(null);
                    }
                }
            } else {
                String.valueOf(this.f6486l).concat(" counter does not exist");
            }
            m38541f(0);
        }
    }

    /* renamed from: d */
    public final String m38543d() {
        if (!this.f6481g || !TextUtils.isEmpty(null)) {
        }
        return null;
    }

    /* renamed from: e */
    public final void m38542e() {
        if (this.f6480f.isEmpty()) {
            return;
        }
        ArrayList arrayList = new ArrayList(this.f6480f);
        this.f6480f.clear();
        if (arrayList.size() <= 0) {
            return;
        }
        zze zzeVar = (zze) arrayList.get(0);
        throw null;
    }

    /* renamed from: f */
    public final void m38541f(int i) {
        synchronized (this.f6475a) {
            if (!m38545b()) {
                return;
            }
            if (this.f6481g) {
                int i2 = this.f6477c - 1;
                this.f6477c = i2;
                if (i2 > 0) {
                    return;
                }
            } else {
                this.f6477c = 0;
            }
            m38542e();
            for (C25134b c25134b : this.f6487m.values()) {
                c25134b.f70368a = 0;
            }
            this.f6487m.clear();
            Future<?> future = this.f6478d;
            if (future != null) {
                future.cancel(false);
                this.f6478d = null;
                this.f6479e = 0L;
            }
            this.f6482h = 0;
            if (this.f6476b.isHeld()) {
                try {
                    this.f6476b.release();
                    if (this.f6483i != null) {
                        this.f6483i = null;
                    }
                } catch (RuntimeException e) {
                    if (!e.getClass().equals(RuntimeException.class)) {
                        throw e;
                    }
                    String.valueOf(this.f6486l).concat(" failed to release!");
                    if (this.f6483i != null) {
                        this.f6483i = null;
                    }
                }
            } else {
                String.valueOf(this.f6486l).concat(" should be held!");
            }
        }
    }
}
