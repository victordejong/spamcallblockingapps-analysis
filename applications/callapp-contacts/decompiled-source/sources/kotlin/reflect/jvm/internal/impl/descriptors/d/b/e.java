package kotlin.reflect.jvm.internal.impl.descriptors.d.b;

import java.lang.annotation.Annotation;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.load.java.d.a;
import kotlin.reflect.jvm.internal.impl.load.java.d.c;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/d/b/e.class */
public final class e extends d implements c {

    /* renamed from: b  reason: collision with root package name */
    private final Annotation f37462b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e(kotlin.reflect.jvm.internal.impl.c.e eVar, Annotation annotation) {
        super(eVar);
        p.d(annotation, "annotation");
        this.f37462b = annotation;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.d.c
    public final a b() {
        return new c(this.f37462b);
    }
}
