package com.google.gson.a;

import com.google.gson.annotations.Since;
import com.google.gson.annotations.Until;
import com.google.gson.b;
import com.google.gson.b.a;
import com.google.gson.c.c;
import com.google.gson.f;
import com.google.gson.x;
import com.google.gson.y;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/gson/a/d.class */
public final class d implements y, Cloneable {

    /* renamed from: a  reason: collision with root package name */
    public static final d f4509a = new d();
    public boolean e;

    /* renamed from: b  reason: collision with root package name */
    public double f4510b = -1.0d;
    public int c = 136;
    public boolean d = true;
    public List<b> f = Collections.emptyList();
    public List<b> g = Collections.emptyList();

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public d clone() {
        try {
            return (d) super.clone();
        } catch (CloneNotSupportedException e) {
            throw new AssertionError();
        }
    }

    public static boolean a(Class<?> cls) {
        return !Enum.class.isAssignableFrom(cls) && (cls.isAnonymousClass() || cls.isLocalClass());
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x0016, code lost:
        if (((r3.getModifiers() & 8) != 0) == false) goto L_0x0019;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean b(java.lang.Class<?> r3) {
        /*
            r0 = 1
            r4 = r0
            r0 = r3
            boolean r0 = r0.isMemberClass()
            if (r0 == 0) goto L_0x0020
            r0 = r3
            int r0 = r0.getModifiers()
            r1 = 8
            r0 = r0 & r1
            if (r0 == 0) goto L_0x001b
            r0 = 1
            r5 = r0
        L_0x0015:
            r0 = r5
            if (r0 != 0) goto L_0x0020
        L_0x0019:
            r0 = r4
            return r0
        L_0x001b:
            r0 = 0
            r5 = r0
            goto L_0x0015
        L_0x0020:
            r0 = 0
            r4 = r0
            goto L_0x0019
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.gson.a.d.b(java.lang.Class):boolean");
    }

    @Override // com.google.gson.y
    public final <T> x<T> a(final f fVar, final a<T> aVar) {
        Class<? super T> cls = aVar.f4531a;
        final boolean a2 = a((Class<?>) cls, true);
        final boolean a3 = a((Class<?>) cls, false);
        return (a2 || a3) ? new x<T>() { // from class: com.google.gson.a.d.1
            private x<T> f;

            /* JADX WARN: Multi-variable type inference failed */
            private x<T> a() {
                x xVar = this.f;
                x xVar2 = xVar;
                if (xVar == null) {
                    x a4 = fVar.a(d.this, aVar);
                    this.f = a4;
                    xVar2 = a4;
                }
                return xVar2;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.gson.x
            public final T a(com.google.gson.c.a aVar2) {
                T t;
                if (a3) {
                    aVar2.o();
                    t = 0;
                } else {
                    t = a().a(aVar2);
                }
                return t;
            }

            @Override // com.google.gson.x
            public final void a(c cVar, T t) {
                if (a2) {
                    cVar.e();
                } else {
                    a().a(cVar, t);
                }
            }
        } : null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0033, code lost:
        if ((r7 == null || r7.value() > r5.f4510b) != false) goto L_0x0036;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean a(com.google.gson.annotations.Since r6, com.google.gson.annotations.Until r7) {
        /*
            r5 = this;
            r0 = 1
            r8 = r0
            r0 = r6
            if (r0 == 0) goto L_0x0038
            r0 = r6
            double r0 = r0.value()
            r1 = r5
            double r1 = r1.f4510b
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x0038
            r0 = 0
            r9 = r0
        L_0x0017:
            r0 = r9
            if (r0 == 0) goto L_0x0044
            r0 = r7
            if (r0 == 0) goto L_0x003e
            r0 = r7
            double r0 = r0.value()
            r1 = r5
            double r1 = r1.f4510b
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 > 0) goto L_0x003e
            r0 = 0
            r9 = r0
        L_0x0031:
            r0 = r9
            if (r0 == 0) goto L_0x0044
        L_0x0036:
            r0 = r8
            return r0
        L_0x0038:
            r0 = 1
            r9 = r0
            goto L_0x0017
        L_0x003e:
            r0 = 1
            r9 = r0
            goto L_0x0031
        L_0x0044:
            r0 = 0
            r8 = r0
            goto L_0x0036
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.gson.a.d.a(com.google.gson.annotations.Since, com.google.gson.annotations.Until):boolean");
    }

    public final boolean a(Class<?> cls, boolean z) {
        boolean z2;
        if (this.f4510b != -1.0d && !a((Since) cls.getAnnotation(Since.class), (Until) cls.getAnnotation(Until.class))) {
            z2 = true;
        } else if (this.d || !b(cls)) {
            if (!a(cls)) {
                Iterator<b> it = (z ? this.f : this.g).iterator();
                while (true) {
                    if (it.hasNext()) {
                        if (it.next().b()) {
                            z2 = true;
                            break;
                        }
                    } else {
                        z2 = false;
                        break;
                    }
                }
            } else {
                z2 = true;
            }
        } else {
            z2 = true;
        }
        return z2;
    }
}
