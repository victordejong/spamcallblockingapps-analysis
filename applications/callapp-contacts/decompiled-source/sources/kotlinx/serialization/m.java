package kotlinx.serialization;

import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.p;
import kotlin.jvm.internal.r;
import kotlin.v;
import kotlinx.serialization.b.bd;
@Metadata(bv = {1, 0, 3}, d1 = {"��0\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\u001a\u0016\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b\u001a3\u0010\t\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\n2\u0019\b\u0002\u0010\u000b\u001a\u0013\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000e0\f¢\u0006\u0002\b\u000f\u001a\u0015\u0010\u0010\u001a\u00020\u0001\"\u0006\b��\u0010\u0011\u0018\u0001*\u00020\rH\u0087\b\u001a\u0015\u0010\u0012\u001a\u00020\u0001\"\u0006\b��\u0010\u0011\u0018\u0001*\u00020\rH\u0087\b\u001a\u0012\u0010\u0012\u001a\u00020\u0001*\u00020\r2\u0006\u0010\u0013\u001a\u00020\u0001\u001a\u001d\u0010\u0014\u001a\u00020\u0001\"\u0006\b��\u0010\u0015\u0018\u0001\"\u0006\b\u0001\u0010\u0016\u0018\u0001*\u00020\rH\u0087\b\u001a\u001a\u0010\u0014\u001a\u00020\u0001*\u00020\r2\u0006\u0010\u0017\u001a\u00020\u00012\u0006\u0010\u0018\u001a\u00020\u0001\u001a\u0015\u0010\u0019\u001a\u00020\u0001\"\u0006\b��\u0010\u0011\u0018\u0001*\u00020\rH\u0087\b\u001a\u0012\u0010\u0019\u001a\u00020\u0001*\u00020\r2\u0006\u0010\u0013\u001a\u00020\u0001\"\u0015\u0010��\u001a\u00020\u0001*\u00020\u00018F¢\u0006\u0006\u001a\u0004\b\u0002\u0010\u0003¨\u0006\u001a"}, d2 = {"nullable", "Lkotlinx/serialization/SerialDescriptor;", "getNullable", "(Lkotlinx/serialization/SerialDescriptor;)Lkotlinx/serialization/SerialDescriptor;", "PrimitiveDescriptor", "serialName", "", "kind", "Lkotlinx/serialization/PrimitiveKind;", "SerialDescriptor", "Lkotlinx/serialization/SerialKind;", "builder", "Lkotlin/Function1;", "Lkotlinx/serialization/SerialDescriptorBuilder;", "", "Lkotlin/ExtensionFunctionType;", "descriptor", "T", "listDescriptor", "typeDescriptor", "mapDescriptor", "K", "V", "keyDescriptor", "valueDescriptor", "setDescriptor", "kotlinx-serialization-runtime"}, k = 2, mv = {1, 1, 16})
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/m.class */
public final class m {

    @Metadata(bv = {1, 0, 3}, d1 = {"��\f\n��\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n��\u0010��\u001a\u00020\u0001*\u00020\u0002H\n¢\u0006\u0002\b\u0003"}, d2 = {"<anonymous>", "", "Lkotlinx/serialization/SerialDescriptorBuilder;", "invoke"}, k = 3, mv = {1, 1, 16})
    /* loaded from: classes5-dex2jar.jar:kotlinx/serialization/m$a.class */
    public static final class a extends r implements Function1<l, v> {

        /* renamed from: a */
        public static final a f39003a = new a();

        a() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ v invoke(l lVar) {
            l receiver = lVar;
            p.c(receiver, "$receiver");
            return v.f38654a;
        }
    }

    public static final SerialDescriptor a(String serialName, j kind) {
        p.c(serialName, "serialName");
        p.c(kind, "kind");
        if (!kotlin.h.p.a((CharSequence) serialName)) {
            return bd.a(serialName, kind);
        }
        throw new IllegalArgumentException("Blank serial names are prohibited".toString());
    }

    public static /* synthetic */ SerialDescriptor a(String str, p pVar) {
        return a(str, pVar, a.f39003a);
    }

    public static final SerialDescriptor a(String serialName, p kind, Function1<? super l, v> builder) {
        p.c(serialName, "serialName");
        p.c(kind, "kind");
        p.c(builder, "builder");
        if (!kotlin.h.p.a((CharSequence) serialName)) {
            l lVar = new l(serialName);
            builder.invoke(lVar);
            return new n(serialName, kind, lVar.f39001c.size(), lVar);
        }
        throw new IllegalArgumentException("Blank serial names are prohibited".toString());
    }
}
