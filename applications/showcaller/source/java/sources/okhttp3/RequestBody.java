package okhttp3;

import java.io.File;
import java.nio.charset.Charset;
import java.util.Objects;
import okhttp3.internal.Util;
import okio.BufferedSink;
import okio.ByteString;
import okio.Okio;
import okio.Source;
/* loaded from: classes2-dex2jar.jar:okhttp3/RequestBody.class */
public abstract class RequestBody {
    public static RequestBody create(final MediaType mediaType, final File file) {
        Objects.requireNonNull(file, "content == null");
        return new RequestBody() { // from class: okhttp3.RequestBody.3
            @Override // okhttp3.RequestBody
            public long contentLength() {
                return file.length();
            }

            @Override // okhttp3.RequestBody
            public MediaType contentType() {
                return mediaType;
            }

            @Override // okhttp3.RequestBody
            public void writeTo(BufferedSink bufferedSink) {
                Source source = null;
                try {
                    Source source2 = Okio.source(file);
                    source = source2;
                    bufferedSink.writeAll(source2);
                    Util.closeQuietly(source2);
                } catch (Throwable th) {
                    Util.closeQuietly(source);
                    throw th;
                }
            }
        };
    }

    public static RequestBody create(MediaType mediaType, String str) {
        Charset charset = Util.UTF_8;
        Charset charset2 = charset;
        MediaType mediaType2 = mediaType;
        if (mediaType != null) {
            charset2 = mediaType.charset();
            if (charset2 == null) {
                mediaType2 = MediaType.parse(mediaType + "; charset=utf-8");
                charset2 = charset;
            } else {
                mediaType2 = mediaType;
            }
        }
        return create(mediaType2, str.getBytes(charset2));
    }

    public static RequestBody create(final MediaType mediaType, final ByteString byteString) {
        return new RequestBody() { // from class: okhttp3.RequestBody.1
            @Override // okhttp3.RequestBody
            public long contentLength() {
                return byteString.size();
            }

            @Override // okhttp3.RequestBody
            public MediaType contentType() {
                return mediaType;
            }

            @Override // okhttp3.RequestBody
            public void writeTo(BufferedSink bufferedSink) {
                bufferedSink.write(byteString);
            }
        };
    }

    public static RequestBody create(MediaType mediaType, byte[] bArr) {
        return create(mediaType, bArr, 0, bArr.length);
    }

    public static RequestBody create(final MediaType mediaType, final byte[] bArr, final int i, final int i2) {
        Objects.requireNonNull(bArr, "content == null");
        Util.checkOffsetAndCount(bArr.length, i, i2);
        return new RequestBody() { // from class: okhttp3.RequestBody.2
            @Override // okhttp3.RequestBody
            public long contentLength() {
                return i2;
            }

            @Override // okhttp3.RequestBody
            public MediaType contentType() {
                return mediaType;
            }

            @Override // okhttp3.RequestBody
            public void writeTo(BufferedSink bufferedSink) {
                bufferedSink.write(bArr, i, i2);
            }
        };
    }

    public long contentLength() {
        return -1L;
    }

    public abstract MediaType contentType();

    public abstract void writeTo(BufferedSink bufferedSink);
}
