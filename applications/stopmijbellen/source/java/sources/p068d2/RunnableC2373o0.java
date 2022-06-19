package p068d2;

import android.content.Context;
/* renamed from: d2.o0 */
/* loaded from: classes-dex2jar.jar:d2/o0.class */
public class RunnableC2373o0 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ String f8393a;

    /* renamed from: b */
    public final /* synthetic */ C2410t0 f8394b;

    /* renamed from: c */
    public final /* synthetic */ C2329k0 f8395c;

    public RunnableC2373o0(C2329k0 c2329k0, String str, C2410t0 c2410t0) {
        this.f8395c = c2329k0;
        this.f8393a = str;
        this.f8394b = c2410t0;
    }

    @Override // java.lang.Runnable
    public void run() {
        Context context = C2408t.f8531a;
        if (context instanceof ActivityC2429w) {
            this.f8395c.m3638a(context, new C2267f4(), "Controller was reloaded and current ad was closed");
            C2322j0 c2322j0 = this.f8395c.f8329b.get(this.f8393a);
            if (c2322j0 != null) {
                this.f8395c.m3635d(c2322j0);
            }
            C2410t0 c2410t0 = this.f8394b;
            if (c2410t0 == null) {
                return;
            }
            c2410t0.m3586b();
        }
    }
}
