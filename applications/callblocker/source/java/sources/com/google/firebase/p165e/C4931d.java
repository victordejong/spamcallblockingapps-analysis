package com.google.firebase.p165e;

import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
/* renamed from: com.google.firebase.e.d */
/* loaded from: classes-dex2jar.jar:com/google/firebase/e/d.class */
public class C4931d {

    /* renamed from: b */
    private static volatile C4931d f21053b;

    /* renamed from: a */
    private final Set<AbstractC4933f> f21054a = new HashSet();

    C4931d() {
    }

    /* renamed from: b */
    public static C4931d m2015b() {
        C4931d c4931d = f21053b;
        C4931d c4931d2 = c4931d;
        if (c4931d == null) {
            synchronized (C4931d.class) {
                try {
                    C4931d c4931d3 = f21053b;
                    c4931d2 = c4931d3;
                    if (c4931d3 == null) {
                        c4931d2 = new C4931d();
                        f21053b = c4931d2;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return c4931d2;
    }

    /* renamed from: a */
    public Set<AbstractC4933f> m2016a() {
        Set<AbstractC4933f> unmodifiableSet;
        synchronized (this.f21054a) {
            unmodifiableSet = Collections.unmodifiableSet(this.f21054a);
        }
        return unmodifiableSet;
    }
}
