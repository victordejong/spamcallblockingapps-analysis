package com.google.gson.internal.bind;

import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.internal.LinkedTreeMap;
import com.google.gson.reflect.TypeToken;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/google/gson/internal/bind/ObjectTypeAdapter.class */
public final class ObjectTypeAdapter extends TypeAdapter<Object> {

    /* renamed from: b */
    public static final TypeAdapterFactory f12081b = new TypeAdapterFactory() { // from class: com.google.gson.internal.bind.ObjectTypeAdapter.1
        @Override // com.google.gson.TypeAdapterFactory
        /* renamed from: a */
        public <T> TypeAdapter<T> mo8188a(Gson gson, TypeToken<T> typeToken) {
            if (typeToken.m8160c() == Object.class) {
                return new ObjectTypeAdapter(gson);
            }
            return null;
        }
    };

    /* renamed from: a */
    private final Gson f12082a;

    /* renamed from: com.google.gson.internal.bind.ObjectTypeAdapter$2 */
    /* loaded from: classes-dex2jar.jar:com/google/gson/internal/bind/ObjectTypeAdapter$2.class */
    static /* synthetic */ class C14332 {

        /* renamed from: a */
        static final /* synthetic */ int[] f12083a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x004d -> B:31:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x0051 -> B:27:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0055 -> B:25:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x0059 -> B:21:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x005d -> B:29:0x0040). Please submit an issue!!! */
        static {
            int[] iArr = new int[JsonToken.values().length];
            f12083a = iArr;
            try {
                iArr[JsonToken.BEGIN_ARRAY.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f12083a[JsonToken.BEGIN_OBJECT.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f12083a[JsonToken.STRING.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f12083a[JsonToken.NUMBER.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f12083a[JsonToken.BOOLEAN.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f12083a[JsonToken.NULL.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
        }
    }

    ObjectTypeAdapter(Gson gson) {
        this.f12082a = gson;
    }

    @Override // com.google.gson.TypeAdapter
    /* renamed from: b */
    public Object mo8175b(JsonReader jsonReader) throws IOException {
        switch (C14332.f12083a[jsonReader.mo8147Z().ordinal()]) {
            case 1:
                ArrayList arrayList = new ArrayList();
                jsonReader.mo8146a();
                while (jsonReader.mo8132o()) {
                    arrayList.add(mo8175b(jsonReader));
                }
                jsonReader.mo8138i();
                return arrayList;
            case 2:
                LinkedTreeMap linkedTreeMap = new LinkedTreeMap();
                jsonReader.mo8145b();
                while (jsonReader.mo8132o()) {
                    linkedTreeMap.put(jsonReader.mo8153L(), mo8175b(jsonReader));
                }
                jsonReader.mo8135k();
                return linkedTreeMap;
            case 3:
                return jsonReader.mo8149X();
            case 4:
                return Double.valueOf(jsonReader.mo8156I());
            case 5:
                return Boolean.valueOf(jsonReader.mo8157B());
            case 6:
                jsonReader.mo8151V();
                return null;
            default:
                throw new IllegalStateException();
        }
    }

    @Override // com.google.gson.TypeAdapter
    /* renamed from: d */
    public void mo8174d(JsonWriter jsonWriter, Object obj) throws IOException {
        if (obj == null) {
            jsonWriter.mo8094t();
            return;
        }
        TypeAdapter l = this.f12082a.m8423l(obj.getClass());
        if (l instanceof ObjectTypeAdapter) {
            jsonWriter.mo8105e();
            jsonWriter.mo8100k();
            return;
        }
        l.mo8174d(jsonWriter, obj);
    }
}
