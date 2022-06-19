package com.google.gson.internal.bind;

import com.google.gson.AbstractC16088j;
import com.google.gson.AbstractC16090k;
import com.google.gson.C15965f;
import com.google.gson.internal.C16069g;
import com.google.gson.p399a.C15950a;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.util.ArrayList;
/* renamed from: com.google.gson.internal.bind.e */
/* loaded from: classes4-dex2jar.jar:com/google/gson/internal/bind/e.class */
public final class C15998e extends AbstractC16088j<Object> {

    /* renamed from: a */
    public static final AbstractC16090k f56676a = new AbstractC16090k() { // from class: com.google.gson.internal.bind.e.1
        @Override // com.google.gson.AbstractC16090k
        public final <T> AbstractC16088j<T> create(C15965f c15965f, C15950a<T> c15950a) {
            if (c15950a.getRawType() == Object.class) {
                return new C15998e(c15965f);
            }
            return null;
        }
    };

    /* renamed from: b */
    private final C15965f f56677b;

    /* renamed from: com.google.gson.internal.bind.e$2 */
    /* loaded from: classes4-dex2jar.jar:com/google/gson/internal/bind/e$2.class */
    static final /* synthetic */ class C160002 {

        /* renamed from: a */
        static final /* synthetic */ int[] f56678a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x004d -> B:31:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x0051 -> B:27:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0055 -> B:25:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x0059 -> B:21:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x005d -> B:29:0x0040). Please submit an issue!!! */
        static {
            int[] iArr = new int[JsonToken.values().length];
            f56678a = iArr;
            try {
                iArr[JsonToken.BEGIN_ARRAY.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f56678a[JsonToken.BEGIN_OBJECT.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f56678a[JsonToken.STRING.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f56678a[JsonToken.NUMBER.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f56678a[JsonToken.BOOLEAN.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f56678a[JsonToken.NULL.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
        }
    }

    C15998e(C15965f c15965f) {
        this.f56677b = c15965f;
    }

    @Override // com.google.gson.AbstractC16088j
    public final Object read(JsonReader jsonReader) throws IOException {
        switch (C160002.f56678a[jsonReader.peek().ordinal()]) {
            case 1:
                ArrayList arrayList = new ArrayList();
                jsonReader.beginArray();
                while (jsonReader.hasNext()) {
                    arrayList.add(read(jsonReader));
                }
                jsonReader.endArray();
                return arrayList;
            case 2:
                C16069g c16069g = new C16069g();
                jsonReader.beginObject();
                while (jsonReader.hasNext()) {
                    c16069g.put(jsonReader.nextName(), read(jsonReader));
                }
                jsonReader.endObject();
                return c16069g;
            case 3:
                return jsonReader.nextString();
            case 4:
                return Double.valueOf(jsonReader.nextDouble());
            case 5:
                return Boolean.valueOf(jsonReader.nextBoolean());
            case 6:
                jsonReader.nextNull();
                return null;
            default:
                throw new IllegalStateException();
        }
    }

    @Override // com.google.gson.AbstractC16088j
    public final void write(JsonWriter jsonWriter, Object obj) throws IOException {
        if (obj == null) {
            jsonWriter.nullValue();
            return;
        }
        AbstractC16088j m7971a = this.f56677b.m7971a((Class) obj.getClass());
        if (!(m7971a instanceof C15998e)) {
            m7971a.write(jsonWriter, obj);
            return;
        }
        jsonWriter.beginObject();
        jsonWriter.endObject();
    }
}
