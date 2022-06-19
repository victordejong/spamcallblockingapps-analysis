package kotlinx.serialization.p572b;

import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlinx.serialization.AbstractC20424j;
import kotlinx.serialization.AbstractC20458p;
import kotlinx.serialization.SerialDescriptor;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u0001\n��\n\u0002\u0010 \n\u0002\u0010\u001b\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0002\b��\u0018��2\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\u000f\u001a\u00020\u0010H\u0002J\u0016\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00130\u00122\u0006\u0010\u0014\u001a\u00020\bH\u0016J\u0010\u0010\u0015\u001a\u00020\u00012\u0006\u0010\u0014\u001a\u00020\bH\u0016J\u0010\u0010\u0016\u001a\u00020\b2\u0006\u0010\u0017\u001a\u00020\u0003H\u0016J\u0010\u0010\u0018\u001a\u00020\u00032\u0006\u0010\u0014\u001a\u00020\bH\u0016J\u0010\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u0014\u001a\u00020\bH\u0016J\b\u0010\u001b\u001a\u00020\u0003H\u0016R\u0014\u0010\u0007\u001a\u00020\b8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\t\u0010\nR\u0014\u0010\u0004\u001a\u00020\u0005X\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\u000b\u0010\fR\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\r\u0010\u000e¨\u0006\u001c"}, m4298d2 = {"Lkotlinx/serialization/internal/PrimitiveSerialDescriptor;", "Lkotlinx/serialization/SerialDescriptor;", "serialName", "", "kind", "Lkotlinx/serialization/PrimitiveKind;", "(Ljava/lang/String;Lkotlinx/serialization/PrimitiveKind;)V", "elementsCount", "", "getElementsCount", "()I", "getKind", "()Lkotlinx/serialization/PrimitiveKind;", "getSerialName", "()Ljava/lang/String;", "error", "", "getElementAnnotations", "", "", "index", "getElementDescriptor", "getElementIndex", "name", "getElementName", "isElementOptional", "", "toString", "kotlinx-serialization-runtime"}, m4297k = 1, m4296mv = {1, 1, 16})
/* renamed from: kotlinx.serialization.b.bc */
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/b/bc.class */
public final class C20369bc implements SerialDescriptor {

    /* renamed from: a */
    private final String f66854a;

    /* renamed from: b */
    private final AbstractC20424j f66855b;

    public C20369bc(String serialName, AbstractC20424j kind) {
        C18524p.m3841c(serialName, "serialName");
        C18524p.m3841c(kind, "kind");
        this.f66854a = serialName;
        this.f66855b = kind;
    }

    /* renamed from: e */
    private static Void m719e() {
        throw new IllegalStateException("Primitive descriptor does not have elements");
    }

    @Override // kotlinx.serialization.SerialDescriptor
    /* renamed from: a */
    public final int mo663a(String name) {
        C18524p.m3841c(name, "name");
        m719e();
        throw null;
    }

    @Override // kotlinx.serialization.SerialDescriptor
    /* renamed from: a */
    public final String mo665a() {
        return this.f66854a;
    }

    @Override // kotlinx.serialization.SerialDescriptor
    /* renamed from: a */
    public final String mo664a(int i) {
        m719e();
        throw null;
    }

    @Override // kotlinx.serialization.SerialDescriptor
    /* renamed from: b */
    public final SerialDescriptor mo661b(int i) {
        m719e();
        throw null;
    }

    @Override // kotlinx.serialization.SerialDescriptor
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ AbstractC20458p mo662b() {
        return this.f66855b;
    }

    @Override // kotlinx.serialization.SerialDescriptor
    /* renamed from: c */
    public final boolean mo660c() {
        return false;
    }

    @Override // kotlinx.serialization.SerialDescriptor
    /* renamed from: d */
    public final int mo659d() {
        return 0;
    }

    public final String toString() {
        return "PrimitiveDescriptor(" + this.f66854a + ')';
    }
}
