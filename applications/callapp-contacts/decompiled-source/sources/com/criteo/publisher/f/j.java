package com.criteo.publisher.f;

import com.criteo.publisher.logging.g;
import com.criteo.publisher.logging.h;
import com.criteo.publisher.m0.o;
import com.squareup.tape.FileException;
import com.squareup.tape.a;
import com.squareup.tape.c;
import com.squareup.tape.d;
import java.io.File;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/f/j.class */
public class j<T> implements p<T> {

    /* renamed from: c  reason: collision with root package name */
    private c<T> f17280c;
    private final ae<T> f;
    private final b<T> g;

    /* renamed from: a  reason: collision with root package name */
    private final g f17278a = h.a(j.class);

    /* renamed from: b  reason: collision with root package name */
    private final Object f17279b = new Object();

    /* renamed from: d  reason: collision with root package name */
    private Method f17281d = null;
    private d e = null;

    /* JADX INFO: Access modifiers changed from: package-private */
    public j(ae<T> aeVar, b<T> bVar) {
        this.f = aeVar;
        this.g = bVar;
    }

    private c<T> b() {
        if (this.f17280c == null) {
            ae<T> aeVar = this.f;
            this.f17280c = aeVar.a(new File(aeVar.f17252a.getFilesDir(), aeVar.f17253b.b()));
        }
        return this.f17280c;
    }

    @Override // com.criteo.publisher.f.p
    public final int a() {
        synchronized (this.f17279b) {
            c<T> b2 = b();
            if (b2 instanceof a) {
                try {
                    if (this.f17281d == null) {
                        Method declaredMethod = d.class.getDeclaredMethod("usedBytes", new Class[0]);
                        this.f17281d = declaredMethod;
                        declaredMethod.setAccessible(true);
                    }
                    Method method = this.f17281d;
                    a aVar = (a) b2;
                    if (this.e == null) {
                        Field declaredField = a.class.getDeclaredField("a");
                        declaredField.setAccessible(true);
                        this.e = (d) declaredField.get(aVar);
                    }
                    return ((Integer) method.invoke(this.e, new Object[0])).intValue();
                } catch (Exception e) {
                    o.a((Throwable) e);
                }
            }
            return b2.a() * this.g.d();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0033, code lost:
        r10 = r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x003d, code lost:
        if (r0.a() <= 0) goto L_0x011a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0040, code lost:
        r0.c();
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0048, code lost:
        r10 = r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x004d, code lost:
        r10 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0051, code lost:
        if (r8 != null) goto L_0x0057;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0057, code lost:
        r8.addSuppressed(r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0060, code lost:
        r10 = r8;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r8v1 */
    @Override // com.criteo.publisher.f.p
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<T> a(int r4) {
        /*
            Method dump skipped, instructions count: 311
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.criteo.publisher.f.j.a(int):java.util.List");
    }

    @Override // com.criteo.publisher.f.p
    public final boolean a(T t) {
        synchronized (this.f17279b) {
            try {
                b().a(t);
            } catch (FileException e) {
                o.a((Throwable) e);
                return false;
            }
        }
        return true;
    }
}
