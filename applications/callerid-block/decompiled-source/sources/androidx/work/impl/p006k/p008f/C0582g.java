package androidx.work.impl.p006k.p008f;

import android.content.Context;
import androidx.work.impl.utils.p010j.AbstractC0607a;
/* renamed from: androidx.work.impl.k.f.g */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/k/f/g.class */
public class C0582g {

    /* renamed from: e */
    private static C0582g f3074e;

    /* renamed from: a */
    private a f3075a;

    /* renamed from: b */
    private b f3076b;

    /* renamed from: c */
    private e f3077c;

    /* renamed from: d */
    private f f3078d;

    private C0582g(Context context, AbstractC0607a aVar) {
        Context applicationContext = context.getApplicationContext();
        this.f3075a = new a(applicationContext, aVar);
        this.f3076b = new b(applicationContext, aVar);
        this.f3077c = new e(applicationContext, aVar);
        this.f3078d = new f(applicationContext, aVar);
    }

    /* renamed from: c */
    public static C0582g m11679c(Context context, AbstractC0607a aVar) {
        C0582g gVar;
        synchronized (C0582g.class) {
            try {
                if (f3074e == null) {
                    f3074e = new C0582g(context, aVar);
                }
                gVar = f3074e;
            } catch (Throwable th) {
                throw th;
            }
        }
        return gVar;
    }

    /* renamed from: a */
    public a m11681a() {
        return this.f3075a;
    }

    /* renamed from: b */
    public b m11680b() {
        return this.f3076b;
    }

    /* renamed from: d */
    public e m11678d() {
        return this.f3077c;
    }

    /* renamed from: e */
    public f m11677e() {
        return this.f3078d;
    }
}
