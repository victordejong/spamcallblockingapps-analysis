package com.google.api.client.googleapis.batch;

import com.google.api.client.a.f;
import com.google.api.client.googleapis.batch.BatchRequest;
import com.google.api.client.http.aa;
import com.google.api.client.http.c;
import com.google.api.client.http.i;
import com.google.api.client.http.j;
import com.google.api.client.http.n;
import com.google.api.client.http.q;
import com.google.api.client.http.t;
import com.google.api.client.http.v;
import com.google.api.client.http.w;
import com.google.api.client.http.x;
import com.google.api.client.http.z;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import org.apache.commons.lang3.StringUtils;
/* loaded from: classes4-dex2jar.jar:com/google/api/client/googleapis/batch/BatchUnparsedResponse.class */
final class BatchUnparsedResponse {
    boolean backOffRequired;
    private final String boundary;
    private final InputStream inputStream;
    private final List<BatchRequest.RequestInfo<?, ?>> requestInfos;
    private final boolean retryAllowed;
    boolean hasNext = true;
    List<BatchRequest.RequestInfo<?, ?>> unsuccessfulRequestInfos = new ArrayList();
    private int contentId = 0;

    /* loaded from: classes4-dex2jar.jar:com/google/api/client/googleapis/batch/BatchUnparsedResponse$FakeLowLevelHttpRequest.class */
    static class FakeLowLevelHttpRequest extends z {
        private List<String> headerNames;
        private List<String> headerValues;
        private InputStream partContent;
        private int statusCode;

        FakeLowLevelHttpRequest(InputStream inputStream, int i, List<String> list, List<String> list2) {
            this.partContent = inputStream;
            this.statusCode = i;
            this.headerNames = list;
            this.headerValues = list2;
        }

        @Override // com.google.api.client.http.z
        public void addHeader(String str, String str2) {
        }

