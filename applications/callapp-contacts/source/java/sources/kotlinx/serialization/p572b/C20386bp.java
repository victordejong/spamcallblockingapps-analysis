package kotlinx.serialization.p572b;

import java.util.HashSet;
import java.util.Set;
import kotlin.C18399h;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.C18524p;
import kotlinx.serialization.AbstractC20458p;
import kotlinx.serialization.SerialDescriptor;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��4\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\"\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n��\u001a\u0016\u0010��\u001a\u00020\u00012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00010\u0003H��\u001a\u0012\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005*\u00020\u0001H��\u001a\u001d\u0010\u0007\u001a\b\u0012\u0004\u0012\u0002H\t0\b\"\u0004\b��\u0010\t*\u0006\u0012\u0002\b\u00030\bH\u0081\b\u001a\u0018\u0010\n\u001a\u00020\u000b*\u00060\fj\u0002`\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0007¨\u0006\u0010"}, m4298d2 = {"defer", "Lkotlinx/serialization/SerialDescriptor;", "deferred", "Lkotlin/Function0;", "cachedSerialNames", "", "", "cast", "Lkotlinx/serialization/KSerializer;", "T", "readExactNBytes", "", "Ljava/io/InputStream;", "Lkotlinx/io/InputStream;", "bytes", "", "kotlinx-serialization-runtime"}, m4297k = 2, m4296mv = {1, 1, 16})
/* renamed from: kotlinx.serialization.b.bp */
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/b/bp.class */
public final class C20386bp {

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��5\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0010\u001b\n\u0002\b\u0006\n\u0002\u0010\u000b\n��*\u0001��\b\n\u0018��2\u00020\u0001J\u0016\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00150\u00142\u0006\u0010\u0016\u001a\u00020\u0003H\u0016J\u0010\u0010\u0017\u001a\u00020\u00012\u0006\u0010\u0016\u001a\u00020\u0003H\u0016J\u0010\u0010\u0018\u001a\u00020\u00032\u0006\u0010\u0019\u001a\u00020\u0010H\u0016J\u0010\u0010\u001a\u001a\u00020\u00102\u0006\u0010\u0016\u001a\u00020\u0003H\u0016J\u0010\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u0016\u001a\u00020\u0003H\u0016R\u0014\u0010\u0002\u001a\u00020\u00038VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005R\u0014\u0010\u0006\u001a\u00020\u00078VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\b\u0010\tR\u001b\u0010\n\u001a\u00020\u00018BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000b\u0010\fR\u0014\u0010\u000f\u001a\u00020\u00108VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0011\u0010\u0012¨\u0006\u001d"}, m4298d2 = {"kotlinx/serialization/internal/UtilKt$defer$1", "Lkotlinx/serialization/SerialDescriptor;", "elementsCount", "", "getElementsCount", "()I", "kind", "Lkotlinx/serialization/SerialKind;", "getKind", "()Lkotlinx/serialization/SerialKind;", "original", "getOriginal", "()Lkotlinx/serialization/SerialDescriptor;", "original$delegate", "Lkotlin/Lazy;", "serialName", "", "getSerialName", "()Ljava/lang/String;", "getElementAnnotations", "", "", "index", "getElementDescriptor", "getElementIndex", "name", "getElementName", "isElementOptional", "", "kotlinx-serialization-runtime"}, m4297k = 1, m4296mv = {1, 1, 16})
    /* renamed from: kotlinx.serialization.b.bp$a */
    /* loaded from: classes5-dex2jar.jar:kotlinx/serialization/b/bp$a.class */
    public static final class C20387a implements SerialDescriptor {

        /* renamed from: a */
        final /* synthetic */ Function0 f66881a;

        /* renamed from: b */
        private final Lazy f66882b;

        C20387a(Function0 function0) {
            this.f66881a = function0;
            this.f66882b = C18399h.m3897a(function0);
        }

        /* renamed from: e */
        private final SerialDescriptor m711e() {
            return (SerialDescriptor) this.f66882b.mo1102a();
        }

        @Override // kotlinx.serialization.SerialDescriptor
        /* renamed from: a */
        public final int mo663a(String name) {
            C18524p.m3841c(name, "name");
            return m711e().mo663a(name);
        }

        @Override // kotlinx.serialization.SerialDescriptor
        /* renamed from: a */
        public final String mo665a() {
            return m711e().mo665a();
        }

        @Override // kotlinx.serialization.SerialDescriptor
        /* renamed from: a */
        public final String mo664a(int i) {
            return m711e().mo664a(i);
        }

        @Override // kotlinx.serialization.SerialDescriptor
        /* renamed from: b */
        public final SerialDescriptor mo661b(int i) {
            return m711e().mo661b(i);
        }

        @Override // kotlinx.serialization.SerialDescriptor
        /* renamed from: b */
        public final AbstractC20458p mo662b() {
            return m711e().mo662b();
        }

        @Override // kotlinx.serialization.SerialDescriptor
        /* renamed from: c */
        public final boolean mo660c() {
            return false;
        }

        @Override // kotlinx.serialization.SerialDescriptor
        /* renamed from: d */
        public final int mo659d() {
            return m711e().mo659d();
        }
    }

    /* renamed from: a */
    public static final Set<String> m712a(SerialDescriptor cachedSerialNames) {
        C18524p.m3841c(cachedSerialNames, "$this$cachedSerialNames");
        if (cachedSerialNames instanceof C20362ay) {
            return ((C20362ay) cachedSerialNames).m721e().keySet();
        }
        HashSet hashSet = new HashSet(cachedSerialNames.mo659d());
        int mo659d = cachedSerialNames.mo659d();
        for (int i = 0; i < mo659d; i++) {
            hashSet.add(cachedSerialNames.mo664a(i));
        }
        return hashSet;
    }

    /* renamed from: a */
    public static final SerialDescriptor m713a(Function0<? extends SerialDescriptor> deferred) {
        C18524p.m3841c(deferred, "deferred");
        return new C20387a(deferred);
    }
}
