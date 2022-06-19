package com.google.gson.internal.bind;

import com.google.gson.AbstractC16088j;
import com.google.gson.AbstractC16090k;
import com.google.gson.C15965f;
import com.google.gson.internal.AbstractC16077h;
import com.google.gson.internal.C15981b;
import com.google.gson.internal.C16050c;
import com.google.gson.p399a.C15950a;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.lang.reflect.Type;
import java.util.Collection;
/* renamed from: com.google.gson.internal.bind.b */
/* loaded from: classes4-dex2jar.jar:com/google/gson/internal/bind/b.class */
public final class C15992b implements AbstractC16090k {

    /* renamed from: a */
    private final C16050c f56665a;

    /* renamed from: com.google.gson.internal.bind.b$a */
    /* loaded from: classes4-dex2jar.jar:com/google/gson/internal/bind/b$a.class */
    static final class C15993a<E> extends AbstractC16088j<Collection<E>> {

        /* renamed from: a */
        private final AbstractC16088j<E> f56666a;

        /* renamed from: b */
        private final AbstractC16077h<? extends Collection<E>> f56667b;

        public C15993a(C15965f c15965f, Type type, AbstractC16088j<E> abstractC16088j, AbstractC16077h<? extends Collection<E>> abstractC16077h) {
            this.f56666a = new C16009i(c15965f, abstractC16088j, type);
            this.f56667b = abstractC16077h;
        }

        @Override // com.google.gson.AbstractC16088j
        public final /* synthetic */ Object read(JsonReader jsonReader) throws IOException {
            if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.nextNull();
                return null;
            }
            Collection<E> mo7874a = this.f56667b.mo7874a();
            jsonReader.beginArray();
            while (jsonReader.hasNext()) {
                mo7874a.add(this.f56666a.read(jsonReader));
            }
            jsonReader.endArray();
            return mo7874a;
        }

        @Override // com.google.gson.AbstractC16088j
        public final /* synthetic */ void write(JsonWriter jsonWriter, Object obj) throws IOException {
            Collection<E> collection = (Collection) obj;
            if (collection == null) {
                jsonWriter.nullValue();
                return;
            }
            jsonWriter.beginArray();
            for (E e : collection) {
                this.f56666a.write(jsonWriter, e);
            }
            jsonWriter.endArray();
        }
    }

    public C15992b(C16050c c16050c) {
        this.f56665a = c16050c;
    }

    @Override // com.google.gson.AbstractC16090k
    public final <T> AbstractC16088j<T> create(C15965f c15965f, C15950a<T> c15950a) {
        Type type = c15950a.getType();
        Class<? super T> rawType = c15950a.getRawType();
        if (!Collection.class.isAssignableFrom(rawType)) {
            return null;
        }
        Type m7946a = C15981b.m7946a(type, (Class<?>) rawType);
        return new C15993a(c15965f, m7946a, c15965f.m7977a((C15950a) C15950a.get(m7946a)), this.f56665a.m7900a(c15950a));
    }
}
