package p000;

import java.util.EnumSet;
import java.util.Iterator;
/* renamed from: dn0 */
/* loaded from: classes-dex2jar.jar:dn0.class */
public enum dn0 {
    None(0),
    Enabled(1),
    RequireConfirm(2);
    

    /* renamed from: f */
    public static final EnumSet<dn0> f6096f = EnumSet.allOf(dn0.class);

    /* renamed from: a */
    public final long f6098a;

    dn0(long j) {
        this.f6098a = j;
    }

    /* renamed from: b */
    public static EnumSet<dn0> m2472b(long j) {
        EnumSet<dn0> noneOf = EnumSet.noneOf(dn0.class);
        Iterator it = f6096f.iterator();
        while (it.hasNext()) {
            dn0 dn0Var = (dn0) it.next();
            if ((dn0Var.m2473a() & j) != 0) {
                noneOf.add(dn0Var);
            }
        }
        return noneOf;
    }

    /* renamed from: a */
    public long m2473a() {
        return this.f6098a;
    }
}
