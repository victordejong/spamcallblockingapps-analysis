package com.zhy.http.okhttp.request;

import com.yanzhenjie.nohttp.Headers;
import com.zhy.http.okhttp.OkHttpUtils;
import com.zhy.http.okhttp.callback.Callback;
import com.zhy.http.okhttp.request.CountingRequestBody;
import com.zhy.http.okhttp.utils.Exceptions;
import java.io.File;
import java.util.Map;
import okhttp3.MediaType;
import okhttp3.Request;
import okhttp3.RequestBody;
/* loaded from: classes2-dex2jar.jar:com/zhy/http/okhttp/request/PostFileRequest.class */
public class PostFileRequest extends OkHttpRequest {
    private static MediaType MEDIA_TYPE_STREAM = MediaType.parse(Headers.HEAD_VALUE_CONTENT_TYPE_OCTET_STREAM);
    private File file;
    private MediaType mediaType;

    public PostFileRequest(String str, Object obj, Map<String, String> map, Map<String, String> map2, File file, MediaType mediaType, int i) {
        super(str, obj, map, map2, i);
        this.file = file;
        this.mediaType = mediaType;
        if (file == null) {
            Exceptions.illegalArgument("the file can not be null !", new Object[0]);
        }
        if (this.mediaType == null) {
            this.mediaType = MEDIA_TYPE_STREAM;
        }
    }

    @Override // com.zhy.http.okhttp.request.OkHttpRequest
    protected Request buildRequest(RequestBody requestBody) {
        return this.builder.post(requestBody).build();
    }

    @Override // com.zhy.http.okhttp.request.OkHttpRequest
    protected RequestBody buildRequestBody() {
        return RequestBody.create(this.mediaType, this.file);
    }

    @Override // com.zhy.http.okhttp.request.OkHttpRequest
    protected RequestBody wrapRequestBody(RequestBody requestBody, final Callback callback) {
        return callback == null ? requestBody : new CountingRequestBody(requestBody, new CountingRequestBody.Listener() { // from class: com.zhy.http.okhttp.request.PostFileRequest.1
            @Override // com.zhy.http.okhttp.request.CountingRequestBody.Listener
            public void onRequestProgress(final long j, final long j2) {
                OkHttpUtils.getInstance().getDelivery().execute(new Runnable() { // from class: com.zhy.http.okhttp.request.PostFileRequest.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        C94521 c94521 = C94521.this;
                        Callback callback2 = callback;
                        float f = (float) j;
                        long j3 = j2;
                        callback2.inProgress((f * 1.0f) / ((float) j3), j3, PostFileRequest.this.f40314id);
                    }
                });
            }
        });
    }
}
