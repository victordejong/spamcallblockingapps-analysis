package androidx.media2.exoplayer.external.upstream;

import android.net.Uri;
import android.util.Base64;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.C0463C;
import androidx.media2.exoplayer.external.ParserException;
import androidx.media2.exoplayer.external.util.Util;
import java.io.IOException;
import java.net.URLDecoder;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/upstream/DataSchemeDataSource.class */
public final class DataSchemeDataSource extends BaseDataSource {
    public static final String SCHEME_DATA = "data";
    public int bytesRead;
    @Nullable
    public byte[] data;
    public int dataLength;
    @Nullable
    public DataSpec dataSpec;

    public DataSchemeDataSource() {
        super(false);
    }

    @Override // androidx.media2.exoplayer.external.upstream.DataSource
    public void close() throws IOException {
        if (this.data != null) {
            this.data = null;
            transferEnded();
        }
        this.dataSpec = null;
    }

    @Override // androidx.media2.exoplayer.external.upstream.DataSource
    @Nullable
    public Uri getUri() {
        DataSpec dataSpec = this.dataSpec;
        return dataSpec != null ? dataSpec.uri : null;
    }

    @Override // androidx.media2.exoplayer.external.upstream.DataSource
    public long open(DataSpec dataSpec) throws IOException {
        transferInitializing(dataSpec);
        this.dataSpec = dataSpec;
        Uri uri = dataSpec.uri;
        String scheme = uri.getScheme();
        if (!"data".equals(scheme)) {
            String valueOf = String.valueOf(scheme);
            throw new ParserException(valueOf.length() != 0 ? "Unsupported scheme: ".concat(valueOf) : new String("Unsupported scheme: "));
        }
        String[] split = Util.split(uri.getSchemeSpecificPart(), ",");
        if (split.length == 2) {
            String str = split[1];
            if (split[0].contains(";base64")) {
                try {
                    this.data = Base64.decode(str, 0);
                    this.dataLength = this.data.length;
                } catch (IllegalArgumentException e) {
                    String valueOf2 = String.valueOf(str);
                    throw new ParserException(valueOf2.length() != 0 ? "Error while parsing Base64 encoded string: ".concat(valueOf2) : new String("Error while parsing Base64 encoded string: "), e);
                }
            } else {
                this.data = Util.getUtf8Bytes(URLDecoder.decode(str, C0463C.ASCII_NAME));
                this.dataLength = this.data.length;
            }
            transferStarted(dataSpec);
            return this.dataLength;
        }
        String valueOf3 = String.valueOf(uri);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf3).length() + 23);
        sb.append("Unexpected URI format: ");
        sb.append(valueOf3);
        throw new ParserException(sb.toString());
    }

    @Override // androidx.media2.exoplayer.external.upstream.DataSource
    public int read(byte[] bArr, int i, int i2) {
        if (i2 == 0) {
            return 0;
        }
        int i3 = this.dataLength - this.bytesRead;
        if (i3 == 0) {
            return -1;
        }
        int min = Math.min(i2, i3);
        System.arraycopy(Util.castNonNull(this.data), this.bytesRead, bArr, i, min);
        this.bytesRead += min;
        bytesTransferred(min);
        return min;
    }
}
