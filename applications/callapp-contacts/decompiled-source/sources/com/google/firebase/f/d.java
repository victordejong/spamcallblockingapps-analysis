package com.google.firebase.f;

import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/f/d.class */
public class d {

    /* renamed from: b  reason: collision with root package name */
    private static volatile d f32309b;

    /* renamed from: a  reason: collision with root package name */
    private final Set<f> f32310a = new HashSet();

    d() {
    }

    public static d b() {
        d dVar = f32309b;
        d dVar2 = dVar;
        if (dVar == null) {
            synchronized (d.class) {
                try {
                    d dVar3 = f32309b;
                    dVar2 = dVar3;
                    if (dVar3 == null) {
                        dVar2 = new d();
                        f32309b = dVar2;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return dVar2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Set<f> a() {
        Set<f> unmodifiableSet;
        synchronized (this.f32310a) {
            unmodifiableSet = Collections.unmodifiableSet(this.f32310a);
        }
        return unmodifiableSet;
    }
}
