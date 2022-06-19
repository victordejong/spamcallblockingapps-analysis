package com.criteo.publisher;

import androidx.annotation.Keep;
import com.criteo.publisher.annotation.Internal;
import e.i.b.h;
import p193e.p1512i.p1516b.AbstractC22939e2;
import p193e.p1512i.p1516b.p1531s2.EnumC23072a;
import p193e.p1512i.p1516b.p1533u2.C23131w;
import s1.z.b.l;
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/Bid.class */
public class Bid {

    /* renamed from: a */
    public final double f2420a;

    /* renamed from: b */
    public final EnumC23072a f2421b;

    /* renamed from: c */
    public final AbstractC22939e2 f2422c;

    /* renamed from: d */
    public C23131w f2423d;

    public Bid(EnumC23072a enumC23072a, AbstractC22939e2 abstractC22939e2, C23131w c23131w) {
        this.f2420a = c23131w.m7480e().doubleValue();
        this.f2421b = enumC23072a;
        this.f2423d = c23131w;
        this.f2422c = abstractC22939e2;
    }

    /* renamed from: a */
    public final <T> T m42048a(l<C23131w, T> lVar) {
        synchronized (this) {
            C23131w c23131w = this.f2423d;
            if (c23131w != null && !c23131w.m7481d(this.f2422c)) {
                T t = (T) lVar.d(this.f2423d);
                this.f2423d = null;
                return t;
            }
            return null;
        }
    }

    @Internal({Internal.IN_HOUSE})
    /* renamed from: b */
    public String m42047b(EnumC23072a enumC23072a) {
        if (!enumC23072a.equals(this.f2421b)) {
            return null;
        }
        return (String) m42048a(h.a);
    }

    @Keep
    public double getPrice() {
        return this.f2420a;
    }
}