        @Override // com.google.api.client.http.z
        public aa execute() {
            return new FakeLowLevelHttpResponse(this.partContent, this.statusCode, this.headerNames, this.headerValues);
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/api/client/googleapis/batch/BatchUnparsedResponse$FakeLowLevelHttpResponse.class */
    static class FakeLowLevelHttpResponse extends aa {
        private List<String> headerNames;
        private List<String> headerValues;
        private InputStream partContent;
        private int statusCode;

        FakeLowLevelHttpResponse(InputStream inputStream, int i, List<String> list, List<String> list2) {
            this.headerNames = new ArrayList();
            this.headerValues = new ArrayList();
            this.partContent = inputStream;
            this.statusCode = i;
            this.headerNames = list;
            this.headerValues = list2;
        }

        @Override // com.google.api.client.http.aa
        public InputStream getContent() {
            return this.partContent;
        }

        @Override // com.google.api.client.http.aa
        public String getContentEncoding() {
            return null;
        }

        @Override // com.google.api.client.http.aa
        public long getContentLength() {
            return 0L;
        }

        @Override // com.google.api.client.http.aa
        public String getContentType() {
            return null;
        }

        @Override // com.google.api.client.http.aa
        public int getHeaderCount() {
            return this.headerNames.size();
        }

        @Override // com.google.api.client.http.aa
        public String getHeaderName(int i) {
            return this.headerNames.get(i);
        }

        @Override // com.google.api.client.http.aa
        public String getHeaderValue(int i) {
            return this.headerValues.get(i);
        }

        @Override // com.google.api.client.http.aa
        public String getReasonPhrase() {
            return null;
        }

        @Override // com.google.api.client.http.aa
        public int getStatusCode() {
            return this.statusCode;
        }

        @Override // com.google.api.client.http.aa
        public String getStatusLine() {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/google/api/client/googleapis/batch/BatchUnparsedResponse$FakeResponseHttpTransport.class */
    public static class FakeResponseHttpTransport extends w {
        private List<String> headerNames;
        private List<String> headerValues;
        private InputStream partContent;
        private int statusCode;

        FakeResponseHttpTransport(int i, InputStream inputStream, List<String> list, List<String> list2) {
            this.statusCode = i;
            this.partContent = inputStream;
            this.headerNames = list;
            this.headerValues = list2;
        }

        @Override // com.google.api.client.http.w
        public z buildRequest(String str, String str2) {
            return new FakeLowLevelHttpRequest(this.partContent, this.statusCode, this.headerNames, this.headerValues);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public BatchUnparsedResponse(InputStream inputStream, String str, List<BatchRequest.RequestInfo<?, ?>> list, boolean z) throws IOException {
        this.boundary = str;
        this.requestInfos = list;
        this.retryAllowed = z;
        this.inputStream = inputStream;
        checkForFinalBoundary(readLine());
    }

    private void checkForFinalBoundary(String str) throws IOException {
        if (str.equals(this.boundary + "--")) {
            this.hasNext = false;
            this.inputStream.close();
        }
    }

    private t getFakeResponse(int i, InputStream inputStream, List<String> list, List<String> list2) throws IOException {
        q a2 = new FakeResponseHttpTransport(i, inputStream, list, list2).createRequestFactory().a(new i("http://google.com/"), null);
        a2.f();
        a2.a(false);
        return a2.o();
    }

    private <A, T, E> A getParsedDataClass(Class<A> cls, t tVar, BatchRequest.RequestInfo<T, E> requestInfo) throws IOException {
        if (cls == Void.class) {
            return null;
        }
        return (A) requestInfo.request.m().parseAndClose(tVar.h(), tVar.l(), cls);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private <T, E> void parseAndCallback(BatchRequest.RequestInfo<T, E> requestInfo, int i, t tVar) throws IOException {
        BatchCallback<T, E> batchCallback = requestInfo.callback;
        n c2 = tVar.c();
        x i2 = requestInfo.request.i();
        c e = requestInfo.request.e();
        this.backOffRequired = false;
        if (!v.a(i)) {
            j d2 = requestInfo.request.d();
            boolean z = this.retryAllowed && (d2 == null || d2.retrySupported());
            boolean a2 = i2 != null ? i2.a(requestInfo.request, tVar, z) : false;
            boolean z2 = false;
            if (!a2) {
                if (requestInfo.request.a(tVar.e(), tVar.c())) {
                    z2 = true;
                } else {
                    z2 = false;
                    if (z) {
                        z2 = false;
                        if (e != null) {
                            tVar.e();
                            z2 = false;
                            if (e.a()) {
                                this.backOffRequired = true;
                                z2 = false;
                            }
                        }
                    }
                }
            }
            if (z && (a2 || this.backOffRequired || z2)) {
                this.unsuccessfulRequestInfos.add(requestInfo);
            } else if (batchCallback != 0) {
                batchCallback.onFailure(getParsedDataClass(requestInfo.errorClass, tVar, requestInfo), c2);
            }
        } else if (batchCallback != 0) {
            batchCallback.onSuccess(getParsedDataClass(requestInfo.dataClass, tVar, requestInfo), c2);
        }
    }

    private String readLine() throws IOException {
        return trimCrlf(readRawLine());
    }

    private String readRawLine() throws IOException {
        int read = this.inputStream.read();
        if (read == -1) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        while (read != -1) {
            sb.append((char) read);
            if (read == 10) {
                break;
            }
            read = this.inputStream.read();
        }
        return sb.toString();
    }

    private static InputStream trimCrlf(byte[] bArr) {
        int length = bArr.length;
        int i = length;
        if (length > 0) {
            i = length;
            if (bArr[length - 1] == 10) {
                i = length - 1;
            }
        }
        int i2 = i;
        if (i > 0) {
            i2 = i;
            if (bArr[i - 1] == 13) {
                i2 = i - 1;
            }
        }
        return new ByteArrayInputStream(bArr, 0, i2);
    }

    private static String trimCrlf(String str) {
        if (str.endsWith("\r\n")) {
            return str.substring(0, str.length() - 2);
        }
        String str2 = str;
        if (str.endsWith(StringUtils.LF)) {
            str2 = str.substring(0, str.length() - 1);
        }
        return str2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void parseNextResponse() throws IOException {
        String readLine;
        String readLine2;
        InputStream inputStream;
        String readRawLine;
        this.contentId++;
        do {
            readLine = readLine();
            if (readLine == null) {
                break;
            }
        } while (!readLine.equals(""));
        int parseInt = Integer.parseInt(readLine().split(StringUtils.SPACE)[1]);
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        long j = -1;
        while (true) {
            readLine2 = readLine();
            if (readLine2 == null || readLine2.equals("")) {
                break;
            }
            String[] split = readLine2.split(": ", 2);
            String str = split[0];
            String str2 = split[1];
            arrayList.add(str);
            arrayList2.add(str2);
            if ("Content-Length".equalsIgnoreCase(str.trim())) {
                j = Long.parseLong(str2);
            }
        }
        int i = (j > (-1L) ? 1 : (j == (-1L) ? 0 : -1));
        if (i == 0) {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            while (true) {
                readRawLine = readRawLine();
                if (readRawLine == null || readRawLine.startsWith(this.boundary)) {
                    break;
                }
                byteArrayOutputStream.write(readRawLine.getBytes("ISO-8859-1"));
            }
            inputStream = trimCrlf(byteArrayOutputStream.toByteArray());
            readLine2 = trimCrlf(readRawLine);
        } else {
            inputStream = new FilterInputStream(f.a(this.inputStream, j)) { // from class: com.google.api.client.googleapis.batch.BatchUnparsedResponse.1
                @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
                public void close() {
                }
            };
        }
        parseAndCallback(this.requestInfos.get(this.contentId - 1), parseInt, getFakeResponse(parseInt, inputStream, arrayList, arrayList2));
        while (true) {
            if (inputStream.skip(j) <= 0 && inputStream.read() == -1) {
                break;
            }
        }
        if (i != 0) {
            readLine2 = readLine();
        }
        while (readLine2 != null && readLine2.length() == 0) {
            readLine2 = readLine();
        }
        checkForFinalBoundary(readLine2);
    }
}
