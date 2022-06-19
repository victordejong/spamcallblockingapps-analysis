package p193e.p194a.p1138q.p1139a;

import n3.b.a.h;
import o3.b.a.c.c.a;
import o3.b.b.b;
import p1727n3.p1868v.C26986a1;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
/* renamed from: e.a.q.a.j */
/* loaded from: classes4-dex2jar.jar:e/a/q/a/j.class */
public abstract class AbstractC19385j extends h implements b {

    /* renamed from: a */
    public volatile a f53890a;

    /* renamed from: b */
    public final Object f53891b = new Object();

    /* renamed from: c */
    public boolean f53892c = false;

    public AbstractC19385j() {
        addOnContextAvailableListener(new C19384i(this));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: Yt */
    public final Object m13385Yt() {
        if (this.f53890a == null) {
            synchronized (this.f53891b) {
                if (this.f53890a == null) {
                    this.f53890a = new a(this);
                }
            }
        }
        return this.f53890a.Yt();
    }

    public C26986a1.AbstractC26987b getDefaultViewModelProviderFactory() {
        return C25225a.m4039A0(this, AbstractC19385j.super.getDefaultViewModelProviderFactory());
    }
}
