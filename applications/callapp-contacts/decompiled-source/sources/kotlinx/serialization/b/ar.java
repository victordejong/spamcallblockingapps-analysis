package kotlinx.serialization.b;

import kotlin.Metadata;
import kotlin.jvm.internal.p;
import kotlinx.serialization.SerialDescriptor;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\b��\u0018��2\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lkotlinx/serialization/internal/NamedListClassDescriptor;", "Lkotlinx/serialization/internal/ListLikeDescriptor;", "serialName", "", "elementDescriptor", "Lkotlinx/serialization/SerialDescriptor;", "(Ljava/lang/String;Lkotlinx/serialization/SerialDescriptor;)V", "getSerialName", "()Ljava/lang/String;", "kotlinx-serialization-runtime"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/b/ar.class */
public final class ar extends aj {

    /* renamed from: a  reason: collision with root package name */
    private final String f38903a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ar(String serialName, SerialDescriptor elementDescriptor) {
        super(elementDescriptor, null);
        p.c(serialName, "serialName");
        p.c(elementDescriptor, "elementDescriptor");
        this.f38903a = serialName;
    }

    @Override // kotlinx.serialization.SerialDescriptor
    public final String a() {
        return this.f38903a;
    }
}
