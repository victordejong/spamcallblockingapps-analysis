package kotlinx.serialization.json;

import kotlin.Metadata;
import kotlin.jvm.internal.ac;
import kotlin.jvm.internal.p;
import kotlinx.serialization.Decoder;
import kotlinx.serialization.Encoder;
@Metadata(bv = {1, 0, 3}, d1 = {"�� \n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\u001a\u0010\u0010��\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0002\u001a\u0010\u0010��\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u0005H\u0002\u001a\f\u0010\u0006\u001a\u00020\u0007*\u00020\u0003H��\u001a\f\u0010\b\u001a\u00020\t*\u00020\u0005H��¨\u0006\n"}, d2 = {"verify", "", "decoder", "Lkotlinx/serialization/Decoder;", "encoder", "Lkotlinx/serialization/Encoder;", "asJsonInput", "Lkotlinx/serialization/json/JsonInput;", "asJsonOutput", "Lkotlinx/serialization/json/JsonOutput;", "kotlinx-serialization-runtime"}, k = 2, mv = {1, 1, 16})
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/json/JsonElementSerializerKt.class */
public final class JsonElementSerializerKt {
    public static final /* synthetic */ void access$verify(Decoder decoder) {
        verify(decoder);
    }

    public static final /* synthetic */ void access$verify(Encoder encoder) {
        verify(encoder);
    }

    public static final JsonInput asJsonInput(Decoder asJsonInput) {
        p.c(asJsonInput, "$this$asJsonInput");
        JsonInput jsonInput = (JsonInput) (!(asJsonInput instanceof JsonInput) ? null : asJsonInput);
        if (jsonInput != null) {
            return jsonInput;
        }
        throw new IllegalStateException("This serializer can be used only with Json format.Expected Decoder to be JsonInput, got " + ac.b(asJsonInput.getClass()));
    }

    public static final JsonOutput asJsonOutput(Encoder asJsonOutput) {
        p.c(asJsonOutput, "$this$asJsonOutput");
        JsonOutput jsonOutput = (JsonOutput) (!(asJsonOutput instanceof JsonOutput) ? null : asJsonOutput);
        if (jsonOutput != null) {
            return jsonOutput;
        }
        throw new IllegalStateException("This serializer can be used only with Json format.Expected Encoder to be JsonOutput, got " + ac.b(asJsonOutput.getClass()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void verify(Decoder decoder) {
        asJsonInput(decoder);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void verify(Encoder encoder) {
        asJsonOutput(encoder);
    }
}
