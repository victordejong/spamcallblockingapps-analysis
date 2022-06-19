package com.lidroid.xutils.http.callback;

import com.lidroid.xutils.util.IOUtils;
import com.lidroid.xutils.util.OtherUtils;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import org.apache.http.HttpEntity;
/* loaded from: classes2-dex2jar.jar:com/lidroid/xutils/http/callback/StringDownloadHandler.class */
public class StringDownloadHandler {
    /* JADX WARN: Type inference failed for: r0v40, types: [long] */
    public String handleEntity(HttpEntity httpEntity, RequestCallBackHandler requestCallBackHandler, String str) {
        char c;
        InputStream inputStream = null;
        if (httpEntity == null) {
            return null;
        }
        char c2 = 0;
        long contentLength = httpEntity.getContentLength();
        if (requestCallBackHandler != null && !requestCallBackHandler.updateProgress(contentLength, 0L, true)) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        try {
            InputStream content = httpEntity.getContent();
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(content, str));
            while (true) {
                String readLine = bufferedReader.readLine();
                c = c2;
                if (readLine == null) {
                    break;
                }
                sb.append(readLine);
                sb.append('\n');
                c = c2 + OtherUtils.sizeOfString(readLine, str);
                c2 = c;
                if (requestCallBackHandler != null) {
                    c2 = c;
                    if (!requestCallBackHandler.updateProgress(contentLength, c, false)) {
                        break;
                    }
                }
            }
            if (requestCallBackHandler != null) {
                inputStream = content;
                requestCallBackHandler.updateProgress(contentLength, c, true);
            }
            IOUtils.closeQuietly(content);
            return sb.toString().trim();
        } catch (Throwable th) {
            IOUtils.closeQuietly(inputStream);
            throw th;
        }
    }
}
