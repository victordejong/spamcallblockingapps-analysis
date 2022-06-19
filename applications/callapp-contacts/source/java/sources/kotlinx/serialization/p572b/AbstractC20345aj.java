package kotlinx.serialization.p572b;

import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.p532h.C18425p;
import kotlinx.serialization.AbstractC20458p;
import kotlinx.serialization.AbstractC20462t;
import kotlinx.serialization.SerialDescriptor;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n��\n\u0002\u0010��\n��\n\u0002\u0010 \n\u0002\u0010\u001b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\b0\u0018��2\u00020\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0001¢\u0006\u0002\u0010\u0003J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0096\u0002J\u0016\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00140\u00132\u0006\u0010\u0015\u001a\u00020\u0007H\u0016J\u0010\u0010\u0016\u001a\u00020\u00012\u0006\u0010\u0015\u001a\u00020\u0007H\u0016J\u0010\u0010\u0017\u001a\u00020\u00072\u0006\u0010\u0018\u001a\u00020\u0019H\u0016J\u0010\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u0015\u001a\u00020\u0007H\u0016J\b\u0010\u001b\u001a\u00020\u0007H\u0016J\u0010\u0010\u001c\u001a\u00020\u000f2\u0006\u0010\u0015\u001a\u00020\u0007H\u0016R\u0011\u0010\u0002\u001a\u00020\u0001¢\u0006\b\n��\u001a\u0004\b\u0004\u0010\u0005R\u0014\u0010\u0006\u001a\u00020\u0007X\u0096D¢\u0006\b\n��\u001a\u0004\b\b\u0010\tR\u0014\u0010\n\u001a\u00020\u000b8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\f\u0010\r\u0082\u0001\u0006\u001d\u001e\u001f !\"¨\u0006#"}, m4298d2 = {"Lkotlinx/serialization/internal/ListLikeDescriptor;", "Lkotlinx/serialization/SerialDescriptor;", "elementDesc", "(Lkotlinx/serialization/SerialDescriptor;)V", "getElementDesc", "()Lkotlinx/serialization/SerialDescriptor;", "elementsCount", "", "getElementsCount", "()I", "kind", "Lkotlinx/serialization/SerialKind;", "getKind", "()Lkotlinx/serialization/SerialKind;", "equals", "", "other", "", "getElementAnnotations", "", "", "index", "getElementDescriptor", "getElementIndex", "name", "", "getElementName", "hashCode", "isElementOptional", "Lkotlinx/serialization/internal/PrimitiveArrayDescriptor;", "Lkotlinx/serialization/internal/ArrayClassDesc;", "Lkotlinx/serialization/internal/ArrayListClassDesc;", "Lkotlinx/serialization/internal/NamedListClassDescriptor;", "Lkotlinx/serialization/internal/LinkedHashSetClassDesc;", "Lkotlinx/serialization/internal/HashSetClassDesc;", "kotlinx-serialization-runtime"}, m4297k = 1, m4296mv = {1, 1, 16})
/* renamed from: kotlinx.serialization.b.aj */
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/b/aj.class */
public abstract class AbstractC20345aj implements SerialDescriptor {

    /* renamed from: a */
    private final int f66816a;

    /* renamed from: b */
    private final SerialDescriptor f66817b;

    private AbstractC20345aj(SerialDescriptor serialDescriptor) {
        this.f66817b = serialDescriptor;
        this.f66816a = 1;
    }

    public /* synthetic */ AbstractC20345aj(SerialDescriptor serialDescriptor, DefaultConstructorMarker defaultConstructorMarker) {
        this(serialDescriptor);
    }

    @Override // kotlinx.serialization.SerialDescriptor
    /* renamed from: a */
    public final int mo663a(String name) {
        C18524p.m3841c(name, "name");
        Integer e = C18425p.m3968e(name);
        if (e != null) {
            return e.intValue();
        }
        throw new IllegalArgumentException(name + " is not a valid list index");
    }

    @Override // kotlinx.serialization.SerialDescriptor
    /* renamed from: a */
    public final String mo664a(int i) {
        return String.valueOf(i);
    }

    @Override // kotlinx.serialization.SerialDescriptor
    /* renamed from: b */
    public final SerialDescriptor mo661b(int i) {
        if (i == 0) {
            return this.f66817b;
        }
        throw new IndexOutOfBoundsException("List descriptor has only one child element, index: ".concat(String.valueOf(i)));
    }

    @Override // kotlinx.serialization.SerialDescriptor
    /* renamed from: b */
    public final AbstractC20458p mo662b() {
        return AbstractC20462t.C20464b.f66969a;
    }

    @Override // kotlinx.serialization.SerialDescriptor
    /* renamed from: c */
    public final boolean mo660c() {
        return false;
    }

    @Override // kotlinx.serialization.SerialDescriptor
    /* renamed from: d */
    public final int mo659d() {
        return this.f66816a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AbstractC20345aj)) {
            return false;
        }
        AbstractC20345aj abstractC20345aj = (AbstractC20345aj) obj;
        return C18524p.m3850a(this.f66817b, abstractC20345aj.f66817b) && C18524p.m3850a((Object) mo665a(), (Object) abstractC20345aj.mo665a());
    }

    public int hashCode() {
        return (this.f66817b.hashCode() * 31) + mo665a().hashCode();
    }
}
