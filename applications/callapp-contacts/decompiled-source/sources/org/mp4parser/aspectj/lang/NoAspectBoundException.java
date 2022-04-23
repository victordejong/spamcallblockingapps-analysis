package org.mp4parser.aspectj.lang;
/* loaded from: classes5-dex2jar.jar:org/mp4parser/aspectj/lang/NoAspectBoundException.class */
public class NoAspectBoundException extends RuntimeException {

    /* renamed from: a  reason: collision with root package name */
    Throwable f39365a;

    public NoAspectBoundException() {
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public NoAspectBoundException(java.lang.String r5, java.lang.Throwable r6) {
        /*
            r4 = this;
            r0 = r6
            if (r0 != 0) goto L_0x0007
            goto L_0x0029
        L_0x0007:
            java.lang.StringBuffer r0 = new java.lang.StringBuffer
            r1 = r0
            java.lang.String r2 = "Exception while initializing "
            r1.<init>(r2)
            r7 = r0
            r0 = r7
            r1 = r5
            java.lang.StringBuffer r0 = r0.append(r1)
            r0 = r7
            java.lang.String r1 = ": "
            java.lang.StringBuffer r0 = r0.append(r1)
            r0 = r7
            r1 = r6
            java.lang.StringBuffer r0 = r0.append(r1)
            r0 = r7
            java.lang.String r0 = r0.toString()
            r5 = r0
        L_0x0029:
            r0 = r4
            r1 = r5
            r0.<init>(r1)
            r0 = r4
            r1 = r6
            r0.f39365a = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mp4parser.aspectj.lang.NoAspectBoundException.<init>(java.lang.String, java.lang.Throwable):void");
    }

    @Override // java.lang.Throwable
    public Throwable getCause() {
        return this.f39365a;
    }
}
