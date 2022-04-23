package kotlinx.serialization.b;

import java.util.HashSet;
import java.util.Set;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.h;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.p;
import kotlinx.serialization.SerialDescriptor;
@Metadata(bv = {1, 0, 3}, d1 = {"��4\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\"\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n��\u001a\u0016\u0010��\u001a\u00020\u00012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00010\u0003H��\u001a\u0012\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005*\u00020\u0001H��\u001a\u001d\u0010\u0007\u001a\b\u0012\u0004\u0012\u0002H\t0\b\"\u0004\b��\u0010\t*\u0006\u0012\u0002\b\u00030\bH\u0081\b\u001a\u0018\u0010\n\u001a\u00020\u000b*\u00060\fj\u0002`\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0007¨\u0006\u0010"}, d2 = {"defer", "Lkotlinx/serialization/SerialDescriptor;", "deferred", "Lkotlin/Function0;", "cachedSerialNames", "", "", "cast", "Lkotlinx/serialization/KSerializer;", "T", "readExactNBytes", "", "Ljava/io/InputStream;", "Lkotlinx/io/InputStream;", "bytes", "", "kotlinx-serialization-runtime"}, k = 2, mv = {1, 1, 16})
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/b/bp.class */
public final class bp {

    @Metadata(bv = {1, 0, 3}, d1 = {"��5\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0010\u001b\n\u0002\b\u0006\n\u0002\u0010\u000b\n��*\u0001��\b\n\u0018��2\u00020\u0001J\u0016\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00150\u00142\u0006\u0010\u0016\u001a\u00020\u0003H\u0016J\u0010\u0010\u0017\u001a\u00020\u00012\u0006\u0010\u0016\u001a\u00020\u0003H\u0016J\u0010\u0010\u0018\u001a\u00020\u00032\u0006\u0010\u0019\u001a\u00020\u0010H\u0016J\u0010\u0010\u001a\u001a\u00020\u00102\u0006\u0010\u0016\u001a\u00020\u0003H\u0016J\u0010\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u0016\u001a\u00020\u0003H\u0016R\u0014\u0010\u0002\u001a\u00020\u00038VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005R\u0014\u0010\u0006\u001a\u00020\u00078VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\b\u0010\tR\u001b\u0010\n\u001a\u00020\u00018BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000b\u0010\fR\u0014\u0010\u000f\u001a\u00020\u00108VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0011\u0010\u0012¨\u0006\u001d"}, d2 = {"kotlinx/serialization/internal/UtilKt$defer$1", "Lkotlinx/serialization/SerialDescriptor;", "elementsCount", "", "getElementsCount", "()I", "kind", "Lkotlinx/serialization/SerialKind;", "getKind", "()Lkotlinx/serialization/SerialKind;", "original", "getOriginal", "()Lkotlinx/serialization/SerialDescriptor;", "original$delegate", "Lkotlin/Lazy;", "serialName", "", "getSerialName", "()Ljava/lang/String;", "getElementAnnotations", "", "", "index", "getElementDescriptor", "getElementIndex", "name", "getElementName", "isElementOptional", "", "kotlinx-serialization-runtime"}, k = 1, mv = {1, 1, 16})
    /* loaded from: classes5-dex2jar.jar:kotlinx/serialization/b/bp$a.class */
    public static final class a implements SerialDescriptor {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Function0 f38943a;

        /* renamed from: b  reason: collision with root package name */
        private final Lazy f38944b;

        a(Function0 function0) {
            this.f38943a = function0;
            this.f38944b = h.a(function0);
        }

        private final SerialDescriptor e() {
            return (SerialDescriptor) this.f38944b.a();
        }

        @Override // kotlinx.serialization.SerialDescriptor
        public final int a(String name) {
            p.c(name, "name");
            return e().a(name);
        }

        @Override // kotlinx.serialization.SerialDescriptor
        public final String a() {
            return e().a();
        }

        @Override // kotlinx.serialization.SerialDescriptor
        public final String a(int i) {
            return e().a(i);
        }

        @Override // kotlinx.serialization.SerialDescriptor
        public final SerialDescriptor b(int i) {
            return e().b(i);
        }

        @Override // kotlinx.serialization.SerialDescriptor
        public final kotlinx.serialization.p b() {
            return e().b();
        }

        @Override // kotlinx.serialization.SerialDescriptor
        public final boolean c() {
            return false;
        }

        @Override // kotlinx.serialization.SerialDescriptor
        public final int d() {
            return e().d();
        }
    }

    public static final Set<String> a(SerialDescriptor cachedSerialNames) {
        p.c(cachedSerialNames, "$this$cachedSerialNames");
        if (cachedSerialNames instanceof ay) {
            return ((ay) cachedSerialNames).e().keySet();
        }
        HashSet hashSet = new HashSet(cachedSerialNames.d());
        int d2 = cachedSerialNames.d();
        for (int i = 0; i < d2; i++) {
            hashSet.add(cachedSerialNames.a(i));
        }
        return hashSet;
    }

    public static final SerialDescriptor a(Function0<? extends SerialDescriptor> deferred) {
        p.c(deferred, "deferred");
        return new a(deferred);
    }
}
