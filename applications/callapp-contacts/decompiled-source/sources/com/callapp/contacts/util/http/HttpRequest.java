package com.callapp.contacts.util.http;

import android.app.Activity;
import com.callapp.contacts.event.listener.Listener;
import com.callapp.contacts.manager.popup.PopupManager;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.popup.contact.SimpleProgressDialog;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.http.HttpRequestParams;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/http/HttpRequest.class */
public class HttpRequest {

    /* renamed from: c  reason: collision with root package name */
    private static final String f16216c = "com.callapp.contacts.util.http.HttpRequest";

    /* renamed from: a  reason: collision with root package name */
    public Listener<HttpRequest> f16217a;

    /* renamed from: b  reason: collision with root package name */
    public Listener<HttpRequest> f16218b;

    /* renamed from: d  reason: collision with root package name */
    private Map<String, String> f16219d = new HashMap();
    private String e;
    private String f;
    private int g;
    private boolean h;
    private SimpleProgressDialog i;
    private Activity j;
    private Task k;

    public HttpRequest(String str) {
        this.e = str;
    }

    public final HttpRequest a() {
        PopupManager.get().a(this.j, this.i);
        Task task = new Task() { // from class: com.callapp.contacts.util.http.HttpRequest.1
            @Override // com.callapp.contacts.manager.task.Task
            public void doTask() {
                boolean a2 = HttpRequest.this.a(r5);
                try {
                    SimpleProgressDialog.a(HttpRequest.this.i);
                    if (!a2) {
                        HttpRequest.this.b();
                    } else if (HttpRequest.this.f16217a != null) {
                        HttpRequest.this.f16217a.a(HttpRequest.this);
                    }
                } finally {
                    HttpRequest.this.f = null;
                    HttpRequest.this.i = null;
                    HttpRequest.this.j = null;
                    HttpRequest.this.f16217a = null;
                    HttpRequest.this.f16218b = null;
                }
            }
        };
        this.k = task;
        task.execute();
        return this;
    }

    public final HttpRequest a(String str, String str2) {
        this.f16219d.put(str, str2);
        return this;
    }

    public final boolean a(int i) {
        ValidatorHttpResponseHandler validatorHttpResponseHandler = new ValidatorHttpResponseHandler();
        HttpRequestParams.HttpRequestParamsBuilder httpRequestParamsBuilder = new HttpRequestParams.HttpRequestParamsBuilder(this.e);
        httpRequestParamsBuilder.e = this.f16219d;
        httpRequestParamsBuilder.f16228c = validatorHttpResponseHandler;
        httpRequestParamsBuilder.f = i;
        this.g = HttpUtils.d(httpRequestParamsBuilder.a());
        this.h = validatorHttpResponseHandler.isValidCallAppResponse();
        int i2 = this.g;
        if (i2 != 200) {
            CLog.b(f16216c, "Got status %s while posting to %s", Integer.valueOf(i2), this.e);
            return false;
        }
        this.f = validatorHttpResponseHandler.getResult();
        return true;
    }

    public final void b() {
        Listener<HttpRequest> listener = this.f16218b;
        if (listener != null) {
            listener.a(this);
        }
    }

    public String getResponse() {
        return this.f;
    }

    public int getResponseStatusCode() {
        return this.g;
    }

    public boolean isValidCallAppResponse() {
        return this.h;
    }
}
