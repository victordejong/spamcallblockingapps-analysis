package kotlin.reflect.jvm.internal.impl.descriptors.p550d.p552b;

import java.lang.annotation.Annotation;
import kotlin.jvm.internal.C18524p;
import kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19389a;
import kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19394c;
import kotlin.reflect.jvm.internal.impl.p545c.C18966e;
/* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.d.b.e */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/d/b/e.class */
public final class C19094e extends AbstractC19092d implements AbstractC19394c {

    /* renamed from: b */
    private final Annotation f64820b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C19094e(C18966e c18966e, Annotation annotation) {
        super(c18966e);
        C18524p.m3840d(annotation, "annotation");
        this.f64820b = annotation;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19394c
    /* renamed from: b */
    public final AbstractC19389a mo2222b() {
        return new C19091c(this.f64820b);
    }
}
