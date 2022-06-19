package okhttp3;

import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.nio.charset.Charset;
import java.util.Objects;
import okhttp3.internal.Util;
import okio.Buffer;
import okio.BufferedSource;
/* loaded from: classes2-dex2jar.jar:okhttp3/ResponseBody.class */
public abstract class ResponseBody implements Closeable {
    private Reader reader;

    /* loaded from: classes2-dex2jar.jar:okhttp3/ResponseBody$BomAwareReader.class */
    static final class BomAwareReader extends Reader {
        private final Charset charset;
        private boolean closed;
        private Reader delegate;
        private final BufferedSource source;

        BomAwareReader(BufferedSource bufferedSource, Charset charset) {
            this.source = bufferedSource;
            this.charset = charset;
        }

        @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            this.closed = true;
            Reader reader = this.delegate;
            if (reader != null) {
                reader.close();
            } else {
                this.source.close();
            }
        }

        @Override // java.io.Reader
        public int read(char[] cArr, int i, int i2) {
            if (!this.closed) {
                Reader reader = this.delegate;
                InputStreamReader inputStreamReader = reader;
                if (reader == null) {
                    inputStreamReader = new InputStreamReader(this.source.inputStream(), Util.bomAwareCharset(this.source, this.charset));
                    this.delegate = inputStreamReader;
                }
                return inputStreamReader.read(cArr, i, i2);
            }
            throw new IOException("Stream closed");
        }
    }

    private Charset charset() {
        MediaType contentType = contentType();
        return contentType != null ? contentType.charset(Util.UTF_8) : Util.UTF_8;
    }

    public static ResponseBody create(final MediaType mediaType, final long j, final BufferedSource bufferedSource) {
        Objects.requireNonNull(bufferedSource, "source == null");
        return new ResponseBody() { // from class: okhttp3.ResponseBody.1
            @Override // okhttp3.ResponseBody
            public long contentLength() {
                return j;
            }

            @Override // okhttp3.ResponseBody
            public MediaType contentType() {
                return mediaType;
            }

            @Override // okhttp3.ResponseBody
            public BufferedSource source() {
                return bufferedSource;
            }
        };
    }

    public static ResponseBody create(MediaType mediaType, String str) {
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
        Buffer writeString = new Buffer().writeString(str, charset2);
        return create(mediaType2, writeString.size(), writeString);
    }

    public static ResponseBody create(MediaType mediaType, byte[] bArr) {
        return create(mediaType, bArr.length, new Buffer().write(bArr));
    }

    public final InputStream byteStream() {
        return source().inputStream();
    }

    /* JADX WARN: Finally extract failed */
    public final byte[] bytes() {
        long contentLength = contentLength();
        if (contentLength > 2147483647L) {
            throw new IOException("Cannot buffer entire body for content length: " + contentLength);
        }
        BufferedSource source = source();
        try {
            byte[] readByteArray = source.readByteArray();
            Util.closeQuietly(source);
            if (contentLength == -1 || contentLength == readByteArray.length) {
                return readByteArray;
            }
            throw new IOException("Content-Length (" + contentLength + ") and stream length (" + readByteArray.length + ") disagree");
        } catch (Throwable th) {
            Util.closeQuietly(source);
            throw th;
        }
    }

    public final Reader charStream() {
        BomAwareReader bomAwareReader = this.reader;
        if (bomAwareReader == null) {
            bomAwareReader = new BomAwareReader(source(), charset());
            this.reader = bomAwareReader;
        }
        return bomAwareReader;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        Util.closeQuietly(source());
    }

    public abstract long contentLength();

    public abstract MediaType contentType();

    public abstract BufferedSource source();

    public final String string() {
        BufferedSource source = source();
        try {
            return source.readString(Util.bomAwareCharset(source, charset()));
        } finally {
            Util.closeQuietly(source);
        }
    }
}
