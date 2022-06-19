package kotlinx.serialization.p572b;

import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlinx.serialization.SerialDescriptor;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\b��\u0018��2\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\u0007\u0010\b¨\u0006\t"}, m4298d2 = {"Lkotlinx/serialization/internal/NamedListClassDescriptor;", "Lkotlinx/serialization/internal/ListLikeDescriptor;", "serialName", "", "elementDescriptor", "Lkotlinx/serialization/SerialDescriptor;", "(Ljava/lang/String;Lkotlinx/serialization/SerialDescriptor;)V", "getSerialName", "()Ljava/lang/String;", "kotlinx-serialization-runtime"}, m4297k = 1, m4296mv = {1, 1, 16})
/* renamed from: kotlinx.serialization.b.ar */
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/b/ar.class */
public final class C20355ar extends AbstractC20345aj {

    /* renamed from: a */
    private final String f66837a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C20355ar(String serialName, SerialDescriptor elementDescriptor) {
        super(elementDescriptor, null);
        C18524p.m3841c(serialName, "serialName");
        C18524p.m3841c(elementDescriptor, "elementDescriptor");
        this.f66837a = serialName;
    }

    @Override // kotlinx.serialization.SerialDescriptor
    /* renamed from: a */
    public final String mo665a() {
        return this.f66837a;
    }
}
