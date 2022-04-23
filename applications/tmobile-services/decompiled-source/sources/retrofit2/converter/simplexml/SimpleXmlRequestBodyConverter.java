package retrofit2.converter.simplexml;

import java.io.IOException;
import java.io.OutputStreamWriter;
import okhttp3.MediaType;
import okhttp3.RequestBody;
import okio.Buffer;
import org.simpleframework.xml.Serializer;
import retrofit2.Converter;
/* loaded from: classes2-dex2jar.jar:retrofit2/converter/simplexml/SimpleXmlRequestBodyConverter.class */
final class SimpleXmlRequestBodyConverter<T> implements Converter<T, RequestBody> {
    private static final String CHARSET = "UTF-8";
    private static final MediaType MEDIA_TYPE = MediaType.get("application/xml; charset=UTF-8");
    private final Serializer serializer;

    /* JADX INFO: Access modifiers changed from: package-private */
    public SimpleXmlRequestBodyConverter(Serializer serializer) {
        this.serializer = serializer;
    }

    @Override // retrofit2.Converter
    /* renamed from: convert  reason: avoid collision after fix types in other method */
    public RequestBody convert2(T t) throws IOException {
        Throwable e;
        Buffer buffer = new Buffer();
        try {
            OutputStreamWriter outputStreamWriter = new OutputStreamWriter(buffer.m214K(), "UTF-8");
            this.serializer.write(t, outputStreamWriter);
            outputStreamWriter.flush();
            return RequestBody.create(MEDIA_TYPE, buffer.mo80U());
        } catch (IOException e2) {
            e = e2;
            throw e;
        } catch (RuntimeException e3) {
            e = e3;
            throw e;
        } catch (Exception e4) {
            throw new RuntimeException(e4);
        }
    }
}
