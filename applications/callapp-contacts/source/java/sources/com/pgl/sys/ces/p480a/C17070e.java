package com.pgl.sys.ces.p480a;

import java.io.BufferedInputStream;
/* renamed from: com.pgl.sys.ces.a.e */
/* loaded from: classes4-dex2jar.jar:com/pgl/sys/ces/a/e.class */
public final class C17070e {
    /* JADX WARN: Code restructure failed: missing block: B:24:0x00cb, code lost:
        if (r0.length() == 0) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0112, code lost:
        if (r6.length() == 0) goto L36;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String m5921a(android.content.Context r6) {
        /*
            Method dump skipped, instructions count: 291
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.pgl.sys.ces.p480a.C17070e.m5921a(android.content.Context):java.lang.String");
    }

    /* renamed from: a */
    private static String m5920a(BufferedInputStream bufferedInputStream) {
        int read;
        byte[] bArr = new byte[4096];
        StringBuilder sb = new StringBuilder();
        do {
            try {
                read = bufferedInputStream.read(bArr);
                if (read > 0) {
                    sb.append(new String(bArr, 0, read));
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        } while (read >= 4096);
        return sb.toString();
    }

    /* JADX WARN: Not initialized variable reg: 10, insn: 0x0145: MOVE  (r0 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r10 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]), block:B:62:0x0145 */
    /* JADX WARN: Removed duplicated region for block: B:58:0x013d  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x012a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:87:0x0117 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.lang.String m5919a(java.lang.String r3) {
        /*
            Method dump skipped, instructions count: 384
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.pgl.sys.ces.p480a.C17070e.m5919a(java.lang.String):java.lang.String");
    }
}
