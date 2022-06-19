package com.criteo.publisher.p247g;

import kotlin.C18399h;
import kotlin.Lazy;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.C18524p;
/* renamed from: com.criteo.publisher.g.a */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/g/a.class */
public final class C8335a<T> {

    /* renamed from: a */
    private final Lazy f29976a;

    /* renamed from: b */
    private final String f29977b;

    public C8335a(String str, Function0<? extends T> supplier) {
        C18524p.m3841c(supplier, "supplier");
        this.f29977b = str;
        this.f29976a = C18399h.m3897a(supplier);
    }

    /* renamed from: a */
    public final T m25829a() {
        return (T) this.f29976a.mo1102a();
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0028, code lost:
        if (r0 == null) goto L6;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String toString() {
        /*
            r4 = this;
            r0 = r4
            java.lang.String r0 = r0.f29977b
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L2b
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            java.lang.String r2 = "LazyDependency("
            r1.<init>(r2)
            r6 = r0
            r0 = r6
            r1 = r5
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r6
            r1 = 41
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r6
            java.lang.String r0 = r0.toString()
            r5 = r0
            r0 = r5
            r6 = r0
            r0 = r5
            if (r0 != 0) goto L30
        L2b:
            r0 = r4
            java.lang.String r0 = super.toString()
            r6 = r0
        L30:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.criteo.publisher.p247g.C8335a.toString():java.lang.String");
    }
}
