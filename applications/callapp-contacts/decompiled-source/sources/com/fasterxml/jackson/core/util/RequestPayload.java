package com.fasterxml.jackson.core.util;

import java.io.IOException;
import java.io.Serializable;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/core/util/RequestPayload.class */
public class RequestPayload implements Serializable {
    protected String _charset;
    protected byte[] _payloadAsBytes;
    protected CharSequence _payloadAsText;

    public RequestPayload(CharSequence charSequence) {
        if (charSequence != null) {
            this._payloadAsText = charSequence;
            return;
        }
        throw new IllegalArgumentException();
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0017, code lost:
        if (r5.isEmpty() != false) goto L_0x001a;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public RequestPayload(byte[] r4, java.lang.String r5) {
        /*
            r3 = this;
            r0 = r3
            r0.<init>()
            r0 = r4
            if (r0 == 0) goto L_0x0023
            r0 = r3
            r1 = r4
            r0._payloadAsBytes = r1
            r0 = r5
            if (r0 == 0) goto L_0x001a
            r0 = r5
            r4 = r0
            r0 = r5
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L_0x001d
        L_0x001a:
            java.lang.String r0 = "UTF-8"
            r4 = r0
        L_0x001d:
            r0 = r3
            r1 = r4
            r0._charset = r1
            return
        L_0x0023:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            r1 = r0
            r1.<init>()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.util.RequestPayload.<init>(byte[], java.lang.String):void");
    }

    public String toString() {
        if (this._payloadAsBytes == null) {
            return this._payloadAsText.toString();
        }
        try {
            return new String(this._payloadAsBytes, this._charset);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }
}
