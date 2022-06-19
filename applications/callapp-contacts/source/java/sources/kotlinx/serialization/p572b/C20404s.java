package kotlinx.serialization.p572b;

import kotlin.C18399h;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18282n;
import kotlinx.serialization.AbstractC20458p;
import kotlinx.serialization.AbstractC20462t;
import kotlinx.serialization.AbstractC20467u;
import kotlinx.serialization.C20444m;
import kotlinx.serialization.C20457o;
import kotlinx.serialization.SerialDescriptor;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n��\n\u0002\u0010��\n\u0002\b\u0005\b\u0007\u0018��2\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0013\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0096\u0002J\u0010\u0010\u0016\u001a\u00020\t2\u0006\u0010\u0017\u001a\u00020\u0005H\u0016J\b\u0010\u0018\u001a\u00020\u0005H\u0016J\b\u0010\u0019\u001a\u00020\u0003H\u0016R!\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\n\u0010\u000bR\u0014\u0010\u000e\u001a\u00020\u000fX\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\u0010\u0010\u0011¨\u0006\u001a"}, m4298d2 = {"Lkotlinx/serialization/internal/EnumDescriptor;", "Lkotlinx/serialization/internal/SerialClassDescImpl;", "name", "", "elementsCount", "", "(Ljava/lang/String;I)V", "elementDescriptors", "", "Lkotlinx/serialization/SerialDescriptor;", "getElementDescriptors", "()[Lkotlinx/serialization/SerialDescriptor;", "elementDescriptors$delegate", "Lkotlin/Lazy;", "kind", "Lkotlinx/serialization/SerialKind;", "getKind", "()Lkotlinx/serialization/SerialKind;", "equals", "", "other", "", "getElementDescriptor", "index", "hashCode", "toString", "kotlinx-serialization-runtime"}, m4297k = 1, m4296mv = {1, 1, 16})
/* renamed from: kotlinx.serialization.b.s */
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/b/s.class */
public final class C20404s extends C20372bf {

    /* renamed from: b */
    private final AbstractC20458p f66904b = AbstractC20467u.C20470c.f66975b;

    /* renamed from: c */
    private final Lazy f66905c;

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u000e\n��\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, m4298d2 = {"<anonymous>", "", "Lkotlinx/serialization/SerialDescriptor;", "invoke", "()[Lkotlinx/serialization/SerialDescriptor;"}, m4297k = 3, m4296mv = {1, 1, 16})
    /* renamed from: kotlinx.serialization.b.s$a */
    /* loaded from: classes5-dex2jar.jar:kotlinx/serialization/b/s$a.class */
    public static final class C20405a extends AbstractC18526r implements Function0<SerialDescriptor[]> {

        /* renamed from: b */
        final /* synthetic */ int f66907b;

        /* renamed from: c */
        final /* synthetic */ String f66908c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C20405a(int i, String str) {
            super(0);
            C20404s.this = r4;
            this.f66907b = i;
            this.f66908c = str;
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ SerialDescriptor[] invoke() {
            SerialDescriptor m674a;
            int i = this.f66907b;
            SerialDescriptor[] serialDescriptorArr = new SerialDescriptor[i];
            for (int i2 = 0; i2 < i; i2++) {
                m674a = C20444m.m674a(this.f66908c + "." + C20404s.this.f66842a[i2], AbstractC20462t.C20466d.f66971a, C20444m.C20445a.f66946a);
                serialDescriptorArr[i2] = m674a;
            }
            return serialDescriptorArr;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C20404s(String name, int i) {
        super(name, null, i, 2, null);
        C18524p.m3841c(name, "name");
        this.f66905c = C18399h.m3897a(new C20405a(i, name));
    }

    @Override // kotlinx.serialization.p572b.C20362ay, kotlinx.serialization.SerialDescriptor
    /* renamed from: b */
    public final SerialDescriptor mo661b(int i) {
        return ((SerialDescriptor[]) this.f66905c.mo1102a())[i];
    }

    @Override // kotlinx.serialization.p572b.C20362ay, kotlinx.serialization.SerialDescriptor
    /* renamed from: b */
    public final AbstractC20458p mo662b() {
        return this.f66904b;
    }

    @Override // kotlinx.serialization.p572b.C20362ay
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof SerialDescriptor)) {
            return false;
        }
        SerialDescriptor serialDescriptor = (SerialDescriptor) obj;
        return serialDescriptor.mo662b() == AbstractC20467u.C20470c.f66975b && !(C18524p.m3850a((Object) mo665a(), (Object) serialDescriptor.mo665a()) ^ true) && !(C18524p.m3850a(C20457o.m656b(this), C20457o.m656b(serialDescriptor)) ^ true);
    }

    @Override // kotlinx.serialization.p572b.C20362ay
    public final int hashCode() {
        return (mo665a().hashCode() * 31) + C20457o.m656b(this).hashCode();
    }

    @Override // kotlinx.serialization.p572b.C20362ay
    public final String toString() {
        return C18282n.m4148a(C20457o.m656b(this), ", ", mo665a() + '(', ")", 0, (CharSequence) null, (Function1) null, 56);
    }
}
