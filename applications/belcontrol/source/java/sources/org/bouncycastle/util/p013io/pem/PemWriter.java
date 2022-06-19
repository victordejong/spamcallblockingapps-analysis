package org.bouncycastle.util.p013io.pem;

import java.io.BufferedWriter;
import java.io.Writer;
import org.bouncycastle.util.encoders.Base64;
/* renamed from: org.bouncycastle.util.io.pem.PemWriter */
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/util/io/pem/PemWriter.class */
public class PemWriter extends BufferedWriter {
    private static final int LINE_LENGTH = 64;
    private char[] buf = new char[64];
    private final int nlLength;

    public PemWriter(Writer writer) {
        super(writer);
        String property = System.getProperty("line.separator");
        this.nlLength = property != null ? property.length() : 2;
    }

    private void writeEncoded(byte[] bArr) {
        char[] cArr;
        int i;
        byte[] encode = Base64.encode(bArr);
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i3 < encode.length) {
                int i4 = 0;
                while (true) {
                    cArr = this.buf;
                    if (i4 != cArr.length && (i = i3 + i4) < encode.length) {
                        cArr[i4] = (char) encode[i];
                        i4++;
                    }
                }
                write(cArr, 0, i4);
                newLine();
                i2 = i3 + this.buf.length;
            } else {
                return;
            }
        }
    }

    private void writePostEncapsulationBoundary(String str) {
        write("-----END " + str + "-----");
        newLine();
    }

    private void writePreEncapsulationBoundary(String str) {
        write("-----BEGIN " + str + "-----");
        newLine();
    }

    public int getOutputSize(PemObject pemObject) {
        int length = ((pemObject.getType().length() + 10 + this.nlLength) * 2) + 6 + 4;
        int i = length;
        if (!pemObject.getHeaders().isEmpty()) {
            for (PemHeader pemHeader : pemObject.getHeaders()) {
                length += pemHeader.getName().length() + 2 + pemHeader.getValue().length() + this.nlLength;
            }
            i = length + this.nlLength;
        }
        int length2 = ((pemObject.getContent().length + 2) / 3) * 4;
        return i + length2 + ((((length2 + 64) - 1) / 64) * this.nlLength);
    }

    public void writeObject(PemObjectGenerator pemObjectGenerator) {
        PemObject generate = pemObjectGenerator.generate();
        writePreEncapsulationBoundary(generate.getType());
        if (!generate.getHeaders().isEmpty()) {
            for (PemHeader pemHeader : generate.getHeaders()) {
                write(pemHeader.getName());
                write(": ");
                write(pemHeader.getValue());
                newLine();
            }
            newLine();
        }
        writeEncoded(generate.getContent());
        writePostEncapsulationBoundary(generate.getType());
    }
}
