package kotlin.reflect.jvm.internal.impl.serialization;

import java.util.List;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.b.a;
import kotlin.reflect.jvm.internal.impl.protobuf.f;
import kotlin.reflect.jvm.internal.impl.protobuf.h;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/a.class */
public class a {

    /* renamed from: a  reason: collision with root package name */
    public final f f38322a;

    /* renamed from: b  reason: collision with root package name */
    public final h.e<a.c, List<a.C0625a>> f38323b;

    /* renamed from: c  reason: collision with root package name */
    public final h.e<a.b, List<a.C0625a>> f38324c;

    /* renamed from: d  reason: collision with root package name */
    public final h.e<a.h, List<a.C0625a>> f38325d;
    public final h.e<a.m, List<a.C0625a>> e;
    public final h.e<a.m, List<a.C0625a>> f;
    public final h.e<a.m, List<a.C0625a>> g;
    public final h.e<a.f, List<a.C0625a>> h;
    public final h.e<a.m, a.C0625a.C0627a.b> i;
    public final h.e<a.t, List<a.C0625a>> j;
    public final h.e<a.p, List<a.C0625a>> k;
    public final h.e<a.r, List<a.C0625a>> l;
    private final h.e<a.k, Integer> m;

    public a(f extensionRegistry, h.e<a.k, Integer> packageFqName, h.e<a.c, List<a.C0625a>> constructorAnnotation, h.e<a.b, List<a.C0625a>> classAnnotation, h.e<a.h, List<a.C0625a>> functionAnnotation, h.e<a.m, List<a.C0625a>> propertyAnnotation, h.e<a.m, List<a.C0625a>> propertyGetterAnnotation, h.e<a.m, List<a.C0625a>> propertySetterAnnotation, h.e<a.f, List<a.C0625a>> enumEntryAnnotation, h.e<a.m, a.C0625a.C0627a.b> compileTimeValue, h.e<a.t, List<a.C0625a>> parameterAnnotation, h.e<a.p, List<a.C0625a>> typeAnnotation, h.e<a.r, List<a.C0625a>> typeParameterAnnotation) {
        p.d(extensionRegistry, "extensionRegistry");
        p.d(packageFqName, "packageFqName");
        p.d(constructorAnnotation, "constructorAnnotation");
        p.d(classAnnotation, "classAnnotation");
        p.d(functionAnnotation, "functionAnnotation");
        p.d(propertyAnnotation, "propertyAnnotation");
        p.d(propertyGetterAnnotation, "propertyGetterAnnotation");
        p.d(propertySetterAnnotation, "propertySetterAnnotation");
        p.d(enumEntryAnnotation, "enumEntryAnnotation");
        p.d(compileTimeValue, "compileTimeValue");
        p.d(parameterAnnotation, "parameterAnnotation");
        p.d(typeAnnotation, "typeAnnotation");
        p.d(typeParameterAnnotation, "typeParameterAnnotation");
        this.f38322a = extensionRegistry;
        this.m = packageFqName;
        this.f38323b = constructorAnnotation;
        this.f38324c = classAnnotation;
        this.f38325d = functionAnnotation;
        this.e = propertyAnnotation;
        this.f = propertyGetterAnnotation;
        this.g = propertySetterAnnotation;
        this.h = enumEntryAnnotation;
        this.i = compileTimeValue;
        this.j = parameterAnnotation;
        this.k = typeAnnotation;
        this.l = typeParameterAnnotation;
    }
}
