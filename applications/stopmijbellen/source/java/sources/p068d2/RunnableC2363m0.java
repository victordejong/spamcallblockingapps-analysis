package p068d2;

import android.content.Context;
/* renamed from: d2.m0 */
/* loaded from: classes-dex2jar.jar:d2/m0.class */
public class RunnableC2363m0 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ Context f8376a;

    /* renamed from: b */
    public final /* synthetic */ C2410t0 f8377b;

    /* renamed from: c */
    public final /* synthetic */ AbstractC2328k f8378c;

    /* renamed from: d */
    public final /* synthetic */ String f8379d;

    /* renamed from: e */
    public final /* synthetic */ C2329k0 f8380e;

    public RunnableC2363m0(C2329k0 c2329k0, Context context, C2410t0 c2410t0, AbstractC2328k abstractC2328k, String str) {
        this.f8380e = c2329k0;
        this.f8376a = context;
        this.f8377b = c2410t0;
        this.f8378c = abstractC2328k;
        this.f8379d = str;
    }

    @Override // java.lang.Runnable
    public void run() {
        C2319j c2319j = new C2319j(this.f8376a, this.f8377b, this.f8378c);
        synchronized (this.f8380e.f8334g) {
            if (this.f8380e.f8332e.remove(this.f8379d) == null) {
                return;
            }
            this.f8380e.f8333f.put(this.f8379d, c2319j);
            c2319j.setOmidManager(this.f8378c.f8327c);
            if (c2319j.f8277i != null) {
                c2319j.getWebView().m3539u();
            }
            AbstractC2328k abstractC2328k = this.f8378c;
            abstractC2328k.f8327c = null;
            abstractC2328k.mo1957e(c2319j);
        }
    }
}
