package com.google.gson.internal.bind;

import com.google.gson.AbstractC15955b;
import com.google.gson.AbstractC15964e;
import com.google.gson.AbstractC16088j;
import com.google.gson.AbstractC16090k;
import com.google.gson.C15956c;
import com.google.gson.C15965f;
import com.google.gson.JsonSyntaxException;
import com.google.gson.annotations.AbstractC15951a;
import com.google.gson.annotations.AbstractC15952b;
import com.google.gson.annotations.AbstractC15953c;
import com.google.gson.annotations.AbstractC15954d;
import com.google.gson.annotations.JsonAdapter;
import com.google.gson.internal.AbstractC16077h;
import com.google.gson.internal.C15981b;
import com.google.gson.internal.C16050c;
import com.google.gson.internal.C16065d;
import com.google.gson.internal.p400a.AbstractC15979b;
import com.google.gson.p399a.C15950a;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.lang.reflect.Field;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
/* renamed from: com.google.gson.internal.bind.f */
/* loaded from: classes4-dex2jar.jar:com/google/gson/internal/bind/f.class */
public final class C16001f implements AbstractC16090k {

    /* renamed from: a */
    private final C16050c f56679a;

    /* renamed from: b */
    private final AbstractC15964e f56680b;

    /* renamed from: c */
    private final C16065d f56681c;

    /* renamed from: d */
    private final JsonAdapterAnnotationTypeAdapterFactory f56682d;

    /* renamed from: e */
    private final AbstractC15979b f56683e = AbstractC15979b.m7953a();

    /* renamed from: com.google.gson.internal.bind.f$a */
    /* loaded from: classes4-dex2jar.jar:com/google/gson/internal/bind/f$a.class */
    public static final class C16003a<T> extends AbstractC16088j<T> {

        /* renamed from: a */
        private final AbstractC16077h<T> f56691a;

        /* renamed from: b */
        private final Map<String, AbstractC16004b> f56692b;

        C16003a(AbstractC16077h<T> abstractC16077h, Map<String, AbstractC16004b> map) {
            this.f56691a = abstractC16077h;
            this.f56692b = map;
        }

        @Override // com.google.gson.AbstractC16088j
        public final T read(JsonReader jsonReader) throws IOException {
            if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.nextNull();
                return null;
            }
            T mo7874a = this.f56691a.mo7874a();
            try {
                jsonReader.beginObject();
                while (jsonReader.hasNext()) {
                    AbstractC16004b abstractC16004b = this.f56692b.get(jsonReader.nextName());
                    if (abstractC16004b != null && abstractC16004b.f56695j) {
                        abstractC16004b.mo7923a(jsonReader, mo7874a);
                    }
                    jsonReader.skipValue();
                }
                jsonReader.endObject();
                return mo7874a;
            } catch (IllegalAccessException e) {
                throw new AssertionError(e);
            } catch (IllegalStateException e2) {
                throw new JsonSyntaxException(e2);
            }
        }

