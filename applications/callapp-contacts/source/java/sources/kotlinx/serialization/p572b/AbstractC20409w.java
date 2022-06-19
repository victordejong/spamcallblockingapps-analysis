package kotlinx.serialization.p572b;

import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlinx.serialization.Decoder;
import kotlinx.serialization.KSerializer;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0014\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0011\n\u0002\b\u0002\bg\u0018��*\u0004\b��\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002J\u0017\u0010\u0003\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00020\u0004H&¢\u0006\u0002\u0010\u0005¨\u0006\u0006"}, m4298d2 = {"Lkotlinx/serialization/internal/GeneratedSerializer;", "T", "Lkotlinx/serialization/KSerializer;", "childSerializers", "", "()[Lkotlinx/serialization/KSerializer;", "kotlinx-serialization-runtime"}, m4297k = 1, m4296mv = {1, 1, 16})
/* renamed from: kotlinx.serialization.b.w */
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/b/w.class */
public interface AbstractC20409w<T> extends KSerializer<T> {

    @Metadata(m4300bv = {1, 0, 3}, m4297k = 3, m4296mv = {1, 1, 16})
    /* renamed from: kotlinx.serialization.b.w$a */
    /* loaded from: classes5-dex2jar.jar:kotlinx/serialization/b/w$a.class */
    public static final class C20410a {
        /* renamed from: a */
        public static <T> T m701a(AbstractC20409w<T> abstractC20409w, Decoder decoder) {
            C18524p.m3841c(decoder, "decoder");
            return (T) KSerializer.C20326a.m746a(abstractC20409w, decoder);
        }
    }

    KSerializer<?>[] childSerializers();
}
