package org.apache.commons.cli;
/* loaded from: classes2-dex2jar.jar:org/apache/commons/cli/MissingArgumentException.class */
public class MissingArgumentException extends ParseException {
    private Option option;

    public MissingArgumentException(String str) {
        super(str);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public MissingArgumentException(org.apache.commons.cli.Option r4) {
        /*
            r3 = this;
            java.lang.StringBuffer r0 = new java.lang.StringBuffer
            r1 = r0
            r1.<init>()
            r5 = r0
            r0 = r5
            java.lang.String r1 = "Missing argument for option: "
            java.lang.StringBuffer r0 = r0.append(r1)
            r0 = r5
            r1 = r4
            java.lang.String r1 = r1.getKey()
            java.lang.StringBuffer r0 = r0.append(r1)
            r0 = r3
            r1 = r5
            java.lang.String r1 = r1.toString()
            r0.<init>(r1)
            r0 = r3
            r1 = r4
            r0.option = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.cli.MissingArgumentException.<init>(org.apache.commons.cli.Option):void");
    }

    public Option getOption() {
        return this.option;
    }
}
