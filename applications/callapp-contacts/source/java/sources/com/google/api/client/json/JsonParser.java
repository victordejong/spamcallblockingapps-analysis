package com.google.api.client.json;

import com.google.api.client.json.JsonPolymorphicTypeMap;
import com.google.api.client.p379a.C15214ag;
import com.google.api.client.p379a.C15228h;
import com.google.api.client.p379a.C15232j;
import com.google.api.client.p379a.C15240m;
import com.google.api.client.p379a.C15241n;
import com.google.common.base.C15391m;
import java.io.Closeable;
import java.io.IOException;
import java.lang.reflect.Field;
import java.lang.reflect.Type;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
/* loaded from: classes4-dex2jar.jar:com/google/api/client/json/JsonParser.class */
public abstract class JsonParser implements Closeable {
    private static WeakHashMap<Class<?>, Field> cachedTypemapFields = new WeakHashMap<>();
    private static final Lock lock = new ReentrantLock();

    /* renamed from: com.google.api.client.json.JsonParser$1 */
    /* loaded from: classes4-dex2jar.jar:com/google/api/client/json/JsonParser$1.class */
    public static /* synthetic */ class C153501 {
        static final /* synthetic */ int[] $SwitchMap$com$google$api$client$json$JsonToken;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x0089 -> B:40:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x008d -> B:56:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x0091 -> B:50:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x0095 -> B:44:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x0099 -> B:38:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:30:0x009d -> B:54:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x00a1 -> B:48:0x0058). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:32:0x00a5 -> B:42:0x0064). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:33:0x00a9 -> B:36:0x0070). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:34:0x00ad -> B:52:0x007c). Please submit an issue!!! */
        static {
            int[] iArr = new int[JsonToken.values().length];
            $SwitchMap$com$google$api$client$json$JsonToken = iArr;
            try {
                iArr[JsonToken.START_OBJECT.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$google$api$client$json$JsonToken[JsonToken.START_ARRAY.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$google$api$client$json$JsonToken[JsonToken.END_ARRAY.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$com$google$api$client$json$JsonToken[JsonToken.FIELD_NAME.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                $SwitchMap$com$google$api$client$json$JsonToken[JsonToken.END_OBJECT.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                $SwitchMap$com$google$api$client$json$JsonToken[JsonToken.VALUE_TRUE.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                $SwitchMap$com$google$api$client$json$JsonToken[JsonToken.VALUE_FALSE.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                $SwitchMap$com$google$api$client$json$JsonToken[JsonToken.VALUE_NUMBER_FLOAT.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                $SwitchMap$com$google$api$client$json$JsonToken[JsonToken.VALUE_NUMBER_INT.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
            try {
                $SwitchMap$com$google$api$client$json$JsonToken[JsonToken.VALUE_STRING.ordinal()] = 10;
            } catch (NoSuchFieldError e10) {
            }
            try {
                $SwitchMap$com$google$api$client$json$JsonToken[JsonToken.VALUE_NULL.ordinal()] = 11;
            } catch (NoSuchFieldError e11) {
            }
        }
    }

    private static Field getCachedTypemapFieldFor(Class<?> cls) {
        Field field = null;
        if (cls == null) {
            return null;
        }
        Lock lock2 = lock;
        lock2.lock();
        try {
            if (cachedTypemapFields.containsKey(cls)) {
                Field field2 = cachedTypemapFields.get(cls);
                lock2.unlock();
                return field2;
            }
            for (C15240m c15240m : Collections.unmodifiableCollection(C15228h.m9246a(cls).f55073b.values())) {
                Field field3 = c15240m.f55115b;
                JsonPolymorphicTypeMap jsonPolymorphicTypeMap = (JsonPolymorphicTypeMap) field3.getAnnotation(JsonPolymorphicTypeMap.class);
                if (jsonPolymorphicTypeMap != null) {
                    C15391m.m8936a(field == null, "Class contains more than one field with @JsonPolymorphicTypeMap annotation: %s", cls);
                    C15391m.m8936a(C15232j.m9239a((Type) field3.getType()), "Field which has the @JsonPolymorphicTypeMap, %s, is not a supported type: %s", cls, field3.getType());
                    JsonPolymorphicTypeMap.TypeDef[] typeDefinitions = jsonPolymorphicTypeMap.typeDefinitions();
                    HashSet hashSet = new HashSet();
                    C15391m.m8942a(typeDefinitions.length > 0, "@JsonPolymorphicTypeMap must have at least one @TypeDef");
                    for (JsonPolymorphicTypeMap.TypeDef typeDef : typeDefinitions) {
                        C15391m.m8936a(hashSet.add(typeDef.key()), "Class contains two @TypeDef annotations with identical key: %s", typeDef.key());
                    }
                    field = field3;
                }
            }
            cachedTypemapFields.put(cls, field);
            lock.unlock();
            return field;
        } catch (Throwable th) {
            lock.unlock();
            throw th;
        }
    }

    private void parse(ArrayList<Type> arrayList, Object obj, CustomizeJsonParser customizeJsonParser) throws IOException {
        if (obj instanceof GenericJson) {
            ((GenericJson) obj).setFactory(getFactory());
        }
        JsonToken startParsingObjectOrArray = startParsingObjectOrArray();
        Class<?> cls = obj.getClass();
        C15228h m9246a = C15228h.m9246a(cls);
        boolean isAssignableFrom = C15241n.class.isAssignableFrom(cls);
        JsonToken jsonToken = startParsingObjectOrArray;
        if (!isAssignableFrom) {
            jsonToken = startParsingObjectOrArray;
            if (Map.class.isAssignableFrom(cls)) {
                parseMap(null, (Map) obj, C15214ag.m9263a(cls, Map.class, 1), arrayList, customizeJsonParser);
                return;
            }
        }
        while (jsonToken == JsonToken.FIELD_NAME) {
            String text = getText();
            nextToken();
            if (customizeJsonParser != null && customizeJsonParser.stopAt(obj, text)) {
                return;
            }
            C15240m m9244a = m9246a.m9244a(text);
            if (m9244a != null) {
                if (m9244a.m9223a() && !m9244a.f55114a) {
                    throw new IllegalArgumentException("final array/object fields are not supported");
                }
                Field field = m9244a.f55115b;
                int size = arrayList.size();
                arrayList.add(field.getGenericType());
                Object parseValue = parseValue(field, m9244a.f55115b.getGenericType(), arrayList, obj, customizeJsonParser, true);
                arrayList.remove(size);
                m9244a.m9220a(obj, parseValue);
            } else if (isAssignableFrom) {
                ((C15241n) obj).set(text, parseValue(null, null, arrayList, obj, customizeJsonParser, true));
            } else {
                if (customizeJsonParser != null) {
                    customizeJsonParser.handleUnrecognizedKey(obj, text);
                }
                skipChildren();
            }
            jsonToken = nextToken();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private <T> void parseArray(Field field, Collection<T> collection, Type type, ArrayList<Type> arrayList, CustomizeJsonParser customizeJsonParser) throws IOException {
        JsonToken startParsingObjectOrArray = startParsingObjectOrArray();
        while (startParsingObjectOrArray != JsonToken.END_ARRAY) {
            collection.add(parseValue(field, type, arrayList, collection, customizeJsonParser, true));
            startParsingObjectOrArray = nextToken();
        }
    }

    private void parseMap(Field field, Map<String, Object> map, Type type, ArrayList<Type> arrayList, CustomizeJsonParser customizeJsonParser) throws IOException {
        JsonToken startParsingObjectOrArray = startParsingObjectOrArray();
        while (startParsingObjectOrArray == JsonToken.FIELD_NAME) {
            String text = getText();
            nextToken();
            if (customizeJsonParser != null && customizeJsonParser.stopAt(map, text)) {
                return;
            }
            map.put(text, parseValue(field, type, arrayList, map, customizeJsonParser, true));
            startParsingObjectOrArray = nextToken();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x00b5, code lost:
        if (r19.isPrimitive() == false) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x0179, code lost:
        if (r9.getAnnotation(com.google.api.client.json.JsonString.class) != null) goto L68;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x01a0, code lost:
        if (r9.getAnnotation(com.google.api.client.json.JsonString.class) == null) goto L79;
     */
    /* JADX WARN: Removed duplicated region for block: B:157:0x02cb A[Catch: IllegalArgumentException -> 0x0553, TryCatch #0 {IllegalArgumentException -> 0x0553, blocks: (B:14:0x004d, B:17:0x00a0, B:21:0x00b0, B:25:0x00bb, B:27:0x00c8, B:29:0x00d4, B:31:0x00de, B:34:0x00ec, B:36:0x00f4, B:39:0x0101, B:42:0x010b, B:47:0x0128, B:52:0x0138, B:54:0x0142, B:56:0x014c, B:60:0x015b, B:66:0x0172, B:70:0x017f, B:72:0x0189, B:77:0x0199, B:81:0x01a6, B:83:0x01b3, B:88:0x01c9, B:93:0x01d6, B:98:0x01e9, B:103:0x01fc, B:108:0x020f, B:113:0x0222, B:118:0x0235, B:121:0x0240, B:122:0x0254, B:124:0x0256, B:127:0x025e, B:130:0x0266, B:133:0x026e, B:136:0x0276, B:139:0x027e, B:142:0x0286, B:146:0x028f, B:150:0x029c, B:155:0x02b3, B:157:0x02cb, B:159:0x02cf, B:159:0x02cf, B:162:0x02d5, B:168:0x02e9, B:173:0x02ff, B:177:0x0319, B:181:0x032e, B:184:0x033a, B:188:0x034e, B:190:0x0359, B:192:0x0364, B:194:0x0379, B:198:0x0387, B:203:0x0398, B:205:0x03ae, B:211:0x03c5, B:215:0x03db, B:222:0x03f3, B:229:0x0413, B:230:0x041c, B:232:0x0423, B:234:0x042d, B:237:0x0439, B:239:0x0443, B:241:0x044d, B:245:0x0462, B:247:0x0472, B:249:0x047f, B:254:0x048d, B:258:0x04a9, B:263:0x04e3, B:265:0x04f2, B:270:0x0510, B:273:0x0544, B:274:0x0552), top: B:287:0x004d }] */
    /* JADX WARN: Removed duplicated region for block: B:159:0x02cf A[Catch: IllegalArgumentException -> 0x0553, IllegalArgumentException -> 0x0553, TRY_ENTER, TRY_LEAVE, TryCatch #0 {IllegalArgumentException -> 0x0553, blocks: (B:14:0x004d, B:17:0x00a0, B:21:0x00b0, B:25:0x00bb, B:27:0x00c8, B:29:0x00d4, B:31:0x00de, B:34:0x00ec, B:36:0x00f4, B:39:0x0101, B:42:0x010b, B:47:0x0128, B:52:0x0138, B:54:0x0142, B:56:0x014c, B:60:0x015b, B:66:0x0172, B:70:0x017f, B:72:0x0189, B:77:0x0199, B:81:0x01a6, B:83:0x01b3, B:88:0x01c9, B:93:0x01d6, B:98:0x01e9, B:103:0x01fc, B:108:0x020f, B:113:0x0222, B:118:0x0235, B:121:0x0240, B:122:0x0254, B:124:0x0256, B:127:0x025e, B:130:0x0266, B:133:0x026e, B:136:0x0276, B:139:0x027e, B:142:0x0286, B:146:0x028f, B:150:0x029c, B:155:0x02b3, B:157:0x02cb, B:159:0x02cf, B:159:0x02cf, B:162:0x02d5, B:168:0x02e9, B:173:0x02ff, B:177:0x0319, B:181:0x032e, B:184:0x033a, B:188:0x034e, B:190:0x0359, B:192:0x0364, B:194:0x0379, B:198:0x0387, B:203:0x0398, B:205:0x03ae, B:211:0x03c5, B:215:0x03db, B:222:0x03f3, B:229:0x0413, B:230:0x041c, B:232:0x0423, B:234:0x042d, B:237:0x0439, B:239:0x0443, B:241:0x044d, B:245:0x0462, B:247:0x0472, B:249:0x047f, B:254:0x048d, B:258:0x04a9, B:263:0x04e3, B:265:0x04f2, B:270:0x0510, B:273:0x0544, B:274:0x0552), top: B:287:0x004d }] */
    /* JADX WARN: Removed duplicated region for block: B:181:0x032e A[Catch: IllegalArgumentException -> 0x0553, TRY_ENTER, TryCatch #0 {IllegalArgumentException -> 0x0553, blocks: (B:14:0x004d, B:17:0x00a0, B:21:0x00b0, B:25:0x00bb, B:27:0x00c8, B:29:0x00d4, B:31:0x00de, B:34:0x00ec, B:36:0x00f4, B:39:0x0101, B:42:0x010b, B:47:0x0128, B:52:0x0138, B:54:0x0142, B:56:0x014c, B:60:0x015b, B:66:0x0172, B:70:0x017f, B:72:0x0189, B:77:0x0199, B:81:0x01a6, B:83:0x01b3, B:88:0x01c9, B:93:0x01d6, B:98:0x01e9, B:103:0x01fc, B:108:0x020f, B:113:0x0222, B:118:0x0235, B:121:0x0240, B:122:0x0254, B:124:0x0256, B:127:0x025e, B:130:0x0266, B:133:0x026e, B:136:0x0276, B:139:0x027e, B:142:0x0286, B:146:0x028f, B:150:0x029c, B:155:0x02b3, B:157:0x02cb, B:159:0x02cf, B:159:0x02cf, B:162:0x02d5, B:168:0x02e9, B:173:0x02ff, B:177:0x0319, B:181:0x032e, B:184:0x033a, B:188:0x034e, B:190:0x0359, B:192:0x0364, B:194:0x0379, B:198:0x0387, B:203:0x0398, B:205:0x03ae, B:211:0x03c5, B:215:0x03db, B:222:0x03f3, B:229:0x0413, B:230:0x041c, B:232:0x0423, B:234:0x042d, B:237:0x0439, B:239:0x0443, B:241:0x044d, B:245:0x0462, B:247:0x0472, B:249:0x047f, B:254:0x048d, B:258:0x04a9, B:263:0x04e3, B:265:0x04f2, B:270:0x0510, B:273:0x0544, B:274:0x0552), top: B:287:0x004d }] */
    /* JADX WARN: Removed duplicated region for block: B:184:0x033a A[Catch: IllegalArgumentException -> 0x0553, TRY_ENTER, TRY_LEAVE, TryCatch #0 {IllegalArgumentException -> 0x0553, blocks: (B:14:0x004d, B:17:0x00a0, B:21:0x00b0, B:25:0x00bb, B:27:0x00c8, B:29:0x00d4, B:31:0x00de, B:34:0x00ec, B:36:0x00f4, B:39:0x0101, B:42:0x010b, B:47:0x0128, B:52:0x0138, B:54:0x0142, B:56:0x014c, B:60:0x015b, B:66:0x0172, B:70:0x017f, B:72:0x0189, B:77:0x0199, B:81:0x01a6, B:83:0x01b3, B:88:0x01c9, B:93:0x01d6, B:98:0x01e9, B:103:0x01fc, B:108:0x020f, B:113:0x0222, B:118:0x0235, B:121:0x0240, B:122:0x0254, B:124:0x0256, B:127:0x025e, B:130:0x0266, B:133:0x026e, B:136:0x0276, B:139:0x027e, B:142:0x0286, B:146:0x028f, B:150:0x029c, B:155:0x02b3, B:157:0x02cb, B:159:0x02cf, B:159:0x02cf, B:162:0x02d5, B:168:0x02e9, B:173:0x02ff, B:177:0x0319, B:181:0x032e, B:184:0x033a, B:188:0x034e, B:190:0x0359, B:192:0x0364, B:194:0x0379, B:198:0x0387, B:203:0x0398, B:205:0x03ae, B:211:0x03c5, B:215:0x03db, B:222:0x03f3, B:229:0x0413, B:230:0x041c, B:232:0x0423, B:234:0x042d, B:237:0x0439, B:239:0x0443, B:241:0x044d, B:245:0x0462, B:247:0x0472, B:249:0x047f, B:254:0x048d, B:258:0x04a9, B:263:0x04e3, B:265:0x04f2, B:270:0x0510, B:273:0x0544, B:274:0x0552), top: B:287:0x004d }] */
    /* JADX WARN: Removed duplicated region for block: B:185:0x0343  */
    /* JADX WARN: Removed duplicated region for block: B:194:0x0379 A[Catch: IllegalArgumentException -> 0x0553, TRY_ENTER, TryCatch #0 {IllegalArgumentException -> 0x0553, blocks: (B:14:0x004d, B:17:0x00a0, B:21:0x00b0, B:25:0x00bb, B:27:0x00c8, B:29:0x00d4, B:31:0x00de, B:34:0x00ec, B:36:0x00f4, B:39:0x0101, B:42:0x010b, B:47:0x0128, B:52:0x0138, B:54:0x0142, B:56:0x014c, B:60:0x015b, B:66:0x0172, B:70:0x017f, B:72:0x0189, B:77:0x0199, B:81:0x01a6, B:83:0x01b3, B:88:0x01c9, B:93:0x01d6, B:98:0x01e9, B:103:0x01fc, B:108:0x020f, B:113:0x0222, B:118:0x0235, B:121:0x0240, B:122:0x0254, B:124:0x0256, B:127:0x025e, B:130:0x0266, B:133:0x026e, B:136:0x0276, B:139:0x027e, B:142:0x0286, B:146:0x028f, B:150:0x029c, B:155:0x02b3, B:157:0x02cb, B:159:0x02cf, B:159:0x02cf, B:162:0x02d5, B:168:0x02e9, B:173:0x02ff, B:177:0x0319, B:181:0x032e, B:184:0x033a, B:188:0x034e, B:190:0x0359, B:192:0x0364, B:194:0x0379, B:198:0x0387, B:203:0x0398, B:205:0x03ae, B:211:0x03c5, B:215:0x03db, B:222:0x03f3, B:229:0x0413, B:230:0x041c, B:232:0x0423, B:234:0x042d, B:237:0x0439, B:239:0x0443, B:241:0x044d, B:245:0x0462, B:247:0x0472, B:249:0x047f, B:254:0x048d, B:258:0x04a9, B:263:0x04e3, B:265:0x04f2, B:270:0x0510, B:273:0x0544, B:274:0x0552), top: B:287:0x004d }] */
    /* JADX WARN: Removed duplicated region for block: B:196:0x0384  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final java.lang.Object parseValue(java.lang.reflect.Field r9, java.lang.reflect.Type r10, java.util.ArrayList<java.lang.reflect.Type> r11, java.lang.Object r12, com.google.api.client.json.CustomizeJsonParser r13, boolean r14) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1440
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.api.client.json.JsonParser.parseValue(java.lang.reflect.Field, java.lang.reflect.Type, java.util.ArrayList, java.lang.Object, com.google.api.client.json.CustomizeJsonParser, boolean):java.lang.Object");
    }

    private JsonToken startParsing() throws IOException {
        JsonToken currentToken = getCurrentToken();
        JsonToken jsonToken = currentToken;
        if (currentToken == null) {
            jsonToken = nextToken();
        }
        C15391m.m8942a(jsonToken != null, "no JSON input found");
        return jsonToken;
    }

    private JsonToken startParsingObjectOrArray() throws IOException {
        JsonToken startParsing = startParsing();
        int i = C153501.$SwitchMap$com$google$api$client$json$JsonToken[startParsing.ordinal()];
        if (i == 1) {
            startParsing = nextToken();
            boolean z = true;
            if (startParsing != JsonToken.FIELD_NAME) {
                z = startParsing == JsonToken.END_OBJECT;
            }
            C15391m.m8942a(z, startParsing);
        } else if (i == 2) {
            startParsing = nextToken();
        }
        return startParsing;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public abstract void close() throws IOException;

    public abstract BigInteger getBigIntegerValue() throws IOException;

    public abstract byte getByteValue() throws IOException;

    public abstract String getCurrentName() throws IOException;

    public abstract JsonToken getCurrentToken();

    public abstract BigDecimal getDecimalValue() throws IOException;

    public abstract double getDoubleValue() throws IOException;

    public abstract JsonFactory getFactory();

    public abstract float getFloatValue() throws IOException;

    public abstract int getIntValue() throws IOException;

    public abstract long getLongValue() throws IOException;

    public abstract short getShortValue() throws IOException;

    public abstract String getText() throws IOException;

    public abstract JsonToken nextToken() throws IOException;

    public final <T> T parse(Class<T> cls) throws IOException {
        return (T) parse((Class<Object>) cls, (CustomizeJsonParser) null);
    }

    public final <T> T parse(Class<T> cls, CustomizeJsonParser customizeJsonParser) throws IOException {
        return (T) parse((Type) cls, false, customizeJsonParser);
    }

    public Object parse(Type type, boolean z) throws IOException {
        return parse(type, z, (CustomizeJsonParser) null);
    }

    public Object parse(Type type, boolean z, CustomizeJsonParser customizeJsonParser) throws IOException {
        try {
            if (!Void.class.equals(type)) {
                startParsing();
            }
            Object parseValue = parseValue(null, type, new ArrayList<>(), null, customizeJsonParser, true);
            if (z) {
                close();
            }
            return parseValue;
        } catch (Throwable th) {
            if (z) {
                close();
            }
            throw th;
        }
    }

    public final void parse(Object obj) throws IOException {
        parse(obj, (CustomizeJsonParser) null);
    }

    public final void parse(Object obj, CustomizeJsonParser customizeJsonParser) throws IOException {
        ArrayList<Type> arrayList = new ArrayList<>();
        arrayList.add(obj.getClass());
        parse(arrayList, obj, customizeJsonParser);
    }

    public final <T> T parseAndClose(Class<T> cls) throws IOException {
        return (T) parseAndClose((Class<Object>) cls, (CustomizeJsonParser) null);
    }

    public final <T> T parseAndClose(Class<T> cls, CustomizeJsonParser customizeJsonParser) throws IOException {
        try {
            return (T) parse((Class<Object>) cls, customizeJsonParser);
        } finally {
            close();
        }
    }

    public final void parseAndClose(Object obj) throws IOException {
        parseAndClose(obj, (CustomizeJsonParser) null);
    }

    public final void parseAndClose(Object obj, CustomizeJsonParser customizeJsonParser) throws IOException {
        try {
            parse(obj, customizeJsonParser);
        } finally {
            close();
        }
    }

    public final <T> Collection<T> parseArray(Class<?> cls, Class<T> cls2) throws IOException {
        return parseArray(cls, cls2, (CustomizeJsonParser) null);
    }

    public final <T> Collection<T> parseArray(Class<?> cls, Class<T> cls2, CustomizeJsonParser customizeJsonParser) throws IOException {
        Collection<T> collection = (Collection<T>) C15232j.m9234b((Type) cls);
        parseArray(collection, cls2, customizeJsonParser);
        return collection;
    }

    public final <T> void parseArray(Collection<? super T> collection, Class<T> cls) throws IOException {
        parseArray(collection, cls, (CustomizeJsonParser) null);
    }

    public final <T> void parseArray(Collection<? super T> collection, Class<T> cls, CustomizeJsonParser customizeJsonParser) throws IOException {
        parseArray(null, collection, cls, new ArrayList<>(), customizeJsonParser);
    }

    public final <T> Collection<T> parseArrayAndClose(Class<?> cls, Class<T> cls2) throws IOException {
        return parseArrayAndClose(cls, cls2, (CustomizeJsonParser) null);
    }

    public final <T> Collection<T> parseArrayAndClose(Class<?> cls, Class<T> cls2, CustomizeJsonParser customizeJsonParser) throws IOException {
        try {
            return parseArray(cls, cls2, customizeJsonParser);
        } finally {
            close();
        }
    }

    public final <T> void parseArrayAndClose(Collection<? super T> collection, Class<T> cls) throws IOException {
        parseArrayAndClose(collection, cls, (CustomizeJsonParser) null);
    }

    public final <T> void parseArrayAndClose(Collection<? super T> collection, Class<T> cls, CustomizeJsonParser customizeJsonParser) throws IOException {
        try {
            parseArray(collection, cls, customizeJsonParser);
        } finally {
            close();
        }
    }

    public abstract JsonParser skipChildren() throws IOException;

    public final String skipToKey(Set<String> set) throws IOException {
        JsonToken startParsingObjectOrArray = startParsingObjectOrArray();
        while (startParsingObjectOrArray == JsonToken.FIELD_NAME) {
            String text = getText();
            nextToken();
            if (set.contains(text)) {
                return text;
            }
            skipChildren();
            startParsingObjectOrArray = nextToken();
        }
        return null;
    }

    public final void skipToKey(String str) throws IOException {
        skipToKey(Collections.singleton(str));
    }
}
