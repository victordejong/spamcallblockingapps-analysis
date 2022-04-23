package com.google.android.gms.ads.internal;

import android.app.Activity;
import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import com.google.android.gms.internal.ads.zzabb;
import com.google.android.gms.internal.ads.zzbbg;
import com.google.android.gms.internal.ads.zzbbq;
import com.google.android.gms.internal.ads.zzbbx;
import com.google.android.gms.internal.ads.zzbbz;
import com.google.android.gms.internal.ads.zzcw;
import com.google.android.gms.internal.ads.zzdp;
import com.google.android.gms.internal.ads.zzdw;
import com.google.android.gms.internal.ads.zzed;
import com.google.android.gms.internal.ads.zzwm;
import java.util.List;
import java.util.Vector;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/zzf.class */
public final class zzf implements zzdw, Runnable {

    /* renamed from: d */
    public final int f22799d;

    /* renamed from: e */
    public Context f22800e;

    /* renamed from: f */
    public zzbbx f22801f;

    /* renamed from: a */
    public final List<Object[]> f22796a = new Vector();

    /* renamed from: b */
    public final AtomicReference<zzdw> f22797b = new AtomicReference<>();

    /* renamed from: c */
    public final AtomicReference<zzdw> f22798c = new AtomicReference<>();

    /* renamed from: g */
    public CountDownLatch f22802g = new CountDownLatch(1);

    public zzf(Context context, zzbbx zzbbxVar) {
        this.f22800e = context;
        this.f22801f = zzbbxVar;
        int intValue = ((Integer) zzwm.m11166e().m16921a(zzabb.f23769Y0)).intValue();
        if (intValue == 1) {
            this.f22799d = zzcw.f26614b;
        } else if (intValue != 2) {
            this.f22799d = zzcw.f26613a;
        } else {
            this.f22799d = zzcw.f26615c;
        }
        if (((Boolean) zzwm.m11166e().m16921a(zzabb.f23858n1)).booleanValue()) {
            zzbbz.f24764a.execute(this);
            return;
        }
        zzwm.m11170a();
        if (zzbbg.m15899b()) {
            zzbbz.f24764a.execute(this);
        } else {
            run();
        }
    }

    /* renamed from: b */
    public static Context m17989b(Context context) {
        Context applicationContext = context.getApplicationContext();
        return applicationContext == null ? context : applicationContext;
    }

    /* renamed from: a */
    public final zzdw m17991a() {
        return this.f22799d == zzcw.f26614b ? this.f22798c.get() : this.f22797b.get();
    }

    @Override // com.google.android.gms.internal.ads.zzdw
    /* renamed from: a */
    public final String mo13024a(Context context) {
        if (!m17990b()) {
            return "";
        }
        int i = this.f22799d;
        zzdw zzdwVar = (i == zzcw.f26614b || i == zzcw.f26615c) ? this.f22798c.get() : this.f22797b.get();
        if (zzdwVar == null) {
            return "";
        }
        m17988c();
        return zzdwVar.mo13024a(m17989b(context));
    }

    @Override // com.google.android.gms.internal.ads.zzdw
    /* renamed from: a */
    public final String mo13023a(Context context, View view, Activity activity) {
        zzdw a = m17991a();
        return a != null ? a.mo13023a(context, view, activity) : "";
    }

    @Override // com.google.android.gms.internal.ads.zzdw
    /* renamed from: a */
    public final String mo13100a(Context context, String str, View view) {
        return mo13021a(context, str, view, null);
    }

    @Override // com.google.android.gms.internal.ads.zzdw
    /* renamed from: a */
    public final String mo13021a(Context context, String str, View view, Activity activity) {
        zzdw a;
        if (!m17990b() || (a = m17991a()) == null) {
            return "";
        }
        m17988c();
        return a.mo13021a(m17989b(context), str, view, activity);
    }

    @Override // com.google.android.gms.internal.ads.zzdw
    /* renamed from: a */
    public final void mo13025a(int i, int i2, int i3) {
        zzdw a = m17991a();
        if (a != null) {
            m17988c();
            a.mo13025a(i, i2, i3);
            return;
        }
        this.f22796a.add(new Object[]{Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3)});
    }

    @Override // com.google.android.gms.internal.ads.zzdw
    /* renamed from: a */
    public final void mo13019a(MotionEvent motionEvent) {
        zzdw a = m17991a();
        if (a != null) {
            m17988c();
            a.mo13019a(motionEvent);
            return;
        }
        this.f22796a.add(new Object[]{motionEvent});
    }

    @Override // com.google.android.gms.internal.ads.zzdw
    /* renamed from: a */
    public final void mo13018a(View view) {
        zzdw a = m17991a();
        if (a != null) {
            a.mo13018a(view);
        }
    }

    /* renamed from: b */
    public final boolean m17990b() {
        try {
            this.f22802g.await();
            return true;
        } catch (InterruptedException e) {
            zzbbq.m15853c("Interrupted during GADSignals creation.", e);
            return false;
        }
    }

    /* renamed from: c */
    public final void m17988c() {
        zzdw a = m17991a();
        if (!(this.f22796a.isEmpty() || a == null)) {
            for (Object[] objArr : this.f22796a) {
                if (objArr.length == 1) {
                    a.mo13019a((MotionEvent) objArr[0]);
                } else if (objArr.length == 3) {
                    a.mo13025a(((Integer) objArr[0]).intValue(), ((Integer) objArr[1]).intValue(), ((Integer) objArr[2]).intValue());
                }
            }
            this.f22796a.clear();
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            boolean z = this.f22801f.f24762d;
            boolean z2 = false;
            if (!((Boolean) zzwm.m11166e().m16921a(zzabb.f23895u0)).booleanValue()) {
                z2 = false;
                if (z) {
                    z2 = true;
                }
            }
            if (this.f22799d != zzcw.f26614b) {
                this.f22797b.set(zzed.m12872b(this.f22801f.f24759a, m17989b(this.f22800e), z2, this.f22799d));
            }
            if (this.f22799d != zzcw.f26613a) {
                this.f22798c.set(zzdp.m13376a(this.f22801f.f24759a, m17989b(this.f22800e), z2));
            }
        } finally {
            this.f22802g.countDown();
            this.f22800e = null;
            this.f22801f = null;
        }
    }
}
