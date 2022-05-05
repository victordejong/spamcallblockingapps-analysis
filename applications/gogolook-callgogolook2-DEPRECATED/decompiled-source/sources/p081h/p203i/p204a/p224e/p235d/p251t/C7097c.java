package p081h.p203i.p204a.p224e.p235d.p251t;

import android.content.Context;
/* renamed from: h.i.a.e.d.t.c */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/d/t/c.class */
public class C7097c {

    /* renamed from: b */
    public static C7097c f17211b = new C7097c();

    /* renamed from: a */
    public C7096b f17212a = null;

    /* renamed from: b */
    public static C7096b m21085b(Context context) {
        return f17211b.m21086a(context);
    }

    /* renamed from: a */
    public final C7096b m21086a(Context context) {
        C7096b bVar;
        synchronized (this) {
            if (this.f17212a == null) {
                if (context.getApplicationContext() != null) {
                    context = context.getApplicationContext();
                }
                this.f17212a = new C7096b(context);
            }
            bVar = this.f17212a;
        }
        return bVar;
    }
}
