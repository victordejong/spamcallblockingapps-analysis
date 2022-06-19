package p193e.p194a.p1275v;

import n3.b.a.h;
import o3.b.a.c.c.a;
import o3.b.b.b;
import p1727n3.p1868v.C26986a1;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
/* renamed from: e.a.v.j */
/* loaded from: classes8-dex2jar.jar:e/a/v/j.class */
public abstract class AbstractC20893j extends h implements b {

    /* renamed from: a */
    public volatile a f58717a;

    /* renamed from: b */
    public final Object f58718b = new Object();

    /* renamed from: c */
    public boolean f58719c = false;

    public AbstractC20893j() {
        addOnContextAvailableListener(new C20892i(this));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: Yt */
    public final Object m10550Yt() {
        if (this.f58717a == null) {
            synchronized (this.f58718b) {
                if (this.f58717a == null) {
                    this.f58717a = new a(this);
                }
            }
        }
        return this.f58717a.Yt();
    }

    public C26986a1.AbstractC26987b getDefaultViewModelProviderFactory() {
        return C25225a.m4039A0(this, AbstractC20893j.super.getDefaultViewModelProviderFactory());
    }
}
