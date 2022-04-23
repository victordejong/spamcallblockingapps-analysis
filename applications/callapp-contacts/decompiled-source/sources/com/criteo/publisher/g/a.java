package com.criteo.publisher.g;

import kotlin.Lazy;
import kotlin.h;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.p;
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/g/a.class */
public final class a<T> {

    /* renamed from: a  reason: collision with root package name */
    private final Lazy f17332a;

    /* renamed from: b  reason: collision with root package name */
    private final String f17333b;

    public a(String str, Function0<? extends T> supplier) {
        p.c(supplier, "supplier");
        this.f17333b = str;
        this.f17332a = h.a(supplier);
    }

    public final T a() {
        return (T) this.f17332a.a();
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0028, code lost:
        if (r0 == null) goto L_0x002b;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String toString() {
        /*
            r4 = this;
            r0 = r4
            java.lang.String r0 = r0.f17333b
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L_0x002b
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
            if (r0 != 0) goto L_0x0030
        L_0x002b:
            r0 = r4
            java.lang.String r0 = super.toString()
            r6 = r0
        L_0x0030:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.criteo.publisher.g.a.toString():java.lang.String");
    }
}
