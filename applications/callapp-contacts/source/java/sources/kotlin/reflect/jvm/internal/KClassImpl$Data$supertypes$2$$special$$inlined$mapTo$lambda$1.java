package kotlin.reflect.jvm.internal;

import java.lang.reflect.Type;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18273i;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19129g;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0010\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010��\n\u0002\b\u0002\u0010��\u001a\u00020\u0001\"\b\b��\u0010\u0002*\u00020\u0003H\n¢\u0006\u0002\b\u0004¨\u0006\u0005"}, m4298d2 = {"<anonymous>", "Ljava/lang/reflect/Type;", "T", "", "invoke", "kotlin/reflect/jvm/internal/KClassImpl$Data$supertypes$2$1$1"}, m4297k = 3, m4296mv = {1, 4, 1})
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/KClassImpl$Data$supertypes$2$$special$$inlined$mapTo$lambda$1.class */
public final class KClassImpl$Data$supertypes$2$$special$$inlined$mapTo$lambda$1 extends AbstractC18526r implements Function0<Type> {
    final /* synthetic */ KotlinType $kotlinType;
    final /* synthetic */ KClassImpl$Data$supertypes$2 this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public KClassImpl$Data$supertypes$2$$special$$inlined$mapTo$lambda$1(KotlinType kotlinType, KClassImpl$Data$supertypes$2 kClassImpl$Data$supertypes$2) {
        super(0);
        this.$kotlinType = kotlinType;
        this.this$0 = kClassImpl$Data$supertypes$2;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Type invoke() {
        AbstractC19129g declarationDescriptor = this.$kotlinType.getConstructor().getDeclarationDescriptor();
        if (declarationDescriptor instanceof AbstractC19070d) {
            Class<?> m3758a = C18635aj.m3758a((AbstractC19070d) declarationDescriptor);
            if (m3758a == null) {
                throw new C18620ab("Unsupported superclass of " + this.this$0.this$0 + ": " + declarationDescriptor);
            } else if (C18524p.m3850a(C18670h.this.f63763b.getSuperclass(), m3758a)) {
                Type genericSuperclass = C18670h.this.f63763b.getGenericSuperclass();
                C18524p.m3843b(genericSuperclass, "jClass.genericSuperclass");
                return genericSuperclass;
            } else {
                Class<?>[] interfaces = C18670h.this.f63763b.getInterfaces();
                C18524p.m3843b(interfaces, "jClass.interfaces");
                int b = C18273i.m4192b(interfaces, m3758a);
                if (b >= 0) {
                    Type type = C18670h.this.f63763b.getGenericInterfaces()[b];
                    C18524p.m3843b(type, "jClass.genericInterfaces[index]");
                    return type;
                }
                throw new C18620ab("No superclass of " + this.this$0.this$0 + " in Java reflection for " + declarationDescriptor);
            }
        }
        throw new C18620ab("Supertype not a class: ".concat(String.valueOf(declarationDescriptor)));
    }
}
