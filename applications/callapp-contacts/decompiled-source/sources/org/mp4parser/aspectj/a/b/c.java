package org.mp4parser.aspectj.a.b;

import org.mp4parser.aspectj.lang.a;
import org.mp4parser.aspectj.lang.b;
import org.mp4parser.aspectj.lang.reflect.d;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5-dex2jar.jar:org/mp4parser/aspectj/a/b/c.class */
public final class c implements b {

    /* renamed from: a  reason: collision with root package name */
    Object f39346a;

    /* renamed from: b  reason: collision with root package name */
    Object f39347b;

    /* renamed from: c  reason: collision with root package name */
    Object[] f39348c;

    /* renamed from: d  reason: collision with root package name */
    a.AbstractC0755a f39349d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5-dex2jar.jar:org/mp4parser/aspectj/a/b/c$a.class */
    public static final class a implements a.AbstractC0755a {

        /* renamed from: a  reason: collision with root package name */
        String f39350a;

        /* renamed from: b  reason: collision with root package name */
        org.mp4parser.aspectj.lang.c f39351b;

        /* renamed from: c  reason: collision with root package name */
        d f39352c;

        /* renamed from: d  reason: collision with root package name */
        private int f39353d;

        public a(int i, String str, org.mp4parser.aspectj.lang.c cVar, d dVar) {
            this.f39350a = str;
            this.f39351b = cVar;
            this.f39352c = dVar;
            this.f39353d = i;
        }

        @Override // org.mp4parser.aspectj.lang.a.AbstractC0755a
        public final String toString() {
            h hVar = h.k;
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append(h.a(this.f39350a));
            stringBuffer.append("(");
            stringBuffer.append(((f) this.f39351b).b(hVar));
            stringBuffer.append(")");
            return stringBuffer.toString();
        }
    }

    public c(a.AbstractC0755a aVar, Object obj, Object obj2, Object[] objArr) {
        this.f39349d = aVar;
        this.f39346a = obj;
        this.f39347b = obj2;
        this.f39348c = objArr;
    }

    @Override // org.mp4parser.aspectj.lang.a
    public final Object a() {
        return this.f39347b;
    }

    public final String toString() {
        return this.f39349d.toString();
    }
}
