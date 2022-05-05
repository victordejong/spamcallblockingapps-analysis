package org.spongycastle.openpgp;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;
import org.spongycastle.bcpg.BCPGInputStream;
import org.spongycastle.openpgp.operator.KeyFingerPrintCalculator;
import org.spongycastle.util.Iterable;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/openpgp/PGPObjectFactory.class */
public class PGPObjectFactory implements Iterable {
    private KeyFingerPrintCalculator fingerPrintCalculator;

    /* renamed from: in */
    private BCPGInputStream f1648in;

    public PGPObjectFactory(InputStream inputStream, KeyFingerPrintCalculator keyFingerPrintCalculator) {
        this.f1648in = new BCPGInputStream(inputStream);
        this.fingerPrintCalculator = keyFingerPrintCalculator;
    }

    public PGPObjectFactory(byte[] bArr, KeyFingerPrintCalculator keyFingerPrintCalculator) {
        this(new ByteArrayInputStream(bArr), keyFingerPrintCalculator);
    }

    @Override // org.spongycastle.util.Iterable, java.lang.Iterable
    public Iterator iterator() {
        return new Iterator() { // from class: org.spongycastle.openpgp.PGPObjectFactory.1
            private Object obj = getObject();

            private Object getObject() {
                try {
                    return PGPObjectFactory.this.nextObject();
                } catch (IOException e) {
                    throw new PGPRuntimeOperationException("Iterator failed to get next object: " + e.getMessage(), e);
                }
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.obj != null;
            }

            @Override // java.util.Iterator
            public Object next() {
                Object obj = this.obj;
                this.obj = getObject();
                return obj;
            }

            @Override // java.util.Iterator
            public void remove() {
                throw new UnsupportedOperationException("Cannot remove element from factory.");
            }
        };
    }

    public Object nextObject() throws IOException {
        int nextPacketTag = this.f1648in.nextPacketTag();
        if (nextPacketTag == -1) {
            return null;
        }
        if (nextPacketTag == 8) {
            return new PGPCompressedData(this.f1648in);
        }
        if (nextPacketTag != 14) {
            switch (nextPacketTag) {
                case 1:
                case 3:
                    return new PGPEncryptedDataList(this.f1648in);
                case 2:
                    ArrayList arrayList = new ArrayList();
                    while (this.f1648in.nextPacketTag() == 2) {
                        try {
                            arrayList.add(new PGPSignature(this.f1648in));
                        } catch (PGPException e) {
                            throw new IOException("can't create signature object: " + e);
                        }
                    }
                    return new PGPSignatureList((PGPSignature[]) arrayList.toArray(new PGPSignature[arrayList.size()]));
                case 4:
                    ArrayList arrayList2 = new ArrayList();
                    while (this.f1648in.nextPacketTag() == 4) {
                        try {
                            arrayList2.add(new PGPOnePassSignature(this.f1648in));
                        } catch (PGPException e2) {
                            throw new IOException("can't create one pass signature object: " + e2);
                        }
                    }
                    return new PGPOnePassSignatureList((PGPOnePassSignature[]) arrayList2.toArray(new PGPOnePassSignature[arrayList2.size()]));
                case 5:
                    try {
                        return new PGPSecretKeyRing(this.f1648in, this.fingerPrintCalculator);
                    } catch (PGPException e3) {
                        throw new IOException("can't create secret key object: " + e3);
                    }
                case 6:
                    return new PGPPublicKeyRing(this.f1648in, this.fingerPrintCalculator);
                default:
                    switch (nextPacketTag) {
                        case 10:
                            return new PGPMarker(this.f1648in);
                        case 11:
                            return new PGPLiteralData(this.f1648in);
                        default:
                            switch (nextPacketTag) {
                                case 60:
                                case 61:
                                case 62:
                                case 63:
                                    return this.f1648in.readPacket();
                                default:
                                    throw new IOException("unknown object in stream: " + this.f1648in.nextPacketTag());
                            }
                    }
            }
        } else {
            try {
                return PGPPublicKeyRing.readSubkey(this.f1648in, this.fingerPrintCalculator);
            } catch (PGPException e4) {
                throw new IOException("processing error: " + e4.getMessage());
            }
        }
    }
}
