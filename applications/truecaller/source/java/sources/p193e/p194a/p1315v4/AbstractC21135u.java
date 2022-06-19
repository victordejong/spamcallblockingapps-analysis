package p193e.p194a.p1315v4;

import n3.b.a.h;
import o3.b.a.c.c.a;
import o3.b.b.b;
import p1727n3.p1868v.C26986a1;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
/* renamed from: e.a.v4.u */
/* loaded from: classes12-dex2jar.jar:e/a/v4/u.class */
public abstract class AbstractC21135u extends h implements b {

    /* renamed from: a */
    public volatile a f59282a;

    /* renamed from: b */
    public final Object f59283b = new Object();

    /* renamed from: c */
    public boolean f59284c = false;

    public AbstractC21135u() {
        addOnContextAvailableListener(new C21131t(this));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: Yt */
    public final Object m10252Yt() {
        if (this.f59282a == null) {
            synchronized (this.f59283b) {
                if (this.f59282a == null) {
                    this.f59282a = new a(this);
                }
            }
        }
        return this.f59282a.Yt();
    }

    public C26986a1.AbstractC26987b getDefaultViewModelProviderFactory() {
        return C25225a.m4039A0(this, AbstractC21135u.super.getDefaultViewModelProviderFactory());
    }
}