        @Override // com.google.gson.AbstractC16088j
        public final void write(JsonWriter jsonWriter, T t) throws IOException {
            if (t == null) {
                jsonWriter.nullValue();
                return;
            }
            jsonWriter.beginObject();
            try {
                for (AbstractC16004b abstractC16004b : this.f56692b.values()) {
                    if (abstractC16004b.mo7921a(t)) {
                        jsonWriter.name(abstractC16004b.f56693h);
                        abstractC16004b.mo7922a(jsonWriter, t);
                    }
                }
                jsonWriter.endObject();
            } catch (IllegalAccessException e) {
                throw new AssertionError(e);
            }
        }
    }

    /* renamed from: com.google.gson.internal.bind.f$b */
    /* loaded from: classes4-dex2jar.jar:com/google/gson/internal/bind/f$b.class */
    public static abstract class AbstractC16004b {

        /* renamed from: h */
        final String f56693h;

        /* renamed from: i */
        final boolean f56694i;

        /* renamed from: j */
        final boolean f56695j;

        protected AbstractC16004b(String str, boolean z, boolean z2) {
            this.f56693h = str;
            this.f56694i = z;
            this.f56695j = z2;
        }

        /* renamed from: a */
        abstract void mo7923a(JsonReader jsonReader, Object obj) throws IOException, IllegalAccessException;

        /* renamed from: a */
        abstract void mo7922a(JsonWriter jsonWriter, Object obj) throws IOException, IllegalAccessException;

        /* renamed from: a */
        abstract boolean mo7921a(Object obj) throws IOException, IllegalAccessException;
    }

    public C16001f(C16050c c16050c, AbstractC15964e abstractC15964e, C16065d c16065d, JsonAdapterAnnotationTypeAdapterFactory jsonAdapterAnnotationTypeAdapterFactory) {
        this.f56679a = c16050c;
        this.f56680b = abstractC15964e;
        this.f56681c = c16065d;
        this.f56682d = jsonAdapterAnnotationTypeAdapterFactory;
    }

    /* renamed from: a */
    private List<String> m7925a(Field field) {
        AbstractC15952b abstractC15952b = (AbstractC15952b) field.getAnnotation(AbstractC15952b.class);
        if (abstractC15952b == null) {
            return Collections.singletonList(this.f56680b.translateName(field));
        }
        String m7988a = abstractC15952b.m7988a();
        String[] m7987b = abstractC15952b.m7987b();
        if (m7987b.length == 0) {
            return Collections.singletonList(m7988a);
        }
        ArrayList arrayList = new ArrayList(m7987b.length + 1);
        arrayList.add(m7988a);
        for (String str : m7987b) {
            arrayList.add(str);
        }
        return arrayList;
    }

    /* renamed from: a */
    private Map<String, AbstractC16004b> m7926a(final C15965f c15965f, C15950a<?> c15950a, Class<?> cls) {
        Class<?> cls2;
        Type type;
        Field[] fieldArr;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (cls.isInterface()) {
            return linkedHashMap;
        }
        Type type2 = c15950a.getType();
        while (cls != Object.class) {
            Field[] declaredFields = cls.getDeclaredFields();
            int length = declaredFields.length;
            int i = 0;
            C15950a<?> c15950a2 = c15950a;
            Type type3 = type2;
            Field[] fieldArr2 = declaredFields;
            while (i < length) {
                final Field field = fieldArr2[i];
                boolean m7924a = m7924a(field, true);
                boolean m7924a2 = m7924a(field, false);
                if (m7924a || m7924a2) {
                    this.f56683e.mo7952a(field);
                    Type m7944a = C15981b.m7944a(c15950a2.getType(), cls, field.getGenericType());
                    List<String> m7925a = m7925a(field);
                    int size = m7925a.size();
                    AbstractC16004b abstractC16004b = null;
                    int i2 = 0;
                    while (i2 < size) {
                        String str = m7925a.get(i2);
                        if (i2 != 0) {
                            m7924a = false;
                        }
                        final C15950a<?> c15950a3 = C15950a.get(m7944a);
                        Class<? super Object> rawType = c15950a3.getRawType();
                        boolean z = (rawType instanceof Class) && rawType.isPrimitive();
                        JsonAdapter jsonAdapter = (JsonAdapter) field.getAnnotation(JsonAdapter.class);
                        AbstractC16088j<?> typeAdapter = jsonAdapter != null ? this.f56682d.getTypeAdapter(this.f56679a, c15965f, c15950a3, jsonAdapter) : null;
                        boolean z2 = typeAdapter != null;
                        AbstractC16088j<?> abstractC16088j = typeAdapter;
                        if (typeAdapter == null) {
                            abstractC16088j = c15965f.m7977a((C15950a) c15950a3);
                        }
                        final boolean z3 = z2;
                        final AbstractC16088j<?> abstractC16088j2 = abstractC16088j;
                        final boolean z4 = z;
                        AbstractC16004b abstractC16004b2 = (AbstractC16004b) linkedHashMap.put(str, new AbstractC16004b(str, m7924a, m7924a2) { // from class: com.google.gson.internal.bind.f.1
                            @Override // com.google.gson.internal.bind.C16001f.AbstractC16004b
                            /* renamed from: a */
                            final void mo7923a(JsonReader jsonReader, Object obj) throws IOException, IllegalAccessException {
                                Object read = abstractC16088j2.read(jsonReader);
                                if (read != null || !z4) {
                                    field.set(obj, read);
                                }
                            }

                            @Override // com.google.gson.internal.bind.C16001f.AbstractC16004b
                            /* renamed from: a */
                            final void mo7922a(JsonWriter jsonWriter, Object obj) throws IOException, IllegalAccessException {
                                (z3 ? abstractC16088j2 : new C16009i(c15965f, abstractC16088j2, c15950a3.getType())).write(jsonWriter, field.get(obj));
                            }

                            @Override // com.google.gson.internal.bind.C16001f.AbstractC16004b
                            /* renamed from: a */
                            public final boolean mo7921a(Object obj) throws IOException, IllegalAccessException {
                                return this.f56694i && field.get(obj) != obj;
                            }
                        });
                        AbstractC16004b abstractC16004b3 = abstractC16004b;
                        if (abstractC16004b == null) {
                            abstractC16004b3 = abstractC16004b2;
                        }
                        i2++;
                        abstractC16004b = abstractC16004b3;
                    }
                    Field[] fieldArr3 = fieldArr2;
                    cls2 = cls;
                    type = type3;
                    if (abstractC16004b != null) {
                        throw new IllegalArgumentException(type + " declares multiple JSON fields named " + abstractC16004b.f56693h);
                    }
                    fieldArr = fieldArr3;
                } else {
                    Class<?> cls3 = cls;
                    type = type3;
                    fieldArr = fieldArr2;
                    cls2 = cls3;
                }
                i++;
                Class<?> cls4 = cls2;
                Type type4 = type;
                fieldArr2 = fieldArr;
                cls = cls4;
                type3 = type4;
                c15950a2 = c15950a2;
            }
            C15950a<?> c15950a4 = C15950a.get(C15981b.m7944a(c15950a2.getType(), cls, cls.getGenericSuperclass()));
            cls = c15950a4.getRawType();
            type2 = type3;
            c15950a = c15950a4;
        }
        return linkedHashMap;
    }

    /* renamed from: a */
    private boolean m7924a(Field field, boolean z) {
        boolean z2;
        AbstractC15951a abstractC15951a;
        C16065d c16065d = this.f56681c;
        if (!(c16065d.m7894a(field.getType()) || c16065d.m7893a(z))) {
            if ((c16065d.f56801c & field.getModifiers()) != 0 || ((c16065d.f56800b != -1.0d && !c16065d.m7896a((AbstractC15953c) field.getAnnotation(AbstractC15953c.class), (AbstractC15954d) field.getAnnotation(AbstractC15954d.class))) || field.isSynthetic() || ((c16065d.f56803e && ((abstractC15951a = (AbstractC15951a) field.getAnnotation(AbstractC15951a.class)) == null || (!z ? !abstractC15951a.m7989b() : !abstractC15951a.m7990a()))) || ((!c16065d.f56802d && C16065d.m7891c(field.getType())) || C16065d.m7892b(field.getType()))))) {
                z2 = true;
                break;
            }
            List<AbstractC15955b> list = z ? c16065d.f56804f : c16065d.f56805g;
            if (!list.isEmpty()) {
                new C15956c(field);
                for (AbstractC15955b abstractC15955b : list) {
                    if (abstractC15955b.m7984a()) {
                        z2 = true;
                        break;
                    }
                }
            }
            z2 = false;
            return !z2;
        }
        return false;
    }

    @Override // com.google.gson.AbstractC16090k
    public final <T> AbstractC16088j<T> create(C15965f c15965f, C15950a<T> c15950a) {
        Class<? super T> rawType = c15950a.getRawType();
        if (!Object.class.isAssignableFrom(rawType)) {
            return null;
        }
        return new C16003a(this.f56679a.m7900a(c15950a), m7926a(c15965f, c15950a, rawType));
    }
}
