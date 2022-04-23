package com.google.firebase.encoders.json;

import com.google.firebase.encoders.EncodingException;
import com.google.firebase.encoders.a;
import com.google.firebase.encoders.a.b;
import com.google.firebase.encoders.d;
import com.google.firebase.encoders.e;
import com.google.firebase.encoders.f;
import com.google.firebase.encoders.g;
import java.io.IOException;
import java.io.StringWriter;
import java.io.Writer;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/encoders/json/JsonDataEncoderBuilder.class */
public final class JsonDataEncoderBuilder implements b<JsonDataEncoderBuilder> {
    private static final f<Boolean> BOOLEAN_ENCODER;
    private static final d<Object> DEFAULT_FALLBACK_ENCODER;
    private static final f<String> STRING_ENCODER;
    private static final TimestampEncoder TIMESTAMP_ENCODER = new TimestampEncoder();
    private final Map<Class<?>, d<?>> objectEncoders = new HashMap();
    private final Map<Class<?>, f<?>> valueEncoders = new HashMap();
    private d<Object> fallbackEncoder = DEFAULT_FALLBACK_ENCODER;
    private boolean ignoreNullValues = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/google/firebase/encoders/json/JsonDataEncoderBuilder$TimestampEncoder.class */
    public static final class TimestampEncoder implements f<Date> {
        private static final DateFormat rfc339;

        static {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'", Locale.US);
            rfc339 = simpleDateFormat;
            simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        }

        private TimestampEncoder() {
        }

        public final void encode(Date date, g gVar) throws IOException {
            gVar.add(rfc339.format(date));
        }
    }

    static {
        d<Object> dVar;
        f<String> fVar;
        f<Boolean> fVar2;
        dVar = JsonDataEncoderBuilder$$Lambda$1.instance;
        DEFAULT_FALLBACK_ENCODER = dVar;
        fVar = JsonDataEncoderBuilder$$Lambda$4.instance;
        STRING_ENCODER = fVar;
        fVar2 = JsonDataEncoderBuilder$$Lambda$5.instance;
        BOOLEAN_ENCODER = fVar2;
    }

    public JsonDataEncoderBuilder() {
        registerEncoder(String.class, (f) STRING_ENCODER);
        registerEncoder(Boolean.class, (f) BOOLEAN_ENCODER);
        registerEncoder(Date.class, (f) TIMESTAMP_ENCODER);
    }

    public static /* synthetic */ void lambda$static$0(Object obj, e eVar) throws IOException {
        throw new EncodingException("Couldn't find encoder for type " + obj.getClass().getCanonicalName());
    }

    public static /* synthetic */ void lambda$static$1(String str, g gVar) throws IOException {
        gVar.add(str);
    }

    public static /* synthetic */ void lambda$static$2(Boolean bool, g gVar) throws IOException {
        gVar.add(bool.booleanValue());
    }

    public final a build() {
        return new a() { // from class: com.google.firebase.encoders.json.JsonDataEncoderBuilder.1
            {
                JsonDataEncoderBuilder.this = this;
            }

            @Override // com.google.firebase.encoders.a
            public String encode(Object obj) {
                StringWriter stringWriter = new StringWriter();
                try {
                    encode(obj, stringWriter);
                } catch (IOException e) {
                }
                return stringWriter.toString();
            }

            @Override // com.google.firebase.encoders.a
            public void encode(Object obj, Writer writer) throws IOException {
                JsonValueObjectEncoderContext jsonValueObjectEncoderContext = new JsonValueObjectEncoderContext(writer, JsonDataEncoderBuilder.this.objectEncoders, JsonDataEncoderBuilder.this.valueEncoders, JsonDataEncoderBuilder.this.fallbackEncoder, JsonDataEncoderBuilder.this.ignoreNullValues);
                jsonValueObjectEncoderContext.add(obj, false);
                jsonValueObjectEncoderContext.close();
            }
        };
    }

    public final JsonDataEncoderBuilder configureWith(com.google.firebase.encoders.a.a aVar) {
        aVar.configure(this);
        return this;
    }

    public final JsonDataEncoderBuilder ignoreNullValues(boolean z) {
        this.ignoreNullValues = z;
        return this;
    }

    @Override // com.google.firebase.encoders.a.b
    public final <T> JsonDataEncoderBuilder registerEncoder(Class<T> cls, d<? super T> dVar) {
        this.objectEncoders.put(cls, dVar);
        this.valueEncoders.remove(cls);
        return this;
    }

    public final <T> JsonDataEncoderBuilder registerEncoder(Class<T> cls, f<? super T> fVar) {
        this.valueEncoders.put(cls, fVar);
        this.objectEncoders.remove(cls);
        return this;
    }

    public final JsonDataEncoderBuilder registerFallbackEncoder(d<Object> dVar) {
        this.fallbackEncoder = dVar;
        return this;
    }
}
