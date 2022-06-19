package kotlin.reflect.jvm.internal.impl.resolve.constants;

import kotlin.C18538n;
import kotlin.C20126t;
import kotlin.jvm.internal.C18524p;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC18999ab;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d;
import kotlin.reflect.jvm.internal.impl.descriptors.C19216v;
import kotlin.reflect.jvm.internal.impl.p545c.C18960a;
import kotlin.reflect.jvm.internal.impl.p545c.C18966e;
import kotlin.reflect.jvm.internal.impl.resolve.C19807d;
import kotlin.reflect.jvm.internal.impl.types.ErrorUtils;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
/* renamed from: kotlin.reflect.jvm.internal.impl.resolve.constants.j */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/constants/j.class */
public final class C19786j extends AbstractC19781g<C18538n<? extends C18960a, ? extends C18966e>> {

    /* renamed from: a */
    public final C18966e f65970a;

    /* renamed from: b */
    private final C18960a f65971b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C19786j(C18960a enumClassId, C18966e enumEntryName) {
        super(C20126t.m1103a(enumClassId, enumEntryName));
        C18524p.m3840d(enumClassId, "enumClassId");
        C18524p.m3840d(enumEntryName, "enumEntryName");
        this.f65971b = enumClassId;
        this.f65970a = enumEntryName;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.constants.AbstractC19781g
    /* renamed from: a */
    public final KotlinType mo1485a(AbstractC18999ab module) {
        SimpleType simpleType;
        C18524p.m3840d(module, "module");
        AbstractC19070d m2497b = C19216v.m2497b(module, this.f65971b);
        if (m2497b == null) {
            simpleType = null;
        } else {
            if (!C19807d.m1456j(m2497b)) {
                m2497b = null;
            }
            simpleType = m2497b == null ? null : m2497b.getDefaultType();
        }
        if (simpleType == null) {
            SimpleType createErrorType = ErrorUtils.createErrorType("Containing class for error-class based enum entry " + this.f65971b + '.' + this.f65970a);
            C18524p.m3843b(createErrorType, "createErrorType(\"Containing class for error-class based enum entry $enumClassId.$enumEntryName\")");
            return createErrorType;
        }
        return simpleType;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.constants.AbstractC19781g
    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f65971b.m2751c());
        sb.append('.');
        sb.append(this.f65970a);
        return sb.toString();
    }
}
