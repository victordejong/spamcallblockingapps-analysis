package com.google.api.client.googleapis.batch;

import com.google.api.client.http.AbstractC15323c;
import com.google.api.client.http.AbstractC15334m;
import com.google.api.client.http.AbstractC15342s;
import com.google.api.client.http.AbstractC15346w;
import com.google.api.client.http.C15314ab;
import com.google.api.client.http.C15330i;
import com.google.api.client.http.C15335n;
import com.google.api.client.http.C15340q;
import com.google.api.client.http.C15341r;
import com.google.api.client.http.C15343t;
import com.google.api.client.p379a.AbstractC15209ac;
import com.google.api.client.p379a.C15207aa;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/api/client/googleapis/batch/BatchRequest.class */
public final class BatchRequest {
    private final C15341r requestFactory;
    private C15330i batchUrl = new C15330i("https://www.googleapis.com/batch");
    List<RequestInfo<?, ?>> requestInfos = new ArrayList();
    private AbstractC15209ac sleeper = AbstractC15209ac.f55052a;

    /* loaded from: classes4-dex2jar.jar:com/google/api/client/googleapis/batch/BatchRequest$BatchInterceptor.class */
    class BatchInterceptor implements AbstractC15334m {
        private AbstractC15334m originalInterceptor;

        BatchInterceptor(AbstractC15334m abstractC15334m) {
            BatchRequest.this = r4;
            this.originalInterceptor = abstractC15334m;
        }

        @Override // com.google.api.client.http.AbstractC15334m
        public void intercept(C15340q c15340q) throws IOException {
            AbstractC15334m abstractC15334m = this.originalInterceptor;
            if (abstractC15334m != null) {
                abstractC15334m.intercept(c15340q);
            }
            for (RequestInfo<?, ?> requestInfo : BatchRequest.this.requestInfos) {
                AbstractC15334m m9038h = requestInfo.request.m9038h();
                if (m9038h != null) {
                    m9038h.intercept(requestInfo.request);
                }
            }
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/api/client/googleapis/batch/BatchRequest$RequestInfo.class */
    public static class RequestInfo<T, E> {
        final BatchCallback<T, E> callback;
        final Class<T> dataClass;
        final Class<E> errorClass;
        final C15340q request;

        RequestInfo(BatchCallback<T, E> batchCallback, Class<T> cls, Class<E> cls2, C15340q c15340q) {
            this.callback = batchCallback;
            this.dataClass = cls;
            this.errorClass = cls2;
            this.request = c15340q;
        }
    }

    public BatchRequest(AbstractC15346w abstractC15346w, AbstractC15342s abstractC15342s) {
        this.requestFactory = abstractC15342s == null ? abstractC15346w.createRequestFactory() : abstractC15346w.createRequestFactory(abstractC15342s);
    }

    /* JADX WARN: Finally extract failed */
    public final void execute() throws IOException {
        boolean z;
        C15207aa.m9278b(!this.requestInfos.isEmpty());
        C15340q m9027a = this.requestFactory.m9027a(this.batchUrl, null);
        m9027a.m9051a(new BatchInterceptor(m9027a.m9038h()));
        int m9034l = m9027a.m9034l();
        AbstractC15323c m9041e = m9027a.m9041e();
        do {
            z = m9034l > 0;
            C15314ab c15314ab = new C15314ab();
            c15314ab.getMediaType().m9067a("mixed");
            int i = 1;
            for (RequestInfo<?, ?> requestInfo : this.requestInfos) {
                c15314ab.m9138a(new C15314ab.C15315a(new C15335n().m9100a().set("Content-ID", Integer.valueOf(i)), new HttpRequestContent(requestInfo.request)));
                i++;
            }
            m9027a.m9053a(c15314ab);
            C15343t m9031o = m9027a.m9031o();
            try {
                BatchUnparsedResponse batchUnparsedResponse = new BatchUnparsedResponse(m9031o.m9012h(), "--" + m9031o.m9018b().m9064b("boundary"), this.requestInfos, z);
                while (batchUnparsedResponse.hasNext) {
                    batchUnparsedResponse.parseNextResponse();
                }
                m9031o.m9010j();
                List<RequestInfo<?, ?>> list = batchUnparsedResponse.unsuccessfulRequestInfos;
                if (list.isEmpty()) {
                    break;
                }
                this.requestInfos = list;
                if (batchUnparsedResponse.backOffRequired && m9041e != null) {
                    long m9113b = m9041e.m9113b();
                    if (m9113b != -1) {
                        try {
                            this.sleeper.mo9273a(m9113b);
                        } catch (InterruptedException e) {
                        }
                    }
                }
                m9034l--;
            } catch (Throwable th) {
                m9031o.m9010j();
                throw th;
            }
        } while (z);
        this.requestInfos.clear();
    }

    public final C15330i getBatchUrl() {
        return this.batchUrl;
    }

    public final AbstractC15209ac getSleeper() {
        return this.sleeper;
    }

    public final <T, E> BatchRequest queue(C15340q c15340q, Class<T> cls, Class<E> cls2, BatchCallback<T, E> batchCallback) throws IOException {
        C15207aa.m9283a(c15340q);
        C15207aa.m9283a(batchCallback);
        C15207aa.m9283a(cls);
        C15207aa.m9283a(cls2);
        this.requestInfos.add(new RequestInfo<>(batchCallback, cls, cls2, c15340q));
        return this;
    }

    public final BatchRequest setBatchUrl(C15330i c15330i) {
        this.batchUrl = c15330i;
        return this;
    }

    public final BatchRequest setSleeper(AbstractC15209ac abstractC15209ac) {
        this.sleeper = (AbstractC15209ac) C15207aa.m9283a(abstractC15209ac);
        return this;
    }

    public final int size() {
        return this.requestInfos.size();
    }
}
