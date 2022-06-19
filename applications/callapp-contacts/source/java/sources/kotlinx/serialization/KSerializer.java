package kotlinx.serialization;

import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"�� \n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018��*\u0004\b��\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u00022\b\u0012\u0004\u0012\u0002H\u00010\u0003J\u001d\u0010\b\u001a\u00028��2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00028��H\u0016¢\u0006\u0002\u0010\fR\u0012\u0010\u0004\u001a\u00020\u0005X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007¨\u0006\r"}, m4298d2 = {"Lkotlinx/serialization/KSerializer;", "T", "Lkotlinx/serialization/SerializationStrategy;", "Lkotlinx/serialization/DeserializationStrategy;", "descriptor", "Lkotlinx/serialization/SerialDescriptor;", "getDescriptor", "()Lkotlinx/serialization/SerialDescriptor;", "patch", "decoder", "Lkotlinx/serialization/Decoder;", "old", "(Lkotlinx/serialization/Decoder;Ljava/lang/Object;)Ljava/lang/Object;", "kotlinx-serialization-runtime"}, m4297k = 1, m4296mv = {1, 1, 16})
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/KSerializer.class */
public interface KSerializer<T> extends AbstractC20415d<T>, AbstractC20460r<T> {

    @Metadata(m4300bv = {1, 0, 3}, m4297k = 3, m4296mv = {1, 1, 16})
    /* renamed from: kotlinx.serialization.KSerializer$a */
    /* loaded from: classes5-dex2jar.jar:kotlinx/serialization/KSerializer$a.class */
    public static final class C20326a {
        /* renamed from: a */
        public static <T> T m746a(KSerializer<T> kSerializer, Decoder decoder) {
            C18524p.m3841c(decoder, "decoder");
            throw new UpdateNotSupportedException(kSerializer.getDescriptor().mo665a());
        }
    }

    @Override // kotlinx.serialization.AbstractC20415d, kotlinx.serialization.AbstractC20460r
    SerialDescriptor getDescriptor();
}
