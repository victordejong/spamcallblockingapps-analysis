package com.google.firebase.encoders.json;

import com.google.firebase.encoders.AbstractC15732a;
import com.google.firebase.encoders.AbstractC15738d;
import com.google.firebase.encoders.AbstractC15739e;
import com.google.firebase.encoders.AbstractC15740f;
import com.google.firebase.encoders.AbstractC15741g;
import com.google.firebase.encoders.EncodingException;
import com.google.firebase.encoders.p393a.AbstractC15733a;
import com.google.firebase.encoders.p393a.AbstractC15734b;
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
public final class JsonDataEncoderBuilder implements AbstractC15734b<JsonDataEncoderBuilder> {
    private static final AbstractC15740f<Boolean> BOOLEAN_ENCODER;
    private static final AbstractC15740f<String> STRING_ENCODER;
    private static final AbstractC15738d<Object> DEFAULT_FALLBACK_ENCODER = JsonDataEncoderBuilder$$Lambda$1.lambdaFactory$();
    private static final TimestampEncoder TIMESTAMP_ENCODER = new TimestampEncoder();
    private final Map<Class<?>, AbstractC15738d<?>> objectEncoders = new HashMap();
    private final Map<Class<?>, AbstractC15740f<?>> valueEncoders = new HashMap();
    private AbstractC15738d<Object> fallbackEncoder = DEFAULT_FALLBACK_ENCODER;
    private boolean ignoreNullValues = false;

    /* loaded from: classes4-dex2jar.jar:com/google/firebase/encoders/json/JsonDataEncoderBuilder$TimestampEncoder.class */
    public static final class TimestampEncoder implements AbstractC15740f<Date> {
        private static final DateFormat rfc339;

        static {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'", Locale.US);
            rfc339 = simpleDateFormat;
            simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        }

        private TimestampEncoder() {
        }

        public final void encode(Date date, AbstractC15741g abstractC15741g) throws IOException {
            abstractC15741g.add(rfc339.format(date));
        }
    }

    static {
        AbstractC15738d<Object> abstractC15738d;
        AbstractC15740f<String> abstractC15740f;
        AbstractC15740f<Boolean> abstractC15740f2;
        abstractC15738d = JsonDataEncoderBuilder$$Lambda$1.instance;
        DEFAULT_FALLBACK_ENCODER = abstractC15738d;
        abstractC15740f = JsonDataEncoderBuilder$$Lambda$4.instance;
        STRING_ENCODER = abstractC15740f;
        abstractC15740f2 = JsonDataEncoderBuilder$$Lambda$5.instance;
        BOOLEAN_ENCODER = abstractC15740f2;
    }

    public JsonDataEncoderBuilder() {
        registerEncoder(String.class, (AbstractC15740f) STRING_ENCODER);
        registerEncoder(Boolean.class, (AbstractC15740f) BOOLEAN_ENCODER);
        registerEncoder(Date.class, (AbstractC15740f) TIMESTAMP_ENCODER);
    }

    public static /* synthetic */ void lambda$static$0(Object obj, AbstractC15739e abstractC15739e) throws IOException {
        throw new EncodingException("Couldn't find encoder for type " + obj.getClass().getCanonicalName());
    }

    public final AbstractC15732a build() {
        return new AbstractC15732a() { // from class: com.google.firebase.encoders.json.JsonDataEncoderBuilder.1
            {
                JsonDataEncoderBuilder.this = this;
            }

            @Override // com.google.firebase.encoders.AbstractC15732a
            public String encode(Object obj) {
                StringWriter stringWriter = new StringWriter();
                try {
                    encode(obj, stringWriter);
                } catch (IOException e) {
                }
                return stringWriter.toString();
            }

            @Override // com.google.firebase.encoders.AbstractC15732a
            public void encode(Object obj, Writer writer) throws IOException {
                JsonValueObjectEncoderContext jsonValueObjectEncoderContext = new JsonValueObjectEncoderContext(writer, JsonDataEncoderBuilder.this.objectEncoders, JsonDataEncoderBuilder.this.valueEncoders, JsonDataEncoderBuilder.this.fallbackEncoder, JsonDataEncoderBuilder.this.ignoreNullValues);
                jsonValueObjectEncoderContext.add(obj, false);
                jsonValueObjectEncoderContext.close();
            }
        };
    }

    public final JsonDataEncoderBuilder configureWith(AbstractC15733a abstractC15733a) {
        abstractC15733a.configure(this);
        return this;
    }

    public final JsonDataEncoderBuilder ignoreNullValues(boolean z) {
        this.ignoreNullValues = z;
        return this;
    }

    @Override // com.google.firebase.encoders.p393a.AbstractC15734b
    public final <T> JsonDataEncoderBuilder registerEncoder(Class<T> cls, AbstractC15738d<? super T> abstractC15738d) {
        this.objectEncoders.put(cls, abstractC15738d);
        this.valueEncoders.remove(cls);
        return this;
    }

    public final <T> JsonDataEncoderBuilder registerEncoder(Class<T> cls, AbstractC15740f<? super T> abstractC15740f) {
        this.valueEncoders.put(cls, abstractC15740f);
        this.objectEncoders.remove(cls);
        return this;
    }

    public final JsonDataEncoderBuilder registerFallbackEncoder(AbstractC15738d<Object> abstractC15738d) {
        this.fallbackEncoder = abstractC15738d;
        return this;
    }
}
