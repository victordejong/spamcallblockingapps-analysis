package kotlinx.serialization.json;

import com.mopub.common.Constants;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.function.UnaryOperator;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.C18496ac;
import kotlin.jvm.internal.C18517i;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p534a.AbstractC18481a;
import kotlin.p518a.C18282n;
import kotlinx.serialization.KSerializer;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u001e\n\u0002\b\u0003\n\u0002\u0010��\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010(\n\u0002\b\u0002\n\u0002\u0010*\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0087\b\u0018�� 42\u00020\u00012\b\u0012\u0004\u0012\u00020\u00010\u0002:\u00014B\u0013\u0012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00010\u0002¢\u0006\u0002\u0010\u0004J\u000f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00010\u0002HÆ\u0003J\u0011\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0001H\u0096\u0003J\u0017\u0010\u0012\u001a\u00020\u00102\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00010\u0014H\u0096\u0001J\u0019\u0010\u0015\u001a\u00020��2\u000e\b\u0002\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00010\u0002HÆ\u0001J\u0013\u0010\u0016\u001a\u00020\u00102\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0096\u0002J\u0011\u0010\u0019\u001a\u00020\u00012\u0006\u0010\u001a\u001a\u00020\u000bH\u0096\u0003J\u000e\u0010\u001b\u001a\u00020��2\u0006\u0010\u001a\u001a\u00020\u000bJ\u0010\u0010\u001c\u001a\u0004\u0018\u00010��2\u0006\u0010\u001a\u001a\u00020\u000bJ\"\u0010\u001d\u001a\u0002H\u001e\"\n\b��\u0010\u001e\u0018\u0001*\u00020\u00012\u0006\u0010\u001a\u001a\u00020\u000bH\u0086\b¢\u0006\u0002\u0010\u001fJ$\u0010 \u001a\u0004\u0018\u0001H\u001e\"\n\b��\u0010\u001e\u0018\u0001*\u00020\u00012\u0006\u0010\u001a\u001a\u00020\u000bH\u0086\b¢\u0006\u0002\u0010\u001fJ\u000e\u0010!\u001a\u00020\"2\u0006\u0010\u001a\u001a\u00020\u000bJ\u0010\u0010#\u001a\u0004\u0018\u00010\"2\u0006\u0010\u001a\u001a\u00020\u000bJ\u000e\u0010$\u001a\u00020%2\u0006\u0010\u001a\u001a\u00020\u000bJ\u0010\u0010&\u001a\u0004\u0018\u00010%2\u0006\u0010\u001a\u001a\u00020\u000bJ\b\u0010'\u001a\u00020\u000bH\u0016J\u0011\u0010(\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\u0001H\u0096\u0001J\t\u0010)\u001a\u00020\u0010H\u0096\u0001J\u000f\u0010*\u001a\b\u0012\u0004\u0012\u00020\u00010+H\u0096\u0003J\u0011\u0010,\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\u0001H\u0096\u0001J\u000f\u0010-\u001a\b\u0012\u0004\u0012\u00020\u00010.H\u0096\u0001J\u0017\u0010-\u001a\b\u0012\u0004\u0012\u00020\u00010.2\u0006\u0010\u001a\u001a\u00020\u000bH\u0096\u0001J\u001f\u0010/\u001a\b\u0012\u0004\u0012\u00020\u00010\u00022\u0006\u00100\u001a\u00020\u000b2\u0006\u00101\u001a\u00020\u000bH\u0096\u0001J\b\u00102\u001a\u000203H\u0016R\u0017\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00010\u0002¢\u0006\b\n��\u001a\u0004\b\u0005\u0010\u0006R\u0014\u0010\u0007\u001a\u00020��X\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\b\u0010\tR\u0012\u0010\n\u001a\u00020\u000bX\u0096\u0005¢\u0006\u0006\u001a\u0004\b\f\u0010\r¨\u00065"}, m4298d2 = {"Lkotlinx/serialization/json/JsonArray;", "Lkotlinx/serialization/json/JsonElement;", "", Constants.VAST_TRACKER_CONTENT, "(Ljava/util/List;)V", "getContent", "()Ljava/util/List;", "jsonArray", "getJsonArray", "()Lkotlinx/serialization/json/JsonArray;", "size", "", "getSize", "()I", "component1", "contains", "", "element", "containsAll", "elements", "", "copy", "equals", "other", "", "get", "index", "getArray", "getArrayOrNull", "getAs", "J", "(I)Lkotlinx/serialization/json/JsonElement;", "getAsOrNull", "getObject", "Lkotlinx/serialization/json/JsonObject;", "getObjectOrNull", "getPrimitive", "Lkotlinx/serialization/json/JsonPrimitive;", "getPrimitiveOrNull", "hashCode", "indexOf", "isEmpty", "iterator", "", "lastIndexOf", "listIterator", "", "subList", "fromIndex", "toIndex", "toString", "", "Companion", "kotlinx-serialization-runtime"}, m4297k = 1, m4296mv = {1, 1, 16})
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/json/JsonArray.class */
public final class JsonArray extends JsonElement implements List<JsonElement>, AbstractC18481a {
    public static final Companion Companion = new Companion(null);
    private final List<JsonElement> content;
    private final JsonArray jsonArray = this;

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0016\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0001¨\u0006\u0006"}, m4298d2 = {"Lkotlinx/serialization/json/JsonArray$Companion;", "", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lkotlinx/serialization/json/JsonArray;", "kotlinx-serialization-runtime"}, m4297k = 1, m4296mv = {1, 1, 16})
    /* loaded from: classes5-dex2jar.jar:kotlinx/serialization/json/JsonArray$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final KSerializer<JsonArray> serializer() {
            return JsonArraySerializer.INSTANCE;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public JsonArray(List<? extends JsonElement> content) {
        super(null);
        C18524p.m3841c(content, "content");
        this.content = content;
    }

    public static /* synthetic */ JsonArray copy$default(JsonArray jsonArray, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            list = jsonArray.content;
        }
        return jsonArray.copy(list);
    }

    @Override // java.util.List
    public final /* synthetic */ void add(int i, JsonElement jsonElement) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    /* renamed from: add */
    public final void add2(int i, JsonElement jsonElement) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List, java.util.Collection
    public final /* synthetic */ boolean add(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public final boolean add(JsonElement jsonElement) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List
    public final boolean addAll(int i, Collection<? extends JsonElement> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List, java.util.Collection
    public final boolean addAll(Collection<? extends JsonElement> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List, java.util.Collection
    public final void clear() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public final List<JsonElement> component1() {
        return this.content;
    }

    @Override // java.util.List, java.util.Collection
    public final /* bridge */ boolean contains(Object obj) {
        if (!(obj instanceof JsonElement)) {
            return false;
        }
        return contains((JsonElement) obj);
    }

    public final boolean contains(JsonElement element) {
        C18524p.m3841c(element, "element");
        return this.content.contains(element);
    }

    @Override // java.util.List, java.util.Collection
    public final boolean containsAll(Collection<? extends Object> elements) {
        C18524p.m3841c(elements, "elements");
        return this.content.containsAll(elements);
    }

    public final JsonArray copy(List<? extends JsonElement> content) {
        C18524p.m3841c(content, "content");
        return new JsonArray(content);
    }

    @Override // java.util.List, java.util.Collection
    public final boolean equals(Object obj) {
        return C18524p.m3850a(this.content, obj);
    }

    @Override // java.util.List
    public final JsonElement get(int i) {
        JsonElement jsonElement = this.content.get(i);
        C18524p.m3849a((Object) jsonElement, "get(...)");
        return jsonElement;
    }

    public final JsonArray getArray(int i) {
        JsonElement jsonElement = this.content.get(i);
        JsonElement jsonElement2 = jsonElement;
        if (!(jsonElement instanceof JsonArray)) {
            jsonElement2 = null;
        }
        JsonArray jsonArray = (JsonArray) jsonElement2;
        if (jsonArray != null) {
            return jsonArray;
        }
        JsonElementKt.unexpectedJson("at ".concat(String.valueOf(i)), "JsonArray");
        throw null;
    }

    public final JsonArray getArrayOrNull(int i) {
        Object b = C18282n.m4134b((List<? extends Object>) this.content, i);
        Object obj = b;
        if (!(b instanceof JsonArray)) {
            obj = null;
        }
        return (JsonArray) obj;
    }

    public final /* synthetic */ <J extends JsonElement> J getAs(int i) {
        JsonElement jsonElement = getContent().get(i);
        C18524p.m3844b();
        J j = (J) jsonElement;
        if (j != null) {
            return j;
        }
        String concat = "at ".concat(String.valueOf(i));
        C18524p.m3844b();
        JsonElementKt.unexpectedJson(concat, C18496ac.m3882b(JsonElement.class).toString());
        throw null;
    }

    public final /* synthetic */ <J extends JsonElement> J getAsOrNull(int i) {
        Object b = C18282n.m4134b((List<? extends Object>) getContent(), i);
        C18524p.m3844b();
        return (J) b;
    }

    public final List<JsonElement> getContent() {
        return this.content;
    }

    @Override // kotlinx.serialization.json.JsonElement
    public final JsonArray getJsonArray() {
        return this.jsonArray;
    }

    public final JsonObject getObject(int i) {
        JsonElement jsonElement = this.content.get(i);
        JsonElement jsonElement2 = jsonElement;
        if (!(jsonElement instanceof JsonObject)) {
            jsonElement2 = null;
        }
        JsonObject jsonObject = (JsonObject) jsonElement2;
        if (jsonObject != null) {
            return jsonObject;
        }
        JsonElementKt.unexpectedJson("at ".concat(String.valueOf(i)), "JsonObject");
        throw null;
    }

    public final JsonObject getObjectOrNull(int i) {
        Object b = C18282n.m4134b((List<? extends Object>) this.content, i);
        Object obj = b;
        if (!(b instanceof JsonObject)) {
            obj = null;
        }
        return (JsonObject) obj;
    }

    public final JsonPrimitive getPrimitive(int i) {
        JsonElement jsonElement = this.content.get(i);
        JsonElement jsonElement2 = jsonElement;
        if (!(jsonElement instanceof JsonPrimitive)) {
            jsonElement2 = null;
        }
        JsonPrimitive jsonPrimitive = (JsonPrimitive) jsonElement2;
        if (jsonPrimitive != null) {
            return jsonPrimitive;
        }
        JsonElementKt.unexpectedJson("at ".concat(String.valueOf(i)), "JsonPrimitive");
        throw null;
    }

    public final JsonPrimitive getPrimitiveOrNull(int i) {
        Object b = C18282n.m4134b((List<? extends Object>) this.content, i);
        Object obj = b;
        if (!(b instanceof JsonPrimitive)) {
            obj = null;
        }
        return (JsonPrimitive) obj;
    }

    public final int getSize() {
        return this.content.size();
    }

    @Override // java.util.List, java.util.Collection
    public final int hashCode() {
        return this.content.hashCode();
    }

    @Override // java.util.List
    public final /* bridge */ int indexOf(Object obj) {
        if (!(obj instanceof JsonElement)) {
            return -1;
        }
        return indexOf((JsonElement) obj);
    }

    public final int indexOf(JsonElement element) {
        C18524p.m3841c(element, "element");
        return this.content.indexOf(element);
    }

    @Override // java.util.List, java.util.Collection
    public final boolean isEmpty() {
        return this.content.isEmpty();
    }

    @Override // java.util.List, java.util.Collection, java.lang.Iterable
    public final Iterator<JsonElement> iterator() {
        return this.content.iterator();
    }

    @Override // java.util.List
    public final /* bridge */ int lastIndexOf(Object obj) {
        if (!(obj instanceof JsonElement)) {
            return -1;
        }
        return lastIndexOf((JsonElement) obj);
    }

    public final int lastIndexOf(JsonElement element) {
        C18524p.m3841c(element, "element");
        return this.content.lastIndexOf(element);
    }

    @Override // java.util.List
    public final ListIterator<JsonElement> listIterator() {
        return this.content.listIterator();
    }

    @Override // java.util.List
    public final ListIterator<JsonElement> listIterator(int i) {
        return this.content.listIterator(i);
    }

    @Override // java.util.List
    /* renamed from: remove */
    public final JsonElement remove2(int i) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List, java.util.Collection
    public final boolean remove(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List, java.util.Collection
    public final boolean removeAll(Collection<? extends Object> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List
    public final void replaceAll(UnaryOperator<JsonElement> unaryOperator) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List, java.util.Collection
    public final boolean retainAll(Collection<? extends Object> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List
    public final /* synthetic */ JsonElement set(int i, JsonElement jsonElement) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    /* renamed from: set */
    public final JsonElement set2(int i, JsonElement jsonElement) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List, java.util.Collection
    public final int size() {
        return getSize();
    }

    @Override // java.util.List
    public final void sort(Comparator<? super JsonElement> comparator) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List
    public final List<JsonElement> subList(int i, int i2) {
        return this.content.subList(i, i2);
    }

    @Override // java.util.List, java.util.Collection
    public final Object[] toArray() {
        return C18517i.m3857a(this);
    }

    @Override // java.util.List, java.util.Collection
    public final <T> T[] toArray(T[] tArr) {
        return (T[]) C18517i.m3856a(this, tArr);
    }

    public final String toString() {
        return C18282n.m4148a(this.content, ",", "[", "]", 0, (CharSequence) null, (Function1) null, 56);
    }
}
