package p193e.p194a.p1161q5;

import o3.b.a.c.c.a;
import o3.b.b.b;
import p1727n3.p1868v.C26986a1;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p682e.AbstractC13287n0;
/* renamed from: e.a.q5.b */
/* loaded from: classes15-dex2jar.jar:e/a/q5/b.class */
public abstract class AbstractC19683b extends AbstractC13287n0 implements b {

    /* renamed from: g */
    public volatile a f54686g;

    /* renamed from: h */
    public final Object f54687h = new Object();

    /* renamed from: i */
    public boolean f54688i = false;

    public AbstractC19683b() {
        addOnContextAvailableListener(new C19682a(this));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: Yt */
    public final Object m12998Yt() {
        if (this.f54686g == null) {
            synchronized (this.f54687h) {
                if (this.f54686g == null) {
                    this.f54686g = new a(this);
                }
            }
        }
        return this.f54686g.Yt();
    }

    public C26986a1.AbstractC26987b getDefaultViewModelProviderFactory() {
        return C25225a.m4039A0(this, AbstractC19683b.super.getDefaultViewModelProviderFactory());
    }
}
