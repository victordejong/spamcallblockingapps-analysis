package kotlinx.serialization.b;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
import kotlinx.serialization.SerialDescriptor;
import kotlinx.serialization.t;
@Metadata(bv = {1, 0, 3}, d1 = {"��V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n��\n\u0002\u0010��\n��\n\u0002\u0010 \n\u0002\u0010\u001b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\b0\u0018��2\u00020\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0001¢\u0006\u0002\u0010\u0003J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0096\u0002J\u0016\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00140\u00132\u0006\u0010\u0015\u001a\u00020\u0007H\u0016J\u0010\u0010\u0016\u001a\u00020\u00012\u0006\u0010\u0015\u001a\u00020\u0007H\u0016J\u0010\u0010\u0017\u001a\u00020\u00072\u0006\u0010\u0018\u001a\u00020\u0019H\u0016J\u0010\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u0015\u001a\u00020\u0007H\u0016J\b\u0010\u001b\u001a\u00020\u0007H\u0016J\u0010\u0010\u001c\u001a\u00020\u000f2\u0006\u0010\u0015\u001a\u00020\u0007H\u0016R\u0011\u0010\u0002\u001a\u00020\u0001¢\u0006\b\n��\u001a\u0004\b\u0004\u0010\u0005R\u0014\u0010\u0006\u001a\u00020\u0007X\u0096D¢\u0006\b\n��\u001a\u0004\b\b\u0010\tR\u0014\u0010\n\u001a\u00020\u000b8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\f\u0010\r\u0082\u0001\u0006\u001d\u001e\u001f !\"¨\u0006#"}, d2 = {"Lkotlinx/serialization/internal/ListLikeDescriptor;", "Lkotlinx/serialization/SerialDescriptor;", "elementDesc", "(Lkotlinx/serialization/SerialDescriptor;)V", "getElementDesc", "()Lkotlinx/serialization/SerialDescriptor;", "elementsCount", "", "getElementsCount", "()I", "kind", "Lkotlinx/serialization/SerialKind;", "getKind", "()Lkotlinx/serialization/SerialKind;", "equals", "", "other", "", "getElementAnnotations", "", "", "index", "getElementDescriptor", "getElementIndex", "name", "", "getElementName", "hashCode", "isElementOptional", "Lkotlinx/serialization/internal/PrimitiveArrayDescriptor;", "Lkotlinx/serialization/internal/ArrayClassDesc;", "Lkotlinx/serialization/internal/ArrayListClassDesc;", "Lkotlinx/serialization/internal/NamedListClassDescriptor;", "Lkotlinx/serialization/internal/LinkedHashSetClassDesc;", "Lkotlinx/serialization/internal/HashSetClassDesc;", "kotlinx-serialization-runtime"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/b/aj.class */
public abstract class aj implements SerialDescriptor {

    /* renamed from: a  reason: collision with root package name */
    private final int f38882a;

    /* renamed from: b  reason: collision with root package name */
    private final SerialDescriptor f38883b;

    private aj(SerialDescriptor serialDescriptor) {
        this.f38883b = serialDescriptor;
        this.f38882a = 1;
    }

    public /* synthetic */ aj(SerialDescriptor serialDescriptor, DefaultConstructorMarker defaultConstructorMarker) {
        this(serialDescriptor);
    }

    @Override // kotlinx.serialization.SerialDescriptor
    public final int a(String name) {
        p.c(name, "name");
        Integer e = kotlin.h.p.e(name);
        if (e != null) {
            return e.intValue();
        }
        throw new IllegalArgumentException(name + " is not a valid list index");
    }

    @Override // kotlinx.serialization.SerialDescriptor
    public final String a(int i) {
        return String.valueOf(i);
    }

    @Override // kotlinx.serialization.SerialDescriptor
    public final SerialDescriptor b(int i) {
        if (i == 0) {
            return this.f38883b;
        }
        throw new IndexOutOfBoundsException("List descriptor has only one child element, index: ".concat(String.valueOf(i)));
    }

    @Override // kotlinx.serialization.SerialDescriptor
    public final kotlinx.serialization.p b() {
        return t.b.f39020a;
    }

    @Override // kotlinx.serialization.SerialDescriptor
    public final boolean c() {
        return false;
    }

    @Override // kotlinx.serialization.SerialDescriptor
    public final int d() {
        return this.f38882a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof aj)) {
            return false;
        }
        aj ajVar = (aj) obj;
        return p.a(this.f38883b, ajVar.f38883b) && p.a((Object) a(), (Object) ajVar.a());
    }

    public int hashCode() {
        return (this.f38883b.hashCode() * 31) + a().hashCode();
    }
}
