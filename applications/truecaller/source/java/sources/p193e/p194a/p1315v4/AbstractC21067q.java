package p193e.p194a.p1315v4;

import n3.b.a.h;
import o3.b.a.c.c.a;
import o3.b.b.b;
import p1727n3.p1868v.C26986a1;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
/* renamed from: e.a.v4.q */
/* loaded from: classes12-dex2jar.jar:e/a/v4/q.class */
public abstract class AbstractC21067q extends h implements b {

    /* renamed from: a */
    public volatile a f59093a;

    /* renamed from: b */
    public final Object f59094b = new Object();

    /* renamed from: c */
    public boolean f59095c = false;

    public AbstractC21067q() {
        addOnContextAvailableListener(new C21058p(this));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: Yt */
    public final Object m10376Yt() {
        if (this.f59093a == null) {
            synchronized (this.f59094b) {
                if (this.f59093a == null) {
                    this.f59093a = new a(this);
                }
            }
        }
        return this.f59093a.Yt();
    }

    public C26986a1.AbstractC26987b getDefaultViewModelProviderFactory() {
        return C25225a.m4039A0(this, AbstractC21067q.super.getDefaultViewModelProviderFactory());
    }
}
