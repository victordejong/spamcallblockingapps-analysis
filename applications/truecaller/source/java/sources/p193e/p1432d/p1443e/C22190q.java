package p193e.p1432d.p1443e;

import p193e.p1432d.p1443e.AbstractC22169b;
/* renamed from: e.d.e.q */
/* loaded from: classes-dex2jar.jar:e/d/e/q.class */
public class C22190q<T> {

    /* renamed from: a */
    public final T f61654a;

    /* renamed from: b */
    public final AbstractC22169b.C22170a f61655b;

    /* renamed from: c */
    public final C22197v f61656c;

    /* renamed from: d */
    public boolean f61657d;

    /* renamed from: e.d.e.q$a */
    /* loaded from: classes-dex2jar.jar:e/d/e/q$a.class */
    public interface AbstractC22191a {
        void onErrorResponse(C22197v c22197v);
    }

    /* renamed from: e.d.e.q$b */
    /* loaded from: classes-dex2jar.jar:e/d/e/q$b.class */
    public interface AbstractC22192b<T> {
        void onResponse(T t);
    }

    public C22190q(C22197v c22197v) {
        this.f61657d = false;
        this.f61654a = null;
        this.f61655b = null;
        this.f61656c = c22197v;
    }

    public C22190q(T t, AbstractC22169b.C22170a c22170a) {
        this.f61657d = false;
        this.f61654a = t;
        this.f61655b = c22170a;
        this.f61656c = null;
    }
}
