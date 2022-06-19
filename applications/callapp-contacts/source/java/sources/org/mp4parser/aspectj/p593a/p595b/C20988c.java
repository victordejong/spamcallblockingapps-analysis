package org.mp4parser.aspectj.p593a.p595b;

import org.mp4parser.aspectj.lang.AbstractC20997a;
import org.mp4parser.aspectj.lang.AbstractC20999b;
import org.mp4parser.aspectj.lang.AbstractC21000c;
import org.mp4parser.aspectj.lang.reflect.AbstractC21004d;
/* renamed from: org.mp4parser.aspectj.a.b.c */
/* loaded from: classes5-dex2jar.jar:org/mp4parser/aspectj/a/b/c.class */
public final class C20988c implements AbstractC20999b {

    /* renamed from: a */
    Object f67556a;

    /* renamed from: b */
    Object f67557b;

    /* renamed from: c */
    Object[] f67558c;

    /* renamed from: d */
    AbstractC20997a.AbstractC20998a f67559d;

    /* renamed from: org.mp4parser.aspectj.a.b.c$a */
    /* loaded from: classes5-dex2jar.jar:org/mp4parser/aspectj/a/b/c$a.class */
    public static final class C20989a implements AbstractC20997a.AbstractC20998a {

        /* renamed from: a */
        String f67560a;

        /* renamed from: b */
        AbstractC21000c f67561b;

        /* renamed from: c */
        AbstractC21004d f67562c;

        /* renamed from: d */
        private int f67563d;

        public C20989a(int i, String str, AbstractC21000c abstractC21000c, AbstractC21004d abstractC21004d) {
            this.f67560a = str;
            this.f67561b = abstractC21000c;
            this.f67562c = abstractC21004d;
            this.f67563d = i;
        }

        @Override // org.mp4parser.aspectj.lang.AbstractC20997a.AbstractC20998a
        public final String toString() {
            C20996h c20996h = C20996h.f67580k;
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append(C20996h.m148a(this.f67560a));
            stringBuffer.append("(");
            stringBuffer.append(((AbstractC20992f) this.f67561b).m156b(c20996h));
            stringBuffer.append(")");
            return stringBuffer.toString();
        }
    }

    public C20988c(AbstractC20997a.AbstractC20998a abstractC20998a, Object obj, Object obj2, Object[] objArr) {
        this.f67559d = abstractC20998a;
        this.f67556a = obj;
        this.f67557b = obj2;
        this.f67558c = objArr;
    }

    @Override // org.mp4parser.aspectj.lang.AbstractC20997a
    /* renamed from: a */
    public final Object mo145a() {
        return this.f67557b;
    }

    public final String toString() {
        return this.f67559d.toString();
    }
}
