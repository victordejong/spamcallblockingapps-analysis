package com.dropbox.core.a;

import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/a/d.class */
public final class d {

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/a/d$a.class */
    public static final class a extends com.dropbox.core.a.c<Boolean> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f17710a = new a();

        private a() {
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ Boolean deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            boolean booleanValue = jsonParser.getBooleanValue();
            jsonParser.nextToken();
            return Boolean.valueOf(booleanValue);
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ void serialize(Boolean bool, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            jsonGenerator.writeBoolean(bool.booleanValue());
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/a/d$b.class */
    public static final class b extends com.dropbox.core.a.c<Date> {

        /* renamed from: a  reason: collision with root package name */
        public static final b f17711a = new b();

        private b() {
        }

        private static Date a(JsonParser jsonParser) throws IOException, JsonParseException {
            String stringValue = getStringValue(jsonParser);
            jsonParser.nextToken();
            try {
                return com.dropbox.core.a.g.a(stringValue);
            } catch (ParseException e) {
                throw new JsonParseException(jsonParser, "Malformed timestamp: '" + stringValue + "'", e);
            }
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ Date deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            return a(jsonParser);
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ void serialize(Date date, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            jsonGenerator.writeString(com.dropbox.core.a.g.a(date));
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/a/d$c.class */
    public static final class c extends com.dropbox.core.a.c<Double> {

        /* renamed from: a  reason: collision with root package name */
        public static final c f17712a = new c();

        private c() {
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ Double deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            double doubleValue = jsonParser.getDoubleValue();
            jsonParser.nextToken();
            return Double.valueOf(doubleValue);
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ void serialize(Double d2, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            jsonGenerator.writeNumber(d2.doubleValue());
        }
    }

    /* renamed from: com.dropbox.core.a.d$d  reason: collision with other inner class name */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/a/d$d.class */
    static final class C0352d<T> extends com.dropbox.core.a.c<List<T>> {

        /* renamed from: a  reason: collision with root package name */
        private final com.dropbox.core.a.c<T> f17713a;

        public C0352d(com.dropbox.core.a.c<T> cVar) {
            this.f17713a = cVar;
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            expectStartArray(jsonParser);
            ArrayList arrayList = new ArrayList();
            while (jsonParser.getCurrentToken() != JsonToken.END_ARRAY) {
                arrayList.add(this.f17713a.deserialize(jsonParser));
            }
            expectEndArray(jsonParser);
            return arrayList;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.dropbox.core.a.c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            List<Object> list = (List) obj;
            jsonGenerator.writeStartArray(list.size());
            for (Object obj2 : list) {
                this.f17713a.serialize((com.dropbox.core.a.c<T>) obj2, jsonGenerator);
            }
            jsonGenerator.writeEndArray();
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/a/d$e.class */
    public static final class e extends com.dropbox.core.a.c<Long> {

        /* renamed from: a  reason: collision with root package name */
        public static final e f17714a = new e();

        private e() {
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ Long deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            long longValue = jsonParser.getLongValue();
            jsonParser.nextToken();
            return Long.valueOf(longValue);
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ void serialize(Long l, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            jsonGenerator.writeNumber(l.longValue());
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/a/d$f.class */
    static final class f<T> extends com.dropbox.core.a.c<T> {

        /* renamed from: a  reason: collision with root package name */
        private final com.dropbox.core.a.c<T> f17715a;

        public f(com.dropbox.core.a.c<T> cVar) {
            this.f17715a = cVar;
        }

        @Override // com.dropbox.core.a.c
        public final T deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            if (jsonParser.getCurrentToken() != JsonToken.VALUE_NULL) {
                return this.f17715a.deserialize(jsonParser);
            }
            jsonParser.nextToken();
            return null;
        }

        @Override // com.dropbox.core.a.c
        public final void serialize(T t, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            if (t == null) {
                jsonGenerator.writeNull();
            } else {
                this.f17715a.serialize((com.dropbox.core.a.c<T>) t, jsonGenerator);
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/a/d$g.class */
    static final class g<T> extends com.dropbox.core.a.e<T> {

        /* renamed from: a  reason: collision with root package name */
        private final com.dropbox.core.a.e<T> f17716a;

        public g(com.dropbox.core.a.e<T> eVar) {
            this.f17716a = eVar;
        }

        @Override // com.dropbox.core.a.e, com.dropbox.core.a.c
        public final T deserialize(JsonParser jsonParser) throws IOException {
            if (jsonParser.getCurrentToken() != JsonToken.VALUE_NULL) {
                return this.f17716a.deserialize(jsonParser);
            }
            jsonParser.nextToken();
            return null;
        }

        @Override // com.dropbox.core.a.e
        public final T deserialize(JsonParser jsonParser, boolean z) throws IOException {
            if (jsonParser.getCurrentToken() != JsonToken.VALUE_NULL) {
                return this.f17716a.deserialize(jsonParser, z);
            }
            jsonParser.nextToken();
            return null;
        }

        @Override // com.dropbox.core.a.e, com.dropbox.core.a.c
        public final void serialize(T t, JsonGenerator jsonGenerator) throws IOException {
            if (t == null) {
                jsonGenerator.writeNull();
            } else {
                this.f17716a.serialize((com.dropbox.core.a.e<T>) t, jsonGenerator);
            }
        }

        @Override // com.dropbox.core.a.e
        public final void serialize(T t, JsonGenerator jsonGenerator, boolean z) throws IOException {
            if (t == null) {
                jsonGenerator.writeNull();
            } else {
                this.f17716a.serialize((com.dropbox.core.a.e<T>) t, jsonGenerator, z);
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/a/d$h.class */
    public static final class h extends com.dropbox.core.a.c<String> {

        /* renamed from: a  reason: collision with root package name */
        public static final h f17717a = new h();

        private h() {
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ String deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String stringValue = getStringValue(jsonParser);
            jsonParser.nextToken();
            return stringValue;
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ void serialize(String str, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            jsonGenerator.writeString(str);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/a/d$i.class */
    public static final class i extends com.dropbox.core.a.c<Void> {

        /* renamed from: a  reason: collision with root package name */
        public static final i f17718a = new i();

        private i() {
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ Void deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            skipValue(jsonParser);
            return null;
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ void serialize(Void r3, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            jsonGenerator.writeNull();
        }
    }

    public static <T> com.dropbox.core.a.c<T> a(com.dropbox.core.a.c<T> cVar) {
        return new f(cVar);
    }

    public static <T> com.dropbox.core.a.e<T> a(com.dropbox.core.a.e<T> eVar) {
        return new g(eVar);
    }

    public static <T> com.dropbox.core.a.c<List<T>> b(com.dropbox.core.a.c<T> cVar) {
        return new C0352d(cVar);
    }
}
