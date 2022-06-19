package com.google.android.gms.ads.internal;

import android.app.Activity;
import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import com.google.android.gms.internal.ads.C3556uu;
import com.google.android.gms.internal.ads.C3634xr;
import com.google.android.gms.internal.ads.C3647yd;
import com.google.android.gms.internal.ads.C3650yg;
import com.google.android.gms.internal.ads.blk;
import com.google.android.gms.internal.ads.cfb;
import com.google.android.gms.internal.ads.cjd;
import com.google.android.gms.internal.ads.cum;
import com.google.android.gms.internal.ads.dyx;
import com.google.android.gms.internal.ads.edi;
import java.util.List;
import java.util.Vector;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicReference;
/* renamed from: com.google.android.gms.ads.internal.h */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/h.class */
public final class RunnableC2306h implements cjd, Runnable {

    /* renamed from: d */
    private final int f6652d;

    /* renamed from: e */
    private Context f6653e;

    /* renamed from: f */
    private C3647yd f6654f;

    /* renamed from: a */
    private final List<Object[]> f6649a = new Vector();

    /* renamed from: b */
    private final AtomicReference<cjd> f6650b = new AtomicReference<>();

    /* renamed from: c */
    private final AtomicReference<cjd> f6651c = new AtomicReference<>();

    /* renamed from: g */
    private CountDownLatch f6655g = new CountDownLatch(1);

    public RunnableC2306h(Context context, C3647yd c3647yd) {
        this.f6653e = context;
        this.f6654f = c3647yd;
        switch (((Integer) dyx.m8158e().m7876a(edi.f16360aS)).intValue()) {
            case 1:
                this.f6652d = blk.f11480b;
                break;
            case 2:
                this.f6652d = blk.f11481c;
                break;
            default:
                this.f6652d = blk.f11479a;
                break;
        }
        if (((Boolean) dyx.m8158e().m7876a(edi.f16430bj)).booleanValue()) {
            C3650yg.f17642a.execute(this);
            return;
        }
        dyx.m8162a();
        if (C3634xr.m6790b()) {
            C3650yg.f17642a.execute(this);
        } else {
            run();
        }
    }

    /* renamed from: a */
    private final boolean m14795a() {
        boolean z;
        try {
            this.f6655g.await();
            z = true;
        } catch (InterruptedException e) {
            C3556uu.m6746d("Interrupted during GADSignals creation.", e);
            z = false;
        }
        return z;
    }

    /* renamed from: b */
    private static Context m14793b(Context context) {
        Context applicationContext = context.getApplicationContext();
        if (applicationContext != null) {
            context = applicationContext;
        }
        return context;
    }

    /* renamed from: b */
    private final void m14794b() {
        cjd m14792c = m14792c();
        if (this.f6649a.isEmpty() || m14792c == null) {
            return;
        }
        for (Object[] objArr : this.f6649a) {
            if (objArr.length == 1) {
                m14792c.mo11047a((MotionEvent) objArr[0]);
            } else if (objArr.length == 3) {
                m14792c.mo11054a(((Integer) objArr[0]).intValue(), ((Integer) objArr[1]).intValue(), ((Integer) objArr[2]).intValue());
            }
        }
        this.f6649a.clear();
    }

    /* renamed from: c */
    private final cjd m14792c() {
        return this.f6652d == blk.f11480b ? this.f6651c.get() : this.f6650b.get();
    }

    @Override // com.google.android.gms.internal.ads.cjd
    /* renamed from: a */
    public final String mo11053a(Context context) {
        String str;
        if (m14795a()) {
            cjd cjdVar = (this.f6652d == blk.f11480b || this.f6652d == blk.f11481c) ? this.f6651c.get() : this.f6650b.get();
            if (cjdVar != null) {
                m14794b();
                str = cjdVar.mo11053a(m14793b(context));
                return str;
            }
        }
        str = "";
        return str;
    }

    @Override // com.google.android.gms.internal.ads.cjd
    /* renamed from: a */
    public final String mo11052a(Context context, View view, Activity activity) {
        cjd m14792c = m14792c();
        return m14792c != null ? m14792c.mo11052a(context, view, activity) : "";
    }

    @Override // com.google.android.gms.internal.ads.cjd
    /* renamed from: a */
    public final String mo11049a(Context context, String str, View view) {
        return mo11048a(context, str, view, null);
    }

    @Override // com.google.android.gms.internal.ads.cjd
    /* renamed from: a */
    public final String mo11048a(Context context, String str, View view, Activity activity) {
        String str2;
        cjd m14792c;
        if (!m14795a() || (m14792c = m14792c()) == null) {
            str2 = "";
        } else {
            m14794b();
            str2 = m14792c.mo11048a(m14793b(context), str, view, activity);
        }
        return str2;
    }

    @Override // com.google.android.gms.internal.ads.cjd
    /* renamed from: a */
    public final void mo11054a(int i, int i2, int i3) {
        cjd m14792c = m14792c();
        if (m14792c == null) {
            this.f6649a.add(new Object[]{Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3)});
            return;
        }
        m14794b();
        m14792c.mo11054a(i, i2, i3);
    }

    @Override // com.google.android.gms.internal.ads.cjd
    /* renamed from: a */
    public final void mo11047a(MotionEvent motionEvent) {
        cjd m14792c = m14792c();
        if (m14792c == null) {
            this.f6649a.add(new Object[]{motionEvent});
            return;
        }
        m14794b();
        m14792c.mo11047a(motionEvent);
    }

    @Override // com.google.android.gms.internal.ads.cjd
    /* renamed from: a */
    public final void mo11046a(View view) {
        cjd m14792c = m14792c();
        if (m14792c != null) {
            m14792c.mo11046a(view);
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            boolean z = !((Boolean) dyx.m8158e().m7876a(edi.f16386as)).booleanValue() && (this.f6654f.f17639d);
            if (this.f6652d != blk.f11480b) {
                this.f6650b.set(cum.m10649b(this.f6654f.f17636a, m14793b(this.f6653e), z, this.f6652d));
            }
            if (this.f6652d != blk.f11479a) {
                this.f6651c.set(cfb.m11404a(this.f6654f.f17636a, m14793b(this.f6653e), z));
            }
        } finally {
            this.f6655g.countDown();
            this.f6653e = null;
            this.f6654f = null;
        }
    }
}
