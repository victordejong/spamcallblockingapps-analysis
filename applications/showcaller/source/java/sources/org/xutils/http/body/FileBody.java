package org.xutils.http.body;

import android.net.Uri;
import android.text.TextUtils;
import com.yanzhenjie.nohttp.Headers;
import java.io.File;
import java.io.FileInputStream;
import java.net.HttpURLConnection;
import org.xutils.common.util.LogUtil;
/* loaded from: classes2-dex2jar.jar:org/xutils/http/body/FileBody.class */
public class FileBody extends InputStreamBody {

    /* renamed from: f */
    private File f40731f;

    /* renamed from: g */
    private String f40732g;

    public FileBody(File file) {
        this(file, null);
    }

    public FileBody(File file, String str) {
        super(new FileInputStream(file));
        this.f40731f = file;
        this.f40732g = str;
    }

    public static String getFileContentType(File file) {
        String str;
        try {
            str = HttpURLConnection.guessContentTypeFromName(Uri.encode(file.getName(), "-![.:/,?&=]"));
        } catch (Exception e) {
            LogUtil.m259e(e.toString());
            str = null;
        }
        return TextUtils.isEmpty(str) ? Headers.HEAD_VALUE_CONTENT_TYPE_OCTET_STREAM : str.replaceFirst("\\/jpg$", "/jpeg");
    }

    @Override // org.xutils.http.body.InputStreamBody, org.xutils.http.body.RequestBody
    public String getContentType() {
        if (TextUtils.isEmpty(this.f40732g)) {
            this.f40732g = getFileContentType(this.f40731f);
        }
        return this.f40732g;
    }

    @Override // org.xutils.http.body.InputStreamBody, org.xutils.http.body.RequestBody
    public void setContentType(String str) {
        this.f40732g = str;
    }
}
