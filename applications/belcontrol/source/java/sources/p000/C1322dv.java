package p000;

import android.content.Context;
/* renamed from: dv */
/* loaded from: classes-dex2jar.jar:dv.class */
public class C1322dv {

    /* renamed from: a */
    public final AbstractC1323a f6138a;

    /* renamed from: dv$a */
    /* loaded from: classes-dex2jar.jar:dv$a.class */
    public interface AbstractC1323a {
        /* renamed from: a */
        boolean m2416a();

        /* renamed from: b */
        void m2415b();

        void close();

        void onPause();
    }

    public C1322dv(Context context, ev evVar) {
        this.f6138a = new b(context, evVar);
    }

    /* renamed from: a */
    public void m2420a() {
        this.f6138a.close();
    }

    /* renamed from: b */
    public void m2419b() {
        this.f6138a.onPause();
    }

    /* renamed from: c */
    public boolean m2418c() {
        return this.f6138a.m2416a();
    }

    /* renamed from: d */
    public void m2417d() {
        this.f6138a.m2415b();
    }
}
