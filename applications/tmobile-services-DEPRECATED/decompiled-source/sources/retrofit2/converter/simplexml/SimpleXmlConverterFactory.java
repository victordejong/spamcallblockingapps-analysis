package retrofit2.converter.simplexml;

import java.lang.annotation.Annotation;
import java.lang.reflect.Type;
import javax.annotation.Nullable;
import okhttp3.RequestBody;
import okhttp3.ResponseBody;
import org.simpleframework.xml.Serializer;
import org.simpleframework.xml.core.Persister;
import retrofit2.Converter;
import retrofit2.Retrofit;
@Deprecated
/* loaded from: classes2-dex2jar.jar:retrofit2/converter/simplexml/SimpleXmlConverterFactory.class */
public final class SimpleXmlConverterFactory extends Converter.Factory {
    private final Serializer serializer;
    private final boolean strict;

    private SimpleXmlConverterFactory(Serializer serializer, boolean z) {
        this.serializer = serializer;
        this.strict = z;
    }

    public static SimpleXmlConverterFactory create() {
        return create(new Persister());
    }

    public static SimpleXmlConverterFactory create(Serializer serializer) {
        return new SimpleXmlConverterFactory(serializer, true);
    }

    public static SimpleXmlConverterFactory createNonStrict() {
        return createNonStrict(new Persister());
    }

    public static SimpleXmlConverterFactory createNonStrict(Serializer serializer) {
        if (serializer != null) {
            return new SimpleXmlConverterFactory(serializer, false);
        }
        throw new NullPointerException("serializer == null");
    }

    public boolean isStrict() {
        return this.strict;
    }

    @Override // retrofit2.Converter.Factory
    @Nullable
    public Converter<?, RequestBody> requestBodyConverter(Type type, Annotation[] annotationArr, Annotation[] annotationArr2, Retrofit retrofit) {
        if (!(type instanceof Class)) {
            return null;
        }
        return new SimpleXmlRequestBodyConverter(this.serializer);
    }

    @Override // retrofit2.Converter.Factory
    public Converter<ResponseBody, ?> responseBodyConverter(Type type, Annotation[] annotationArr, Retrofit retrofit) {
        if (!(type instanceof Class)) {
            return null;
        }
        return new SimpleXmlResponseBodyConverter((Class) type, this.serializer, this.strict);
    }
}
