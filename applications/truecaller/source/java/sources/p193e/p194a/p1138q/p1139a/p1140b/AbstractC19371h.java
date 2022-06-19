package p193e.p194a.p1138q.p1139a.p1140b;

import n3.b.a.h;
import o3.b.a.c.c.a;
import o3.b.b.b;
import p1727n3.p1868v.C26986a1;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
/* renamed from: e.a.q.a.b.h */
/* loaded from: classes4-dex2jar.jar:e/a/q/a/b/h.class */
public abstract class AbstractC19371h extends h implements b {

    /* renamed from: a */
    public volatile a f53860a;

    /* renamed from: b */
    public final Object f53861b = new Object();

    /* renamed from: c */
    public boolean f53862c = false;

    public AbstractC19371h() {
        addOnContextAvailableListener(new C19370g(this));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: Yt */
    public final Object m13399Yt() {
        if (this.f53860a == null) {
            synchronized (this.f53861b) {
                if (this.f53860a == null) {
                    this.f53860a = new a(this);
                }
            }
        }
        return this.f53860a.Yt();
    }

    public C26986a1.AbstractC26987b getDefaultViewModelProviderFactory() {
        return C25225a.m4039A0(this, AbstractC19371h.super.getDefaultViewModelProviderFactory());
    }
}
