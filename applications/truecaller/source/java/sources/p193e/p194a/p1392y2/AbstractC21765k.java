package p193e.p194a.p1392y2;

import androidx.work.ListenableWorker;
import p1727n3.p1834m0.C26829f;
import s1.z.c.l;
/* renamed from: e.a.y2.k */
/* loaded from: classes5-dex2jar.jar:e/a/y2/k.class */
public abstract class AbstractC21765k {

    /* renamed from: a */
    public C26829f f60609a;

    public AbstractC21765k() {
        C26829f c26829f = C26829f.f75077c;
        l.d(c26829f, "Data.EMPTY");
        this.f60609a = c26829f;
    }

    /* renamed from: a */
    public abstract ListenableWorker.AbstractC0414a mo9063a();

    /* renamed from: b */
    public abstract String mo9062b();

    /* renamed from: c */
    public abstract boolean mo9061c();

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof AbstractC21765k) {
            return l.a(mo9062b(), ((AbstractC21765k) obj).mo9062b());
        }
        return false;
    }

    public int hashCode() {
        return mo9062b().hashCode();
    }
}
