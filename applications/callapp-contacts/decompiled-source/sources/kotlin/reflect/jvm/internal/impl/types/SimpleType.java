package kotlin.reflect.jvm.internal.impl.types;

import java.util.Iterator;
import kotlin.a.n;
import kotlin.h.p;
import kotlin.reflect.jvm.internal.impl.descriptors.a.c;
import kotlin.reflect.jvm.internal.impl.descriptors.a.g;
import kotlin.reflect.jvm.internal.impl.types.model.SimpleTypeMarker;
import kotlin.reflect.jvm.internal.impl.types.model.TypeArgumentListMarker;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/SimpleType.class */
public abstract class SimpleType extends UnwrappedType implements SimpleTypeMarker, TypeArgumentListMarker {
    public SimpleType() {
        super(null);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.UnwrappedType
    public abstract SimpleType makeNullableAsSpecified(boolean z);

    @Override // kotlin.reflect.jvm.internal.impl.types.UnwrappedType
    public abstract SimpleType replaceAnnotations(g gVar);

    public String toString() {
        StringBuilder sb = new StringBuilder();
        Iterator<c> it2 = getAnnotations().iterator();
        while (it2.hasNext()) {
            p.a(sb, "[", kotlin.reflect.jvm.internal.impl.e.c.a(kotlin.reflect.jvm.internal.impl.e.c.j, it2.next()), "] ");
        }
        sb.append(getConstructor());
        if (!getArguments().isEmpty()) {
            n.a(getArguments(), sb, ", ", "<", ">", 0, null, null, 112);
        }
        if (isMarkedNullable()) {
            sb.append("?");
        }
        String sb2 = sb.toString();
        kotlin.jvm.internal.p.b(sb2, "StringBuilder().apply(builderAction).toString()");
        return sb2;
    }
}
