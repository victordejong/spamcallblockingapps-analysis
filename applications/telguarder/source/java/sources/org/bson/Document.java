package org.bson;

import java.io.Serializable;
import java.io.StringWriter;
import java.util.Collection;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.bson.assertions.Assertions;
import org.bson.codecs.Decoder;
import org.bson.codecs.DecoderContext;
import org.bson.codecs.DocumentCodec;
import org.bson.codecs.Encoder;
import org.bson.codecs.EncoderContext;
import org.bson.codecs.configuration.CodecRegistry;
import org.bson.conversions.Bson;
import org.bson.json.JsonReader;
import org.bson.json.JsonWriter;
import org.bson.json.JsonWriterSettings;
import org.bson.types.ObjectId;
/* loaded from: classes-dex2jar.jar:org/bson/Document.class */
public class Document implements Map<String, Object>, Serializable, Bson {
    private static final long serialVersionUID = 6297731997167536582L;
    private final LinkedHashMap<String, Object> documentAsMap;

    public Document() {
        this.documentAsMap = new LinkedHashMap<>();
    }

    public Document(String str, Object obj) {
        LinkedHashMap<String, Object> linkedHashMap = new LinkedHashMap<>();
        this.documentAsMap = linkedHashMap;
        linkedHashMap.put(str, obj);
    }

    public Document(Map<String, Object> map) {
        this.documentAsMap = new LinkedHashMap<>(map);
    }

    private <T> List<T> constructValuesList(Object obj, Class<T> cls, List<T> list) {
        List<T> list2 = (List) get(obj, (Class<Object>) List.class);
        if (list2 == null) {
            return list;
        }
        for (T t : list2) {
            if (!cls.isAssignableFrom(t.getClass())) {
                throw new ClassCastException(String.format("List element cannot be cast to %s", cls.getName()));
            }
        }
        return list2;
    }

    private <T> T getEmbeddedValue(List<?> list, Class<T> cls, T t) {
        Iterator<?> it = list.iterator();
        Document document = this;
        while (it.hasNext()) {
            Object next = it.next();
            Object obj = document.get(next);
            document = obj;
            if (!(obj instanceof Document)) {
                if (obj == 0) {
                    return t;
                }
                if (it.hasNext()) {
                    throw new ClassCastException(String.format("At key %s, the value is not a Document (%s)", next, obj.getClass().getName()));
                }
                document = obj;
            }
        }
        T t2 = document;
        if (cls != null) {
            t2 = cls.cast(document);
        }
        return (T) t2;
    }

    public static Document parse(String str) {
        return parse(str, new DocumentCodec());
    }

    public static Document parse(String str, Decoder<Document> decoder) {
        Assertions.notNull("codec", decoder);
        return decoder.decode(new JsonReader(str), DecoderContext.builder().build());
    }

    public Document append(String str, Object obj) {
        this.documentAsMap.put(str, obj);
        return this;
    }

    @Override // java.util.Map
    public void clear() {
        this.documentAsMap.clear();
    }

    @Override // java.util.Map
    public boolean containsKey(Object obj) {
        return this.documentAsMap.containsKey(obj);
    }

    @Override // java.util.Map
    public boolean containsValue(Object obj) {
        return this.documentAsMap.containsValue(obj);
    }

    @Override // java.util.Map
    public Set<Map.Entry<String, Object>> entrySet() {
        return this.documentAsMap.entrySet();
    }

