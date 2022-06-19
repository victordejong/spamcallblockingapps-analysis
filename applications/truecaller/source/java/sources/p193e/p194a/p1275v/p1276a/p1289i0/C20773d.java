package p193e.p194a.p1275v.p1276a.p1289i0;

import javax.inject.Inject;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1129p5.AbstractC19233h0;
import p193e.p194a.p1270u2.p1271a.AbstractC20576b;
import p193e.p194a.p1275v.p1276a.p1303z.C20879a;
import p193e.p194a.p1275v.p1309p.AbstractC20932g;
import p193e.p194a.p712e4.AbstractC13497p;
import p193e.p194a.p997k3.p1000l.AbstractC16498f;
import s1.z.c.l;
/* renamed from: e.a.v.a.i0.d */
/* loaded from: classes8-dex2jar.jar:e/a/v/a/i0/d.class */
public final class C20773d extends AbstractC20576b<AbstractC20772c> implements AbstractC20771b {

    /* renamed from: b */
    public final AbstractC13497p f58413b;

    /* renamed from: c */
    public final AbstractC20932g f58414c;

    /* renamed from: d */
    public final AbstractC19233h0 f58415d;

    /* renamed from: e */
    public final AbstractC16498f f58416e;

    /* renamed from: f */
    public final C20879a f58417f;

    /* renamed from: e.a.v.a.i0.d$a */
    /* loaded from: classes8-dex2jar.jar:e/a/v/a/i0/d$a.class */
    public static final class C20774a {

        /* renamed from: a */
        public final String f58418a;

        /* renamed from: b */
        public final int f58419b;

        /* renamed from: c */
        public final int f58420c;

        public C20774a(String str, int i, int i2) {
            l.e(str, "label");
            this.f58418a = str;
            this.f58419b = i;
            this.f58420c = i2;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof C20774a)) {
                    return false;
                }
                C20774a c20774a = (C20774a) obj;
                return l.a(this.f58418a, c20774a.f58418a) && this.f58419b == c20774a.f58419b && this.f58420c == c20774a.f58420c;
            }
            return true;
        }

        public int hashCode() {
            String str = this.f58418a;
            return ((((str != null ? str.hashCode() : 0) * 31) + this.f58419b) * 31) + this.f58420c;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("ContactNumberCategory(label=");
            m8728C.append(this.f58418a);
            m8728C.append(", drawableResId=");
            m8728C.append(this.f58419b);
            m8728C.append(", color=");
            return C22128a.m8697J2(m8728C, this.f58420c, ")");
        }
    }

    @Inject
    public C20773d(AbstractC13497p abstractC13497p, AbstractC20932g abstractC20932g, AbstractC19233h0 abstractC19233h0, AbstractC16498f abstractC16498f, C20879a c20879a) {
        l.e(abstractC13497p, "multiSimManager");
        l.e(abstractC20932g, "detailsCallHelper");
        l.e(abstractC19233h0, "resourceProvider");
        l.e(abstractC16498f, "numberProvider");
        l.e(c20879a, "detailsViewAnalytics");
        this.f58413b = abstractC13497p;
        this.f58414c = abstractC20932g;
        this.f58415d = abstractC19233h0;
        this.f58416e = abstractC16498f;
        this.f58417f = c20879a;
    }
}
