package com.firstorion.libcyd;

import android.util.Log;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.net.URLConnection;
import java.nio.charset.Charset;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
/* loaded from: classes-dex2jar.jar:com/firstorion/libcyd/Globals.class */
final class Globals {
    static final Executor THREAD_POOL = Executors.newCachedThreadPool();
    static final Charset UTF8 = Charset.forName("UTF-8");

    private Globals() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String convertExceptionToString(Throwable th) {
        StringWriter stringWriter;
        Throwable th2;
        PrintWriter printWriter;
        PrintWriter printWriter2 = null;
        try {
            stringWriter = new StringWriter();
            try {
                printWriter = new PrintWriter(stringWriter);
            } catch (Throwable th3) {
                th2 = th3;
            }
        } catch (Throwable th4) {
            th2 = th4;
            stringWriter = null;
        }
        try {
            th.printStackTrace(printWriter);
            String stringWriter2 = stringWriter.toString();
            if (stringWriter != null) {
                try {
                    stringWriter.close();
                } catch (IOException e) {
                }
            }
            if (printWriter != null) {
                printWriter.close();
            }
            return stringWriter2;
        } catch (Throwable th5) {
            th2 = th5;
            printWriter2 = printWriter;
            if (stringWriter != null) {
                try {
                    stringWriter.close();
                } catch (IOException e2) {
                    throw th2;
                }
            }
            if (printWriter2 != null) {
                printWriter2.close();
            }
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void tryPrintRequestId(URLConnection uRLConnection, String str) {
        try {
            Map<String, List<String>> headerFields = uRLConnection.getHeaderFields();
            for (String str2 : headerFields.keySet()) {
                if ("X-cyd-requestid".equals(str2)) {
                    Iterator<String> it = headerFields.get(str2).iterator();
                    while (it.hasNext()) {
                        Log.d("libcyd.app", String.format("Request id for context %s: %s", str, it.next()));
                    }
                }
            }
        } catch (Throwable th) {
            Log.e("libcyd.app", "Unable to extract libcyd request id.", th);
        }
    }
}
