package kotlinx.serialization.json;

import com.mopub.common.Constants;
import java.util.Collection;
import java.util.Map;
import java.util.Set;
import java.util.function.BiFunction;
import java.util.function.Function;
import kotlin.Metadata;
import kotlin.a.ai;
import kotlin.a.n;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.a.a;
import kotlin.jvm.internal.ac;
import kotlin.jvm.internal.p;
import kotlinx.serialization.KSerializer;
@Metadata(bv = {1, 0, 3}, d1 = {"��P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\"\n\u0002\u0010&\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u001e\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0087\b\u0018�� 42\u00020\u00012\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00010\u0002:\u00014B\u0019\u0012\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00010\u0002¢\u0006\u0002\u0010\u0005J\u0015\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00010\u0002HÆ\u0003J\u0011\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u0003H\u0096\u0001J\u0011\u0010\u001e\u001a\u00020\u001c2\u0006\u0010\u001f\u001a\u00020\u0001H\u0096\u0001J\u001f\u0010 \u001a\u00020��2\u0014\b\u0002\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00010\u0002HÆ\u0001J\u0013\u0010!\u001a\u00020\u001c2\b\u0010\"\u001a\u0004\u0018\u00010#H\u0096\u0002J\u0013\u0010$\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u001d\u001a\u00020\u0003H\u0096\u0003J\u000e\u0010%\u001a\u00020&2\u0006\u0010\u001d\u001a\u00020\u0003J\u0010\u0010'\u001a\u0004\u0018\u00010&2\u0006\u0010\u001d\u001a\u00020\u0003J\"\u0010(\u001a\u0002H)\"\n\b��\u0010)\u0018\u0001*\u00020\u00012\u0006\u0010\u001d\u001a\u00020\u0003H\u0086\b¢\u0006\u0002\u0010*J$\u0010+\u001a\u0004\u0018\u0001H)\"\n\b��\u0010)\u0018\u0001*\u00020\u00012\u0006\u0010\u001d\u001a\u00020\u0003H\u0086\b¢\u0006\u0002\u0010*J\u000e\u0010,\u001a\u00020��2\u0006\u0010\u001d\u001a\u00020\u0003J\u0010\u0010-\u001a\u0004\u0018\u00010��2\u0006\u0010\u001d\u001a\u00020\u0003J\u000e\u0010.\u001a\u00020/2\u0006\u0010\u001d\u001a\u00020\u0003J\u0010\u00100\u001a\u0004\u0018\u00010/2\u0006\u0010\u001d\u001a\u00020\u0003J\b\u00101\u001a\u00020\u0013H\u0016J\t\u00102\u001a\u00020\u001cH\u0096\u0001J\b\u00103\u001a\u00020\u0003H\u0016R\u001d\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00010\u0002¢\u0006\b\n��\u001a\u0004\b\u0006\u0010\u0007R$\u0010\b\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00010\n0\tX\u0096\u0005¢\u0006\u0006\u001a\u0004\b\u000b\u0010\fR\u0014\u0010\r\u001a\u00020��X\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\u000e\u0010\u000fR\u0018\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00030\tX\u0096\u0005¢\u0006\u0006\u001a\u0004\b\u0011\u0010\fR\u0012\u0010\u0012\u001a\u00020\u0013X\u0096\u0005¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u0015R\u0018\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00010\u0017X\u0096\u0005¢\u0006\u0006\u001a\u0004\b\u0018\u0010\u0019¨\u00065"}, d2 = {"Lkotlinx/serialization/json/JsonObject;", "Lkotlinx/serialization/json/JsonElement;", "", "", Constants.VAST_TRACKER_CONTENT, "(Ljava/util/Map;)V", "getContent", "()Ljava/util/Map;", "entries", "", "", "getEntries", "()Ljava/util/Set;", "jsonObject", "getJsonObject", "()Lkotlinx/serialization/json/JsonObject;", "keys", "getKeys", "size", "", "getSize", "()I", "values", "", "getValues", "()Ljava/util/Collection;", "component1", "containsKey", "", "key", "containsValue", "value", "copy", "equals", "other", "", "get", "getArray", "Lkotlinx/serialization/json/JsonArray;", "getArrayOrNull", "getAs", "J", "(Ljava/lang/String;)Lkotlinx/serialization/json/JsonElement;", "getAsOrNull", "getObject", "getObjectOrNull", "getPrimitive", "Lkotlinx/serialization/json/JsonPrimitive;", "getPrimitiveOrNull", "hashCode", "isEmpty", "toString", "Companion", "kotlinx-serialization-runtime"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/json/JsonObject.class */
public final class JsonObject extends JsonElement implements Map<String, JsonElement>, a {
    public static final Companion Companion = new Companion(null);
    private final Map<String, JsonElement> content;
    private final JsonObject jsonObject = this;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0016\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0001¨\u0006\u0006"}, d2 = {"Lkotlinx/serialization/json/JsonObject$Companion;", "", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lkotlinx/serialization/json/JsonObject;", "kotlinx-serialization-runtime"}, k = 1, mv = {1, 1, 16})
    /* loaded from: classes5-dex2jar.jar:kotlinx/serialization/json/JsonObject$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final KSerializer<JsonObject> serializer() {
            return JsonObjectSerializer.INSTANCE;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public JsonObject(Map<String, ? extends JsonElement> content) {
        super(null);
        p.c(content, "content");
        this.content = content;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ JsonObject copy$default(JsonObject jsonObject, Map map, int i, Object obj) {
        if ((i & 1) != 0) {
            map = jsonObject.content;
        }
        return jsonObject.copy(map);
    }

    @Override // java.util.Map
    public final void clear() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public final Map<String, JsonElement> component1() {
        return this.content;
    }

    @Override // java.util.Map
    public final /* synthetic */ JsonElement compute(String str, BiFunction<? super String, ? super JsonElement, ? extends JsonElement> biFunction) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    /* renamed from: compute  reason: avoid collision after fix types in other method */
    public final JsonElement compute2(String str, BiFunction<? super String, ? super JsonElement, ? extends JsonElement> biFunction) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public final /* synthetic */ JsonElement computeIfAbsent(String str, Function<? super String, ? extends JsonElement> function) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    /* renamed from: computeIfAbsent  reason: avoid collision after fix types in other method */
    public final JsonElement computeIfAbsent2(String str, Function<? super String, ? extends JsonElement> function) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public final /* synthetic */ JsonElement computeIfPresent(String str, BiFunction<? super String, ? super JsonElement, ? extends JsonElement> biFunction) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    /* renamed from: computeIfPresent  reason: avoid collision after fix types in other method */
    public final JsonElement computeIfPresent2(String str, BiFunction<? super String, ? super JsonElement, ? extends JsonElement> biFunction) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public final /* bridge */ boolean containsKey(Object obj) {
        if (!(obj instanceof String)) {
            return false;
        }
        return containsKey((String) obj);
    }

    public final boolean containsKey(String key) {
        p.c(key, "key");
        return this.content.containsKey(key);
    }

    @Override // java.util.Map
    public final /* bridge */ boolean containsValue(Object obj) {
        if (!(obj instanceof JsonElement)) {
            return false;
        }
        return containsValue((JsonElement) obj);
    }

    public final boolean containsValue(JsonElement value) {
        p.c(value, "value");
        return this.content.containsValue(value);
    }

    public final JsonObject copy(Map<String, ? extends JsonElement> content) {
        p.c(content, "content");
        return new JsonObject(content);
    }

    @Override // java.util.Map
    public final Set<Map.Entry<String, JsonElement>> entrySet() {
        return getEntries();
    }

    @Override // java.util.Map
    public final boolean equals(Object obj) {
        return p.a(this.content, obj);
    }

    @Override // java.util.Map
    public final /* bridge */ JsonElement get(Object obj) {
        if (!(obj instanceof String)) {
            return null;
        }
        return get((String) obj);
    }

    public final JsonElement get(String key) {
        p.c(key, "key");
        return this.content.get(key);
    }

    public final JsonArray getArray(String key) {
        p.c(key, "key");
        Object a2 = ai.a(this, key);
        Object obj = a2;
        if (!(a2 instanceof JsonArray)) {
            obj = null;
        }
        JsonArray jsonArray = (JsonArray) obj;
        if (jsonArray != null) {
            return jsonArray;
        }
        JsonElementKt.unexpectedJson(key, "JsonArray");
        throw null;
    }

    public final JsonArray getArrayOrNull(String key) {
        p.c(key, "key");
        JsonElement jsonElement = this.content.get(key);
        JsonElement jsonElement2 = jsonElement;
        if (!(jsonElement instanceof JsonArray)) {
            jsonElement2 = null;
        }
        return (JsonArray) jsonElement2;
    }

    public final /* synthetic */ <J extends JsonElement> J getAs(String key) {
        p.c(key, "key");
        Object obj = get((Object) key);
        p.b();
        J j = (J) ((JsonElement) obj);
        if (j != null) {
            return j;
        }
        p.b();
        JsonElementKt.unexpectedJson(key, ac.b(JsonElement.class).toString());
        throw null;
    }

    public final /* synthetic */ <J extends JsonElement> J getAsOrNull(String key) {
        p.c(key, "key");
        JsonElement jsonElement = getContent().get(key);
        p.b();
        return (J) jsonElement;
    }

    public final Map<String, JsonElement> getContent() {
        return this.content;
    }

    public final Set<Map.Entry<String, JsonElement>> getEntries() {
        return this.content.entrySet();
    }

    @Override // kotlinx.serialization.json.JsonElement
    public final JsonObject getJsonObject() {
        return this.jsonObject;
    }

    public final Set<String> getKeys() {
        return this.content.keySet();
    }

    public final JsonObject getObject(String key) {
        p.c(key, "key");
        Object a2 = ai.a(this, key);
        Object obj = a2;
        if (!(a2 instanceof JsonObject)) {
            obj = null;
        }
        JsonObject jsonObject = (JsonObject) obj;
        if (jsonObject != null) {
            return jsonObject;
        }
        JsonElementKt.unexpectedJson(key, "JsonObject");
        throw null;
    }

    public final JsonObject getObjectOrNull(String key) {
        p.c(key, "key");
        JsonElement jsonElement = this.content.get(key);
        JsonElement jsonElement2 = jsonElement;
        if (!(jsonElement instanceof JsonObject)) {
            jsonElement2 = null;
        }
        return (JsonObject) jsonElement2;
    }

    public final JsonPrimitive getPrimitive(String key) {
        p.c(key, "key");
        Object a2 = ai.a(this, key);
        Object obj = a2;
        if (!(a2 instanceof JsonPrimitive)) {
            obj = null;
        }
        JsonPrimitive jsonPrimitive = (JsonPrimitive) obj;
        if (jsonPrimitive != null) {
            return jsonPrimitive;
        }
        JsonElementKt.unexpectedJson(key, "JsonPrimitive");
        throw null;
    }

    public final JsonPrimitive getPrimitiveOrNull(String key) {
        p.c(key, "key");
        JsonElement jsonElement = this.content.get(key);
        JsonElement jsonElement2 = jsonElement;
        if (!(jsonElement instanceof JsonPrimitive)) {
            jsonElement2 = null;
        }
        return (JsonPrimitive) jsonElement2;
    }

    public final int getSize() {
        return this.content.size();
    }

    public final Collection<JsonElement> getValues() {
        return this.content.values();
    }

    @Override // java.util.Map
    public final int hashCode() {
        return this.content.hashCode();
    }

    @Override // java.util.Map
    public final boolean isEmpty() {
        return this.content.isEmpty();
    }

    @Override // java.util.Map
    public final Set<String> keySet() {
        return getKeys();
    }

    @Override // java.util.Map
    public final /* synthetic */ JsonElement merge(String str, JsonElement jsonElement, BiFunction<? super JsonElement, ? super JsonElement, ? extends JsonElement> biFunction) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    /* renamed from: merge  reason: avoid collision after fix types in other method */
    public final JsonElement merge2(String str, JsonElement jsonElement, BiFunction<? super JsonElement, ? super JsonElement, ? extends JsonElement> biFunction) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public final /* synthetic */ JsonElement put(String str, JsonElement jsonElement) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    /* renamed from: put  reason: avoid collision after fix types in other method */
    public final JsonElement put2(String str, JsonElement jsonElement) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public final void putAll(Map<? extends String, ? extends JsonElement> map) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public final /* synthetic */ JsonElement putIfAbsent(String str, JsonElement jsonElement) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    /* renamed from: putIfAbsent  reason: avoid collision after fix types in other method */
    public final JsonElement putIfAbsent2(String str, JsonElement jsonElement) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public final JsonElement remove(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public final boolean remove(Object obj, Object obj2) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public final /* synthetic */ JsonElement replace(String str, JsonElement jsonElement) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    /* renamed from: replace  reason: avoid collision after fix types in other method */
    public final JsonElement replace2(String str, JsonElement jsonElement) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public final /* synthetic */ boolean replace(String str, JsonElement jsonElement, JsonElement jsonElement2) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    /* renamed from: replace  reason: avoid collision after fix types in other method */
    public final boolean replace2(String str, JsonElement jsonElement, JsonElement jsonElement2) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public final void replaceAll(BiFunction<? super String, ? super JsonElement, ? extends JsonElement> biFunction) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public final int size() {
        return getSize();
    }

    public final String toString() {
        return n.a(this.content.entrySet(), ",", "{", "}", 0, (CharSequence) null, JsonObject$toString$1.INSTANCE, 24);
    }

    @Override // java.util.Map
    public final Collection<JsonElement> values() {
        return getValues();
    }
}
