package p193e.p194a.p1052m;

import n3.b.a.h;
import o3.b.a.c.c.a;
import o3.b.b.b;
import p1727n3.p1868v.C26986a1;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
/* renamed from: e.a.m.y */
/* loaded from: classes7-dex2jar.jar:e/a/m/y.class */
public abstract class AbstractC17886y extends h implements b {

    /* renamed from: a */
    public volatile a f50877a;

    /* renamed from: b */
    public final Object f50878b = new Object();

    /* renamed from: c */
    public boolean f50879c = false;

    public AbstractC17886y() {
        addOnContextAvailableListener(new C17885x(this));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: Yt */
    public final Object m15717Yt() {
        if (this.f50877a == null) {
            synchronized (this.f50878b) {
                if (this.f50877a == null) {
                    this.f50877a = new a(this);
                }
            }
        }
        return this.f50877a.Yt();
    }

    public C26986a1.AbstractC26987b getDefaultViewModelProviderFactory() {
        return C25225a.m4039A0(this, AbstractC17886y.super.getDefaultViewModelProviderFactory());
    }
}
