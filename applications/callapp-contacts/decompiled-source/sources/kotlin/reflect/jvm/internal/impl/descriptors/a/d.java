package kotlin.reflect.jvm.internal.impl.descriptors.a;

import com.appsflyer.internal.referrer.Payload;
import java.util.Map;
import kotlin.reflect.jvm.internal.impl.c.b;
import kotlin.reflect.jvm.internal.impl.c.e;
import kotlin.reflect.jvm.internal.impl.descriptors.a.c;
import kotlin.reflect.jvm.internal.impl.descriptors.at;
import kotlin.reflect.jvm.internal.impl.resolve.constants.g;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/a/d.class */
public final class d implements c {

    /* renamed from: a  reason: collision with root package name */
    private final KotlinType f37353a;

    /* renamed from: b  reason: collision with root package name */
    private final Map<e, g<?>> f37354b;

    /* renamed from: c  reason: collision with root package name */
    private final at f37355c;

    public d(KotlinType kotlinType, Map<e, g<?>> map, at atVar) {
        if (kotlinType == null) {
            a(0);
        }
        if (map == null) {
            a(1);
        }
        if (atVar == null) {
            a(2);
        }
        this.f37353a = kotlinType;
        this.f37354b = map;
        this.f37355c = atVar;
    }

    private static /* synthetic */ void a(int i) {
        String str = (i == 3 || i == 4 || i == 5) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(i == 3 || i == 4 || i == 5) ? 2 : 3];
        if (i == 1) {
            objArr[0] = "valueArguments";
        } else if (i == 2) {
            objArr[0] = Payload.SOURCE;
        } else if (i == 3 || i == 4 || i == 5) {
            objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationDescriptorImpl";
        } else {
            objArr[0] = "annotationType";
        }
        if (i == 3) {
            objArr[1] = "getType";
        } else if (i == 4) {
            objArr[1] = "getAllValueArguments";
        } else if (i != 5) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationDescriptorImpl";
        } else {
            objArr[1] = "getSource";
        }
        if (!(i == 3 || i == 4 || i == 5)) {
            objArr[2] = "<init>";
        }
        String format = String.format(str, objArr);
        throw ((i == 3 || i == 4 || i == 5) ? new IllegalStateException(format) : new IllegalArgumentException(format));
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a.c
    public final KotlinType a() {
        KotlinType kotlinType = this.f37353a;
        if (kotlinType == null) {
            a(3);
        }
        return kotlinType;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a.c
    public final b b() {
        return c.a.a(this);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a.c
    public final Map<e, g<?>> c() {
        Map<e, g<?>> map = this.f37354b;
        if (map == null) {
            a(4);
        }
        return map;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a.c
    public final at d() {
        at atVar = this.f37355c;
        if (atVar == null) {
            a(5);
        }
        return atVar;
    }

    public final String toString() {
        return kotlin.reflect.jvm.internal.impl.e.c.g.a(this, (e) null);
    }
}
