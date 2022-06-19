package org.xutils.http.body;

import android.text.TextUtils;
import java.io.OutputStream;
/* loaded from: classes2-dex2jar.jar:org/xutils/http/body/StringBody.class */
public class StringBody implements RequestBody {

    /* renamed from: a */
    private byte[] f40750a;

    /* renamed from: b */
    private String f40751b;

    /* renamed from: c */
    private String f40752c;

    public StringBody(String str, String str2) {
        this.f40752c = "UTF-8";
        if (!TextUtils.isEmpty(str2)) {
            this.f40752c = str2;
        }
        this.f40750a = str.getBytes(this.f40752c);
    }

    @Override // org.xutils.http.body.RequestBody
    public long getContentLength() {
        return this.f40750a.length;
    }

    @Override // org.xutils.http.body.RequestBody
    public String getContentType() {
        String str;
        if (TextUtils.isEmpty(this.f40751b)) {
            str = "application/json;charset=" + this.f40752c;
        } else {
            str = this.f40751b;
        }
        return str;
    }

    @Override // org.xutils.http.body.RequestBody
    public void setContentType(String str) {
        this.f40751b = str;
    }

    @Override // org.xutils.http.body.RequestBody
    public void writeTo(OutputStream outputStream) {
        outputStream.write(this.f40750a);
        outputStream.flush();
    }
}
