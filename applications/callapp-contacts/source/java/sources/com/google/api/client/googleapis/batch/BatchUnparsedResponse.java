package com.google.api.client.googleapis.batch;

import com.google.api.client.googleapis.batch.BatchRequest;
import com.google.api.client.http.AbstractC15313aa;
import com.google.api.client.http.AbstractC15323c;
import com.google.api.client.http.AbstractC15331j;
import com.google.api.client.http.AbstractC15346w;
import com.google.api.client.http.AbstractC15347x;
import com.google.api.client.http.AbstractC15349z;
import com.google.api.client.http.C15330i;
import com.google.api.client.http.C15335n;
import com.google.api.client.http.C15340q;
import com.google.api.client.http.C15343t;
import com.google.api.client.http.C15345v;
import com.google.api.client.p379a.C15225f;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import org.apache.commons.lang3.StringUtils;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/google/api/client/googleapis/batch/BatchUnparsedResponse.class */
public final class BatchUnparsedResponse {
    boolean backOffRequired;
    private final String boundary;
    private final InputStream inputStream;
    private final List<BatchRequest.RequestInfo<?, ?>> requestInfos;
    private final boolean retryAllowed;
    boolean hasNext = true;
    List<BatchRequest.RequestInfo<?, ?>> unsuccessfulRequestInfos = new ArrayList();
    private int contentId = 0;

    /* loaded from: classes4-dex2jar.jar:com/google/api/client/googleapis/batch/BatchUnparsedResponse$FakeLowLevelHttpRequest.class */
    static class FakeLowLevelHttpRequest extends AbstractC15349z {
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

        @Override // com.google.api.client.http.AbstractC15349z
        public void addHeader(String str, String str2) {
        }

