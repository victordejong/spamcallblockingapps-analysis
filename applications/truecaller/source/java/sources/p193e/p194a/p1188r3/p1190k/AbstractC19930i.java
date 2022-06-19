package p193e.p194a.p1188r3.p1190k;

import n3.b.a.h;
import o3.b.a.c.c.a;
import o3.b.b.b;
import p1727n3.p1868v.C26986a1;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
/* renamed from: e.a.r3.k.i */
/* loaded from: classes8-dex2jar.jar:e/a/r3/k/i.class */
public abstract class AbstractC19930i extends h implements b {

    /* renamed from: a */
    public volatile a f56379a;

    /* renamed from: b */
    public final Object f56380b = new Object();

    /* renamed from: c */
    public boolean f56381c = false;

    public AbstractC19930i() {
        addOnContextAvailableListener(new C19929h(this));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: Yt */
    public final Object m11802Yt() {
        if (this.f56379a == null) {
            synchronized (this.f56380b) {
                if (this.f56379a == null) {
                    this.f56379a = new a(this);
                }
            }
        }
        return this.f56379a.Yt();
    }

    public C26986a1.AbstractC26987b getDefaultViewModelProviderFactory() {
        return C25225a.m4039A0(this, AbstractC19930i.super.getDefaultViewModelProviderFactory());
    }
}
