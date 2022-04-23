package com.google.protobuf;

import com.google.protobuf.GeneratedMessageLite;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* renamed from: com.google.protobuf.o */
/* loaded from: classes2-dex2jar.jar:com/google/protobuf/o.class */
public class C2643o {

    /* renamed from: b */
    private static boolean f11175b = true;

    /* renamed from: c */
    private static volatile C2643o f11176c;

    /* renamed from: d */
    static final C2643o f11177d = new C2643o(true);

    /* renamed from: a */
    private final Map<C2644a, GeneratedMessageLite.C2554e<?, ?>> f11178a;

    /* renamed from: com.google.protobuf.o$a */
    /* loaded from: classes2-dex2jar.jar:com/google/protobuf/o$a.class */
    private static final class C2644a {

        /* renamed from: a */
        private final Object f11179a;

        /* renamed from: b */
        private final int f11180b;

        C2644a(Object obj, int i) {
            this.f11179a = obj;
            this.f11180b = i;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof C2644a)) {
                return false;
            }
            C2644a aVar = (C2644a) obj;
            boolean z = false;
            if (this.f11179a == aVar.f11179a) {
                z = false;
                if (this.f11180b == aVar.f11180b) {
                    z = true;
                }
            }
            return z;
        }

        public int hashCode() {
            return (System.identityHashCode(this.f11179a) * 65535) + this.f11180b;
        }
    }

    C2643o() {
        this.f11178a = new HashMap();
    }

    C2643o(boolean z) {
        this.f11178a = Collections.emptyMap();
    }

    /* renamed from: b */
    public static C2643o m2411b() {
        C2643o oVar = f11176c;
        C2643o oVar2 = oVar;
        if (oVar == null) {
            synchronized (C2643o.class) {
                try {
                    C2643o oVar3 = f11176c;
                    oVar2 = oVar3;
                    if (oVar3 == null) {
                        oVar2 = f11175b ? C2641n.m2417a() : f11177d;
                        f11176c = oVar2;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return oVar2;
    }

    /* renamed from: a */
    public <ContainingType extends AbstractC2639m0> GeneratedMessageLite.C2554e<ContainingType, ?> m2412a(ContainingType containingtype, int i) {
        return (GeneratedMessageLite.C2554e<ContainingType, ?>) this.f11178a.get(new C2644a(containingtype, i));
    }
}
