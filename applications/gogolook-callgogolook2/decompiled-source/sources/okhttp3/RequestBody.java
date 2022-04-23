package okhttp3;

import java.io.File;
import java.io.IOException;
import java.nio.charset.Charset;
import javax.annotation.Nullable;
import okhttp3.internal.Util;
import p645m.AbstractC15173d;
import p645m.AbstractC15193s;
import p645m.C15175f;
import p645m.C15181l;
/* loaded from: classes3-dex2jar.jar:okhttp3/RequestBody.class */
public abstract class RequestBody {
    public static RequestBody create(@Nullable final MediaType mediaType, final File file) {
        if (file != null) {
            return new RequestBody() { // from class: okhttp3.RequestBody.3
                @Override // okhttp3.RequestBody
                public long contentLength() {
                    return file.length();
                }

                @Override // okhttp3.RequestBody
                @Nullable
                public MediaType contentType() {
                    return MediaType.this;
                }

                @Override // okhttp3.RequestBody
                public void writeTo(AbstractC15173d dVar) throws IOException {
                    AbstractC15193s sVar = null;
                    try {
                        sVar = C15181l.m315c(file);
                        sVar = sVar;
                        dVar.mo311a(sVar);
                    } finally {
                        Util.closeQuietly(sVar);
                    }
                }
            };
        }
        throw new NullPointerException("file == null");
    }

    public static RequestBody create(@Nullable MediaType mediaType, String str) {
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
        return create(mediaType2, str.getBytes(charset));
    }

    public static RequestBody create(@Nullable final MediaType mediaType, final C15175f fVar) {
        return new RequestBody() { // from class: okhttp3.RequestBody.1
            @Override // okhttp3.RequestBody
            public long contentLength() throws IOException {
                return fVar.mo268f();
            }

            @Override // okhttp3.RequestBody
            @Nullable
            public MediaType contentType() {
                return MediaType.this;
            }

            @Override // okhttp3.RequestBody
            public void writeTo(AbstractC15173d dVar) throws IOException {
                dVar.mo312a(fVar);
            }
        };
    }

    public static RequestBody create(@Nullable MediaType mediaType, byte[] bArr) {
        return create(mediaType, bArr, 0, bArr.length);
    }

    public static RequestBody create(@Nullable final MediaType mediaType, final byte[] bArr, final int i, final int i2) {
        if (bArr != null) {
            Util.checkOffsetAndCount(bArr.length, i, i2);
            return new RequestBody() { // from class: okhttp3.RequestBody.2
                @Override // okhttp3.RequestBody
                public long contentLength() {
                    return i2;
                }

                @Override // okhttp3.RequestBody
                @Nullable
                public MediaType contentType() {
                    return MediaType.this;
                }

                @Override // okhttp3.RequestBody
                public void writeTo(AbstractC15173d dVar) throws IOException {
                    dVar.write(bArr, i, i2);
                }
            };
        }
        throw new NullPointerException("content == null");
    }

    public long contentLength() throws IOException {
        return -1L;
    }

    @Nullable
    public abstract MediaType contentType();

    public abstract void writeTo(AbstractC15173d dVar) throws IOException;
}
