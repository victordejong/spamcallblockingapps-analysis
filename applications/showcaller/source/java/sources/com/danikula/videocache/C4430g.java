package com.danikula.videocache;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.danikula.videocache.p227q.C4446b;
import java.io.File;
import java.net.Socket;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicInteger;
/* renamed from: com.danikula.videocache.g */
/* loaded from: classes-dex2jar.jar:com/danikula/videocache/g.class */
public final class C4430g {

    /* renamed from: a */
    private final AtomicInteger f13532a = new AtomicInteger(0);

    /* renamed from: b */
    private final String f13533b;

    /* renamed from: c */
    private volatile C4424e f13534c;

    /* renamed from: d */
    private final List<AbstractC4421b> f13535d;

    /* renamed from: e */
    private final AbstractC4421b f13536e;

    /* renamed from: f */
    private final C4422c f13537f;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.danikula.videocache.g$a */
    /* loaded from: classes-dex2jar.jar:com/danikula/videocache/g$a.class */
    public static final class HandlerC4431a extends Handler implements AbstractC4421b {

        /* renamed from: d */
        private final String f13538d;

        /* renamed from: e */
        private final List<AbstractC4421b> f13539e;

        public HandlerC4431a(String str, List<AbstractC4421b> list) {
            super(Looper.getMainLooper());
            this.f13538d = str;
            this.f13539e = list;
        }

        @Override // com.danikula.videocache.AbstractC4421b
        /* renamed from: a */
        public void mo22496a(File file, String str, int i) {
            Message obtainMessage = obtainMessage();
            obtainMessage.arg1 = i;
            obtainMessage.obj = file;
            sendMessage(obtainMessage);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            for (AbstractC4421b abstractC4421b : this.f13539e) {
                abstractC4421b.mo22496a((File) message.obj, this.f13538d, message.arg1);
            }
        }
    }

    public C4430g(String str, C4422c c4422c) {
        CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList();
        this.f13535d = copyOnWriteArrayList;
        this.f13533b = (String) C4437k.m22476d(str);
        this.f13537f = (C4422c) C4437k.m22476d(c4422c);
        this.f13536e = new HandlerC4431a(str, copyOnWriteArrayList);
    }

    /* renamed from: a */
    private void m22501a() {
        synchronized (this) {
            if (this.f13532a.decrementAndGet() <= 0) {
                this.f13534c.m22462m();
                this.f13534c = null;
            }
        }
    }

    /* renamed from: c */
    private C4424e m22499c() {
        String str = this.f13533b;
        C4422c c4422c = this.f13537f;
        C4424e c4424e = new C4424e(new C4432h(str, c4422c.f13504d, c4422c.f13505e), new C4446b(this.f13537f.m22534a(this.f13533b), this.f13537f.f13503c));
        c4424e.m22526t(this.f13536e);
        return c4424e;
    }

    /* renamed from: e */
    private void m22497e() {
        synchronized (this) {
            this.f13534c = this.f13534c == null ? m22499c() : this.f13534c;
        }
    }

    /* renamed from: b */
    public int m22500b() {
        return this.f13532a.get();
    }

    /* renamed from: d */
    public void m22498d(C4423d c4423d, Socket socket) {
        m22497e();
        try {
            this.f13532a.incrementAndGet();
            this.f13534c.m22527s(c4423d, socket);
        } finally {
            m22501a();
        }
    }
}
