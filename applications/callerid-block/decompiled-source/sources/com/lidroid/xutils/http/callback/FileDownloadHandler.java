package com.lidroid.xutils.http.callback;
/* loaded from: classes2-dex2jar.jar:com/lidroid/xutils/http/callback/FileDownloadHandler.class */
public class FileDownloadHandler {
    /* JADX WARN: Code restructure failed: missing block: B:24:0x00a1, code lost:
        if (r9.updateProgress(r0, r16, true) == false) goto L_0x00a4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00f1, code lost:
        r8.flush();
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00f6, code lost:
        if (r9 == 0) goto L_0x0105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00f9, code lost:
        r9.updateProgress(r0, r16, true);
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0107, code lost:
        com.lidroid.xutils.util.IOUtils.closeQuietly(r0);
        com.lidroid.xutils.util.IOUtils.closeQuietly(r8);
        r9 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0116, code lost:
        if (r0.exists() == false) goto L_0x0175;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x0119, code lost:
        r9 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x0121, code lost:
        if (android.text.TextUtils.isEmpty(r12) != false) goto L_0x0175;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x0124, code lost:
        r0 = new java.io.File(r0.getParent(), r12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x0137, code lost:
        if (r0.exists() == false) goto L_0x0167;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x013a, code lost:
        r0 = r0.getParent();
        r0 = new java.io.File(r0, java.lang.System.currentTimeMillis() + r12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x0167, code lost:
        r9 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x0170, code lost:
        if (r0.renameTo(r0) == false) goto L_0x0175;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x0173, code lost:
        r9 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x0176, code lost:
        return r9;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v65, types: [long] */
    /* JADX WARN: Type inference failed for: r16v2, types: [long] */
    /* JADX WARN: Type inference failed for: r16v3 */
    /* JADX WARN: Type inference failed for: r16v4 */
    /* JADX WARN: Type inference failed for: r16v5 */
    /* JADX WARN: Type inference failed for: r9v0, types: [com.lidroid.xutils.http.callback.RequestCallBackHandler] */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.io.File handleEntity(org.apache.http.HttpEntity r8, com.lidroid.xutils.http.callback.RequestCallBackHandler r9, java.lang.String r10, boolean r11, java.lang.String r12) {
        /*
            Method dump skipped, instructions count: 406
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.lidroid.xutils.http.callback.FileDownloadHandler.handleEntity(org.apache.http.HttpEntity, com.lidroid.xutils.http.callback.RequestCallBackHandler, java.lang.String, boolean, java.lang.String):java.io.File");
    }
}
