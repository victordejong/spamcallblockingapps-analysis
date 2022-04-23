package com.google.api.client.googleapis.batch;

import com.google.api.client.a.aa;
import com.google.api.client.a.ac;
import com.google.api.client.http.ab;
import com.google.api.client.http.c;
import com.google.api.client.http.i;
import com.google.api.client.http.m;
import com.google.api.client.http.n;
import com.google.api.client.http.q;
import com.google.api.client.http.r;
import com.google.api.client.http.s;
import com.google.api.client.http.t;
import com.google.api.client.http.w;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/api/client/googleapis/batch/BatchRequest.class */
public final class BatchRequest {
    private final r requestFactory;
    private i batchUrl = new i("https://www.googleapis.com/batch");
    List<RequestInfo<?, ?>> requestInfos = new ArrayList();
    private ac sleeper = ac.f31602a;

    /* loaded from: classes4-dex2jar.jar:com/google/api/client/googleapis/batch/BatchRequest$BatchInterceptor.class */
    class BatchInterceptor implements m {
        private m originalInterceptor;

        BatchInterceptor(m mVar) {
            this.originalInterceptor = mVar;
        }

        @Override // com.google.api.client.http.m
        public void intercept(q qVar) throws IOException {
            m mVar = this.originalInterceptor;
            if (mVar != null) {
                mVar.intercept(qVar);
            }
            for (RequestInfo<?, ?> requestInfo : BatchRequest.this.requestInfos) {
                m h = requestInfo.request.h();
                if (h != null) {
                    h.intercept(requestInfo.request);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/google/api/client/googleapis/batch/BatchRequest$RequestInfo.class */
    public static class RequestInfo<T, E> {
        final BatchCallback<T, E> callback;
        final Class<T> dataClass;
        final Class<E> errorClass;
        final q request;

        RequestInfo(BatchCallback<T, E> batchCallback, Class<T> cls, Class<E> cls2, q qVar) {
            this.callback = batchCallback;
            this.dataClass = cls;
            this.errorClass = cls2;
            this.request = qVar;
        }
    }

    public BatchRequest(w wVar, s sVar) {
        this.requestFactory = sVar == null ? wVar.createRequestFactory() : wVar.createRequestFactory(sVar);
    }

    /* JADX WARN: Finally extract failed */
    public final void execute() throws IOException {
        boolean z;
        aa.b(!this.requestInfos.isEmpty());
        q a2 = this.requestFactory.a(this.batchUrl, null);
        a2.a(new BatchInterceptor(a2.h()));
        int l = a2.l();
        c e = a2.e();
        do {
            z = l > 0;
            ab abVar = new ab();
            abVar.getMediaType().a("mixed");
            int i = 1;
            for (RequestInfo<?, ?> requestInfo : this.requestInfos) {
                abVar.a(new ab.a(new n().a().set("Content-ID", Integer.valueOf(i)), new HttpRequestContent(requestInfo.request)));
                i++;
            }
            a2.a(abVar);
            t o = a2.o();
            try {
                BatchUnparsedResponse batchUnparsedResponse = new BatchUnparsedResponse(o.h(), "--" + o.b().b("boundary"), this.requestInfos, z);
                while (batchUnparsedResponse.hasNext) {
                    batchUnparsedResponse.parseNextResponse();
                }
                o.j();
                List<RequestInfo<?, ?>> list = batchUnparsedResponse.unsuccessfulRequestInfos;
                if (list.isEmpty()) {
                    break;
                }
                this.requestInfos = list;
                if (batchUnparsedResponse.backOffRequired && e != null) {
                    long b2 = e.b();
                    if (b2 != -1) {
                        try {
                            this.sleeper.a(b2);
                        } catch (InterruptedException e2) {
                        }
                    }
                }
                l--;
            } catch (Throwable th) {
                o.j();
                throw th;
            }
        } while (z);
        this.requestInfos.clear();
    }

    public final i getBatchUrl() {
        return this.batchUrl;
    }

    public final ac getSleeper() {
        return this.sleeper;
    }

    public final <T, E> BatchRequest queue(q qVar, Class<T> cls, Class<E> cls2, BatchCallback<T, E> batchCallback) throws IOException {
        aa.a(qVar);
        aa.a(batchCallback);
        aa.a(cls);
        aa.a(cls2);
        this.requestInfos.add(new RequestInfo<>(batchCallback, cls, cls2, qVar));
        return this;
    }

    public final BatchRequest setBatchUrl(i iVar) {
        this.batchUrl = iVar;
        return this;
    }

    public final BatchRequest setSleeper(ac acVar) {
        this.sleeper = (ac) aa.a(acVar);
        return this;
    }

    public final int size() {
        return this.requestInfos.size();
    }
}
