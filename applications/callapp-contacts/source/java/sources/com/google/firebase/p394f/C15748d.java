package com.google.firebase.p394f;

import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
/* renamed from: com.google.firebase.f.d */
/* loaded from: classes4-dex2jar.jar:com/google/firebase/f/d.class */
public class C15748d {

    /* renamed from: b */
    private static volatile C15748d f56094b;

    /* renamed from: a */
    private final Set<AbstractC15750f> f56095a = new HashSet();

    C15748d() {
    }

    /* renamed from: b */
    public static C15748d m8463b() {
        C15748d c15748d = f56094b;
        C15748d c15748d2 = c15748d;
        if (c15748d == null) {
            synchronized (C15748d.class) {
                try {
                    C15748d c15748d3 = f56094b;
                    c15748d2 = c15748d3;
                    if (c15748d3 == null) {
                        c15748d2 = new C15748d();
                        f56094b = c15748d2;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return c15748d2;
    }

    /* renamed from: a */
    public final Set<AbstractC15750f> m8464a() {
        Set<AbstractC15750f> unmodifiableSet;
        synchronized (this.f56095a) {
            unmodifiableSet = Collections.unmodifiableSet(this.f56095a);
        }
        return unmodifiableSet;
    }
}
