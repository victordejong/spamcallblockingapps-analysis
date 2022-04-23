package com.bytedance.sdk.openadsdk.d;

import android.os.Handler;
import android.os.Message;
import com.bytedance.sdk.openadsdk.core.o;
import com.bytedance.sdk.openadsdk.d.h;
import com.bytedance.sdk.openadsdk.d.j;
import com.bytedance.sdk.openadsdk.i.b.c;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/d/c.class */
public class c<T extends j> {

    /* renamed from: a  reason: collision with root package name */
    private h<T> f9397a;

    /* renamed from: b  reason: collision with root package name */
    private Handler f9398b;

    /* renamed from: c  reason: collision with root package name */
    private AtomicBoolean f9399c;

    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/d/c$a.class */
    public static class a extends c<com.bytedance.sdk.openadsdk.d.a> {

        /* renamed from: a  reason: collision with root package name */
        private static volatile a f9400a;

        a() {
        }

        public static a e() {
            if (f9400a == null) {
                synchronized (a.class) {
                    try {
                        if (f9400a == null) {
                            f9400a = new a();
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            return f9400a;
        }

        @Override // com.bytedance.sdk.openadsdk.d.c
        public void a() {
            synchronized (this) {
            }
        }

        public void a(com.bytedance.sdk.openadsdk.d.a aVar) {
        }

        @Override // com.bytedance.sdk.openadsdk.d.c
        public void b() {
        }
    }

    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/d/c$b.class */
    public static class b extends c<c.a> {

        /* renamed from: a  reason: collision with root package name */
        private static volatile b f9401a;

        b() {
        }

        public static b e() {
            if (f9401a == null) {
                synchronized (b.class) {
                    try {
                        if (f9401a == null) {
                            f9401a = new b();
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            return f9401a;
        }

        @Override // com.bytedance.sdk.openadsdk.d.c
        public void a() {
            synchronized (this) {
            }
        }

        public void a(c.a aVar) {
        }

        @Override // com.bytedance.sdk.openadsdk.d.c
        public void b() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public c() {
    }

    public c(f<T> fVar, o<T> oVar, h.b bVar, h.a aVar) {
        this.f9397a = new h<>(fVar, oVar, bVar, aVar);
        this.f9399c = new AtomicBoolean(false);
    }

    public c(f<T> fVar, o<T> oVar, h.b bVar, h.a aVar, h<T> hVar) {
        this.f9397a = hVar;
        this.f9399c = new AtomicBoolean(false);
    }

    public static a c() {
        return a.e();
    }

    public static b d() {
        return b.e();
    }

    public void a() {
        synchronized (this) {
            AtomicBoolean atomicBoolean = this.f9399c;
            if ((atomicBoolean == null || !atomicBoolean.get()) && this.f9397a.getLooper() == null) {
                AtomicBoolean atomicBoolean2 = this.f9399c;
                if (atomicBoolean2 != null && !atomicBoolean2.get()) {
                    this.f9397a.start();
                    Handler handler = new Handler(this.f9397a.getLooper(), this.f9397a);
                    this.f9398b = handler;
                    Message obtainMessage = handler.obtainMessage();
                    obtainMessage.what = 5;
                    this.f9398b.sendMessageDelayed(obtainMessage, 10000L);
                    this.f9399c.set(true);
                }
            }
        }
    }

    public void a(T t) {
        if (!this.f9399c.get()) {
            a();
        }
        Message obtainMessage = this.f9398b.obtainMessage();
        obtainMessage.what = 1;
        obtainMessage.obj = t;
        this.f9398b.sendMessage(obtainMessage);
    }

    public void b() {
        this.f9399c.set(false);
        this.f9397a.quit();
        this.f9398b.removeCallbacksAndMessages(null);
    }
}
