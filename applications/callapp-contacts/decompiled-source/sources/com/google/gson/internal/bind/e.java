package com.google.gson.internal.bind;

import com.google.gson.a.a;
import com.google.gson.f;
import com.google.gson.internal.g;
import com.google.gson.j;
import com.google.gson.k;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.util.ArrayList;
/* loaded from: classes4-dex2jar.jar:com/google/gson/internal/bind/e.class */
public final class e extends j<Object> {

    /* renamed from: a  reason: collision with root package name */
    public static final k f32716a = new k() { // from class: com.google.gson.internal.bind.e.1
        @Override // com.google.gson.k
        public final <T> j<T> create(f fVar, a<T> aVar) {
            if (aVar.getRawType() == Object.class) {
                return new e(fVar);
            }
            return null;
        }
    };

    /* renamed from: b  reason: collision with root package name */
    private final f f32717b;

    /* renamed from: com.google.gson.internal.bind.e$2  reason: invalid class name */
    /* loaded from: classes4-dex2jar.jar:com/google/gson/internal/bind/e$2.class */
    static final /* synthetic */ class AnonymousClass2 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f32718a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x004d -> B:31:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x0051 -> B:27:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0055 -> B:25:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x0059 -> B:21:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x005d -> B:29:0x0040). Please submit an issue!!! */
        static {
            int[] iArr = new int[JsonToken.values().length];
            f32718a = iArr;
            try {
                iArr[JsonToken.BEGIN_ARRAY.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f32718a[JsonToken.BEGIN_OBJECT.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f32718a[JsonToken.STRING.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f32718a[JsonToken.NUMBER.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f32718a[JsonToken.BOOLEAN.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f32718a[JsonToken.NULL.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
        }
    }

    e(f fVar) {
        this.f32717b = fVar;
    }

    @Override // com.google.gson.j
    public final Object read(JsonReader jsonReader) throws IOException {
        switch (AnonymousClass2.f32718a[jsonReader.peek().ordinal()]) {
            case 1:
                ArrayList arrayList = new ArrayList();
                jsonReader.beginArray();
                while (jsonReader.hasNext()) {
                    arrayList.add(read(jsonReader));
                }
                jsonReader.endArray();
                return arrayList;
            case 2:
                g gVar = new g();
                jsonReader.beginObject();
                while (jsonReader.hasNext()) {
                    gVar.put(jsonReader.nextName(), read(jsonReader));
                }
                jsonReader.endObject();
                return gVar;
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

    @Override // com.google.gson.j
    public final void write(JsonWriter jsonWriter, Object obj) throws IOException {
        if (obj == null) {
            jsonWriter.nullValue();
            return;
        }
        j a2 = this.f32717b.a((Class) obj.getClass());
        if (a2 instanceof e) {
            jsonWriter.beginObject();
            jsonWriter.endObject();
            return;
        }
        a2.write(jsonWriter, obj);
    }
}
