package com.callerid.block.util;

import java.net.URLEncoder;
import java.util.Map;
/* renamed from: com.callerid.block.util.t */
/* loaded from: classes-dex2jar.jar:com/callerid/block/util/t.class */
public class C1215t {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0170 A[Catch: all -> 0x01b1, TryCatch #0 {all -> 0x01b1, blocks: (B:47:0x016a, B:49:0x0170, B:51:0x0192), top: B:75:0x016a }] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0199  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x01a6  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x01cd A[Catch: IOException -> 0x01c5, TRY_ENTER, TRY_LEAVE, TryCatch #1 {IOException -> 0x01c5, blocks: (B:67:0x01be, B:71:0x01cd), top: B:77:0x01be }] */
    /* JADX WARN: Removed duplicated region for block: B:77:0x01be A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r5v12, types: [java.io.Reader, java.io.InputStreamReader] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String m9616a(java.lang.String r4, java.lang.String r5) {
        /*
            Method dump skipped, instructions count: 481
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callerid.block.util.C1215t.m9616a(java.lang.String, java.lang.String):java.lang.String");
    }

    /* renamed from: b */
    public static String m9615b(String str, Map<String, String> map, String str2) {
        return m9616a(str, m9613d(map, str2).toString());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:63:0x01d3 A[Catch: all -> 0x0231, TryCatch #2 {all -> 0x0231, blocks: (B:61:0x01c3, B:63:0x01d3, B:65:0x01fa), top: B:90:0x01c3 }] */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0210 A[Catch: IOException -> 0x0208, TRY_ENTER, TRY_LEAVE, TryCatch #4 {IOException -> 0x0208, blocks: (B:67:0x0201, B:71:0x0210), top: B:92:0x0201 }] */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0227  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0246 A[Catch: IOException -> 0x023e, TRY_ENTER, TRY_LEAVE, TryCatch #9 {IOException -> 0x023e, blocks: (B:82:0x0237, B:86:0x0246), top: B:96:0x0237 }] */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0201 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:96:0x0237 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v19 */
    /* JADX WARN: Type inference failed for: r9v20 */
    /* JADX WARN: Type inference failed for: r9v24 */
    /* JADX WARN: Type inference failed for: r9v28 */
    /* JADX WARN: Type inference failed for: r9v3 */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String m9614c(java.lang.String r4, java.lang.String r5) {
        /*
            Method dump skipped, instructions count: 602
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callerid.block.util.C1215t.m9614c(java.lang.String, java.lang.String):java.lang.String");
    }

    /* renamed from: d */
    public static StringBuffer m9613d(Map<String, String> map, String str) {
        StringBuffer stringBuffer = new StringBuffer();
        try {
            for (Map.Entry<String, String> entry : map.entrySet()) {
                stringBuffer.append(entry.getKey());
                stringBuffer.append("=");
                stringBuffer.append(URLEncoder.encode(entry.getValue(), str));
                stringBuffer.append("&");
            }
            stringBuffer.deleteCharAt(stringBuffer.length() - 1);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return stringBuffer;
    }

    /* renamed from: e */
    public static String m9612e(String str, Map<String, String> map, String str2) {
        return m9614c(str, m9613d(map, str2).toString());
    }
}
