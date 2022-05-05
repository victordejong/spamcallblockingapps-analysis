package com.tmobile.tmoid.agent;

import com.tmobile.tmoid.helperlib.ServerErrorException;
import com.tmobile.tmoid.helperlib.impl.APIRequest;
import com.tmobile.tmoid.helperlib.impl.APIResponse;
import com.tmobile.tmoid.helperlib.util.Log;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Semaphore;
/* loaded from: classes-dex2jar.jar:com/tmobile/tmoid/agent/IAMAgentCallManager.class */
public class IAMAgentCallManager {

    /* renamed from: a */
    Map<String, Semaphore> f14639a = new HashMap();

    /* renamed from: b */
    Map<String, APIResponse> f14640b = new HashMap();

    /* renamed from: a */
    private void m5169a(String str) {
        Semaphore semaphore = this.f14639a.get(str);
        Semaphore semaphore2 = semaphore;
        if (semaphore == null) {
            semaphore2 = new Semaphore(0);
            this.f14639a.put(str, semaphore2);
        }
        Log.m4648v("TMO-Agent", "blocking thread:" + Thread.currentThread().getId() + " for call " + str + " until response will be available");
        semaphore2.acquireUninterruptibly();
    }

    /* renamed from: b */
    public void m5168b(APIRequest aPIRequest) {
        Log.m4648v("TMO-Agent", "service call to cancel API request, request_id:" + aPIRequest.m5046d());
        APIResponse aPIResponse = new APIResponse();
        aPIResponse.m5017l(true);
        this.f14640b.put(aPIRequest.m5046d(), aPIResponse);
        Semaphore remove = this.f14639a.remove(aPIRequest.m5046d());
        if (remove != null) {
            remove.release();
            Log.m4648v("TMO-Agent", "API request has been canceled, request_id:" + aPIRequest.m5046d());
        }
    }

    /* renamed from: c */
    public APIResponse m5167c(APIRequest aPIRequest) {
        m5169a(aPIRequest.m5046d());
        return this.f14640b.remove(aPIRequest.m5046d());
    }

    /* renamed from: d */
    public void m5166d(APIRequest aPIRequest, int i, String str, String str2) {
        Log.m4648v("TMO-Agent", "service call to cancel API request due to server error, request_id:" + aPIRequest.m5046d());
        APIResponse aPIResponse = new APIResponse();
        ServerErrorException serverErrorException = new ServerErrorException(i);
        serverErrorException.setDescription(str);
        serverErrorException.setFailURL(str2);
        aPIResponse.m5022g(serverErrorException);
        this.f14640b.put(aPIRequest.m5046d(), aPIResponse);
        Semaphore remove = this.f14639a.remove(aPIRequest.m5046d());
        if (remove != null) {
            remove.release();
            Log.m4648v("TMO-Agent", "API request has been canceled due to server error, request_id:" + aPIRequest.m5046d());
        }
    }

    /* renamed from: e */
    public void m5165e(String str, APIResponse aPIResponse) {
        Semaphore remove = this.f14639a.remove(str);
        if (remove != null) {
            this.f14640b.put(str, aPIResponse);
            Log.m4648v("TMO-Agent", "setCallResponse was called for request_id:" + str);
            remove.release();
            return;
        }
        Log.m4648v("TMO-Agent", "setCallResponse ignore response because request was canceled:" + str);
    }
}
