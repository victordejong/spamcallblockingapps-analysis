package androidx.work.impl.p052a.p054b;

import android.content.Context;
import androidx.work.impl.utils.p058b.AbstractC1271a;
/* renamed from: androidx.work.impl.a.b.g */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/a/b/g.class */
public class C1164g {

    /* renamed from: a */
    private static C1164g f3969a;

    /* renamed from: b */
    private C1154a f3970b;

    /* renamed from: c */
    private C1155b f3971c;

    /* renamed from: d */
    private C1160e f3972d;

    /* renamed from: e */
    private C1163f f3973e;

    private C1164g(Context context, AbstractC1271a abstractC1271a) {
        Context applicationContext = context.getApplicationContext();
        this.f3970b = new C1154a(applicationContext, abstractC1271a);
        this.f3971c = new C1155b(applicationContext, abstractC1271a);
        this.f3972d = new C1160e(applicationContext, abstractC1271a);
        this.f3973e = new C1163f(applicationContext, abstractC1271a);
    }

    /* renamed from: a */
    public static C1164g m17835a(Context context, AbstractC1271a abstractC1271a) {
        C1164g c1164g;
        synchronized (C1164g.class) {
            try {
                if (f3969a == null) {
                    f3969a = new C1164g(context, abstractC1271a);
                }
                c1164g = f3969a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return c1164g;
    }

    /* renamed from: a */
    public C1154a m17836a() {
        return this.f3970b;
    }

    /* renamed from: b */
    public C1155b m17834b() {
        return this.f3971c;
    }

    /* renamed from: c */
    public C1160e m17833c() {
        return this.f3972d;
    }

    /* renamed from: d */
    public C1163f m17832d() {
        return this.f3973e;
    }
}
