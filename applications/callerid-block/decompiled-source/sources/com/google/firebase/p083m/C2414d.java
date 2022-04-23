package com.google.firebase.p083m;

import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
/* renamed from: com.google.firebase.m.d */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/m/d.class */
public class C2414d {

    /* renamed from: b */
    private static volatile C2414d f10598b;

    /* renamed from: a */
    private final Set<f> f10599a = new HashSet();

    C2414d() {
    }

    /* renamed from: a */
    public static C2414d m3720a() {
        C2414d dVar = f10598b;
        C2414d dVar2 = dVar;
        if (dVar == null) {
            synchronized (C2414d.class) {
                try {
                    C2414d dVar3 = f10598b;
                    dVar2 = dVar3;
                    if (dVar3 == null) {
                        dVar2 = new C2414d();
                        f10598b = dVar2;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return dVar2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public Set<f> m3719b() {
        Set<f> unmodifiableSet;
        synchronized (this.f10599a) {
            unmodifiableSet = Collections.unmodifiableSet(this.f10599a);
        }
        return unmodifiableSet;
    }
}
