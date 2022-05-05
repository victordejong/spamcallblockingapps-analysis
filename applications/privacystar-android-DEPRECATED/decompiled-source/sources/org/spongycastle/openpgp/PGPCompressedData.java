package org.spongycastle.openpgp;

import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.util.zip.Inflater;
import java.util.zip.InflaterInputStream;
import org.spongycastle.apache.bzip2.CBZip2InputStream;
import org.spongycastle.bcpg.BCPGInputStream;
import org.spongycastle.bcpg.CompressedDataPacket;
import org.spongycastle.bcpg.CompressionAlgorithmTags;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/openpgp/PGPCompressedData.class */
public class PGPCompressedData implements CompressionAlgorithmTags {
    CompressedDataPacket data;

    public PGPCompressedData(BCPGInputStream bCPGInputStream) throws IOException {
        this.data = (CompressedDataPacket) bCPGInputStream.readPacket();
    }

    public int getAlgorithm() {
        return this.data.getAlgorithm();
    }

    public InputStream getDataStream() throws PGPException {
        if (getAlgorithm() == 0) {
            return getInputStream();
        }
        if (getAlgorithm() == 1) {
            return new InflaterInputStream(getInputStream(), new Inflater(true)) { // from class: org.spongycastle.openpgp.PGPCompressedData.1
                private boolean eof = false;

                @Override // java.util.zip.InflaterInputStream
                protected void fill() throws IOException {
                    if (this.eof) {
                        throw new EOFException("Unexpected end of ZIP input stream");
                    }
                    this.len = this.in.read(this.buf, 0, this.buf.length);
                    if (this.len == -1) {
                        this.buf[0] = (byte) 0;
                        this.len = 1;
                        this.eof = true;
                    }
                    this.inf.setInput(this.buf, 0, this.len);
                }
            };
        }
        if (getAlgorithm() == 2) {
            return new InflaterInputStream(getInputStream()) { // from class: org.spongycastle.openpgp.PGPCompressedData.2
                private boolean eof = false;

                @Override // java.util.zip.InflaterInputStream
                protected void fill() throws IOException {
                    if (this.eof) {
                        throw new EOFException("Unexpected end of ZIP input stream");
                    }
                    this.len = this.in.read(this.buf, 0, this.buf.length);
                    if (this.len == -1) {
                        this.buf[0] = (byte) 0;
                        this.len = 1;
                        this.eof = true;
                    }
                    this.inf.setInput(this.buf, 0, this.len);
                }
            };
        }
        if (getAlgorithm() == 3) {
            try {
                return new CBZip2InputStream(getInputStream());
            } catch (IOException e) {
                throw new PGPException("I/O problem with stream: " + e, e);
            }
        } else {
            throw new PGPException("can't recognise compression algorithm: " + getAlgorithm());
        }
    }

    public InputStream getInputStream() {
        return this.data.getInputStream();
    }
}
