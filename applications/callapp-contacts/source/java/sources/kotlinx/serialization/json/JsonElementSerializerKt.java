package kotlinx.serialization.json;

import kotlin.Metadata;
import kotlin.jvm.internal.C18496ac;
import kotlin.jvm.internal.C18524p;
import kotlinx.serialization.Decoder;
import kotlinx.serialization.Encoder;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"�� \n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\u001a\u0010\u0010��\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0002\u001a\u0010\u0010��\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u0005H\u0002\u001a\f\u0010\u0006\u001a\u00020\u0007*\u00020\u0003H��\u001a\f\u0010\b\u001a\u00020\t*\u00020\u0005H��¨\u0006\n"}, m4298d2 = {"verify", "", "decoder", "Lkotlinx/serialization/Decoder;", "encoder", "Lkotlinx/serialization/Encoder;", "asJsonInput", "Lkotlinx/serialization/json/JsonInput;", "asJsonOutput", "Lkotlinx/serialization/json/JsonOutput;", "kotlinx-serialization-runtime"}, m4297k = 2, m4296mv = {1, 1, 16})
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/json/JsonElementSerializerKt.class */
public final class JsonElementSerializerKt {
    public static final /* synthetic */ void access$verify(Decoder decoder) {
        verify(decoder);
    }

    public static final /* synthetic */ void access$verify(Encoder encoder) {
        verify(encoder);
    }

    public static final JsonInput asJsonInput(Decoder asJsonInput) {
        C18524p.m3841c(asJsonInput, "$this$asJsonInput");
        JsonInput jsonInput = (JsonInput) (!(asJsonInput instanceof JsonInput) ? null : asJsonInput);
        if (jsonInput != null) {
            return jsonInput;
        }
        throw new IllegalStateException("This serializer can be used only with Json format.Expected Decoder to be JsonInput, got " + C18496ac.m3882b(asJsonInput.getClass()));
    }

    public static final JsonOutput asJsonOutput(Encoder asJsonOutput) {
        C18524p.m3841c(asJsonOutput, "$this$asJsonOutput");
        JsonOutput jsonOutput = (JsonOutput) (!(asJsonOutput instanceof JsonOutput) ? null : asJsonOutput);
        if (jsonOutput != null) {
            return jsonOutput;
        }
        throw new IllegalStateException("This serializer can be used only with Json format.Expected Encoder to be JsonOutput, got " + C18496ac.m3882b(asJsonOutput.getClass()));
    }

    public static final void verify(Decoder decoder) {
        asJsonInput(decoder);
    }

    public static final void verify(Encoder encoder) {
        asJsonOutput(encoder);
    }
}