    @Override // java.util.Map
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && getClass() == obj.getClass() && this.documentAsMap.equals(((Document) obj).documentAsMap);
    }

    @Override // java.util.Map
    public Object get(Object obj) {
        return this.documentAsMap.get(obj);
    }

    public <T> T get(Object obj, Class<T> cls) {
        Assertions.notNull("clazz", cls);
        return cls.cast(this.documentAsMap.get(obj));
    }

    public <T> T get(Object obj, T t) {
        Assertions.notNull("defaultValue", t);
        T t2 = this.documentAsMap.get(obj);
        if (t2 == null) {
            t2 = t;
        }
        return t2;
    }

    public Boolean getBoolean(Object obj) {
        return (Boolean) get(obj);
    }

    public boolean getBoolean(Object obj, boolean z) {
        return ((Boolean) get(obj, Boolean.valueOf(z))).booleanValue();
    }

    public Date getDate(Object obj) {
        return (Date) get(obj);
    }

    public Double getDouble(Object obj) {
        return (Double) get(obj);
    }

    public <T> T getEmbedded(List<?> list, Class<T> cls) {
        Assertions.notNull("keys", list);
        Assertions.isTrue("keys", !list.isEmpty());
        Assertions.notNull("clazz", cls);
        return (T) getEmbeddedValue(list, cls, null);
    }

    public <T> T getEmbedded(List<?> list, T t) {
        Assertions.notNull("keys", list);
        Assertions.isTrue("keys", !list.isEmpty());
        Assertions.notNull("defaultValue", t);
        return (T) getEmbeddedValue(list, null, t);
    }

    public int getInteger(Object obj, int i) {
        return ((Integer) get(obj, Integer.valueOf(i))).intValue();
    }

    public Integer getInteger(Object obj) {
        return (Integer) get(obj);
    }

    public <T> List<T> getList(Object obj, Class<T> cls) {
        Assertions.notNull("clazz", cls);
        return constructValuesList(obj, cls, null);
    }

    public <T> List<T> getList(Object obj, Class<T> cls, List<T> list) {
        Assertions.notNull("defaultValue", list);
        Assertions.notNull("clazz", cls);
        return constructValuesList(obj, cls, list);
    }

    public Long getLong(Object obj) {
        return (Long) get(obj);
    }

    public ObjectId getObjectId(Object obj) {
        return (ObjectId) get(obj);
    }

    public String getString(Object obj) {
        return (String) get(obj);
    }

    @Override // java.util.Map
    public int hashCode() {
        return this.documentAsMap.hashCode();
    }

    @Override // java.util.Map
    public boolean isEmpty() {
        return this.documentAsMap.isEmpty();
    }

    @Override // java.util.Map
    public Set<String> keySet() {
        return this.documentAsMap.keySet();
    }

    public Object put(String str, Object obj) {
        return this.documentAsMap.put(str, obj);
    }

    @Override // java.util.Map
    public void putAll(Map<? extends String, ? extends Object> map) {
        this.documentAsMap.putAll(map);
    }

    @Override // java.util.Map
    public Object remove(Object obj) {
        return this.documentAsMap.remove(obj);
    }

    @Override // java.util.Map
    public int size() {
        return this.documentAsMap.size();
    }

    @Override // org.bson.conversions.Bson
    public <C> BsonDocument toBsonDocument(Class<C> cls, CodecRegistry codecRegistry) {
        return new BsonDocumentWrapper(this, codecRegistry.get(Document.class));
    }

    public String toJson() {
        return toJson(new JsonWriterSettings());
    }

    public String toJson(Encoder<Document> encoder) {
        return toJson(new JsonWriterSettings(), encoder);
    }

    public String toJson(JsonWriterSettings jsonWriterSettings) {
        return toJson(jsonWriterSettings, new DocumentCodec());
    }

    public String toJson(JsonWriterSettings jsonWriterSettings, Encoder<Document> encoder) {
        JsonWriter jsonWriter = new JsonWriter(new StringWriter(), jsonWriterSettings);
        encoder.encode(jsonWriter, this, EncoderContext.builder().build());
        return jsonWriter.getWriter().toString();
    }

    public String toString() {
        return "Document{" + this.documentAsMap + '}';
    }

    @Override // java.util.Map
    public Collection<Object> values() {
        return this.documentAsMap.values();
    }
}
