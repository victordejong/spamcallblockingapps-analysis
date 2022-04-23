package kotlinx.serialization.b;

import kotlin.Metadata;
import kotlin.jvm.internal.p;
import kotlinx.serialization.Decoder;
import kotlinx.serialization.KSerializer;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0014\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0011\n\u0002\b\u0002\bg\u0018��*\u0004\b��\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002J\u0017\u0010\u0003\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00020\u0004H&¢\u0006\u0002\u0010\u0005¨\u0006\u0006"}, d2 = {"Lkotlinx/serialization/internal/GeneratedSerializer;", "T", "Lkotlinx/serialization/KSerializer;", "childSerializers", "", "()[Lkotlinx/serialization/KSerializer;", "kotlinx-serialization-runtime"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/b/w.class */
public interface w<T> extends KSerializer<T> {

    @Metadata(bv = {1, 0, 3}, k = 3, mv = {1, 1, 16})
    /* loaded from: classes5-dex2jar.jar:kotlinx/serialization/b/w$a.class */
    public static final class a {
        public static <T> T a(w<T> wVar, Decoder decoder) {
            p.c(decoder, "decoder");
            return (T) KSerializer.a.a(wVar, decoder);
        }
    }

    KSerializer<?>[] childSerializers();
}
