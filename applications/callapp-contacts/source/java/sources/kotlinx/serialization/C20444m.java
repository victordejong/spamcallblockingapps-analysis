package kotlinx.serialization;

import kotlin.C20128v;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.jvm.internal.C18524p;
import kotlin.p532h.C18425p;
import kotlinx.serialization.p572b.C20370bd;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��0\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\u001a\u0016\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b\u001a3\u0010\t\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\n2\u0019\b\u0002\u0010\u000b\u001a\u0013\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000e0\f¢\u0006\u0002\b\u000f\u001a\u0015\u0010\u0010\u001a\u00020\u0001\"\u0006\b��\u0010\u0011\u0018\u0001*\u00020\rH\u0087\b\u001a\u0015\u0010\u0012\u001a\u00020\u0001\"\u0006\b��\u0010\u0011\u0018\u0001*\u00020\rH\u0087\b\u001a\u0012\u0010\u0012\u001a\u00020\u0001*\u00020\r2\u0006\u0010\u0013\u001a\u00020\u0001\u001a\u001d\u0010\u0014\u001a\u00020\u0001\"\u0006\b��\u0010\u0015\u0018\u0001\"\u0006\b\u0001\u0010\u0016\u0018\u0001*\u00020\rH\u0087\b\u001a\u001a\u0010\u0014\u001a\u00020\u0001*\u00020\r2\u0006\u0010\u0017\u001a\u00020\u00012\u0006\u0010\u0018\u001a\u00020\u0001\u001a\u0015\u0010\u0019\u001a\u00020\u0001\"\u0006\b��\u0010\u0011\u0018\u0001*\u00020\rH\u0087\b\u001a\u0012\u0010\u0019\u001a\u00020\u0001*\u00020\r2\u0006\u0010\u0013\u001a\u00020\u0001\"\u0015\u0010��\u001a\u00020\u0001*\u00020\u00018F¢\u0006\u0006\u001a\u0004\b\u0002\u0010\u0003¨\u0006\u001a"}, m4298d2 = {"nullable", "Lkotlinx/serialization/SerialDescriptor;", "getNullable", "(Lkotlinx/serialization/SerialDescriptor;)Lkotlinx/serialization/SerialDescriptor;", "PrimitiveDescriptor", "serialName", "", "kind", "Lkotlinx/serialization/PrimitiveKind;", "SerialDescriptor", "Lkotlinx/serialization/SerialKind;", "builder", "Lkotlin/Function1;", "Lkotlinx/serialization/SerialDescriptorBuilder;", "", "Lkotlin/ExtensionFunctionType;", "descriptor", "T", "listDescriptor", "typeDescriptor", "mapDescriptor", "K", "V", "keyDescriptor", "valueDescriptor", "setDescriptor", "kotlinx-serialization-runtime"}, m4297k = 2, m4296mv = {1, 1, 16})
/* renamed from: kotlinx.serialization.m */
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/m.class */
public final class C20444m {

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\f\n��\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n��\u0010��\u001a\u00020\u0001*\u00020\u0002H\n¢\u0006\u0002\b\u0003"}, m4298d2 = {"<anonymous>", "", "Lkotlinx/serialization/SerialDescriptorBuilder;", "invoke"}, m4297k = 3, m4296mv = {1, 1, 16})
    /* renamed from: kotlinx.serialization.m$a */
    /* loaded from: classes5-dex2jar.jar:kotlinx/serialization/m$a.class */
    public static final class C20445a extends AbstractC18526r implements Function1<C20443l, C20128v> {

        /* renamed from: a */
        public static final C20445a f66946a = new C20445a();

        C20445a() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ C20128v invoke(C20443l c20443l) {
            C20443l receiver = c20443l;
            C18524p.m3841c(receiver, "$receiver");
            return C20128v.f66529a;
        }
    }

    /* renamed from: a */
    public static final SerialDescriptor m676a(String serialName, AbstractC20424j kind) {
        C18524p.m3841c(serialName, "serialName");
        C18524p.m3841c(kind, "kind");
        if (!C18425p.m3966a((CharSequence) serialName)) {
            return C20370bd.m718a(serialName, kind);
        }
        throw new IllegalArgumentException("Blank serial names are prohibited".toString());
    }

    /* renamed from: a */
    public static /* synthetic */ SerialDescriptor m675a(String str, AbstractC20458p abstractC20458p) {
        return m674a(str, abstractC20458p, C20445a.f66946a);
    }

    /* renamed from: a */
    public static final SerialDescriptor m674a(String serialName, AbstractC20458p kind, Function1<? super C20443l, C20128v> builder) {
        C18524p.m3841c(serialName, "serialName");
        C18524p.m3841c(kind, "kind");
        C18524p.m3841c(builder, "builder");
        if (!C18425p.m3966a((CharSequence) serialName)) {
            C20443l c20443l = new C20443l(serialName);
            builder.invoke(c20443l);
            return new C20455n(serialName, kind, c20443l.f66940c.size(), c20443l);
        }
        throw new IllegalArgumentException("Blank serial names are prohibited".toString());
    }
}
