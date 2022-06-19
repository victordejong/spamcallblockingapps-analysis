package com.freshchat.consumer.sdk.service;

import android.app.IntentService;
import android.content.Context;
import android.content.Intent;
import com.freshchat.consumer.sdk.p057j.C1613ai;
import com.freshchat.consumer.sdk.p057j.C1723q;
import com.freshchat.consumer.sdk.service.p065b.C1826b;
import com.freshchat.consumer.sdk.service.p065b.C1827c;
import com.freshchat.consumer.sdk.service.p068e.AbstractC1905i;
import com.freshchat.consumer.sdk.service.p068e.AbstractC1906j;
import java.util.LinkedList;
import java.util.Queue;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/service/FreshchatService.class */
public class FreshchatService extends IntentService {

    /* renamed from: fn */
    private static Queue<C1827c> f4673fn = new LinkedList();

    /* renamed from: fo */
    private static Queue<C1827c> f4674fo = new LinkedList();

    /* renamed from: fp */
    private int f4675fp = 0;

    /* renamed from: fq */
    public C1826b f4676fq = new C1826b();

    public FreshchatService() {
        super("FreshchatService");
    }

    /* renamed from: a */
    public static void m39533a(Context context, AbstractC1906j abstractC1906j, AbstractC1804a abstractC1804a) {
        f4673fn.add(new C1827c(abstractC1906j, abstractC1804a));
        m39530r(context);
    }

    /* renamed from: a */
    private static void m39532a(Queue<C1827c> queue, C1827c c1827c) {
        if (queue.contains(c1827c)) {
            queue.remove(c1827c);
        }
    }

    /* renamed from: bk */
    public static void m39531bk(Context context) {
        try {
            f4673fn.clear();
            f4674fo.clear();
        } catch (Exception e) {
            C1723q.m39823a(e);
        }
    }

    /* renamed from: r */
    private static void m39530r(Context context) {
        try {
            context.startService(new Intent(context, FreshchatService.class));
        } catch (Exception e) {
            C1613ai.m40278w("FRESHCHAT", e.getMessage());
        }
    }

    @Override // android.app.IntentService, android.app.Service
    public void onCreate() {
        super.onCreate();
    }

    @Override // android.app.IntentService, android.app.Service
    public void onDestroy() {
        super.onDestroy();
        StringBuilder m8728C = C22128a.m8728C("Service processed ");
        m8728C.append(this.f4675fp);
        m8728C.append(" messages");
        C1613ai.m40284d("FRESHCHAT", m8728C.toString());
    }

    @Override // android.app.IntentService
    public void onHandleIntent(Intent intent) {
        Queue<C1827c> queue;
        while (true) {
            try {
                if (f4673fn.peek() == null && f4674fo.peek() == null) {
                    return;
                }
                C1827c peek = f4673fn.peek();
                if (peek == null) {
                    peek = f4674fo.peek();
                    if (peek != null) {
                        this.f4676fq.m39512b(getApplicationContext(), peek.m39510dv(), peek.m39511du());
                        this.f4675fp++;
                        queue = f4674fo;
                        m39532a(queue, peek);
                    }
                } else if (peek.m39510dv() instanceof AbstractC1905i) {
                    f4674fo.add(f4673fn.remove());
                } else {
                    C1613ai.m40284d("Service", "Processing message " + peek.m39510dv().getClass());
                    this.f4676fq.m39512b(getApplicationContext(), peek.m39510dv(), peek.m39511du());
                    this.f4675fp = this.f4675fp + 1;
                    queue = f4673fn;
                    m39532a(queue, peek);
                }
            } catch (Exception e) {
                C1723q.m39823a(e);
                return;
            }
        }
    }
}
