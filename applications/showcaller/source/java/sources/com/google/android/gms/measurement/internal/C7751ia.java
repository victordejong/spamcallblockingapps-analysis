package com.google.android.gms.measurement.internal;

import com.google.android.gms.internal.measurement.C7431k2;
import com.google.android.gms.internal.measurement.C7513q0;
import com.google.android.gms.internal.measurement.C7548s9;
import com.google.android.gms.internal.measurement.C7604x0;
/* renamed from: com.google.android.gms.measurement.internal.ia */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/ia.class */
public final class C7751ia extends AbstractC7739ha {

    /* renamed from: g */
    private final C7604x0 f35346g;

    /* renamed from: h */
    final /* synthetic */ C7763ja f35347h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C7751ia(C7763ja c7763ja, String str, int i, C7604x0 c7604x0) {
        super(str, i);
        this.f35347h = c7763ja;
        this.f35346g = c7604x0;
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC7739ha
    /* renamed from: a */
    public final int mo6352a() {
        return this.f35346g.m6787B();
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC7739ha
    /* renamed from: b */
    public final boolean mo6351b() {
        return true;
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC7739ha
    /* renamed from: c */
    public final boolean mo6350c() {
        return false;
    }

    /* JADX WARN: Type inference failed for: r0v46, types: [long] */
    /* JADX WARN: Type inference failed for: r0v68, types: [long] */
    /* JADX WARN: Type inference failed for: r0v70, types: [long] */
    /* renamed from: k */
    public final boolean m6349k(Long l, Long l2, C7431k2 c7431k2, boolean z) {
        Boolean bool;
        C7548s9.m6915a();
        boolean m6471u = this.f35347h.f35460a.m6006y().m6471u(this.f35313a, C7672c3.f35061Z);
        boolean m6784E = this.f35346g.m6784E();
        boolean m6783F = this.f35346g.m6783F();
        boolean m6781H = this.f35346g.m6781H();
        boolean z2 = m6784E || m6783F || m6781H;
        if (z && !z2) {
            C7791m3 m6187u = this.f35347h.f35460a.mo6047C().m6187u();
            int i = this.f35314b;
            Integer num = null;
            if (this.f35346g.m6788A()) {
                num = Integer.valueOf(this.f35346g.m6787B());
            }
            m6187u.m6214c("Property filter already evaluated true and it is not associated with an enhanced audience. audience ID, filter ID", Integer.valueOf(i), num);
            return true;
        }
        C7513q0 m6785D = this.f35346g.m6785D();
        boolean m7016F = m6785D.m7016F();
        if (c7431k2.m7228F()) {
            if (!m6785D.m7019C()) {
                this.f35347h.f35460a.mo6047C().m6192p().m6215b("No number filter for long property. property", this.f35347h.f35460a.m6042H().m6343p(c7431k2.m7231C()));
                bool = null;
            } else {
                bool = AbstractC7739ha.m6419e(AbstractC7739ha.m6417g(c7431k2.m7227G(), m6785D.m7018D()), m7016F);
            }
        } else if (c7431k2.m7226H()) {
            if (!m6785D.m7019C()) {
                this.f35347h.f35460a.mo6047C().m6192p().m6215b("No number filter for double property. property", this.f35347h.f35460a.m6042H().m6343p(c7431k2.m7231C()));
                bool = null;
            } else {
                bool = AbstractC7739ha.m6419e(AbstractC7739ha.m6416h(c7431k2.m7225I(), m6785D.m7018D()), m7016F);
            }
        } else if (!c7431k2.m7230D()) {
            this.f35347h.f35460a.mo6047C().m6192p().m6215b("User property has no value, property", this.f35347h.f35460a.m6042H().m6343p(c7431k2.m7231C()));
            bool = null;
        } else if (m6785D.m7021A()) {
            bool = AbstractC7739ha.m6419e(AbstractC7739ha.m6418f(c7431k2.m7229E(), m6785D.m7020B(), this.f35347h.f35460a.mo6047C()), m7016F);
        } else if (!m6785D.m7019C()) {
            this.f35347h.f35460a.mo6047C().m6192p().m6215b("No string or number filter defined. property", this.f35347h.f35460a.m6042H().m6343p(c7431k2.m7231C()));
            bool = null;
        } else if (C7841q9.m6080A(c7431k2.m7229E())) {
            bool = AbstractC7739ha.m6419e(AbstractC7739ha.m6415i(c7431k2.m7229E(), m6785D.m7018D()), m7016F);
        } else {
            this.f35347h.f35460a.mo6047C().m6192p().m6214c("Invalid user property value for Numeric number filter. property, value", this.f35347h.f35460a.m6042H().m6343p(c7431k2.m7231C()), c7431k2.m7229E());
            bool = null;
        }
        this.f35347h.f35460a.mo6047C().m6187u().m6215b("Property filter result", bool == null ? "null" : bool);
        if (bool == null) {
            return false;
        }
        this.f35315c = Boolean.TRUE;
        if (m6781H && !bool.booleanValue()) {
            return true;
        }
        if (!z || this.f35346g.m6784E()) {
            this.f35316d = bool;
        }
        if (!bool.booleanValue() || !z2 || !c7431k2.m7233A()) {
            return true;
        }
        char m7232B = c7431k2.m7232B();
        if (l != null) {
            m7232B = l.longValue();
        }
        char c = m7232B;
        if (m6471u) {
            c = m7232B;
            if (this.f35346g.m6784E()) {
                c = m7232B;
                if (!this.f35346g.m6783F()) {
                    c = m7232B;
                    if (l2 != null) {
                        c = l2.longValue();
                    }
                }
            }
        }
        if (this.f35346g.m6783F()) {
            this.f35318f = Long.valueOf(c);
            return true;
        }
        this.f35317e = Long.valueOf(c);
        return true;
    }
}
