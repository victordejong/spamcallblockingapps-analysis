package org.xutils.http.request;

import android.content.Context;
import java.io.InputStream;
import java.lang.reflect.Type;
import org.xutils.http.RequestParams;
/* loaded from: classes2-dex2jar.jar:org/xutils/http/request/AssetsRequest.class */
public class AssetsRequest extends ResRequest {
    public AssetsRequest(RequestParams requestParams, Type type) {
        super(requestParams, type);
    }

    @Override // org.xutils.http.request.ResRequest, org.xutils.http.request.UriRequest
    public InputStream getInputStream() {
        if (this.inputStream == null) {
            Context context = this.params.getContext();
            InputStream open = context.getResources().getAssets().open(this.queryUrl.replace("assets://", ""));
            this.inputStream = open;
            this.contentLength = open.available();
        }
        return this.inputStream;
    }
}
