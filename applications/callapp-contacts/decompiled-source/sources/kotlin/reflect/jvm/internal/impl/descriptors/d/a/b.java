package kotlin.reflect.jvm.internal.impl.descriptors.d.a;

import java.lang.annotation.Annotation;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.descriptors.at;
import kotlin.reflect.jvm.internal.impl.descriptors.au;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/d/a/b.class */
public final class b implements at {

    /* renamed from: b  reason: collision with root package name */
    public final Annotation f37433b;

    public b(Annotation annotation) {
        p.d(annotation, "annotation");
        this.f37433b = annotation;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.at
    public final au a() {
        au NO_SOURCE_FILE = au.f37402a;
        p.b(NO_SOURCE_FILE, "NO_SOURCE_FILE");
        return NO_SOURCE_FILE;
    }
}
