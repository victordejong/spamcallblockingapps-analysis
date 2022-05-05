package okhttp3;

import java.io.Closeable;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.Reader;
import java.nio.charset.Charset;
import javax.annotation.Nullable;
import okhttp3.internal.Util;
import p645m.AbstractC15174e;
import p645m.C15170c;
/* loaded from: classes3-dex2jar.jar:okhttp3/ResponseBody.class */
public abstract class ResponseBody implements Closeable {
    @Nullable
    public Reader reader;

    /* loaded from: classes3-dex2jar.jar:okhttp3/ResponseBody$BomAwareReader.class */
    public static final class BomAwareReader extends Reader {
        public final Charset charset;
        public boolean closed;
        @Nullable
        public Reader delegate;
        public final AbstractC15174e source;

        public BomAwareReader(AbstractC15174e eVar, Charset charset) {
            this.source = eVar;
            this.charset = charset;
        }

        @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            this.closed = true;
            Reader reader = this.delegate;
            if (reader != null) {
                reader.close();
            } else {
                this.source.close();
            }
        }

        @Override // java.io.Reader
        public int read(char[] cArr, int i, int i2) throws IOException {
            if (!this.closed) {
                Reader reader = this.delegate;
                Reader reader2 = reader;
                if (reader == null) {
                    reader2 = new InputStreamReader(this.source.mo307A(), Util.bomAwareCharset(this.source, this.charset));
                    this.delegate = reader2;
                }
                return reader2.read(cArr, i, i2);
            }
            throw new IOException("Stream closed");
        }
    }

    public static ResponseBody create(@Nullable final MediaType mediaType, final long j, final AbstractC15174e eVar) {
        if (eVar != null) {
            return new ResponseBody() { // from class: okhttp3.ResponseBody.1
                @Override // okhttp3.ResponseBody
                public long contentLength() {
                    return j;
                }

                @Override // okhttp3.ResponseBody
                @Nullable
                public MediaType contentType() {
                    return MediaType.this;
                }

                @Override // okhttp3.ResponseBody
                public AbstractC15174e source() {
                    return eVar;
                }
            };
        }
        throw new NullPointerException("source == null");
    }

    public static ResponseBody create(@Nullable MediaType mediaType, String str) {
        Charset charset = Util.UTF_8;
        MediaType mediaType2 = mediaType;
        if (mediaType != null) {
            Charset charset2 = mediaType.charset();
            charset = charset2;
            mediaType2 = mediaType;
            if (charset2 == null) {
                charset = Util.UTF_8;
                mediaType2 = MediaType.parse(mediaType + "; charset=utf-8");
            }
        }
        C15170c cVar = new C15170c();
        cVar.m360a(str, charset);
        return create(mediaType2, cVar.m348i(), cVar);
    }

    public static ResponseBody create(@Nullable MediaType mediaType, byte[] bArr) {
        C15170c cVar = new C15170c();
        cVar.write(bArr);
        return create(mediaType, bArr.length, cVar);
    }

    /* JADX WARN: Finally extract failed */
    public final byte[] bytes() throws IOException {
        long contentLength = contentLength();
        if (contentLength <= 2147483647L) {
            AbstractC15174e source = source();
            try {
                byte[] u = source.mo293u();
                Util.closeQuietly(source);
                if (contentLength == -1 || contentLength == u.length) {
                    return u;
                }
                throw new IOException("Content-Length (" + contentLength + ") and stream length (" + u.length + ") disagree");
            } catch (Throwable th) {
                Util.closeQuietly(source);
                throw th;
            }
        } else {
            throw new IOException("Cannot buffer entire body for content length: " + contentLength);
        }
    }

    public final Reader charStream() {
        Reader reader = this.reader;
        if (reader == null) {
            reader = new BomAwareReader(source(), charset());
            this.reader = reader;
        }
        return reader;
    }

    public final Charset charset() {
        MediaType contentType = contentType();
        return contentType != null ? contentType.charset(Util.UTF_8) : Util.UTF_8;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        Util.closeQuietly(source());
    }

    public abstract long contentLength();

    @Nullable
    public abstract MediaType contentType();

    public abstract AbstractC15174e source();

    public final String string() throws IOException {
        AbstractC15174e source = source();
        try {
            return source.mo302a(Util.bomAwareCharset(source, charset()));
        } finally {
            Util.closeQuietly(source);
        }
    }
}
