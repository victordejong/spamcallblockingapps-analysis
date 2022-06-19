package p193e.p194a.p1349x;

import n3.b.a.h;
import o3.b.a.c.c.a;
import o3.b.b.b;
import p1727n3.p1868v.C26986a1;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
/* renamed from: e.a.x.c0 */
/* loaded from: classes9-dex2jar.jar:e/a/x/c0.class */
public abstract class AbstractC21327c0 extends h implements b {

    /* renamed from: a */
    public volatile a f59720a;

    /* renamed from: b */
    public final Object f59721b = new Object();

    /* renamed from: c */
    public boolean f59722c = false;

    public AbstractC21327c0() {
        addOnContextAvailableListener(new C21325b0(this));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: Yt */
    public final Object m9887Yt() {
        if (this.f59720a == null) {
            synchronized (this.f59721b) {
                if (this.f59720a == null) {
                    this.f59720a = new a(this);
                }
            }
        }
        return this.f59720a.Yt();
    }

    public C26986a1.AbstractC26987b getDefaultViewModelProviderFactory() {
        return C25225a.m4039A0(this, AbstractC21327c0.super.getDefaultViewModelProviderFactory());
    }
}
