package com.bytedance.sdk.openadsdk.p164d;

import android.os.Handler;
import android.os.Message;
import com.bytedance.sdk.openadsdk.core.AbstractC4635o;
import com.bytedance.sdk.openadsdk.p164d.AbstractC4821j;
import com.bytedance.sdk.openadsdk.p164d.HandlerThreadC4815h;
import com.bytedance.sdk.openadsdk.p171i.p173b.C4934c;
import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: com.bytedance.sdk.openadsdk.d.c */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/d/c.class */
public class C4807c<T extends AbstractC4821j> {

    /* renamed from: a */
    private HandlerThreadC4815h<T> f17660a;

    /* renamed from: b */
    private Handler f17661b;

    /* renamed from: c */
    private AtomicBoolean f17662c;

    /* renamed from: com.bytedance.sdk.openadsdk.d.c$a */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/d/c$a.class */
    public static class C4808a extends C4807c<C4805a> {

        /* renamed from: a */
        private static volatile C4808a f17663a;

        C4808a() {
        }

        /* renamed from: e */
        public static C4808a m33888e() {
            if (f17663a == null) {
                synchronized (C4808a.class) {
                    try {
                        if (f17663a == null) {
                            f17663a = new C4808a();
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            return f17663a;
        }

        @Override // com.bytedance.sdk.openadsdk.p164d.C4807c
        /* renamed from: a */
        public void mo33798a() {
            synchronized (this) {
            }
        }

        /* renamed from: a */
        public void mo33797a(C4805a c4805a) {
        }

        @Override // com.bytedance.sdk.openadsdk.p164d.C4807c
        /* renamed from: b */
        public void mo33795b() {
        }
    }

    /* renamed from: com.bytedance.sdk.openadsdk.d.c$b */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/d/c$b.class */
    public static class C4809b extends C4807c<C4934c.C4936a> {

        /* renamed from: a */
        private static volatile C4809b f17664a;

        C4809b() {
        }

        /* renamed from: e */
        public static C4809b m33886e() {
            if (f17664a == null) {
                synchronized (C4809b.class) {
                    try {
                        if (f17664a == null) {
                            f17664a = new C4809b();
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            return f17664a;
        }

        @Override // com.bytedance.sdk.openadsdk.p164d.C4807c
        /* renamed from: a */
        public void mo33798a() {
            synchronized (this) {
            }
        }

        /* renamed from: a */
        public void mo33797a(C4934c.C4936a c4936a) {
        }

        @Override // com.bytedance.sdk.openadsdk.p164d.C4807c
        /* renamed from: b */
        public void mo33795b() {
        }
    }

    public C4807c() {
    }

    public C4807c(AbstractC4813f<T> abstractC4813f, AbstractC4635o<T> abstractC4635o, HandlerThreadC4815h.C4818b c4818b, HandlerThreadC4815h.AbstractC4817a abstractC4817a) {
        this.f17660a = new HandlerThreadC4815h<>(abstractC4813f, abstractC4635o, c4818b, abstractC4817a);
        this.f17662c = new AtomicBoolean(false);
    }

    public C4807c(AbstractC4813f<T> abstractC4813f, AbstractC4635o<T> abstractC4635o, HandlerThreadC4815h.C4818b c4818b, HandlerThreadC4815h.AbstractC4817a abstractC4817a, HandlerThreadC4815h<T> handlerThreadC4815h) {
        this.f17660a = handlerThreadC4815h;
        this.f17662c = new AtomicBoolean(false);
    }

    /* renamed from: c */
    public static C4808a m33891c() {
        return C4808a.m33888e();
    }

    /* renamed from: d */
    public static C4809b m33890d() {
        return C4809b.m33886e();
    }

    /* renamed from: a */
    public void mo33798a() {
        synchronized (this) {
            AtomicBoolean atomicBoolean = this.f17662c;
            if ((atomicBoolean == null || !atomicBoolean.get()) && this.f17660a.getLooper() == null) {
                AtomicBoolean atomicBoolean2 = this.f17662c;
                if (atomicBoolean2 != null && !atomicBoolean2.get()) {
                    this.f17660a.start();
                    Handler handler = new Handler(this.f17660a.getLooper(), this.f17660a);
                    this.f17661b = handler;
                    Message obtainMessage = handler.obtainMessage();
                    obtainMessage.what = 5;
                    this.f17661b.sendMessageDelayed(obtainMessage, 10000L);
                    this.f17662c.set(true);
                }
            }
        }
    }

    /* renamed from: a */
    public void mo33797a(T t) {
        if (!this.f17662c.get()) {
            mo33798a();
        }
        Message obtainMessage = this.f17661b.obtainMessage();
        obtainMessage.what = 1;
        obtainMessage.obj = t;
        this.f17661b.sendMessage(obtainMessage);
    }

    /* renamed from: b */
    public void mo33795b() {
        this.f17662c.set(false);
        this.f17660a.quit();
        this.f17661b.removeCallbacksAndMessages(null);
    }
}
