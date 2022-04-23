package kotlinx.serialization.json.internal;

import com.mopub.common.Constants;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.p;
import kotlin.v;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.json.JsonElement;
import kotlinx.serialization.json.JsonObject;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"��,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\b\u0007\b\u0012\u0018��2\u00020\u0001B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005¢\u0006\u0002\u0010\bJ\b\u0010\u000e\u001a\u00020\u0006H\u0016J\u0018\u0010\u000f\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\u0006H\u0016R \u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u00060\nX\u0084\u0004¢\u0006\b\n��\u001a\u0004\b\f\u0010\r¨\u0006\u0012"}, d2 = {"Lkotlinx/serialization/json/internal/JsonTreeOutput;", "Lkotlinx/serialization/json/internal/AbstractJsonTreeOutput;", "json", "Lkotlinx/serialization/json/Json;", "nodeConsumer", "Lkotlin/Function1;", "Lkotlinx/serialization/json/JsonElement;", "", "(Lkotlinx/serialization/json/Json;Lkotlin/jvm/functions/Function1;)V", Constants.VAST_TRACKER_CONTENT, "", "", "getContent", "()Ljava/util/Map;", "getCurrent", "putElement", "key", "element", "kotlinx-serialization-runtime"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/json/internal/JsonTreeOutput.class */
public class JsonTreeOutput extends AbstractJsonTreeOutput {
    private final Map<String, JsonElement> content = new LinkedHashMap();

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public JsonTreeOutput(Json json, Function1<? super JsonElement, v> nodeConsumer) {
        super(json, nodeConsumer, null);
        p.c(json, "json");
        p.c(nodeConsumer, "nodeConsumer");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final Map<String, JsonElement> getContent() {
        return this.content;
    }

    @Override // kotlinx.serialization.json.internal.AbstractJsonTreeOutput
    public JsonElement getCurrent() {
        return new JsonObject(this.content);
    }

    @Override // kotlinx.serialization.json.internal.AbstractJsonTreeOutput
    public void putElement(String key, JsonElement element) {
        p.c(key, "key");
        p.c(element, "element");
        this.content.put(key, element);
    }
}
