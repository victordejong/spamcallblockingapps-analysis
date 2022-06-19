package com.dropbox.core.p263a;

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
/* renamed from: com.dropbox.core.a.d */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/a/d.class */
public final class C8548d {

    /* renamed from: com.dropbox.core.a.d$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/a/d$a.class */
    public static final class C8549a extends AbstractC8547c<Boolean> {

        /* renamed from: a */
        public static final C8549a f30452a = new C8549a();

        private C8549a() {
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ Boolean deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            boolean booleanValue = jsonParser.getBooleanValue();
            jsonParser.nextToken();
            return Boolean.valueOf(booleanValue);
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ void serialize(Boolean bool, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            jsonGenerator.writeBoolean(bool.booleanValue());
        }
    }

    /* renamed from: com.dropbox.core.a.d$b */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/a/d$b.class */
    public static final class C8550b extends AbstractC8547c<Date> {

        /* renamed from: a */
        public static final C8550b f30453a = new C8550b();

        private C8550b() {
        }

        /* renamed from: a */
        private static Date m25351a(JsonParser jsonParser) throws IOException, JsonParseException {
            String stringValue = getStringValue(jsonParser);
            jsonParser.nextToken();
            try {
                return C8560g.m25350a(stringValue);
            } catch (ParseException e) {
                throw new JsonParseException(jsonParser, "Malformed timestamp: '" + stringValue + "'", e);
            }
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ Date deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            return m25351a(jsonParser);
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ void serialize(Date date, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            jsonGenerator.writeString(C8560g.m25349a(date));
        }
    }

    /* renamed from: com.dropbox.core.a.d$c */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/a/d$c.class */
    public static final class C8551c extends AbstractC8547c<Double> {

        /* renamed from: a */
        public static final C8551c f30454a = new C8551c();

        private C8551c() {
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ Double deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            double doubleValue = jsonParser.getDoubleValue();
            jsonParser.nextToken();
            return Double.valueOf(doubleValue);
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ void serialize(Double d, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            jsonGenerator.writeNumber(d.doubleValue());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.dropbox.core.a.d$d */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/a/d$d.class */
    public static final class C8552d<T> extends AbstractC8547c<List<T>> {

        /* renamed from: a */
        private final AbstractC8547c<T> f30455a;

        public C8552d(AbstractC8547c<T> abstractC8547c) {
            this.f30455a = abstractC8547c;
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            expectStartArray(jsonParser);
            ArrayList arrayList = new ArrayList();
            while (jsonParser.getCurrentToken() != JsonToken.END_ARRAY) {
                arrayList.add(this.f30455a.deserialize(jsonParser));
            }
            expectEndArray(jsonParser);
            return arrayList;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            List<Object> list = (List) obj;
            jsonGenerator.writeStartArray(list.size());
            for (Object obj2 : list) {
                this.f30455a.serialize((AbstractC8547c<T>) obj2, jsonGenerator);
            }
            jsonGenerator.writeEndArray();
        }
    }

    /* renamed from: com.dropbox.core.a.d$e */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/a/d$e.class */
    public static final class C8553e extends AbstractC8547c<Long> {

        /* renamed from: a */
        public static final C8553e f30456a = new C8553e();

        private C8553e() {
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ Long deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            long longValue = jsonParser.getLongValue();
            jsonParser.nextToken();
            return Long.valueOf(longValue);
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ void serialize(Long l, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            jsonGenerator.writeNumber(l.longValue());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.dropbox.core.a.d$f */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/a/d$f.class */
    public static final class C8554f<T> extends AbstractC8547c<T> {

        /* renamed from: a */
        private final AbstractC8547c<T> f30457a;

        public C8554f(AbstractC8547c<T> abstractC8547c) {
            this.f30457a = abstractC8547c;
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final T deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            if (jsonParser.getCurrentToken() == JsonToken.VALUE_NULL) {
                jsonParser.nextToken();
                return null;
            }
            return this.f30457a.deserialize(jsonParser);
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final void serialize(T t, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            if (t == null) {
                jsonGenerator.writeNull();
            } else {
                this.f30457a.serialize((AbstractC8547c<T>) t, jsonGenerator);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.dropbox.core.a.d$g */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/a/d$g.class */
    public static final class C8555g<T> extends AbstractC8558e<T> {

        /* renamed from: a */
        private final AbstractC8558e<T> f30458a;

        public C8555g(AbstractC8558e<T> abstractC8558e) {
            this.f30458a = abstractC8558e;
        }

        @Override // com.dropbox.core.p263a.AbstractC8558e, com.dropbox.core.p263a.AbstractC8547c
        public final T deserialize(JsonParser jsonParser) throws IOException {
            if (jsonParser.getCurrentToken() == JsonToken.VALUE_NULL) {
                jsonParser.nextToken();
                return null;
            }
            return this.f30458a.deserialize(jsonParser);
        }

        @Override // com.dropbox.core.p263a.AbstractC8558e
        public final T deserialize(JsonParser jsonParser, boolean z) throws IOException {
            if (jsonParser.getCurrentToken() == JsonToken.VALUE_NULL) {
                jsonParser.nextToken();
                return null;
            }
            return this.f30458a.deserialize(jsonParser, z);
        }

        @Override // com.dropbox.core.p263a.AbstractC8558e, com.dropbox.core.p263a.AbstractC8547c
        public final void serialize(T t, JsonGenerator jsonGenerator) throws IOException {
            if (t == null) {
                jsonGenerator.writeNull();
            } else {
                this.f30458a.serialize((AbstractC8558e<T>) t, jsonGenerator);
            }
        }

        @Override // com.dropbox.core.p263a.AbstractC8558e
        public final void serialize(T t, JsonGenerator jsonGenerator, boolean z) throws IOException {
            if (t == null) {
                jsonGenerator.writeNull();
            } else {
                this.f30458a.serialize((AbstractC8558e<T>) t, jsonGenerator, z);
            }
        }
    }

    /* renamed from: com.dropbox.core.a.d$h */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/a/d$h.class */
    public static final class C8556h extends AbstractC8547c<String> {

        /* renamed from: a */
        public static final C8556h f30459a = new C8556h();

        private C8556h() {
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ String deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String stringValue = getStringValue(jsonParser);
            jsonParser.nextToken();
            return stringValue;
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ void serialize(String str, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            jsonGenerator.writeString(str);
        }
    }

    /* renamed from: com.dropbox.core.a.d$i */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/a/d$i.class */
    public static final class C8557i extends AbstractC8547c<Void> {

        /* renamed from: a */
        public static final C8557i f30460a = new C8557i();

        private C8557i() {
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ Void deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            skipValue(jsonParser);
            return null;
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ void serialize(Void r3, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            jsonGenerator.writeNull();
        }
    }

    /* renamed from: a */
    public static <T> AbstractC8547c<T> m25354a(AbstractC8547c<T> abstractC8547c) {
        return new C8554f(abstractC8547c);
    }

    /* renamed from: a */
    public static <T> AbstractC8558e<T> m25353a(AbstractC8558e<T> abstractC8558e) {
        return new C8555g(abstractC8558e);
    }

    /* renamed from: b */
    public static <T> AbstractC8547c<List<T>> m25352b(AbstractC8547c<T> abstractC8547c) {
        return new C8552d(abstractC8547c);
    }
}
