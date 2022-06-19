package com.p317hp.hpl.sparta;
/* renamed from: com.hp.hpl.sparta.EncodingMismatchException */
/* loaded from: classes2-dex2jar.jar:com/hp/hpl/sparta/EncodingMismatchException.class */
public class EncodingMismatchException extends ParseException {
    private String declaredEncoding_;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    EncodingMismatchException(java.lang.String r8, java.lang.String r9, java.lang.String r10) {
        /*
            r7 = this;
            r0 = r9
            r1 = r9
            int r1 = r1.length()
            r2 = 1
            int r1 = r1 - r2
            char r0 = r0.charAt(r1)
            r11 = r0
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r12 = r0
            r0 = r12
            java.lang.String r1 = "encoding '"
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r12
            r1 = r9
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r12
            java.lang.String r1 = "' declared instead of of "
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r12
            r1 = r10
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r12
            java.lang.String r1 = " as expected"
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r7
            r1 = r8
            r2 = 0
            r3 = r11
            r4 = r9
            r5 = r12
            java.lang.String r5 = r5.toString()
            r0.<init>(r1, r2, r3, r4, r5)
            r0 = r7
            r1 = r9
            r0.declaredEncoding_ = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.p317hp.hpl.sparta.EncodingMismatchException.<init>(java.lang.String, java.lang.String, java.lang.String):void");
    }

    String getDeclaredEncoding() {
        return this.declaredEncoding_;
    }
}
