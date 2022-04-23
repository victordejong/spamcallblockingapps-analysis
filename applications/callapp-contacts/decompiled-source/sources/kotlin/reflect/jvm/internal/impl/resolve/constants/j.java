package kotlin.reflect.jvm.internal.impl.resolve.constants;

import kotlin.jvm.internal.p;
import kotlin.n;
import kotlin.reflect.jvm.internal.impl.c.a;
import kotlin.reflect.jvm.internal.impl.c.e;
import kotlin.reflect.jvm.internal.impl.descriptors.ab;
import kotlin.reflect.jvm.internal.impl.descriptors.d;
import kotlin.reflect.jvm.internal.impl.descriptors.v;
import kotlin.reflect.jvm.internal.impl.types.ErrorUtils;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.t;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/constants/j.class */
public final class j extends g<n<? extends a, ? extends e>> {

    /* renamed from: a  reason: collision with root package name */
    public final e f38255a;

    /* renamed from: b  reason: collision with root package name */
    private final a f38256b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public j(a enumClassId, e enumEntryName) {
        super(t.a(enumClassId, enumEntryName));
        p.d(enumClassId, "enumClassId");
        p.d(enumEntryName, "enumEntryName");
        this.f38256b = enumClassId;
        this.f38255a = enumEntryName;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.constants.g
    public final KotlinType a(ab module) {
        SimpleType simpleType;
        p.d(module, "module");
        d b2 = v.b(module, this.f38256b);
        if (b2 == null) {
            simpleType = null;
        } else {
            if (!kotlin.reflect.jvm.internal.impl.resolve.d.j(b2)) {
                b2 = null;
            }
            simpleType = b2 == null ? null : b2.getDefaultType();
        }
        if (simpleType != null) {
            return simpleType;
        }
        SimpleType createErrorType = ErrorUtils.createErrorType("Containing class for error-class based enum entry " + this.f38256b + '.' + this.f38255a);
        p.b(createErrorType, "createErrorType(\"Containing class for error-class based enum entry $enumClassId.$enumEntryName\")");
        return createErrorType;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.constants.g
    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f38256b.c());
        sb.append('.');
        sb.append(this.f38255a);
        return sb.toString();
    }
}
