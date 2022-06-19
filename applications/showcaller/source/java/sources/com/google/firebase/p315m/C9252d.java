package com.google.firebase.p315m;

import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
/* renamed from: com.google.firebase.m.d */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/m/d.class */
public class C9252d {

    /* renamed from: a */
    private static volatile C9252d f39691a;

    /* renamed from: b */
    private final Set<AbstractC9254f> f39692b = new HashSet();

    C9252d() {
    }

    /* renamed from: a */
    public static C9252d m1407a() {
        C9252d c9252d = f39691a;
        C9252d c9252d2 = c9252d;
        if (c9252d == null) {
            synchronized (C9252d.class) {
                try {
                    C9252d c9252d3 = f39691a;
                    c9252d2 = c9252d3;
                    if (c9252d3 == null) {
                        c9252d2 = new C9252d();
                        f39691a = c9252d2;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return c9252d2;
    }

    /* renamed from: b */
    public Set<AbstractC9254f> m1406b() {
        Set<AbstractC9254f> unmodifiableSet;
        synchronized (this.f39692b) {
            unmodifiableSet = Collections.unmodifiableSet(this.f39692b);
        }
        return unmodifiableSet;
    }
}
