package com.zhy.http.okhttp.request;

import java.io.IOException;
import okhttp3.MediaType;
import okhttp3.RequestBody;
import okio.Buffer;
import okio.BufferedSink;
import okio.ForwardingSink;
import okio.Okio;
import okio.Sink;
/* loaded from: classes2-dex2jar.jar:com/zhy/http/okhttp/request/CountingRequestBody.class */
public class CountingRequestBody extends RequestBody {
    protected CountingSink countingSink;
    protected RequestBody delegate;
    protected Listener listener;

    /* loaded from: classes2-dex2jar.jar:com/zhy/http/okhttp/request/CountingRequestBody$CountingSink.class */
    protected final class CountingSink extends ForwardingSink {
        private long bytesWritten = 0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public CountingSink(Sink sink) {
            super(sink);
            CountingRequestBody.this = r5;
        }

        public void write(Buffer buffer, long j) {
            CountingRequestBody.super.write(buffer, j);
            long j2 = this.bytesWritten + j;
            this.bytesWritten = j2;
            CountingRequestBody countingRequestBody = CountingRequestBody.this;
            countingRequestBody.listener.onRequestProgress(j2, countingRequestBody.contentLength());
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/zhy/http/okhttp/request/CountingRequestBody$Listener.class */
    public interface Listener {
        void onRequestProgress(long j, long j2);
    }

    public CountingRequestBody(RequestBody requestBody, Listener listener) {
        this.delegate = requestBody;
        this.listener = listener;
    }

    public long contentLength() {
        try {
            return this.delegate.contentLength();
        } catch (IOException e) {
            e.printStackTrace();
            return -1L;
        }
    }

    public MediaType contentType() {
        return this.delegate.contentType();
    }

    public void writeTo(BufferedSink bufferedSink) {
        CountingSink countingSink = new CountingSink(bufferedSink);
        this.countingSink = countingSink;
        BufferedSink buffer = Okio.buffer((Sink) countingSink);
        this.delegate.writeTo(buffer);
        buffer.flush();
    }
}
