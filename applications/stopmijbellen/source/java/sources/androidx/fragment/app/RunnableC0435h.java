package androidx.fragment.app;

import androidx.fragment.app.AbstractC0484w0;
import p226s.C4251a;
/* renamed from: androidx.fragment.app.h */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/h.class */
public class RunnableC0435h implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ AbstractC0484w0.C0488d f1812a;

    /* renamed from: b */
    public final /* synthetic */ AbstractC0484w0.C0488d f1813b;

    /* renamed from: c */
    public final /* synthetic */ boolean f1814c;

    /* renamed from: d */
    public final /* synthetic */ C4251a f1815d;

    public RunnableC0435h(C0416c c0416c, AbstractC0484w0.C0488d c0488d, AbstractC0484w0.C0488d c0488d2, boolean z, C4251a c4251a) {
        this.f1812a = c0488d;
        this.f1813b = c0488d2;
        this.f1814c = z;
        this.f1815d = c4251a;
    }

    @Override // java.lang.Runnable
    public void run() {
        C0459p0.m8087c(this.f1812a.f1966c, this.f1813b.f1966c, this.f1814c, this.f1815d, false);
    }
}
