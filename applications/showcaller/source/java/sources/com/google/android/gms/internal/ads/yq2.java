package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.Looper;
import android.view.View;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/yq2.class */
public final class yq2 implements cq2 {

    /* renamed from: a */
    private static final yq2 f32597a = new yq2();

    /* renamed from: b */
    private static final Handler f32598b = new Handler(Looper.getMainLooper());

    /* renamed from: c */
    private static Handler f32599c = null;

    /* renamed from: d */
    private static final Runnable f32600d = new uq2();

    /* renamed from: e */
    private static final Runnable f32601e = new vq2();

    /* renamed from: g */
    private int f32603g;

    /* renamed from: k */
    private long f32607k;

    /* renamed from: f */
    private final List<xq2> f32602f = new ArrayList();

    /* renamed from: i */
    private final rq2 f32605i = new rq2();

    /* renamed from: h */
    private final fq2 f32604h = new fq2();

    /* renamed from: j */
    private final sq2 f32606j = new sq2(new br2());

    yq2() {
    }

    /* renamed from: f */
    public static yq2 m8728f() {
        return f32597a;
    }

    /* renamed from: j */
    public static /* synthetic */ void m8724j(yq2 yq2Var) {
        yq2Var.f32603g = 0;
        yq2Var.f32607k = System.nanoTime();
        yq2Var.f32605i.m11330d();
        long nanoTime = System.nanoTime();
        eq2 m15115a = yq2Var.f32604h.m15115a();
        if (yq2Var.f32605i.m11332b().size() > 0) {
            Iterator<String> it = yq2Var.f32605i.m11332b().iterator();
            while (it.hasNext()) {
                String next = it.next();
                JSONObject m13114b = mq2.m13114b(0, 0, 0, 0);
                View m11326h = yq2Var.f32605i.m11326h(next);
                eq2 m15114b = yq2Var.f32604h.m15114b();
                String m11331c = yq2Var.f32605i.m11331c(next);
                if (m11331c != null) {
                    JSONObject mo14566d = m15114b.mo14566d(m11326h);
                    mq2.m13112d(mo14566d, next);
                    mq2.m13111e(mo14566d, m11331c);
                    mq2.m13109g(m13114b, mo14566d);
                }
                mq2.m13108h(m13114b);
                HashSet<String> hashSet = new HashSet<>();
                hashSet.add(next);
                yq2Var.f32606j.m10928b(m13114b, hashSet, nanoTime);
            }
        }
        if (yq2Var.f32605i.m11333a().size() > 0) {
            JSONObject m13114b2 = mq2.m13114b(0, 0, 0, 0);
            yq2Var.m8723k(null, m15115a, m13114b2, 1);
            mq2.m13108h(m13114b2);
            yq2Var.f32606j.m10929a(m13114b2, yq2Var.f32605i.m11333a(), nanoTime);
        } else {
            yq2Var.f32606j.m10927c();
        }
        yq2Var.f32605i.m11329e();
        long nanoTime2 = System.nanoTime();
        long j = yq2Var.f32607k;
        if (yq2Var.f32602f.size() > 0) {
            for (xq2 xq2Var : yq2Var.f32602f) {
                TimeUnit.NANOSECONDS.toMillis(nanoTime2 - j);
                xq2Var.m9081b();
                if (xq2Var instanceof wq2) {
                    ((wq2) xq2Var).zza();
                }
            }
        }
    }

    /* renamed from: k */
    private final void m8723k(View view, eq2 eq2Var, JSONObject jSONObject, int i) {
        boolean z = true;
        if (i != 1) {
            z = false;
        }
        eq2Var.mo14567a(view, jSONObject, this, z);
    }

    /* renamed from: l */
    private static final void m8722l() {
        Handler handler = f32599c;
        if (handler != null) {
            handler.removeCallbacks(f32601e);
            f32599c = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.cq2
    /* renamed from: a */
    public final void mo8733a(View view, eq2 eq2Var, JSONObject jSONObject) {
        int m11324j;
        if (pq2.m12197b(view) != null || (m11324j = this.f32605i.m11324j(view)) == 3) {
            return;
        }
        JSONObject mo14566d = eq2Var.mo14566d(view);
        mq2.m13109g(jSONObject, mo14566d);
        String m11327g = this.f32605i.m11327g(view);
        if (m11327g != null) {
            mq2.m13112d(mo14566d, m11327g);
            this.f32605i.m11328f();
        } else {
            qq2 m11325i = this.f32605i.m11325i(view);
            if (m11325i != null) {
                mq2.m13110f(mo14566d, m11325i);
            }
            m8723k(view, eq2Var, mo14566d, m11324j);
        }
        this.f32603g++;
    }

    /* renamed from: g */
    public final void m8727g() {
        if (f32599c == null) {
            Handler handler = new Handler(Looper.getMainLooper());
            f32599c = handler;
            handler.post(f32600d);
            f32599c.postDelayed(f32601e, 200L);
        }
    }

    /* renamed from: h */
    public final void m8726h() {
        m8722l();
        this.f32602f.clear();
        f32598b.post(new tq2(this));
    }

    /* renamed from: i */
    public final void m8725i() {
        m8722l();
    }
}
