package org.spongycastle.crypto.tls;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Vector;
import org.spongycastle.asn1.ASN1Encoding;
import org.spongycastle.asn1.ocsp.ResponderID;
import org.spongycastle.asn1.x509.Extensions;
import org.spongycastle.util.p039io.Streams;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/tls/OCSPStatusRequest.class */
public class OCSPStatusRequest {
    protected Extensions requestExtensions;
    protected Vector responderIDList;

    public OCSPStatusRequest(Vector vector, Extensions extensions) {
        this.responderIDList = vector;
        this.requestExtensions = extensions;
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x003e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static org.spongycastle.crypto.tls.OCSPStatusRequest parse(java.io.InputStream r5) throws java.io.IOException {
        /*
            java.util.Vector r0 = new java.util.Vector
            r1 = r0
            r1.<init>()
            r6 = r0
            r0 = r5
            int r0 = org.spongycastle.crypto.tls.TlsUtils.readUint16(r0)
            r7 = r0
            r0 = r7
            if (r0 <= 0) goto L_0x0033
            java.io.ByteArrayInputStream r0 = new java.io.ByteArrayInputStream
            r1 = r0
            r2 = r7
            r3 = r5
            byte[] r2 = org.spongycastle.crypto.tls.TlsUtils.readFully(r2, r3)
            r1.<init>(r2)
            r8 = r0
        L_0x001e:
            r0 = r6
            r1 = r8
            byte[] r1 = org.spongycastle.crypto.tls.TlsUtils.readOpaque16(r1)
            org.spongycastle.asn1.ASN1Primitive r1 = org.spongycastle.crypto.tls.TlsUtils.readDERObject(r1)
            org.spongycastle.asn1.ocsp.ResponderID r1 = org.spongycastle.asn1.ocsp.ResponderID.getInstance(r1)
            r0.addElement(r1)
            r0 = r8
            int r0 = r0.available()
            if (r0 > 0) goto L_0x001e
        L_0x0033:
            r0 = 0
            r8 = r0
            r0 = r5
            int r0 = org.spongycastle.crypto.tls.TlsUtils.readUint16(r0)
            r7 = r0
            r0 = r7
            if (r0 <= 0) goto L_0x004a
            r0 = r7
            r1 = r5
            byte[] r0 = org.spongycastle.crypto.tls.TlsUtils.readFully(r0, r1)
            org.spongycastle.asn1.ASN1Primitive r0 = org.spongycastle.crypto.tls.TlsUtils.readDERObject(r0)
            org.spongycastle.asn1.x509.Extensions r0 = org.spongycastle.asn1.x509.Extensions.getInstance(r0)
            r8 = r0
        L_0x004a:
            org.spongycastle.crypto.tls.OCSPStatusRequest r0 = new org.spongycastle.crypto.tls.OCSPStatusRequest
            r1 = r0
            r2 = r6
            r3 = r8
            r1.<init>(r2, r3)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.spongycastle.crypto.tls.OCSPStatusRequest.parse(java.io.InputStream):org.spongycastle.crypto.tls.OCSPStatusRequest");
    }

    public void encode(OutputStream outputStream) throws IOException {
        if (this.responderIDList == null || this.responderIDList.isEmpty()) {
            TlsUtils.writeUint16(0, outputStream);
        } else {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            for (int i = 0; i < this.responderIDList.size(); i++) {
                TlsUtils.writeOpaque16(((ResponderID) this.responderIDList.elementAt(i)).getEncoded(ASN1Encoding.DER), byteArrayOutputStream);
            }
            TlsUtils.checkUint16(byteArrayOutputStream.size());
            TlsUtils.writeUint16(byteArrayOutputStream.size(), outputStream);
            Streams.writeBufTo(byteArrayOutputStream, outputStream);
        }
        if (this.requestExtensions == null) {
            TlsUtils.writeUint16(0, outputStream);
            return;
        }
        byte[] encoded = this.requestExtensions.getEncoded(ASN1Encoding.DER);
        TlsUtils.checkUint16(encoded.length);
        TlsUtils.writeUint16(encoded.length, outputStream);
        outputStream.write(encoded);
    }

    public Extensions getRequestExtensions() {
        return this.requestExtensions;
    }

    public Vector getResponderIDList() {
        return this.responderIDList;
    }
}
