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

    /* renamed from: c */
    private static final String f28270c = "com.callapp.contacts.util.http.HttpRequest";

    /* renamed from: a */
    public Listener<HttpRequest> f28271a;

    /* renamed from: b */
    public Listener<HttpRequest> f28272b;

    /* renamed from: d */
    private Map<String, String> f28273d = new HashMap();

    /* renamed from: e */
    private String f28274e;

    /* renamed from: f */
    private String f28275f;

    /* renamed from: g */
    private int f28276g;

    /* renamed from: h */
    private boolean f28277h;

    /* renamed from: i */
    private SimpleProgressDialog f28278i;

    /* renamed from: j */
    private Activity f28279j;

    /* renamed from: k */
    private Task f28280k;

    public HttpRequest(String str) {
        this.f28274e = str;
    }

    /* renamed from: a */
    public final HttpRequest m27005a() {
        PopupManager.get().m28209a(this.f28279j, this.f28278i);
        Task task = new Task() { // from class: com.callapp.contacts.util.http.HttpRequest.1
            @Override // com.callapp.contacts.manager.task.Task
            public void doTask() {
                boolean m27004a = HttpRequest.this.m27004a(r5);
                try {
                    SimpleProgressDialog.m27939a(HttpRequest.this.f28278i);
                    if (!m27004a) {
                        HttpRequest.this.m27001b();
                    } else if (HttpRequest.this.f28271a != null) {
                        HttpRequest.this.f28271a.mo27399a(HttpRequest.this);
                    }
                } finally {
                    HttpRequest.this.f28275f = null;
                    HttpRequest.this.f28278i = null;
                    HttpRequest.this.f28279j = null;
                    HttpRequest.this.f28271a = null;
                    HttpRequest.this.f28272b = null;
                }
            }
        };
        this.f28280k = task;
        task.execute();
        return this;
    }

    /* renamed from: a */
    public final HttpRequest m27002a(String str, String str2) {
        this.f28273d.put(str, str2);
        return this;
    }

    /* renamed from: a */
    public final boolean m27004a(int i) {
        ValidatorHttpResponseHandler validatorHttpResponseHandler = new ValidatorHttpResponseHandler();
        HttpRequestParams.HttpRequestParamsBuilder httpRequestParamsBuilder = new HttpRequestParams.HttpRequestParamsBuilder(this.f28274e);
        httpRequestParamsBuilder.f28295e = this.f28273d;
        httpRequestParamsBuilder.f28293c = validatorHttpResponseHandler;
        httpRequestParamsBuilder.f28296f = i;
        this.f28276g = HttpUtils.m26963d(httpRequestParamsBuilder.m26994a());
        this.f28277h = validatorHttpResponseHandler.isValidCallAppResponse();
        int i2 = this.f28276g;
        if (i2 != 200) {
            CLog.m27591b(f28270c, "Got status %s while posting to %s", Integer.valueOf(i2), this.f28274e);
            return false;
        }
        this.f28275f = validatorHttpResponseHandler.getResult();
        return true;
    }

    /* renamed from: b */
    public final void m27001b() {
        Listener<HttpRequest> listener = this.f28272b;
        if (listener != null) {
            listener.mo27399a(this);
        }
    }

    public String getResponse() {
        return this.f28275f;
    }

    public int getResponseStatusCode() {
        return this.f28276g;
    }

    public boolean isValidCallAppResponse() {
        return this.f28277h;
    }
}
