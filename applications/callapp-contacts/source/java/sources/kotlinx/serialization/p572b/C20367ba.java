package kotlinx.serialization.p572b;

import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlinx.serialization.SerialDescriptor;
import kotlinx.serialization.json.internal.TreeJsonOutputKt;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\b��\u0018��2\u00020\u0001B\u000f\b��\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u0006X\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\u0007\u0010\b¨\u0006\t"}, m4298d2 = {"Lkotlinx/serialization/internal/PrimitiveArrayDescriptor;", "Lkotlinx/serialization/internal/ListLikeDescriptor;", TreeJsonOutputKt.PRIMITIVE_TAG, "Lkotlinx/serialization/SerialDescriptor;", "(Lkotlinx/serialization/SerialDescriptor;)V", "serialName", "", "getSerialName", "()Ljava/lang/String;", "kotlinx-serialization-runtime"}, m4297k = 1, m4296mv = {1, 1, 16})
/* renamed from: kotlinx.serialization.b.ba */
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/b/ba.class */
public final class C20367ba extends AbstractC20345aj {

    /* renamed from: a */
    private final String f66852a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C20367ba(SerialDescriptor primitive) {
        super(primitive, null);
        C18524p.m3841c(primitive, "primitive");
        this.f66852a = primitive.mo665a() + "Array";
    }

    @Override // kotlinx.serialization.SerialDescriptor
    /* renamed from: a */
    public final String mo665a() {
        return this.f66852a;
    }
}
