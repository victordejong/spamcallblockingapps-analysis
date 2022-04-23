package androidx.media2.exoplayer.external.source.hls;

import android.net.Uri;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.upstream.DataSource;
import androidx.media2.exoplayer.external.upstream.DataSourceInputStream;
import androidx.media2.exoplayer.external.upstream.DataSpec;
import androidx.media2.exoplayer.external.upstream.TransferListener;
import androidx.media2.exoplayer.external.util.Assertions;
import java.io.IOException;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.util.List;
import java.util.Map;
import javax.crypto.Cipher;
import javax.crypto.CipherInputStream;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/hls/Aes128DataSource.class */
public class Aes128DataSource implements DataSource {
    @Nullable
    public CipherInputStream cipherInputStream;
    public final byte[] encryptionIv;
    public final byte[] encryptionKey;
    public final DataSource upstream;

    public Aes128DataSource(DataSource dataSource, byte[] bArr, byte[] bArr2) {
        this.upstream = dataSource;
        this.encryptionKey = bArr;
        this.encryptionIv = bArr2;
    }

    @Override // androidx.media2.exoplayer.external.upstream.DataSource
    public final void addTransferListener(TransferListener transferListener) {
        this.upstream.addTransferListener(transferListener);
    }

    @Override // androidx.media2.exoplayer.external.upstream.DataSource
    public void close() throws IOException {
        if (this.cipherInputStream != null) {
            this.cipherInputStream = null;
            this.upstream.close();
        }
    }

    public Cipher getCipherInstance() throws NoSuchPaddingException, NoSuchAlgorithmException {
        return Cipher.getInstance("AES/CBC/PKCS7Padding");
    }

    @Override // androidx.media2.exoplayer.external.upstream.DataSource
    public final Map<String, List<String>> getResponseHeaders() {
        return this.upstream.getResponseHeaders();
    }

    @Override // androidx.media2.exoplayer.external.upstream.DataSource
    @Nullable
    public final Uri getUri() {
        return this.upstream.getUri();
    }

    @Override // androidx.media2.exoplayer.external.upstream.DataSource
    public final long open(DataSpec dataSpec) throws IOException {
        try {
            Cipher cipherInstance = getCipherInstance();
            try {
                cipherInstance.init(2, new SecretKeySpec(this.encryptionKey, "AES"), new IvParameterSpec(this.encryptionIv));
                DataSourceInputStream dataSourceInputStream = new DataSourceInputStream(this.upstream, dataSpec);
                this.cipherInputStream = new CipherInputStream(dataSourceInputStream, cipherInstance);
                dataSourceInputStream.open();
                return -1L;
            } catch (InvalidAlgorithmParameterException | InvalidKeyException e) {
                throw new RuntimeException(e);
            }
        } catch (NoSuchAlgorithmException | NoSuchPaddingException e2) {
            throw new RuntimeException(e2);
        }
    }

    @Override // androidx.media2.exoplayer.external.upstream.DataSource
    public final int read(byte[] bArr, int i, int i2) throws IOException {
        Assertions.checkNotNull(this.cipherInputStream);
        int read = this.cipherInputStream.read(bArr, i, i2);
        int i3 = read;
        if (read < 0) {
            i3 = -1;
        }
        return i3;
    }
}
