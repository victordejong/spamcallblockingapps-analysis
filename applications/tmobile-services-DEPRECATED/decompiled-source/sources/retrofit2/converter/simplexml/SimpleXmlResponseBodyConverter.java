package retrofit2.converter.simplexml;

import java.io.IOException;
import okhttp3.ResponseBody;
import org.simpleframework.xml.Serializer;
import retrofit2.Converter;
/* loaded from: classes2-dex2jar.jar:retrofit2/converter/simplexml/SimpleXmlResponseBodyConverter.class */
final class SimpleXmlResponseBodyConverter<T> implements Converter<ResponseBody, T> {
    private final Class<T> cls;
    private final Serializer serializer;
    private final boolean strict;

    /* JADX INFO: Access modifiers changed from: package-private */
    public SimpleXmlResponseBodyConverter(Class<T> cls, Serializer serializer, boolean z) {
        this.cls = cls;
        this.serializer = serializer;
        this.strict = z;
    }

    public T convert(ResponseBody responseBody) throws IOException {
        Throwable e;
        try {
            try {
                T t = (T) this.serializer.read((Class<? extends Object>) this.cls, responseBody.charStream(), this.strict);
                if (t != null) {
                    responseBody.close();
                    return t;
                }
                throw new IllegalStateException("Could not deserialize body as " + this.cls);
            } catch (IOException e2) {
                e = e2;
                throw e;
            } catch (RuntimeException e3) {
                e = e3;
                throw e;
            } catch (Exception e4) {
                throw new RuntimeException(e4);
            }
        } catch (Throwable th) {
            responseBody.close();
            throw th;
        }
    }
}
