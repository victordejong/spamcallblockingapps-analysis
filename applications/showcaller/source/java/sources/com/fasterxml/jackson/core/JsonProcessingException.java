package com.fasterxml.jackson.core;

import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/core/JsonProcessingException.class */
public class JsonProcessingException extends IOException {
    static final long serialVersionUID = 123;
    protected JsonLocation _location;

    public JsonProcessingException(String str) {
        super(str);
    }

    public JsonProcessingException(String str, JsonLocation jsonLocation) {
        this(str, jsonLocation, null);
    }

    public JsonProcessingException(String str, JsonLocation jsonLocation, Throwable th) {
        super(str);
        if (th != null) {
            initCause(th);
        }
        this._location = jsonLocation;
    }

    protected JsonProcessingException(String str, Throwable th) {
        this(str, null, th);
    }

    public JsonProcessingException(Throwable th) {
        this(null, null, th);
    }

    public void clearLocation() {
        this._location = null;
    }

    public JsonLocation getLocation() {
        return this._location;
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x0021, code lost:
        if (r0 != null) goto L9;
     */
    @Override // java.lang.Throwable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String getMessage() {
        /*
            r4 = this;
            r0 = r4
            java.lang.String r0 = super.getMessage()
            r5 = r0
            r0 = r5
            r6 = r0
            r0 = r5
            if (r0 != 0) goto Le
            java.lang.String r0 = "N/A"
            r6 = r0
        Le:
            r0 = r4
            com.fasterxml.jackson.core.JsonLocation r0 = r0.getLocation()
            r7 = r0
            r0 = r4
            java.lang.String r0 = r0.getMessageSuffix()
            r8 = r0
            r0 = r7
            if (r0 != 0) goto L24
            r0 = r6
            r5 = r0
            r0 = r8
            if (r0 == 0) goto L60
        L24:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r2 = 100
            r1.<init>(r2)
            r5 = r0
            r0 = r5
            r1 = r6
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r8
            if (r0 == 0) goto L40
            r0 = r5
            r1 = r8
            java.lang.StringBuilder r0 = r0.append(r1)
        L40:
            r0 = r7
            if (r0 == 0) goto L5b
            r0 = r5
            r1 = 10
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r5
            java.lang.String r1 = " at "
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r5
            r1 = r7
            java.lang.String r1 = r1.toString()
            java.lang.StringBuilder r0 = r0.append(r1)
        L5b:
            r0 = r5
            java.lang.String r0 = r0.toString()
            r5 = r0
        L60:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.JsonProcessingException.getMessage():java.lang.String");
    }

    protected String getMessageSuffix() {
        return null;
    }

    public String getOriginalMessage() {
        return super.getMessage();
    }

    public Object getProcessor() {
        return null;
    }

    @Override // java.lang.Throwable
    public String toString() {
        return getClass().getName() + ": " + getMessage();
    }
}
