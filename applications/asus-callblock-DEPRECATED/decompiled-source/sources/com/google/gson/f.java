package com.google.gson;

import com.google.gson.a.a.g;
import com.google.gson.a.a.h;
import com.google.gson.a.a.i;
import com.google.gson.a.a.j;
import com.google.gson.a.a.l;
import com.google.gson.a.c;
import com.google.gson.a.d;
import com.google.gson.c.b;
import java.io.EOFException;
import java.io.IOException;
import java.lang.reflect.Type;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/gson/f.class */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    final j f4542a;

    /* renamed from: b  reason: collision with root package name */
    final s f4543b;
    private final ThreadLocal<Map<com.google.gson.b.a<?>, a<?>>> c;
    private final Map<com.google.gson.b.a<?>, x<?>> d;
    private final List<y> e;
    private final c f;
    private final boolean g;
    private final boolean h;
    private final boolean i;
    private final boolean j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/google/gson/f$a.class */
    public static final class a<T> extends x<T> {

        /* renamed from: a  reason: collision with root package name */
        x<T> f4549a;

        a() {
        }

        @Override // com.google.gson.x
        public final T a(com.google.gson.c.a aVar) {
            if (this.f4549a != null) {
                return this.f4549a.a(aVar);
            }
            throw new IllegalStateException();
        }

        @Override // com.google.gson.x
        public final void a(com.google.gson.c.c cVar, T t) {
            if (this.f4549a == null) {
                throw new IllegalStateException();
            }
            this.f4549a.a(cVar, t);
        }
    }

    public f() {
        this(d.f4509a, d.IDENTITY, Collections.emptyMap(), false, false, false, true, false, false, v.DEFAULT, Collections.emptyList());
    }

    public f(d dVar, e eVar, Map<Type, h<?>> map, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, v vVar, List<y> list) {
        this.c = new ThreadLocal<>();
        this.d = Collections.synchronizedMap(new HashMap());
        this.f4542a = new j() { // from class: com.google.gson.f.1
        };
        this.f4543b = new s() { // from class: com.google.gson.f.2
        };
        this.f = new c(map);
        this.g = z;
        this.i = z3;
        this.h = z4;
        this.j = z5;
        ArrayList arrayList = new ArrayList();
        arrayList.add(l.Q);
        arrayList.add(g.f4453a);
        arrayList.add(dVar);
        arrayList.addAll(list);
        arrayList.add(l.x);
        arrayList.add(l.m);
        arrayList.add(l.g);
        arrayList.add(l.i);
        arrayList.add(l.k);
        arrayList.add(l.a(Long.TYPE, Long.class, vVar == v.DEFAULT ? l.n : new x<Number>() { // from class: com.google.gson.f.5
            @Override // com.google.gson.x
            public final /* synthetic */ Number a(com.google.gson.c.a aVar) {
                Long valueOf;
                if (aVar.f() == b.NULL) {
                    aVar.k();
                    valueOf = null;
                } else {
                    valueOf = Long.valueOf(aVar.m());
                }
                return valueOf;
            }

            @Override // com.google.gson.x
            public final /* synthetic */ void a(com.google.gson.c.c cVar, Number number) {
                Number number2 = number;
                if (number2 == null) {
                    cVar.e();
                } else {
                    cVar.b(number2.toString());
                }
            }
        }));
        arrayList.add(l.a(Double.TYPE, Double.class, z6 ? l.p : new x<Number>() { // from class: com.google.gson.f.3
            @Override // com.google.gson.x
            public final /* synthetic */ Number a(com.google.gson.c.a aVar) {
                Double valueOf;
                if (aVar.f() == b.NULL) {
                    aVar.k();
                    valueOf = null;
                } else {
                    valueOf = Double.valueOf(aVar.l());
                }
                return valueOf;
            }

            @Override // com.google.gson.x
            public final /* synthetic */ void a(com.google.gson.c.c cVar, Number number) {
                Number number2 = number;
                if (number2 == null) {
                    cVar.e();
                    return;
                }
                f.a(number2.doubleValue());
                cVar.a(number2);
            }
        }));
        arrayList.add(l.a(Float.TYPE, Float.class, z6 ? l.o : new x<Number>() { // from class: com.google.gson.f.4
            @Override // com.google.gson.x
            public final /* synthetic */ Number a(com.google.gson.c.a aVar) {
                Float valueOf;
                if (aVar.f() == b.NULL) {
                    aVar.k();
                    valueOf = null;
                } else {
                    valueOf = Float.valueOf((float) aVar.l());
                }
                return valueOf;
            }

            @Override // com.google.gson.x
            public final /* synthetic */ void a(com.google.gson.c.c cVar, Number number) {
                Number number2 = number;
                if (number2 == null) {
                    cVar.e();
                    return;
                }
                f.a(number2.floatValue());
                cVar.a(number2);
            }
        }));
        arrayList.add(l.r);
        arrayList.add(l.t);
        arrayList.add(l.z);
        arrayList.add(l.B);
        arrayList.add(l.a(BigDecimal.class, l.v));
        arrayList.add(l.a(BigInteger.class, l.w));
        arrayList.add(l.D);
        arrayList.add(l.F);
        arrayList.add(l.J);
        arrayList.add(l.O);
        arrayList.add(l.H);
        arrayList.add(l.d);
        arrayList.add(com.google.gson.a.a.c.f4444a);
        arrayList.add(l.M);
        arrayList.add(j.f4464a);
        arrayList.add(i.f4462a);
        arrayList.add(l.K);
        arrayList.add(com.google.gson.a.a.a.f4439a);
        arrayList.add(l.R);
        arrayList.add(l.f4469b);
        arrayList.add(new com.google.gson.a.a.b(this.f));
        arrayList.add(new com.google.gson.a.a.f(this.f, z2));
        arrayList.add(new h(this.f, eVar, dVar));
        this.e = Collections.unmodifiableList(arrayList);
    }

    private <T> T a(com.google.gson.c.a aVar, Type type) {
        T t;
        boolean z = true;
        boolean z2 = aVar.f4535b;
        aVar.f4535b = true;
        try {
            try {
                try {
                    aVar.f();
                    z = false;
                    t = a(com.google.gson.b.a.a(type)).a(aVar);
                    aVar.f4535b = z2;
                } catch (IOException e) {
                    throw new u(e);
                }
            } catch (EOFException e2) {
                if (z) {
                    aVar.f4535b = z2;
                    t = null;
                } else {
                    throw new u(e2);
                }
            } catch (IllegalStateException e3) {
                throw new u(e3);
            }
            return t;
        } catch (Throwable th) {
            aVar.f4535b = z2;
            throw th;
        }
    }

    static /* synthetic */ void a(double d) {
        if (Double.isNaN(d) || Double.isInfinite(d)) {
            throw new IllegalArgumentException(d + " is not a valid double value as per JSON specification. To override this behavior, use GsonBuilder.serializeSpecialFloatingPointValues() method.");
        }
    }

    /* JADX WARN: Finally extract failed */
    public final <T> x<T> a(com.google.gson.b.a<T> aVar) {
        x<T> a2;
        x<T> xVar = (x<T>) this.d.get(aVar);
        if (xVar == null) {
            Map<com.google.gson.b.a<?>, a<?>> map = this.c.get();
            boolean z = false;
            if (map == null) {
                map = new HashMap<>();
                this.c.set(map);
                z = true;
            }
            a<?> aVar2 = map.get(aVar);
            xVar = aVar2;
            if (aVar2 == null) {
                try {
                    a<?> aVar3 = new a<>();
                    map.put(aVar, aVar3);
                    Iterator<y> it = this.e.iterator();
                    do {
                        if (it.hasNext()) {
                            a2 = it.next().a(this, aVar);
                        } else {
                            throw new IllegalArgumentException("GSON cannot handle " + aVar);
                        }
                    } while (a2 == null);
                    if (aVar3.f4549a != null) {
                        throw new AssertionError();
                    }
                    aVar3.f4549a = a2;
                    this.d.put(aVar, a2);
                    map.remove(aVar);
                    xVar = a2;
                    if (z) {
                        this.c.remove();
                        xVar = a2;
                    }
                } catch (Throwable th) {
                    map.remove(aVar);
                    if (z) {
                        this.c.remove();
                    }
                    throw th;
                }
            }
        }
        return xVar;
    }

    public final <T> x<T> a(y yVar, com.google.gson.b.a<T> aVar) {
        boolean z = false;
        for (y yVar2 : this.e) {
            if (z) {
                x<T> a2 = yVar2.a(this, aVar);
                if (a2 != null) {
                    return a2;
                }
            } else if (yVar2 == yVar) {
                z = true;
            }
        }
        throw new IllegalArgumentException("GSON cannot serialize " + aVar);
    }

    public final <T> x<T> a(Class<T> cls) {
        return a(com.google.gson.b.a.a((Class) cls));
    }

    public final <T> T a(l lVar, Class<T> cls) {
        return (T) com.google.gson.a.i.a((Class) cls).cast(lVar == null ? null : a(new com.google.gson.a.a.d(lVar), cls));
    }

    public final String toString() {
        return "{serializeNulls:" + this.g + "factories:" + this.e + ",instanceCreators:" + this.f + "}";
    }
}
