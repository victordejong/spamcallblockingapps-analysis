package org.xutils.http.body;

import android.text.TextUtils;
import com.yanzhenjie.nohttp.Headers;
import java.io.ByteArrayInputStream;
import java.io.FileInputStream;
import java.io.InputStream;
import java.io.OutputStream;
import org.xutils.common.Callback;
import org.xutils.common.util.IOUtil;
import org.xutils.common.util.LogUtil;
import org.xutils.http.ProgressHandler;
/* loaded from: classes2-dex2jar.jar:org/xutils/http/body/InputStreamBody.class */
public class InputStreamBody implements ProgressBody {

    /* renamed from: a */
    private InputStream f40733a;

    /* renamed from: b */
    private String f40734b;

    /* renamed from: c */
    private final long f40735c;

    /* renamed from: d */
    private long f40736d;

    /* renamed from: e */
    private ProgressHandler f40737e;

    public InputStreamBody(InputStream inputStream) {
        this(inputStream, null);
    }

    public InputStreamBody(InputStream inputStream, String str) {
        this.f40736d = 0L;
        this.f40733a = inputStream;
        this.f40734b = str;
        this.f40735c = getInputStreamLength(inputStream);
    }

    public static long getInputStreamLength(InputStream inputStream) {
        try {
            if (!(inputStream instanceof FileInputStream) && !(inputStream instanceof ByteArrayInputStream)) {
                return -1L;
            }
            return inputStream.available();
        } catch (Throwable th) {
            LogUtil.m252w(th.getMessage(), th);
            return -1L;
        }
    }

    @Override // org.xutils.http.body.RequestBody
    public long getContentLength() {
        return this.f40735c;
    }

    @Override // org.xutils.http.body.RequestBody
    public String getContentType() {
        return TextUtils.isEmpty(this.f40734b) ? Headers.HEAD_VALUE_CONTENT_TYPE_OCTET_STREAM : this.f40734b;
    }

    @Override // org.xutils.http.body.RequestBody
    public void setContentType(String str) {
        this.f40734b = str;
    }

    @Override // org.xutils.http.body.ProgressBody
    public void setProgressHandler(ProgressHandler progressHandler) {
        this.f40737e = progressHandler;
    }

    @Override // org.xutils.http.body.RequestBody
    public void writeTo(OutputStream outputStream) {
        ProgressHandler progressHandler = this.f40737e;
        if (progressHandler == null || progressHandler.updateProgress(this.f40735c, this.f40736d, true)) {
            byte[] bArr = new byte[4096];
            while (true) {
                try {
                    int read = this.f40733a.read(bArr);
                    if (read == -1) {
                        outputStream.flush();
                        ProgressHandler progressHandler2 = this.f40737e;
                        if (progressHandler2 != null) {
                            progressHandler2.updateProgress(this.f40735c, this.f40736d, true);
                        }
                        return;
                    }
                    outputStream.write(bArr, 0, read);
                    long j = this.f40736d + read;
                    this.f40736d = j;
                    ProgressHandler progressHandler3 = this.f40737e;
                    if (progressHandler3 != null && !progressHandler3.updateProgress(this.f40735c, j, false)) {
                        throw new Callback.CancelledException("upload stopped!");
                    }
                } finally {
                    IOUtil.closeQuietly(this.f40733a);
                }
            }
        } else {
            throw new Callback.CancelledException("upload stopped!");
        }
    }
}
