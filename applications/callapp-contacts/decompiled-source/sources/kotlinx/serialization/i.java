package kotlinx.serialization;

import kotlin.Metadata;
import kotlin.a.z;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.ag;
import kotlin.jvm.internal.p;
import kotlin.jvm.internal.r;
import kotlin.reflect.c;
import kotlin.v;
import kotlinx.serialization.a.e;
import kotlinx.serialization.b.b;
import kotlinx.serialization.h;
import kotlinx.serialization.m;
import kotlinx.serialization.u;
@Metadata(bv = {1, 0, 3}, d1 = {"�� \n\u0002\u0018\u0002\n��\n\u0002\u0010��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018��*\b\b��\u0010\u0001*\u00020\u00022\b\u0012\u0004\u0012\u0002H\u00010\u0003B\u0013\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028��0\u0005¢\u0006\u0002\u0010\u0006R\u001a\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028��0\u0005X\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\u0007\u0010\bR\u0014\u0010\t\u001a\u00020\nX\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Lkotlinx/serialization/PolymorphicSerializer;", "T", "", "Lkotlinx/serialization/internal/AbstractPolymorphicSerializer;", "baseClass", "Lkotlin/reflect/KClass;", "(Lkotlin/reflect/KClass;)V", "getBaseClass", "()Lkotlin/reflect/KClass;", "descriptor", "Lkotlinx/serialization/SerialDescriptor;", "getDescriptor", "()Lkotlinx/serialization/SerialDescriptor;", "kotlinx-serialization-runtime"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/i.class */
public final class i<T> extends b<T> {

    /* renamed from: a  reason: collision with root package name */
    final c<T> f38979a;

    /* renamed from: b  reason: collision with root package name */
    private final SerialDescriptor f38980b = m.a("kotlinx.serialization.Polymorphic", h.a.f38977a, new a());

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0012\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010��\n\u0002\u0018\u0002\n��\u0010��\u001a\u00020\u0001\"\b\b��\u0010\u0002*\u00020\u0003*\u00020\u0004H\n¢\u0006\u0002\b\u0005"}, d2 = {"<anonymous>", "", "T", "", "Lkotlinx/serialization/SerialDescriptorBuilder;", "invoke"}, k = 3, mv = {1, 1, 16})
    /* loaded from: classes5-dex2jar.jar:kotlinx/serialization/i$a.class */
    static final class a extends r implements Function1<l, v> {
        a() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ v invoke(l lVar) {
            SerialDescriptor a2;
            l receiver = lVar;
            p.c(receiver, "$receiver");
            receiver.a("type", e.a(ag.f36785a).getDescriptor(), z.f36608a, false);
            a2 = m.a("kotlinx.serialization.Polymorphic<" + i.this.f38979a.an_() + '>', u.a.f39025b, m.a.f39003a);
            receiver.a("value", a2, z.f36608a, false);
            return v.f38654a;
        }
    }

    public i(c<T> baseClass) {
        p.c(baseClass, "baseClass");
        this.f38979a = baseClass;
    }

    @Override // kotlinx.serialization.b.b
    public final c<T> a() {
        return this.f38979a;
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.d, kotlinx.serialization.r
    public final SerialDescriptor getDescriptor() {
        return this.f38980b;
    }
}
