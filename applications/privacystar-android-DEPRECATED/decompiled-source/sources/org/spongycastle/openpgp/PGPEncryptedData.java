package org.spongycastle.openpgp;

import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import org.spongycastle.bcpg.InputStreamPacket;
import org.spongycastle.bcpg.SymmetricEncIntegrityPacket;
import org.spongycastle.bcpg.SymmetricKeyAlgorithmTags;
import org.spongycastle.openpgp.operator.PGPDigestCalculator;
import org.spongycastle.util.Arrays;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/openpgp/PGPEncryptedData.class */
public abstract class PGPEncryptedData implements SymmetricKeyAlgorithmTags {
    InputStreamPacket encData;
    InputStream encStream;
    PGPDigestCalculator integrityCalculator;
    TruncatedStream truncStream;

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/openpgp/PGPEncryptedData$TruncatedStream.class */
    protected class TruncatedStream extends InputStream {
        int bufPtr;

        /* renamed from: in */
        InputStream f1646in;
        int[] lookAhead = new int[22];

        /* JADX INFO: Access modifiers changed from: package-private */
        public TruncatedStream(InputStream inputStream) throws IOException {
            for (int i = 0; i != this.lookAhead.length; i++) {
                int[] iArr = this.lookAhead;
                int read = inputStream.read();
                iArr[i] = read;
                if (read < 0) {
                    throw new EOFException();
                }
            }
            this.bufPtr = 0;
            this.f1646in = inputStream;
        }

        int[] getLookAhead() {
            int i;
            int[] iArr = new int[this.lookAhead.length];
            int i2 = this.bufPtr;
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i4;
                if (i2 != this.lookAhead.length) {
                    iArr[i4] = this.lookAhead[i2];
                    i2++;
                    i4++;
                }
            }
            while (i3 != this.bufPtr) {
                iArr[i] = this.lookAhead[i3];
                i3++;
                i++;
            }
            return iArr;
        }

        @Override // java.io.InputStream
        public int read() throws IOException {
            int read = this.f1646in.read();
            if (read < 0) {
                return -1;
            }
            int i = this.lookAhead[this.bufPtr];
            this.lookAhead[this.bufPtr] = read;
            this.bufPtr = (this.bufPtr + 1) % this.lookAhead.length;
            return i;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public PGPEncryptedData(InputStreamPacket inputStreamPacket) {
        this.encData = inputStreamPacket;
    }

    public InputStream getInputStream() {
        return this.encData.getInputStream();
    }

    public boolean isIntegrityProtected() {
        return this.encData instanceof SymmetricEncIntegrityPacket;
    }

    public boolean verify() throws PGPException, IOException {
        if (!isIntegrityProtected()) {
            throw new PGPException("data not integrity protected.");
        }
        do {
        } while (this.encStream.read() >= 0);
        int[] lookAhead = this.truncStream.getLookAhead();
        OutputStream outputStream = this.integrityCalculator.getOutputStream();
        outputStream.write((byte) lookAhead[0]);
        outputStream.write((byte) lookAhead[1]);
        byte[] digest = this.integrityCalculator.getDigest();
        byte[] bArr = new byte[digest.length];
        for (int i = 0; i != bArr.length; i++) {
            bArr[i] = (byte) lookAhead[i + 2];
        }
        return Arrays.constantTimeAreEqual(digest, bArr);
    }
}
