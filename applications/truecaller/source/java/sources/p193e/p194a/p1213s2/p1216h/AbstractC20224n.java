package p193e.p194a.p1213s2.p1216h;

import n3.b.a.h;
import o3.b.a.c.c.a;
import o3.b.b.b;
import p1727n3.p1868v.C26986a1;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
/* renamed from: e.a.s2.h.n */
/* loaded from: classes5-dex2jar.jar:e/a/s2/h/n.class */
public abstract class AbstractC20224n extends h implements b {

    /* renamed from: a */
    public volatile a f56968a;

    /* renamed from: b */
    public final Object f56969b = new Object();

    /* renamed from: c */
    public boolean f56970c = false;

    public AbstractC20224n() {
        addOnContextAvailableListener(new C20223m(this));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: Yt */
    public final Object m11321Yt() {
        if (this.f56968a == null) {
            synchronized (this.f56969b) {
                if (this.f56968a == null) {
                    this.f56968a = new a(this);
                }
            }
        }
        return this.f56968a.Yt();
    }

    public C26986a1.AbstractC26987b getDefaultViewModelProviderFactory() {
        return C25225a.m4039A0(this, AbstractC20224n.super.getDefaultViewModelProviderFactory());
    }
}
