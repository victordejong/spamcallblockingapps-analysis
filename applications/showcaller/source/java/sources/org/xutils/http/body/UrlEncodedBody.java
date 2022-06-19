package org.xutils.http.body;

import android.text.TextUtils;
import java.io.OutputStream;
import java.net.URLEncoder;
import java.util.List;
import org.xutils.common.util.KeyValue;
import org.xutils.common.util.LogUtil;
/* loaded from: classes2-dex2jar.jar:org/xutils/http/body/UrlEncodedBody.class */
public class UrlEncodedBody implements RequestBody {

    /* renamed from: a */
    private byte[] f40753a;

    /* renamed from: b */
    private String f40754b;

    public UrlEncodedBody(List<KeyValue> list, String str) {
        this.f40754b = "UTF-8";
        if (!TextUtils.isEmpty(str)) {
            this.f40754b = str;
        }
        StringBuilder sb = new StringBuilder();
        if (list != null) {
            for (KeyValue keyValue : list) {
                String str2 = keyValue.key;
                String valueStrOrNull = keyValue.getValueStrOrNull();
                if (!TextUtils.isEmpty(str2) && valueStrOrNull != null) {
                    if (sb.length() > 0) {
                        sb.append("&");
                    }
                    sb.append(URLEncoder.encode(str2, this.f40754b).replaceAll("\\+", "%20"));
                    sb.append("=");
                    sb.append(URLEncoder.encode(valueStrOrNull, this.f40754b).replaceAll("\\+", "%20"));
                }
            }
        }
        this.f40753a = sb.toString().getBytes(this.f40754b);
    }

    @Override // org.xutils.http.body.RequestBody
    public long getContentLength() {
        return this.f40753a.length;
    }

    @Override // org.xutils.http.body.RequestBody
    public String getContentType() {
        return "application/x-www-form-urlencoded;charset=" + this.f40754b;
    }

    @Override // org.xutils.http.body.RequestBody
    public void setContentType(String str) {
        if (!TextUtils.isEmpty(str)) {
            LogUtil.m253w("ignored Content-Type: " + str);
        }
    }

    @Override // org.xutils.http.body.RequestBody
    public void writeTo(OutputStream outputStream) {
        outputStream.write(this.f40753a);
        outputStream.flush();
    }
}
