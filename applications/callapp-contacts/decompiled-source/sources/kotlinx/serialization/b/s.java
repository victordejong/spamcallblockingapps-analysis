package kotlinx.serialization.b;

import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.a.n;
import kotlin.h;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.r;
import kotlinx.serialization.SerialDescriptor;
import kotlinx.serialization.m;
import kotlinx.serialization.o;
import kotlinx.serialization.p;
import kotlinx.serialization.t;
import kotlinx.serialization.u;
@Metadata(bv = {1, 0, 3}, d1 = {"��:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n��\n\u0002\u0010��\n\u0002\b\u0005\b\u0007\u0018��2\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0013\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0096\u0002J\u0010\u0010\u0016\u001a\u00020\t2\u0006\u0010\u0017\u001a\u00020\u0005H\u0016J\b\u0010\u0018\u001a\u00020\u0005H\u0016J\b\u0010\u0019\u001a\u00020\u0003H\u0016R!\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\n\u0010\u000bR\u0014\u0010\u000e\u001a\u00020\u000fX\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\u0010\u0010\u0011¨\u0006\u001a"}, d2 = {"Lkotlinx/serialization/internal/EnumDescriptor;", "Lkotlinx/serialization/internal/SerialClassDescImpl;", "name", "", "elementsCount", "", "(Ljava/lang/String;I)V", "elementDescriptors", "", "Lkotlinx/serialization/SerialDescriptor;", "getElementDescriptors", "()[Lkotlinx/serialization/SerialDescriptor;", "elementDescriptors$delegate", "Lkotlin/Lazy;", "kind", "Lkotlinx/serialization/SerialKind;", "getKind", "()Lkotlinx/serialization/SerialKind;", "equals", "", "other", "", "getElementDescriptor", "index", "hashCode", "toString", "kotlinx-serialization-runtime"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/b/s.class */
public final class s extends bf {

    /* renamed from: b  reason: collision with root package name */
    private final p f38966b = u.c.f39026b;

    /* renamed from: c  reason: collision with root package name */
    private final Lazy f38967c;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u000e\n��\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"<anonymous>", "", "Lkotlinx/serialization/SerialDescriptor;", "invoke", "()[Lkotlinx/serialization/SerialDescriptor;"}, k = 3, mv = {1, 1, 16})
    /* loaded from: classes5-dex2jar.jar:kotlinx/serialization/b/s$a.class */
    static final class a extends r implements Function0<SerialDescriptor[]> {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f38969b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f38970c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(int i, String str) {
            super(0);
            this.f38969b = i;
            this.f38970c = str;
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ SerialDescriptor[] invoke() {
            SerialDescriptor a2;
            int i = this.f38969b;
            SerialDescriptor[] serialDescriptorArr = new SerialDescriptor[i];
            for (int i2 = 0; i2 < i; i2++) {
                a2 = m.a(this.f38970c + "." + s.this.f38908a[i2], t.d.f39022a, m.a.f39003a);
                serialDescriptorArr[i2] = a2;
            }
            return serialDescriptorArr;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public s(String name, int i) {
        super(name, null, i, 2, null);
        kotlin.jvm.internal.p.c(name, "name");
        this.f38967c = h.a(new a(i, name));
    }

    @Override // kotlinx.serialization.b.ay, kotlinx.serialization.SerialDescriptor
    public final SerialDescriptor b(int i) {
        return ((SerialDescriptor[]) this.f38967c.a())[i];
    }

    @Override // kotlinx.serialization.b.ay, kotlinx.serialization.SerialDescriptor
    public final p b() {
        return this.f38966b;
    }

    @Override // kotlinx.serialization.b.ay
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof SerialDescriptor)) {
            return false;
        }
        SerialDescriptor serialDescriptor = (SerialDescriptor) obj;
        return serialDescriptor.b() == u.c.f39026b && !(kotlin.jvm.internal.p.a((Object) a(), (Object) serialDescriptor.a()) ^ true) && !(kotlin.jvm.internal.p.a(o.b(this), o.b(serialDescriptor)) ^ true);
    }

    @Override // kotlinx.serialization.b.ay
    public final int hashCode() {
        return (a().hashCode() * 31) + o.b(this).hashCode();
    }

    @Override // kotlinx.serialization.b.ay
    public final String toString() {
        return n.a(o.b(this), ", ", a() + '(', ")", 0, (CharSequence) null, (Function1) null, 56);
    }
}
