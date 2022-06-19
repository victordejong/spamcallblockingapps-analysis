package p193e.p194a.p1193r5;

import n3.b.a.h;
import o3.b.a.c.c.a;
import o3.b.b.b;
import p1727n3.p1868v.C26986a1;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
/* renamed from: e.a.r5.g */
/* loaded from: classes8-dex2jar.jar:e/a/r5/g.class */
public abstract class AbstractC19946g extends h implements b {

    /* renamed from: a */
    public volatile a f56401a;

    /* renamed from: b */
    public final Object f56402b = new Object();

    /* renamed from: c */
    public boolean f56403c = false;

    public AbstractC19946g() {
        addOnContextAvailableListener(new C19944f(this));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: Yt */
    public final Object m11793Yt() {
        if (this.f56401a == null) {
            synchronized (this.f56402b) {
                if (this.f56401a == null) {
                    this.f56401a = new a(this);
                }
            }
        }
        return this.f56401a.Yt();
    }

    public C26986a1.AbstractC26987b getDefaultViewModelProviderFactory() {
        return C25225a.m4039A0(this, AbstractC19946g.super.getDefaultViewModelProviderFactory());
    }
}
