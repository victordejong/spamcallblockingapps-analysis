package kotlinx.serialization.json;

import com.mopub.common.Constants;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��.\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n��\n\u0002\u0010\u000b\n��\n\u0002\u0010\u0004\n��\u0018��2\u00020\u0001B\u0007\b��¢\u0006\u0002\u0010\u0002J\u001c\u0010\t\u001a\u00020\n*\u00020\u00052\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0086\u0004¢\u0006\u0002\u0010\rJ\u0017\u0010\t\u001a\u00020\n*\u00020\u00052\b\u0010\u000b\u001a\u0004\u0018\u00010\u000eH\u0086\u0004J\u0017\u0010\t\u001a\u00020\n*\u00020\u00052\b\u0010\u000b\u001a\u0004\u0018\u00010\u0005H\u0086\u0004J\u0015\u0010\t\u001a\u00020\n*\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u0006H\u0086\u0004R \u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004X\u0080\u0004¢\u0006\b\n��\u001a\u0004\b\u0007\u0010\b¨\u0006\u000f"}, m4298d2 = {"Lkotlinx/serialization/json/JsonObjectBuilder;", "", "()V", Constants.VAST_TRACKER_CONTENT, "", "", "Lkotlinx/serialization/json/JsonElement;", "getContent$kotlinx_serialization_runtime", "()Ljava/util/Map;", "to", "", "value", "", "(Ljava/lang/String;Ljava/lang/Boolean;)V", "", "kotlinx-serialization-runtime"}, m4297k = 1, m4296mv = {1, 1, 16})
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/json/JsonObjectBuilder.class */
public final class JsonObjectBuilder {
    private final Map<String, JsonElement> content = new LinkedHashMap();

    public final Map<String, JsonElement> getContent$kotlinx_serialization_runtime() {
        return this.content;
    }

    /* renamed from: to */
    public final void m687to(String to, Boolean bool) {
        C18524p.m3841c(to, "$this$to");
        if (this.content.get(to) == null) {
            this.content.put(to, JsonElementsKt.JsonPrimitive(bool));
            return;
        }
        throw new IllegalArgumentException(("Key " + to + " is already registered in builder").toString());
    }

    /* renamed from: to */
    public final void m686to(String to, Number number) {
        C18524p.m3841c(to, "$this$to");
        if (this.content.get(to) == null) {
            this.content.put(to, JsonElementsKt.JsonPrimitive(number));
            return;
        }
        throw new IllegalArgumentException(("Key " + to + " is already registered in builder").toString());
    }

    /* renamed from: to */
    public final void m685to(String to, String str) {
        C18524p.m3841c(to, "$this$to");
        if (this.content.get(to) == null) {
            this.content.put(to, JsonElementsKt.JsonPrimitive(str));
            return;
        }
        throw new IllegalArgumentException(("Key " + to + " is already registered in builder").toString());
    }

    /* renamed from: to */
    public final void m684to(String to, JsonElement value) {
        C18524p.m3841c(to, "$this$to");
        C18524p.m3841c(value, "value");
        if (this.content.get(to) == null) {
            this.content.put(to, value);
            return;
        }
        throw new IllegalArgumentException(("Key " + to + " is already registered in builder").toString());
    }
}
