package kotlinx.serialization.p572b;

import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.p532h.C18425p;
import kotlinx.serialization.AbstractC20458p;
import kotlinx.serialization.AbstractC20462t;
import kotlinx.serialization.SerialDescriptor;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n��\n\u0002\u0010��\n��\n\u0002\u0010 \n\u0002\u0010\u001b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\b0\u0018��2\u00020\u0001B\u001f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0001\u0012\u0006\u0010\u0005\u001a\u00020\u0001¢\u0006\u0002\u0010\u0006J\u0013\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0096\u0002J\u0016\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u001a0\u00192\u0006\u0010\u001b\u001a\u00020\bH\u0016J\u0010\u0010\u001c\u001a\u00020\u00012\u0006\u0010\u001b\u001a\u00020\bH\u0016J\u0010\u0010\u001d\u001a\u00020\b2\u0006\u0010\u001e\u001a\u00020\u0003H\u0016J\u0010\u0010\u001f\u001a\u00020\u00032\u0006\u0010\u001b\u001a\u00020\bH\u0016J\b\u0010 \u001a\u00020\bH\u0016J\u0010\u0010!\u001a\u00020\u00152\u0006\u0010\u001b\u001a\u00020\bH\u0016R\u0014\u0010\u0007\u001a\u00020\bX\u0096D¢\u0006\b\n��\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0001¢\u0006\b\n��\u001a\u0004\b\u000b\u0010\fR\u0014\u0010\r\u001a\u00020\u000e8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000f\u0010\u0010R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\u0011\u0010\u0012R\u0011\u0010\u0005\u001a\u00020\u0001¢\u0006\b\n��\u001a\u0004\b\u0013\u0010\f\u0082\u0001\u0003\"#$¨\u0006%"}, m4298d2 = {"Lkotlinx/serialization/internal/MapLikeDescriptor;", "Lkotlinx/serialization/SerialDescriptor;", "serialName", "", "keyDescriptor", "valueDescriptor", "(Ljava/lang/String;Lkotlinx/serialization/SerialDescriptor;Lkotlinx/serialization/SerialDescriptor;)V", "elementsCount", "", "getElementsCount", "()I", "getKeyDescriptor", "()Lkotlinx/serialization/SerialDescriptor;", "kind", "Lkotlinx/serialization/SerialKind;", "getKind", "()Lkotlinx/serialization/SerialKind;", "getSerialName", "()Ljava/lang/String;", "getValueDescriptor", "equals", "", "other", "", "getElementAnnotations", "", "", "index", "getElementDescriptor", "getElementIndex", "name", "getElementName", "hashCode", "isElementOptional", "Lkotlinx/serialization/internal/NamedMapClassDescriptor;", "Lkotlinx/serialization/internal/LinkedHashMapClassDesc;", "Lkotlinx/serialization/internal/HashMapClassDesc;", "kotlinx-serialization-runtime"}, m4297k = 1, m4296mv = {1, 1, 16})
/* renamed from: kotlinx.serialization.b.ap */
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/b/ap.class */
public abstract class AbstractC20353ap implements SerialDescriptor {

    /* renamed from: a */
    private final int f66830a;

    /* renamed from: b */
    private final String f66831b;

    /* renamed from: c */
    private final SerialDescriptor f66832c;

    /* renamed from: d */
    private final SerialDescriptor f66833d;

    private AbstractC20353ap(String str, SerialDescriptor serialDescriptor, SerialDescriptor serialDescriptor2) {
        this.f66831b = str;
        this.f66832c = serialDescriptor;
        this.f66833d = serialDescriptor2;
        this.f66830a = 2;
    }

    public /* synthetic */ AbstractC20353ap(String str, SerialDescriptor serialDescriptor, SerialDescriptor serialDescriptor2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, serialDescriptor, serialDescriptor2);
    }

    @Override // kotlinx.serialization.SerialDescriptor
    /* renamed from: a */
    public final int mo663a(String name) {
        C18524p.m3841c(name, "name");
        Integer e = C18425p.m3968e(name);
        if (e != null) {
            return e.intValue();
        }
        throw new IllegalArgumentException(name + " is not a valid map index");
    }

    @Override // kotlinx.serialization.SerialDescriptor
    /* renamed from: a */
    public final String mo665a() {
        return this.f66831b;
    }

    @Override // kotlinx.serialization.SerialDescriptor
    /* renamed from: a */
    public final String mo664a(int i) {
        return String.valueOf(i);
    }

    @Override // kotlinx.serialization.SerialDescriptor
    /* renamed from: b */
    public final SerialDescriptor mo661b(int i) {
        if (i != 0) {
            if (i != 1) {
                throw new IndexOutOfBoundsException("Map descriptor has only one child element, index: ".concat(String.valueOf(i)));
            }
            return this.f66833d;
        }
        return this.f66832c;
    }

    @Override // kotlinx.serialization.SerialDescriptor
    /* renamed from: b */
    public final AbstractC20458p mo662b() {
        return AbstractC20462t.C20465c.f66970a;
    }

    @Override // kotlinx.serialization.SerialDescriptor
    /* renamed from: c */
    public final boolean mo660c() {
        return false;
    }

    @Override // kotlinx.serialization.SerialDescriptor
    /* renamed from: d */
    public final int mo659d() {
        return this.f66830a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AbstractC20353ap)) {
            return false;
        }
        AbstractC20353ap abstractC20353ap = (AbstractC20353ap) obj;
        return !(C18524p.m3850a((Object) this.f66831b, (Object) abstractC20353ap.f66831b) ^ true) && !(C18524p.m3850a(this.f66832c, abstractC20353ap.f66832c) ^ true) && !(C18524p.m3850a(this.f66833d, abstractC20353ap.f66833d) ^ true);
    }

    public int hashCode() {
        return (((this.f66831b.hashCode() * 31) + this.f66832c.hashCode()) * 31) + this.f66833d.hashCode();
    }
}
