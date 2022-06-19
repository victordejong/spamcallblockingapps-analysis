package p193e.p194a.p1011l.p1020g;

import n3.b.a.h;
import o3.b.a.c.c.a;
import o3.b.b.b;
import p1727n3.p1868v.C26986a1;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
/* renamed from: e.a.l.g.x */
/* loaded from: classes12-dex2jar.jar:e/a/l/g/x.class */
public abstract class AbstractC16927x extends h implements b {

    /* renamed from: a */
    public volatile a f47520a;

    /* renamed from: b */
    public final Object f47521b = new Object();

    /* renamed from: c */
    public boolean f47522c = false;

    public AbstractC16927x() {
        addOnContextAvailableListener(new C16926w(this));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: Yt */
    public final Object m16767Yt() {
        if (this.f47520a == null) {
            synchronized (this.f47521b) {
                if (this.f47520a == null) {
                    this.f47520a = new a(this);
                }
            }
        }
        return this.f47520a.Yt();
    }

    public C26986a1.AbstractC26987b getDefaultViewModelProviderFactory() {
        return C25225a.m4039A0(this, AbstractC16927x.super.getDefaultViewModelProviderFactory());
    }
}
