package p287x6;

import com.google.protobuf.AbstractC1875d0;
import com.google.protobuf.AbstractC1878f;
import com.google.protobuf.AbstractC1888i;
import com.google.protobuf.AbstractC1906o;
import com.google.protobuf.C1861a0;
import com.google.protobuf.C1895k;
import com.google.protobuf.C1919w;
import com.google.protobuf.C1920x;
import java.nio.charset.Charset;
import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
/* renamed from: x6.u */
/* loaded from: classes-dex2jar.jar:x6/u.class */
public final class C4923u {

    /* renamed from: c */
    public static final C4923u f15032c = new C4923u();

    /* renamed from: b */
    public final ConcurrentMap<Class<?>, AbstractC4925w<?>> f15034b = new ConcurrentHashMap();

    /* renamed from: a */
    public final AbstractC4926x f15033a = new C4912l();

    /* renamed from: a */
    public <T> AbstractC4925w<T> m262a(Class<T> cls) {
        Class<?> cls2;
        Charset charset = C1895k.f7092a;
        Objects.requireNonNull(cls, "messageType");
        AbstractC4925w<?> abstractC4925w = this.f15034b.get(cls);
        C1920x c1920x = abstractC4925w;
        if (abstractC4925w == null) {
            C4912l c4912l = (C4912l) this.f15033a;
            Objects.requireNonNull(c4912l);
            Class<?> cls3 = C1861a0.f7035a;
            if (!AbstractC1888i.class.isAssignableFrom(cls) && (cls2 = C1861a0.f7035a) != null && !cls2.isAssignableFrom(cls)) {
                throw new IllegalArgumentException("Message classes must extend GeneratedMessage or GeneratedMessageLite");
            }
            AbstractC4916n mo265a = c4912l.f15026a.mo265a(cls);
            if (!mo265a.mo252b()) {
                boolean z = false;
                if (AbstractC1888i.class.isAssignableFrom(cls)) {
                    if (mo265a.mo253a() == 1) {
                        z = true;
                    }
                    if (z) {
                        AbstractC4919q abstractC4919q = C4920r.f15031b;
                        AbstractC1906o abstractC1906o = AbstractC1906o.f7100b;
                        AbstractC1875d0<?, ?> abstractC1875d0 = C1861a0.f7038d;
                        AbstractC1878f<?> abstractC1878f = C4906f.f15003a;
                        c1920x = C1919w.m4215s(mo265a, abstractC4919q, abstractC1906o, abstractC1875d0, C4906f.f15003a, C4915m.f15029b);
                    } else {
                        c1920x = C1919w.m4215s(mo265a, C4920r.f15031b, AbstractC1906o.f7100b, C1861a0.f7038d, null, C4915m.f15029b);
                    }
                } else {
                    boolean z2 = false;
                    if (mo265a.mo253a() == 1) {
                        z2 = true;
                    }
                    if (z2) {
                        AbstractC4919q abstractC4919q2 = C4920r.f15030a;
                        AbstractC1906o abstractC1906o2 = AbstractC1906o.f7099a;
                        AbstractC1875d0<?, ?> abstractC1875d02 = C1861a0.f7036b;
                        AbstractC1878f<?> abstractC1878f2 = C4906f.f15004b;
                        if (abstractC1878f2 == null) {
                            throw new IllegalStateException("Protobuf runtime is not correctly loaded.");
                        }
                        c1920x = C1919w.m4215s(mo265a, abstractC4919q2, abstractC1906o2, abstractC1875d02, abstractC1878f2, C4915m.f15028a);
                    } else {
                        c1920x = C1919w.m4215s(mo265a, C4920r.f15030a, AbstractC1906o.f7099a, C1861a0.f7037c, null, C4915m.f15028a);
                    }
                }
            } else if (AbstractC1888i.class.isAssignableFrom(cls)) {
                AbstractC1875d0<?, ?> abstractC1875d03 = C1861a0.f7038d;
                AbstractC1878f<?> abstractC1878f3 = C4906f.f15003a;
                c1920x = new C1920x(abstractC1875d03, C4906f.f15003a, mo265a.mo251c());
            } else {
                AbstractC1875d0<?, ?> abstractC1875d04 = C1861a0.f7036b;
                AbstractC1878f<?> abstractC1878f4 = C4906f.f15004b;
                if (abstractC1878f4 == null) {
                    throw new IllegalStateException("Protobuf runtime is not correctly loaded.");
                }
                c1920x = new C1920x(abstractC1875d04, abstractC1878f4, mo265a.mo251c());
            }
            AbstractC4925w<?> putIfAbsent = this.f15034b.putIfAbsent(cls, c1920x);
            if (putIfAbsent != null) {
                c1920x = putIfAbsent;
            }
        }
        return (AbstractC4925w<T>) c1920x;
    }

    /* renamed from: b */
    public <T> AbstractC4925w<T> m261b(T t) {
        return m262a(t.getClass());
    }
}
