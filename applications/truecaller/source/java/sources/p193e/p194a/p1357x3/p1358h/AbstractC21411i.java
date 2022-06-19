package p193e.p194a.p1357x3.p1358h;

import n3.b.a.h;
import o3.b.a.c.c.a;
import o3.b.b.b;
import p1727n3.p1868v.C26986a1;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
/* renamed from: e.a.x3.h.i */
/* loaded from: classes9-dex2jar.jar:e/a/x3/h/i.class */
public abstract class AbstractC21411i extends h implements b {

    /* renamed from: a */
    public volatile a f59877a;

    /* renamed from: b */
    public final Object f59878b = new Object();

    /* renamed from: c */
    public boolean f59879c = false;

    public AbstractC21411i() {
        addOnContextAvailableListener(new C21410h(this));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: Yt */
    public final Object m9758Yt() {
        if (this.f59877a == null) {
            synchronized (this.f59878b) {
                if (this.f59877a == null) {
                    this.f59877a = new a(this);
                }
            }
        }
        return this.f59877a.Yt();
    }

    public C26986a1.AbstractC26987b getDefaultViewModelProviderFactory() {
        return C25225a.m4039A0(this, AbstractC21411i.super.getDefaultViewModelProviderFactory());
    }
}
