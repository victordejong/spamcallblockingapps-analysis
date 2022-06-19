package kotlinx.serialization;

import kotlin.C20128v;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.jvm.internal.C18500ag;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18297z;
import kotlin.reflect.AbstractC18551c;
import kotlinx.serialization.AbstractC20419h;
import kotlinx.serialization.AbstractC20467u;
import kotlinx.serialization.C20444m;
import kotlinx.serialization.p571a.C20333e;
import kotlinx.serialization.p572b.AbstractC20366b;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"�� \n\u0002\u0018\u0002\n��\n\u0002\u0010��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018��*\b\b��\u0010\u0001*\u00020\u00022\b\u0012\u0004\u0012\u0002H\u00010\u0003B\u0013\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028��0\u0005¢\u0006\u0002\u0010\u0006R\u001a\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028��0\u0005X\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\u0007\u0010\bR\u0014\u0010\t\u001a\u00020\nX\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\u000b\u0010\f¨\u0006\r"}, m4298d2 = {"Lkotlinx/serialization/PolymorphicSerializer;", "T", "", "Lkotlinx/serialization/internal/AbstractPolymorphicSerializer;", "baseClass", "Lkotlin/reflect/KClass;", "(Lkotlin/reflect/KClass;)V", "getBaseClass", "()Lkotlin/reflect/KClass;", "descriptor", "Lkotlinx/serialization/SerialDescriptor;", "getDescriptor", "()Lkotlinx/serialization/SerialDescriptor;", "kotlinx-serialization-runtime"}, m4297k = 1, m4296mv = {1, 1, 16})
/* renamed from: kotlinx.serialization.i */
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/i.class */
public final class C20422i<T> extends AbstractC20366b<T> {

    /* renamed from: a */
    final AbstractC18551c<T> f66917a;

    /* renamed from: b */
    private final SerialDescriptor f66918b = C20444m.m674a("kotlinx.serialization.Polymorphic", AbstractC20419h.C20420a.f66915a, new C20423a());

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0012\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010��\n\u0002\u0018\u0002\n��\u0010��\u001a\u00020\u0001\"\b\b��\u0010\u0002*\u00020\u0003*\u00020\u0004H\n¢\u0006\u0002\b\u0005"}, m4298d2 = {"<anonymous>", "", "T", "", "Lkotlinx/serialization/SerialDescriptorBuilder;", "invoke"}, m4297k = 3, m4296mv = {1, 1, 16})
    /* renamed from: kotlinx.serialization.i$a */
    /* loaded from: classes5-dex2jar.jar:kotlinx/serialization/i$a.class */
    public static final class C20423a extends AbstractC18526r implements Function1<C20443l, C20128v> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C20423a() {
            super(1);
            C20422i.this = r4;
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ C20128v invoke(C20443l c20443l) {
            SerialDescriptor m674a;
            C20443l receiver = c20443l;
            C18524p.m3841c(receiver, "$receiver");
            receiver.m678a("type", C20333e.m738a(C18500ag.f63594a).getDescriptor(), C18297z.f63400a, false);
            m674a = C20444m.m674a("kotlinx.serialization.Polymorphic<" + C20422i.this.f66917a.an_() + '>', AbstractC20467u.C20468a.f66974b, C20444m.C20445a.f66946a);
            receiver.m678a("value", m674a, C18297z.f63400a, false);
            return C20128v.f66529a;
        }
    }

    public C20422i(AbstractC18551c<T> baseClass) {
        C18524p.m3841c(baseClass, "baseClass");
        this.f66917a = baseClass;
    }

    @Override // kotlinx.serialization.p572b.AbstractC20366b
    /* renamed from: a */
    public final AbstractC18551c<T> mo683a() {
        return this.f66917a;
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.AbstractC20415d, kotlinx.serialization.AbstractC20460r
    public final SerialDescriptor getDescriptor() {
        return this.f66918b;
    }
}
