package kotlinx.serialization.b;

import kotlin.Metadata;
import kotlin.jvm.internal.p;
import kotlinx.serialization.SerialDescriptor;
@Metadata(bv = {1, 0, 3}, d1 = {"��@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0010\u001b\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010��\n\u0002\b\n\b��\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0001¢\u0006\u0002\u0010\u0003J\u0013\u0010\u001a\u001a\u00020\u000e2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0096\u0002J\u0017\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u00060\u00052\u0006\u0010\u001e\u001a\u00020\nH\u0096\u0001J\u0011\u0010\u001f\u001a\u00020\u00012\u0006\u0010\u001e\u001a\u00020\nH\u0096\u0001J\u0011\u0010 \u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\u0015H\u0096\u0001J\u0011\u0010!\u001a\u00020\u00152\u0006\u0010\u001e\u001a\u00020\nH\u0096\u0001J\u000f\u0010\"\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005H\u0097\u0001J\b\u0010#\u001a\u00020\nH\u0016J\u0011\u0010$\u001a\u00020\u000e2\u0006\u0010\u001e\u001a\u00020\nH\u0096\u0001J\b\u0010%\u001a\u00020\u0015H\u0016R\u001a\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058VX\u0096\u0005¢\u0006\u0006\u001a\u0004\b\u0007\u0010\bR\u0012\u0010\t\u001a\u00020\nX\u0096\u0005¢\u0006\u0006\u001a\u0004\b\u000b\u0010\fR\u0014\u0010\r\u001a\u00020\u000e8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\r\u0010\u000fR\u0012\u0010\u0010\u001a\u00020\u0011X\u0096\u0005¢\u0006\u0006\u001a\u0004\b\u0012\u0010\u0013R\u0014\u0010\u0014\u001a\u00020\u00158VX\u0097\u0005¢\u0006\u0006\u001a\u0004\b\u0016\u0010\u0017R\u000e\u0010\u0002\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n��R\u0014\u0010\u0018\u001a\u00020\u0015X\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\u0019\u0010\u0017¨\u0006&"}, d2 = {"Lkotlinx/serialization/internal/SerialDescriptorForNullable;", "Lkotlinx/serialization/SerialDescriptor;", "original", "(Lkotlinx/serialization/SerialDescriptor;)V", "annotations", "", "", "getAnnotations", "()Ljava/util/List;", "elementsCount", "", "getElementsCount", "()I", "isNullable", "", "()Z", "kind", "Lkotlinx/serialization/SerialKind;", "getKind", "()Lkotlinx/serialization/SerialKind;", "name", "", "getName", "()Ljava/lang/String;", "serialName", "getSerialName", "equals", "other", "", "getElementAnnotations", "index", "getElementDescriptor", "getElementIndex", "getElementName", "getEntityAnnotations", "hashCode", "isElementOptional", "toString", "kotlinx-serialization-runtime"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/b/bg.class */
public final class bg implements SerialDescriptor {

    /* renamed from: a  reason: collision with root package name */
    private final String f38921a;

    /* renamed from: b  reason: collision with root package name */
    private final SerialDescriptor f38922b;

    public bg(SerialDescriptor original) {
        p.c(original, "original");
        this.f38922b = original;
        this.f38921a = original.a() + "?";
    }

    @Override // kotlinx.serialization.SerialDescriptor
    public final int a(String name) {
        p.c(name, "name");
        return this.f38922b.a(name);
    }

    @Override // kotlinx.serialization.SerialDescriptor
    public final String a() {
        return this.f38921a;
    }

    @Override // kotlinx.serialization.SerialDescriptor
    public final String a(int i) {
        return this.f38922b.a(i);
    }

    @Override // kotlinx.serialization.SerialDescriptor
    public final SerialDescriptor b(int i) {
        return this.f38922b.b(i);
    }

    @Override // kotlinx.serialization.SerialDescriptor
    public final kotlinx.serialization.p b() {
        return this.f38922b.b();
    }

    @Override // kotlinx.serialization.SerialDescriptor
    public final boolean c() {
        return true;
    }

    @Override // kotlinx.serialization.SerialDescriptor
    public final int d() {
        return this.f38922b.d();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof bg) && !(p.a(this.f38922b, ((bg) obj).f38922b) ^ true);
    }

    public final int hashCode() {
        return this.f38922b.hashCode() * 31;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f38922b);
        sb.append('?');
        return sb.toString();
    }
}
