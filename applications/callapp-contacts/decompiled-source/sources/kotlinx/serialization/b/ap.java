package kotlinx.serialization.b;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
import kotlinx.serialization.SerialDescriptor;
import kotlinx.serialization.t;
@Metadata(bv = {1, 0, 3}, d1 = {"��H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n��\n\u0002\u0010��\n��\n\u0002\u0010 \n\u0002\u0010\u001b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\b0\u0018��2\u00020\u0001B\u001f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0001\u0012\u0006\u0010\u0005\u001a\u00020\u0001¢\u0006\u0002\u0010\u0006J\u0013\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0096\u0002J\u0016\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u001a0\u00192\u0006\u0010\u001b\u001a\u00020\bH\u0016J\u0010\u0010\u001c\u001a\u00020\u00012\u0006\u0010\u001b\u001a\u00020\bH\u0016J\u0010\u0010\u001d\u001a\u00020\b2\u0006\u0010\u001e\u001a\u00020\u0003H\u0016J\u0010\u0010\u001f\u001a\u00020\u00032\u0006\u0010\u001b\u001a\u00020\bH\u0016J\b\u0010 \u001a\u00020\bH\u0016J\u0010\u0010!\u001a\u00020\u00152\u0006\u0010\u001b\u001a\u00020\bH\u0016R\u0014\u0010\u0007\u001a\u00020\bX\u0096D¢\u0006\b\n��\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0001¢\u0006\b\n��\u001a\u0004\b\u000b\u0010\fR\u0014\u0010\r\u001a\u00020\u000e8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000f\u0010\u0010R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\u0011\u0010\u0012R\u0011\u0010\u0005\u001a\u00020\u0001¢\u0006\b\n��\u001a\u0004\b\u0013\u0010\f\u0082\u0001\u0003\"#$¨\u0006%"}, d2 = {"Lkotlinx/serialization/internal/MapLikeDescriptor;", "Lkotlinx/serialization/SerialDescriptor;", "serialName", "", "keyDescriptor", "valueDescriptor", "(Ljava/lang/String;Lkotlinx/serialization/SerialDescriptor;Lkotlinx/serialization/SerialDescriptor;)V", "elementsCount", "", "getElementsCount", "()I", "getKeyDescriptor", "()Lkotlinx/serialization/SerialDescriptor;", "kind", "Lkotlinx/serialization/SerialKind;", "getKind", "()Lkotlinx/serialization/SerialKind;", "getSerialName", "()Ljava/lang/String;", "getValueDescriptor", "equals", "", "other", "", "getElementAnnotations", "", "", "index", "getElementDescriptor", "getElementIndex", "name", "getElementName", "hashCode", "isElementOptional", "Lkotlinx/serialization/internal/NamedMapClassDescriptor;", "Lkotlinx/serialization/internal/LinkedHashMapClassDesc;", "Lkotlinx/serialization/internal/HashMapClassDesc;", "kotlinx-serialization-runtime"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/b/ap.class */
public abstract class ap implements SerialDescriptor {

    /* renamed from: a  reason: collision with root package name */
    private final int f38896a;

    /* renamed from: b  reason: collision with root package name */
    private final String f38897b;

    /* renamed from: c  reason: collision with root package name */
    private final SerialDescriptor f38898c;

    /* renamed from: d  reason: collision with root package name */
    private final SerialDescriptor f38899d;

    private ap(String str, SerialDescriptor serialDescriptor, SerialDescriptor serialDescriptor2) {
        this.f38897b = str;
        this.f38898c = serialDescriptor;
        this.f38899d = serialDescriptor2;
        this.f38896a = 2;
    }

    public /* synthetic */ ap(String str, SerialDescriptor serialDescriptor, SerialDescriptor serialDescriptor2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, serialDescriptor, serialDescriptor2);
    }

    @Override // kotlinx.serialization.SerialDescriptor
    public final int a(String name) {
        p.c(name, "name");
        Integer e = kotlin.h.p.e(name);
        if (e != null) {
            return e.intValue();
        }
        throw new IllegalArgumentException(name + " is not a valid map index");
    }

    @Override // kotlinx.serialization.SerialDescriptor
    public final String a() {
        return this.f38897b;
    }

    @Override // kotlinx.serialization.SerialDescriptor
    public final String a(int i) {
        return String.valueOf(i);
    }

    @Override // kotlinx.serialization.SerialDescriptor
    public final SerialDescriptor b(int i) {
        if (i == 0) {
            return this.f38898c;
        }
        if (i == 1) {
            return this.f38899d;
        }
        throw new IndexOutOfBoundsException("Map descriptor has only one child element, index: ".concat(String.valueOf(i)));
    }

    @Override // kotlinx.serialization.SerialDescriptor
    public final kotlinx.serialization.p b() {
        return t.c.f39021a;
    }

    @Override // kotlinx.serialization.SerialDescriptor
    public final boolean c() {
        return false;
    }

    @Override // kotlinx.serialization.SerialDescriptor
    public final int d() {
        return this.f38896a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ap)) {
            return false;
        }
        ap apVar = (ap) obj;
        return !(p.a((Object) this.f38897b, (Object) apVar.f38897b) ^ true) && !(p.a(this.f38898c, apVar.f38898c) ^ true) && !(p.a(this.f38899d, apVar.f38899d) ^ true);
    }

    public int hashCode() {
        return (((this.f38897b.hashCode() * 31) + this.f38898c.hashCode()) * 31) + this.f38899d.hashCode();
    }
}