        @Override // com.google.api.client.http.AbstractC15349z
        public AbstractC15313aa execute() {
            return new FakeLowLevelHttpResponse(this.partContent, this.statusCode, this.headerNames, this.headerValues);
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/api/client/googleapis/batch/BatchUnparsedResponse$FakeLowLevelHttpResponse.class */
    static class FakeLowLevelHttpResponse extends AbstractC15313aa {
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

        @Override // com.google.api.client.http.AbstractC15313aa
        public InputStream getContent() {
            return this.partContent;
        }

        @Override // com.google.api.client.http.AbstractC15313aa
        public String getContentEncoding() {
            return null;
        }

        @Override // com.google.api.client.http.AbstractC15313aa
        public long getContentLength() {
            return 0L;
        }

        @Override // com.google.api.client.http.AbstractC15313aa
        public String getContentType() {
            return null;
        }

        @Override // com.google.api.client.http.AbstractC15313aa
        public int getHeaderCount() {
            return this.headerNames.size();
        }

        @Override // com.google.api.client.http.AbstractC15313aa
        public String getHeaderName(int i) {
            return this.headerNames.get(i);
        }

        @Override // com.google.api.client.http.AbstractC15313aa
        public String getHeaderValue(int i) {
            return this.headerValues.get(i);
        }

        @Override // com.google.api.client.http.AbstractC15313aa
        public String getReasonPhrase() {
            return null;
        }

        @Override // com.google.api.client.http.AbstractC15313aa
        public int getStatusCode() {
            return this.statusCode;
        }

        @Override // com.google.api.client.http.AbstractC15313aa
        public String getStatusLine() {
            return null;
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/api/client/googleapis/batch/BatchUnparsedResponse$FakeResponseHttpTransport.class */
    public static class FakeResponseHttpTransport extends AbstractC15346w {
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

        @Override // com.google.api.client.http.AbstractC15346w
        public AbstractC15349z buildRequest(String str, String str2) {
            return new FakeLowLevelHttpRequest(this.partContent, this.statusCode, this.headerNames, this.headerValues);
        }
    }

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

    private C15343t getFakeResponse(int i, InputStream inputStream, List<String> list, List<String> list2) throws IOException {
        C15340q m9027a = new FakeResponseHttpTransport(i, inputStream, list, list2).createRequestFactory().m9027a(new C15330i("http://google.com/"), null);
        m9027a.m9040f();
        m9027a.m9045a(false);
        return m9027a.m9031o();
    }

    private <A, T, E> A getParsedDataClass(Class<A> cls, C15343t c15343t, BatchRequest.RequestInfo<T, E> requestInfo) throws IOException {
        if (cls == Void.class) {
            return null;
        }
        return (A) requestInfo.request.m9033m().parseAndClose(c15343t.m9012h(), c15343t.m9008l(), cls);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private <T, E> void parseAndCallback(BatchRequest.RequestInfo<T, E> requestInfo, int i, C15343t c15343t) throws IOException {
        BatchCallback<T, E> batchCallback = requestInfo.callback;
        C15335n m9017c = c15343t.m9017c();
        AbstractC15347x m9037i = requestInfo.request.m9037i();
        AbstractC15323c m9041e = requestInfo.request.m9041e();
        this.backOffRequired = false;
        if (C15345v.m9005a(i)) {
            if (batchCallback == 0) {
                return;
            }
            batchCallback.onSuccess(getParsedDataClass(requestInfo.dataClass, c15343t, requestInfo), m9017c);
            return;
        }
        AbstractC15331j m9042d = requestInfo.request.m9042d();
        boolean z = this.retryAllowed && (m9042d == null || m9042d.retrySupported());
        boolean mo9003a = m9037i != null ? m9037i.mo9003a(requestInfo.request, c15343t, z) : false;
        boolean z2 = false;
        if (!mo9003a) {
            if (requestInfo.request.m9056a(c15343t.m9015e(), c15343t.m9017c())) {
                z2 = true;
            } else {
                z2 = false;
                if (z) {
                    z2 = false;
                    if (m9041e != null) {
                        c15343t.m9015e();
                        z2 = false;
                        if (m9041e.m9114a()) {
                            this.backOffRequired = true;
                            z2 = false;
                        }
                    }
                }
            }
        }
        if (z && (mo9003a || this.backOffRequired || z2)) {
            this.unsuccessfulRequestInfos.add(requestInfo);
        } else if (batchCallback == 0) {
        } else {
            batchCallback.onFailure(getParsedDataClass(requestInfo.errorClass, c15343t, requestInfo), m9017c);
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
        if (str.endsWith(StringUtils.f67179LF)) {
            str2 = str.substring(0, str.length() - 1);
        }
        return str2;
    }

    /* JADX WARN: Type inference failed for: r0v63, types: [long] */
    public final void parseNextResponse() throws IOException {
        String readLine;
        String readLine2;
        FilterInputStream filterInputStream;
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
        char c = 65535;
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
                c = Long.parseLong(str2);
            }
        }
        int i = (c > (-1L) ? 1 : (c == (-1L) ? 0 : -1));
        if (i == 0) {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            while (true) {
                readRawLine = readRawLine();
                if (readRawLine == null || readRawLine.startsWith(this.boundary)) {
                    break;
                }
                byteArrayOutputStream.write(readRawLine.getBytes("ISO-8859-1"));
            }
            filterInputStream = trimCrlf(byteArrayOutputStream.toByteArray());
            readLine2 = trimCrlf(readRawLine);
        } else {
            filterInputStream = new FilterInputStream(C15225f.m9249a(this.inputStream, c)) { // from class: com.google.api.client.googleapis.batch.BatchUnparsedResponse.1
                @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
                public void close() {
                }
            };
        }
        parseAndCallback(this.requestInfos.get(this.contentId - 1), parseInt, getFakeResponse(parseInt, filterInputStream, arrayList, arrayList2));
        while (true) {
            if (filterInputStream.skip(c) <= 0 && filterInputStream.read() == -1) {
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
