package com.bumptech.glide;

import android.content.Context;
import androidx.p013b.C0373a;
import com.bumptech.glide.load.engine.C1751j;
import com.bumptech.glide.load.engine.p090a.AbstractC1673b;
import com.bumptech.glide.load.engine.p090a.AbstractC1678e;
import com.bumptech.glide.load.engine.p090a.C1679f;
import com.bumptech.glide.load.engine.p090a.C1684j;
import com.bumptech.glide.load.engine.p090a.C1687k;
import com.bumptech.glide.load.engine.p091b.AbstractC1697a;
import com.bumptech.glide.load.engine.p091b.AbstractC1710h;
import com.bumptech.glide.load.engine.p091b.C1707f;
import com.bumptech.glide.load.engine.p091b.C1709g;
import com.bumptech.glide.load.engine.p091b.C1712i;
import com.bumptech.glide.load.engine.p092c.ExecutorServiceC1720a;
import com.bumptech.glide.p070c.AbstractC1366d;
import com.bumptech.glide.p070c.C1369f;
import com.bumptech.glide.p070c.C1376l;
import com.bumptech.glide.p073f.C1422e;
import java.util.Map;
/* renamed from: com.bumptech.glide.d */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/d.class */
public final class C1384d {

    /* renamed from: b */
    private C1751j f4582b;

    /* renamed from: c */
    private AbstractC1678e f4583c;

    /* renamed from: d */
    private AbstractC1673b f4584d;

    /* renamed from: e */
    private AbstractC1710h f4585e;

    /* renamed from: f */
    private ExecutorServiceC1720a f4586f;

    /* renamed from: g */
    private ExecutorServiceC1720a f4587g;

    /* renamed from: h */
    private AbstractC1697a.AbstractC1698a f4588h;

    /* renamed from: i */
    private C1712i f4589i;

    /* renamed from: j */
    private AbstractC1366d f4590j;

    /* renamed from: m */
    private C1376l.AbstractC1378a f4593m;

    /* renamed from: n */
    private ExecutorServiceC1720a f4594n;

    /* renamed from: o */
    private boolean f4595o;

    /* renamed from: a */
    private final Map<Class<?>, AbstractC1463j<?, ?>> f4581a = new C0373a();

    /* renamed from: k */
    private int f4591k = 4;

    /* renamed from: l */
    private C1422e f4592l = new C1422e();

    /* renamed from: a */
    public ComponentCallbacks2C1361c m17235a(Context context) {
        if (this.f4586f == null) {
            this.f4586f = ExecutorServiceC1720a.m16475b();
        }
        if (this.f4587g == null) {
            this.f4587g = ExecutorServiceC1720a.m16478a();
        }
        if (this.f4594n == null) {
            this.f4594n = ExecutorServiceC1720a.m16472d();
        }
        if (this.f4589i == null) {
            this.f4589i = new C1712i.C1713a(context).m16484a();
        }
        if (this.f4590j == null) {
            this.f4590j = new C1369f();
        }
        if (this.f4583c == null) {
            int m16486b = this.f4589i.m16486b();
            if (m16486b > 0) {
                this.f4583c = new C1687k(m16486b);
            } else {
                this.f4583c = new C1679f();
            }
        }
        if (this.f4584d == null) {
            this.f4584d = new C1684j(this.f4589i.m16485c());
        }
        if (this.f4585e == null) {
            this.f4585e = new C1709g(this.f4589i.m16490a());
        }
        if (this.f4588h == null) {
            this.f4588h = new C1707f(context);
        }
        if (this.f4582b == null) {
            this.f4582b = new C1751j(this.f4585e, this.f4588h, this.f4587g, this.f4586f, ExecutorServiceC1720a.m16473c(), ExecutorServiceC1720a.m16472d(), this.f4595o);
        }
        return new ComponentCallbacks2C1361c(context, this.f4582b, this.f4585e, this.f4583c, this.f4584d, new C1376l(this.f4593m), this.f4590j, this.f4591k, this.f4592l.m17120i(), this.f4581a);
    }

    /* renamed from: a */
    public void m17234a(C1376l.AbstractC1378a abstractC1378a) {
        this.f4593m = abstractC1378a;
    }
}
