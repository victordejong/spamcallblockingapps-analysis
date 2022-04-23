package com.integralads.avid.library.mopub;

import android.os.AsyncTask;
import android.text.TextUtils;
import com.integralads.avid.library.mopub.utils.AvidLogs;
import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.StringWriter;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
/* loaded from: classes2-dex2jar.jar:com/integralads/avid/library/mopub/DownloadAvidTask.class */
public class DownloadAvidTask extends AsyncTask<String, Void, String> {

    /* renamed from: a */
    public DownloadAvidTaskListener f33038a;

    /* loaded from: classes2-dex2jar.jar:com/integralads/avid/library/mopub/DownloadAvidTask$DownloadAvidTaskListener.class */
    public interface DownloadAvidTaskListener {
        void failedToLoadAvid();

        void onLoadAvid(String str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v1, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r6v17 */
    /* renamed from: a */
    public String doInBackground(String... strArr) {
        Throwable th;
        BufferedInputStream bufferedInputStream;
        IOException e;
        String str = strArr[0];
        try {
            if (TextUtils.isEmpty(str)) {
                AvidLogs.m5367e("AvidLoader: URL is empty");
                return null;
            }
            try {
                URLConnection openConnection = new URL(str).openConnection();
                openConnection.connect();
                bufferedInputStream = new BufferedInputStream(openConnection.getInputStream());
                try {
                    StringWriter stringWriter = new StringWriter();
                    byte[] bArr = new byte[1024];
                    while (true) {
                        int read = bufferedInputStream.read(bArr);
                        if (read != -1) {
                            stringWriter.write(new String(bArr, 0, read));
                        } else {
                            String obj = stringWriter.toString();
                            try {
                                bufferedInputStream.close();
                                return obj;
                            } catch (IOException e2) {
                                AvidLogs.m5366e("AvidLoader: can not close Stream", e2);
                                return null;
                            }
                        }
                    }
                } catch (MalformedURLException e3) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("AvidLoader: something is wrong with the URL '");
                    sb.append(str);
                    sb.append("'");
                    AvidLogs.m5367e(sb.toString());
                    if (bufferedInputStream == null) {
                        return null;
                    }
                    try {
                        bufferedInputStream.close();
                        return null;
                    } catch (IOException e4) {
                        AvidLogs.m5366e("AvidLoader: can not close Stream", e4);
                        return null;
                    }
                } catch (IOException e5) {
                    e = e5;
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("AvidLoader: IO error ");
                    sb2.append(e.getLocalizedMessage());
                    AvidLogs.m5367e(sb2.toString());
                    if (bufferedInputStream == null) {
                        return null;
                    }
                    try {
                        bufferedInputStream.close();
                        return null;
                    } catch (IOException e6) {
                        AvidLogs.m5366e("AvidLoader: can not close Stream", e6);
                        return null;
                    }
                }
            } catch (MalformedURLException e7) {
                bufferedInputStream = null;
            } catch (IOException e8) {
                e = e8;
                bufferedInputStream = null;
            } catch (Throwable th2) {
                th = th2;
                strArr = 0;
                if (strArr != 0) {
                    try {
                        strArr.close();
                    } catch (IOException e9) {
                        AvidLogs.m5366e("AvidLoader: can not close Stream", e9);
                        return null;
                    }
                }
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    /* renamed from: a */
    public void onPostExecute(String str) {
        if (this.f33038a == null) {
            return;
        }
        if (!TextUtils.isEmpty(str)) {
            this.f33038a.onLoadAvid(str);
        } else {
            this.f33038a.failedToLoadAvid();
        }
    }

    public DownloadAvidTaskListener getListener() {
        return this.f33038a;
    }

    @Override // android.os.AsyncTask
    public void onCancelled() {
        DownloadAvidTaskListener downloadAvidTaskListener = this.f33038a;
        if (downloadAvidTaskListener != null) {
            downloadAvidTaskListener.failedToLoadAvid();
        }
    }

    public void setListener(DownloadAvidTaskListener downloadAvidTaskListener) {
        this.f33038a = downloadAvidTaskListener;
    }
}
