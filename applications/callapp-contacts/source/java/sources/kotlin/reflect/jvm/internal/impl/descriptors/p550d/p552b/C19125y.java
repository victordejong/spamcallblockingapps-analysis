package kotlin.reflect.jvm.internal.impl.descriptors.p550d.p552b;

import java.lang.annotation.Annotation;
import java.util.Collection;
import kotlin.jvm.internal.C18524p;
import kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19389a;
import kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19414w;
import kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19417z;
import kotlin.reflect.jvm.internal.impl.p545c.C18961b;
import kotlin.reflect.jvm.internal.impl.p545c.C18966e;
/* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.d.b.y */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/d/b/y.class */
public final class C19125y extends AbstractC19112n implements AbstractC19417z {

    /* renamed from: a */
    private final AbstractC19122w f64849a;

    /* renamed from: b */
    private final Annotation[] f64850b;

    /* renamed from: c */
    private final String f64851c;

    /* renamed from: d */
    private final boolean f64852d;

    public C19125y(AbstractC19122w type, Annotation[] reflectAnnotations, String str, boolean z) {
        C18524p.m3840d(type, "type");
        C18524p.m3840d(reflectAnnotations, "reflectAnnotations");
        this.f64849a = type;
        this.f64850b = reflectAnnotations;
        this.f64851c = str;
        this.f64852d = z;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19395d
    /* renamed from: a */
    public final /* synthetic */ AbstractC19389a mo2221a(C18961b fqName) {
        C18524p.m3840d(fqName, "fqName");
        return C19097g.m2647a(this.f64850b, fqName);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19417z
    /* renamed from: a */
    public final boolean mo2176a() {
        return this.f64852d;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19395d
    /* renamed from: b */
    public final /* synthetic */ Collection mo2220b() {
        return C19097g.m2648a(this.f64850b);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19395d
    /* renamed from: c */
    public final boolean mo2219c() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19417z
    /* renamed from: d */
    public final C18966e mo2175d() {
        String str = this.f64851c;
        if (str == null) {
            return null;
        }
        return C18966e.m2714d(str);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19417z
    /* renamed from: e */
    public final /* bridge */ /* synthetic */ AbstractC19414w mo2174e() {
        return this.f64849a;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getName());
        sb.append(": ");
        sb.append(this.f64852d ? "vararg " : "");
        sb.append(mo2175d());
        sb.append(": ");
        sb.append(this.f64849a);
        return sb.toString();
    }
}
