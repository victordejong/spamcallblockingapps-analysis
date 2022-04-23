package kotlinx.serialization;

import kotlin.Metadata;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004¨\u0006\u0005"}, d2 = {"Lkotlinx/serialization/UpdateNotSupportedException;", "Lkotlinx/serialization/SerializationException;", "className", "", "(Ljava/lang/String;)V", "kotlinx-serialization-runtime"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/UpdateNotSupportedException.class */
public final class UpdateNotSupportedException extends SerializationException {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UpdateNotSupportedException(String className) {
        super("Update is not supported for ".concat(String.valueOf(className)), null, 2, null);
        p.c(className, "className");
    }
}
