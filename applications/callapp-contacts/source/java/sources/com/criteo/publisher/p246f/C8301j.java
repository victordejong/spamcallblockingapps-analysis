package com.criteo.publisher.p246f;

import com.criteo.publisher.logging.C8402g;
import com.criteo.publisher.logging.C8404h;
import com.criteo.publisher.p256m0.C8444o;
import com.squareup.tape.AbstractC17157c;
import com.squareup.tape.C17153a;
import com.squareup.tape.C17158d;
import com.squareup.tape.FileException;
import java.io.File;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
/* renamed from: com.criteo.publisher.f.j */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/f/j.class */
public class C8301j<T> implements AbstractC8310p<T> {

    /* renamed from: c */
    private AbstractC17157c<T> f29917c;

    /* renamed from: f */
    private final C8290ae<T> f29920f;

    /* renamed from: g */
    private final AbstractC8292b<T> f29921g;

    /* renamed from: a */
    private final C8402g f29915a = C8404h.m25741a(C8301j.class);

    /* renamed from: b */
    private final Object f29916b = new Object();

    /* renamed from: d */
    private Method f29918d = null;

    /* renamed from: e */
    private C17158d f29919e = null;

    public C8301j(C8290ae<T> c8290ae, AbstractC8292b<T> abstractC8292b) {
        this.f29920f = c8290ae;
        this.f29921g = abstractC8292b;
    }

    /* renamed from: b */
    private AbstractC17157c<T> m25907b() {
        if (this.f29917c == null) {
            C8290ae<T> c8290ae = this.f29920f;
            this.f29917c = c8290ae.m25918a(new File(c8290ae.f29885a.getFilesDir(), c8290ae.f29886b.mo25718b()));
        }
        return this.f29917c;
    }

    @Override // com.criteo.publisher.p246f.AbstractC8310p
    /* renamed from: a */
    public final int mo25722a() {
        synchronized (this.f29916b) {
            AbstractC17157c<T> m25907b = m25907b();
            if (m25907b instanceof C17153a) {
                try {
                    if (this.f29918d == null) {
                        Method declaredMethod = C17158d.class.getDeclaredMethod("usedBytes", new Class[0]);
                        this.f29918d = declaredMethod;
                        declaredMethod.setAccessible(true);
                    }
                    Method method = this.f29918d;
                    C17153a c17153a = (C17153a) m25907b;
                    if (this.f29919e == null) {
                        Field declaredField = C17153a.class.getDeclaredField("a");
                        declaredField.setAccessible(true);
                        this.f29919e = (C17158d) declaredField.get(c17153a);
                    }
                    return ((Integer) method.invoke(this.f29919e, new Object[0])).intValue();
                } catch (Exception e) {
                    C8444o.m25675a((Throwable) e);
                }
            }
            return m25907b.mo5858a() * this.f29921g.mo25716d();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0033, code lost:
        r10 = r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x003d, code lost:
        if (r0.mo5858a() <= 0) goto L47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0040, code lost:
        r0.mo5855c();
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0048, code lost:
        r10 = r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x004d, code lost:
        r10 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0051, code lost:
        if (r8 != null) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0057, code lost:
        r8.addSuppressed(r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0060, code lost:
        r10 = r8;
     */
    @Override // com.criteo.publisher.p246f.AbstractC8310p
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<T> mo25721a(int r4) {
        /*
            Method dump skipped, instructions count: 311
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.criteo.publisher.p246f.C8301j.mo25721a(int):java.util.List");
    }

    @Override // com.criteo.publisher.p246f.AbstractC8310p
    /* renamed from: a */
    public final boolean mo25720a(T t) {
        synchronized (this.f29916b) {
            try {
                m25907b().mo5857a(t);
            } catch (FileException e) {
                C8444o.m25675a((Throwable) e);
                return false;
            }
        }
        return true;
    }
}
