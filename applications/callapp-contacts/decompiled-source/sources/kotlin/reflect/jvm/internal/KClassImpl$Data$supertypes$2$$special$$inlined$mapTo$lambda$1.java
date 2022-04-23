package kotlin.reflect.jvm.internal;

import java.lang.reflect.Type;
import kotlin.Metadata;
import kotlin.a.i;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.p;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.descriptors.d;
import kotlin.reflect.jvm.internal.impl.descriptors.g;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010��\n\u0002\b\u0002\u0010��\u001a\u00020\u0001\"\b\b��\u0010\u0002*\u00020\u0003H\n¢\u0006\u0002\b\u0004¨\u0006\u0005"}, d2 = {"<anonymous>", "Ljava/lang/reflect/Type;", "T", "", "invoke", "kotlin/reflect/jvm/internal/KClassImpl$Data$supertypes$2$1$1"}, k = 3, mv = {1, 4, 1})
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/KClassImpl$Data$supertypes$2$$special$$inlined$mapTo$lambda$1.class */
public final class KClassImpl$Data$supertypes$2$$special$$inlined$mapTo$lambda$1 extends r implements Function0<Type> {
    final /* synthetic */ KotlinType $kotlinType;
    final /* synthetic */ KClassImpl$Data$supertypes$2 this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public KClassImpl$Data$supertypes$2$$special$$inlined$mapTo$lambda$1(KotlinType kotlinType, KClassImpl$Data$supertypes$2 kClassImpl$Data$supertypes$2) {
        super(0);
        this.$kotlinType = kotlinType;
        this.this$0 = kClassImpl$Data$supertypes$2;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Type invoke() {
        g declarationDescriptor = this.$kotlinType.getConstructor().getDeclarationDescriptor();
        if (declarationDescriptor instanceof d) {
            Class<?> a2 = aj.a((d) declarationDescriptor);
            if (a2 == null) {
                throw new ab("Unsupported superclass of " + this.this$0.this$0 + ": " + declarationDescriptor);
            } else if (p.a(h.this.f36937b.getSuperclass(), a2)) {
                Type genericSuperclass = h.this.f36937b.getGenericSuperclass();
                p.b(genericSuperclass, "jClass.genericSuperclass");
                return genericSuperclass;
            } else {
                Class<?>[] interfaces = h.this.f36937b.getInterfaces();
                p.b(interfaces, "jClass.interfaces");
                int b2 = i.b(interfaces, a2);
                if (b2 >= 0) {
                    Type type = h.this.f36937b.getGenericInterfaces()[b2];
                    p.b(type, "jClass.genericInterfaces[index]");
                    return type;
                }
                throw new ab("No superclass of " + this.this$0.this$0 + " in Java reflection for " + declarationDescriptor);
            }
        } else {
            throw new ab("Supertype not a class: ".concat(String.valueOf(declarationDescriptor)));
        }
    }
}
