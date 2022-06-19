package p244t7;

import p159l7.AbstractC3510a;
/* renamed from: t7.b */
/* loaded from: classes2-dex2jar.jar:t7/b.class */
public class RunnableC4424b implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ Exception f13769a;

    /* renamed from: b */
    public final /* synthetic */ C4425c f13770b;

    public RunnableC4424b(C4425c c4425c, Exception exc) {
        this.f13770b = c4425c;
        this.f13769a = exc;
    }

    @Override // java.lang.Runnable
    public void run() {
        Exception e = this.f13769a;
        try {
            this.f13770b.f13772b.close();
        } catch (Exception e2) {
            e = e2;
        }
        AbstractC3510a abstractC3510a = this.f13770b.f13777g;
        if (abstractC3510a != null) {
            abstractC3510a.mo1098a(e);
        }
    }
}
