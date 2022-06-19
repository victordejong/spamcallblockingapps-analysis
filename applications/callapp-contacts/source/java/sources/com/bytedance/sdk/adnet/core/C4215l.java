package com.bytedance.sdk.adnet.core;

import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.bytedance.sdk.adnet.C4151a;
import com.bytedance.sdk.adnet.face.AbstractC4246a;
import com.bytedance.sdk.adnet.face.AbstractC4248b;
import com.bytedance.sdk.adnet.face.AbstractC4249c;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.atomic.AtomicInteger;
/* renamed from: com.bytedance.sdk.adnet.core.l */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/adnet/core/l.class */
public class C4215l {

    /* renamed from: a */
    private final AtomicInteger f15457a;

    /* renamed from: b */
    private final Set<Request<?>> f15458b;

    /* renamed from: c */
    private final PriorityBlockingQueue<Request<?>> f15459c;

    /* renamed from: d */
    private final PriorityBlockingQueue<Request<?>> f15460d;

    /* renamed from: e */
    private final AbstractC4246a f15461e;

    /* renamed from: f */
    private final AbstractC4248b f15462f;

    /* renamed from: g */
    private final AbstractC4249c f15463g;

    /* renamed from: h */
    private final C4210h[] f15464h;

    /* renamed from: i */
    private C4200d f15465i;

    /* renamed from: j */
    private final List<AbstractC4217b> f15466j;

    /* renamed from: k */
    private final List<AbstractC4216a> f15467k;

    /* renamed from: com.bytedance.sdk.adnet.core.l$a */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/adnet/core/l$a.class */
    public interface AbstractC4216a {
        /* renamed from: a */
        void m36117a(Request<?> request, int i);
    }

    @Deprecated
    /* renamed from: com.bytedance.sdk.adnet.core.l$b */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/adnet/core/l$b.class */
    public interface AbstractC4217b<T> {
        /* renamed from: a */
        void m36116a(Request<T> request);
    }

    public C4215l(AbstractC4246a abstractC4246a, AbstractC4248b abstractC4248b) {
        this(abstractC4246a, abstractC4248b, 4);
    }

    public C4215l(AbstractC4246a abstractC4246a, AbstractC4248b abstractC4248b, int i) {
        this(abstractC4246a, abstractC4248b, i, new C4207g(new Handler(Looper.getMainLooper())));
    }

    public C4215l(AbstractC4246a abstractC4246a, AbstractC4248b abstractC4248b, int i, AbstractC4249c abstractC4249c) {
        this.f15457a = new AtomicInteger();
        this.f15458b = new HashSet();
        this.f15459c = new PriorityBlockingQueue<>();
        this.f15460d = new PriorityBlockingQueue<>();
        this.f15466j = new ArrayList();
        this.f15467k = new ArrayList();
        this.f15461e = abstractC4246a;
        this.f15462f = abstractC4248b;
        this.f15464h = new C4210h[i];
        this.f15463g = abstractC4249c;
    }

    /* renamed from: a */
    public <T> Request<T> m36123a(Request<T> request) {
        m36120b(request);
        request.setStartTime();
        request.setRequestQueue(this);
        synchronized (this.f15458b) {
            this.f15458b.add(request);
        }
        request.setSequence(m36119c());
        request.addMarker("add-to-queue");
        m36122a(request, 0);
        if (!request.shouldCache()) {
            this.f15460d.add(request);
            return request;
        }
        this.f15459c.add(request);
        return request;
    }

    /* renamed from: a */
    public void m36124a() {
        m36121b();
        C4200d c4200d = new C4200d(this.f15459c, this.f15460d, this.f15461e, this.f15463g);
        this.f15465i = c4200d;
        c4200d.setName("tt_pangle_thread_CacheDispatcher");
        this.f15465i.start();
        for (int i = 0; i < this.f15464h.length; i++) {
            C4210h c4210h = new C4210h(this.f15460d, this.f15462f, this.f15461e, this.f15463g);
            c4210h.setName("tt_pangle_thread_NetworkDispatcher".concat(String.valueOf(i)));
            this.f15464h[i] = c4210h;
            c4210h.start();
        }
    }

    /* renamed from: a */
    public void m36122a(Request<?> request, int i) {
        synchronized (this.f15467k) {
            for (AbstractC4216a abstractC4216a : this.f15467k) {
                abstractC4216a.m36117a(request, i);
            }
        }
    }

    /* renamed from: b */
    public void m36121b() {
        C4210h[] c4210hArr;
        C4200d c4200d = this.f15465i;
        if (c4200d != null) {
            c4200d.m36180a();
        }
        for (C4210h c4210h : this.f15464h) {
            if (c4210h != null) {
                c4210h.m36144a();
            }
        }
    }

    /* renamed from: b */
    public <T> void m36120b(Request<T> request) {
        if (request == null || TextUtils.isEmpty(request.getUrl())) {
            return;
        }
        String url = request.getUrl();
        if (C4151a.m36300d() == null) {
            return;
        }
        String mo36231a = C4151a.m36300d().mo36231a(url);
        if (TextUtils.isEmpty(mo36231a)) {
            return;
        }
        request.setUrl(mo36231a);
    }

    /* renamed from: c */
    public int m36119c() {
        return this.f15457a.incrementAndGet();
    }

    /* renamed from: c */
    public <T> void m36118c(Request<T> request) {
        synchronized (this.f15458b) {
            this.f15458b.remove(request);
        }
        synchronized (this.f15466j) {
            for (AbstractC4217b abstractC4217b : this.f15466j) {
                abstractC4217b.m36116a(request);
            }
        }
        m36122a(request, 5);
    }
}
