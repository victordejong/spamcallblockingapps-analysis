package kotlinx.serialization.b;

import kotlin.Metadata;
import kotlin.jvm.internal.p;
import kotlinx.serialization.SerialDescriptor;
import kotlinx.serialization.j;
@Metadata(bv = {1, 0, 3}, d1 = {"��:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u0001\n��\n\u0002\u0010 \n\u0002\u0010\u001b\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0002\b��\u0018��2\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\u000f\u001a\u00020\u0010H\u0002J\u0016\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00130\u00122\u0006\u0010\u0014\u001a\u00020\bH\u0016J\u0010\u0010\u0015\u001a\u00020\u00012\u0006\u0010\u0014\u001a\u00020\bH\u0016J\u0010\u0010\u0016\u001a\u00020\b2\u0006\u0010\u0017\u001a\u00020\u0003H\u0016J\u0010\u0010\u0018\u001a\u00020\u00032\u0006\u0010\u0014\u001a\u00020\bH\u0016J\u0010\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u0014\u001a\u00020\bH\u0016J\b\u0010\u001b\u001a\u00020\u0003H\u0016R\u0014\u0010\u0007\u001a\u00020\b8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\t\u0010\nR\u0014\u0010\u0004\u001a\u00020\u0005X\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\u000b\u0010\fR\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\r\u0010\u000e¨\u0006\u001c"}, d2 = {"Lkotlinx/serialization/internal/PrimitiveSerialDescriptor;", "Lkotlinx/serialization/SerialDescriptor;", "serialName", "", "kind", "Lkotlinx/serialization/PrimitiveKind;", "(Ljava/lang/String;Lkotlinx/serialization/PrimitiveKind;)V", "elementsCount", "", "getElementsCount", "()I", "getKind", "()Lkotlinx/serialization/PrimitiveKind;", "getSerialName", "()Ljava/lang/String;", "error", "", "getElementAnnotations", "", "", "index", "getElementDescriptor", "getElementIndex", "name", "getElementName", "isElementOptional", "", "toString", "kotlinx-serialization-runtime"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/b/bc.class */
public final class bc implements SerialDescriptor {

    /* renamed from: a  reason: collision with root package name */
    private final String f38916a;

    /* renamed from: b  reason: collision with root package name */
    private final j f38917b;

    public bc(String serialName, j kind) {
        p.c(serialName, "serialName");
        p.c(kind, "kind");
        this.f38916a = serialName;
        this.f38917b = kind;
    }

    private static Void e() {
        throw new IllegalStateException("Primitive descriptor does not have elements");
    }

    @Override // kotlinx.serialization.SerialDescriptor
    public final int a(String name) {
        p.c(name, "name");
        e();
        throw null;
    }

    @Override // kotlinx.serialization.SerialDescriptor
    public final String a() {
        return this.f38916a;
    }

    @Override // kotlinx.serialization.SerialDescriptor
    public final String a(int i) {
        e();
        throw null;
    }

    @Override // kotlinx.serialization.SerialDescriptor
    public final SerialDescriptor b(int i) {
        e();
        throw null;
    }

    @Override // kotlinx.serialization.SerialDescriptor
    public final /* bridge */ /* synthetic */ kotlinx.serialization.p b() {
        return this.f38917b;
    }

    @Override // kotlinx.serialization.SerialDescriptor
    public final boolean c() {
        return false;
    }

    @Override // kotlinx.serialization.SerialDescriptor
    public final int d() {
        return 0;
    }

    public final String toString() {
        return "PrimitiveDescriptor(" + this.f38916a + ')';
    }
}
