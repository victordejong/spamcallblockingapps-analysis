package kotlinx.serialization.p572b;

import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlinx.serialization.AbstractC20458p;
import kotlinx.serialization.SerialDescriptor;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0010\u001b\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010��\n\u0002\b\n\b��\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0001¢\u0006\u0002\u0010\u0003J\u0013\u0010\u001a\u001a\u00020\u000e2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0096\u0002J\u0017\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u00060\u00052\u0006\u0010\u001e\u001a\u00020\nH\u0096\u0001J\u0011\u0010\u001f\u001a\u00020\u00012\u0006\u0010\u001e\u001a\u00020\nH\u0096\u0001J\u0011\u0010 \u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\u0015H\u0096\u0001J\u0011\u0010!\u001a\u00020\u00152\u0006\u0010\u001e\u001a\u00020\nH\u0096\u0001J\u000f\u0010\"\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005H\u0097\u0001J\b\u0010#\u001a\u00020\nH\u0016J\u0011\u0010$\u001a\u00020\u000e2\u0006\u0010\u001e\u001a\u00020\nH\u0096\u0001J\b\u0010%\u001a\u00020\u0015H\u0016R\u001a\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058VX\u0096\u0005¢\u0006\u0006\u001a\u0004\b\u0007\u0010\bR\u0012\u0010\t\u001a\u00020\nX\u0096\u0005¢\u0006\u0006\u001a\u0004\b\u000b\u0010\fR\u0014\u0010\r\u001a\u00020\u000e8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\r\u0010\u000fR\u0012\u0010\u0010\u001a\u00020\u0011X\u0096\u0005¢\u0006\u0006\u001a\u0004\b\u0012\u0010\u0013R\u0014\u0010\u0014\u001a\u00020\u00158VX\u0097\u0005¢\u0006\u0006\u001a\u0004\b\u0016\u0010\u0017R\u000e\u0010\u0002\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n��R\u0014\u0010\u0018\u001a\u00020\u0015X\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\u0019\u0010\u0017¨\u0006&"}, m4298d2 = {"Lkotlinx/serialization/internal/SerialDescriptorForNullable;", "Lkotlinx/serialization/SerialDescriptor;", "original", "(Lkotlinx/serialization/SerialDescriptor;)V", "annotations", "", "", "getAnnotations", "()Ljava/util/List;", "elementsCount", "", "getElementsCount", "()I", "isNullable", "", "()Z", "kind", "Lkotlinx/serialization/SerialKind;", "getKind", "()Lkotlinx/serialization/SerialKind;", "name", "", "getName", "()Ljava/lang/String;", "serialName", "getSerialName", "equals", "other", "", "getElementAnnotations", "index", "getElementDescriptor", "getElementIndex", "getElementName", "getEntityAnnotations", "hashCode", "isElementOptional", "toString", "kotlinx-serialization-runtime"}, m4297k = 1, m4296mv = {1, 1, 16})
/* renamed from: kotlinx.serialization.b.bg */
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/b/bg.class */
public final class C20373bg implements SerialDescriptor {

    /* renamed from: a */
    private final String f66859a;

    /* renamed from: b */
    private final SerialDescriptor f66860b;

    public C20373bg(SerialDescriptor original) {
        C18524p.m3841c(original, "original");
        this.f66860b = original;
        this.f66859a = original.mo665a() + "?";
    }

    @Override // kotlinx.serialization.SerialDescriptor
    /* renamed from: a */
    public final int mo663a(String name) {
        C18524p.m3841c(name, "name");
        return this.f66860b.mo663a(name);
    }

    @Override // kotlinx.serialization.SerialDescriptor
    /* renamed from: a */
    public final String mo665a() {
        return this.f66859a;
    }

    @Override // kotlinx.serialization.SerialDescriptor
    /* renamed from: a */
    public final String mo664a(int i) {
        return this.f66860b.mo664a(i);
    }

    @Override // kotlinx.serialization.SerialDescriptor
    /* renamed from: b */
    public final SerialDescriptor mo661b(int i) {
        return this.f66860b.mo661b(i);
    }

    @Override // kotlinx.serialization.SerialDescriptor
    /* renamed from: b */
    public final AbstractC20458p mo662b() {
        return this.f66860b.mo662b();
    }

    @Override // kotlinx.serialization.SerialDescriptor
    /* renamed from: c */
    public final boolean mo660c() {
        return true;
    }

    @Override // kotlinx.serialization.SerialDescriptor
    /* renamed from: d */
    public final int mo659d() {
        return this.f66860b.mo659d();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof C20373bg) && !(C18524p.m3850a(this.f66860b, ((C20373bg) obj).f66860b) ^ true);
    }

    public final int hashCode() {
        return this.f66860b.hashCode() * 31;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f66860b);
        sb.append('?');
        return sb.toString();
    }
}
