package p193e.p1577m.p1578a.p1580b.p1583j.p1587c0;

import com.amazon.device.ads.DtbConstants;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Objects;
import java.util.Set;
import javax.inject.Provider;
import p193e.p1577m.p1578a.p1580b.EnumC23989d;
import p193e.p1577m.p1578a.p1580b.p1583j.p1587c0.p1588h.AbstractC24070s;
import p193e.p1577m.p1578a.p1580b.p1583j.p1587c0.p1588h.C24065p;
import p193e.p1577m.p1578a.p1580b.p1583j.p1587c0.p1588h.C24066q;
import p193e.p1577m.p1578a.p1580b.p1583j.p1591e0.AbstractC24130a;
/* renamed from: e.m.a.b.j.c0.f */
/* loaded from: classes2-dex2jar.jar:e/m/a/b/j/c0/f.class */
public final class C24048f implements Object<AbstractC24070s> {

    /* renamed from: a */
    public final Provider<AbstractC24130a> f66682a;

    public C24048f(Provider<AbstractC24130a> provider) {
        this.f66682a = provider;
    }

    public Object get() {
        AbstractC24130a abstractC24130a = (AbstractC24130a) this.f66682a.get();
        HashMap hashMap = new HashMap();
        EnumC23989d enumC23989d = EnumC23989d.DEFAULT;
        AbstractC24070s.AbstractC24071a.AbstractC24072a m5589a = AbstractC24070s.AbstractC24071a.m5589a();
        m5589a.mo5584b(30000L);
        m5589a.mo5583c(DtbConstants.SIS_CHECKIN_INTERVAL);
        hashMap.put(enumC23989d, m5589a.mo5585a());
        EnumC23989d enumC23989d2 = EnumC23989d.HIGHEST;
        AbstractC24070s.AbstractC24071a.AbstractC24072a m5589a2 = AbstractC24070s.AbstractC24071a.m5589a();
        m5589a2.mo5584b(1000L);
        m5589a2.mo5583c(DtbConstants.SIS_CHECKIN_INTERVAL);
        hashMap.put(enumC23989d2, m5589a2.mo5585a());
        EnumC23989d enumC23989d3 = EnumC23989d.VERY_LOW;
        AbstractC24070s.AbstractC24071a.AbstractC24072a m5589a3 = AbstractC24070s.AbstractC24071a.m5589a();
        m5589a3.mo5584b(DtbConstants.SIS_CHECKIN_INTERVAL);
        m5589a3.mo5583c(DtbConstants.SIS_CHECKIN_INTERVAL);
        Set<AbstractC24070s.EnumC24073b> unmodifiableSet = Collections.unmodifiableSet(new HashSet(Arrays.asList(AbstractC24070s.EnumC24073b.NETWORK_UNMETERED, AbstractC24070s.EnumC24073b.DEVICE_IDLE)));
        C24066q.C24068b c24068b = (C24066q.C24068b) m5589a3;
        Objects.requireNonNull(unmodifiableSet, "Null flags");
        c24068b.f66724c = unmodifiableSet;
        hashMap.put(enumC23989d3, c24068b.mo5585a());
        Objects.requireNonNull(abstractC24130a, "missing required property: clock");
        int size = hashMap.keySet().size();
        EnumC23989d.values();
        if (size >= 3) {
            new HashMap();
            return new C24065p(abstractC24130a, hashMap);
        }
        throw new IllegalStateException("Not all priorities have been configured");
    }
}
