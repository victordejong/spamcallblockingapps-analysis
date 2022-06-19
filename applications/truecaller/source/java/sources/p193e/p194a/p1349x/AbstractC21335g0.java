package p193e.p194a.p1349x;

import n3.b.a.h;
import o3.b.a.c.c.a;
import o3.b.b.b;
import p1727n3.p1868v.C26986a1;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
/* renamed from: e.a.x.g0 */
/* loaded from: classes9-dex2jar.jar:e/a/x/g0.class */
public abstract class AbstractC21335g0 extends h implements b {

    /* renamed from: a */
    public volatile a f59731a;

    /* renamed from: b */
    public final Object f59732b = new Object();

    /* renamed from: c */
    public boolean f59733c = false;

    public AbstractC21335g0() {
        addOnContextAvailableListener(new C21333f0(this));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: Yt */
    public final Object m9880Yt() {
        if (this.f59731a == null) {
            synchronized (this.f59732b) {
                if (this.f59731a == null) {
                    this.f59731a = new a(this);
                }
            }
        }
        return this.f59731a.Yt();
    }

    public C26986a1.AbstractC26987b getDefaultViewModelProviderFactory() {
        return C25225a.m4039A0(this, AbstractC21335g0.super.getDefaultViewModelProviderFactory());
    }
}
