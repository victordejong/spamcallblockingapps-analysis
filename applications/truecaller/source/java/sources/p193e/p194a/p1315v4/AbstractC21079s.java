package p193e.p194a.p1315v4;

import n3.b.a.h;
import o3.b.a.c.c.a;
import o3.b.b.b;
import p1727n3.p1868v.C26986a1;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
/* renamed from: e.a.v4.s */
/* loaded from: classes12-dex2jar.jar:e/a/v4/s.class */
public abstract class AbstractC21079s extends h implements b {

    /* renamed from: a */
    public volatile a f59174a;

    /* renamed from: b */
    public final Object f59175b = new Object();

    /* renamed from: c */
    public boolean f59176c = false;

    public AbstractC21079s() {
        addOnContextAvailableListener(new C21069r(this));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: Yt */
    public final Object m10374Yt() {
        if (this.f59174a == null) {
            synchronized (this.f59175b) {
                if (this.f59174a == null) {
                    this.f59174a = new a(this);
                }
            }
        }
        return this.f59174a.Yt();
    }

    public C26986a1.AbstractC26987b getDefaultViewModelProviderFactory() {
        return C25225a.m4039A0(this, AbstractC21079s.super.getDefaultViewModelProviderFactory());
    }
}
