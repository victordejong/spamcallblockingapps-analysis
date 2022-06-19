package com.facebook;

import android.os.Handler;
import com.facebook.GraphRequest;
import com.facebook.internal.p299b.p301b.C10249a;
/* renamed from: com.facebook.s */
/* loaded from: classes3-dex2jar.jar:com/facebook/s.class */
public final class C10433s {

    /* renamed from: a */
    final long f34126a = C10181g.m23287l();

    /* renamed from: b */
    long f34127b;

    /* renamed from: c */
    long f34128c;

    /* renamed from: d */
    long f34129d;

    /* renamed from: e */
    private final GraphRequest f34130e;

    /* renamed from: f */
    private final Handler f34131f;

    public C10433s(Handler handler, GraphRequest graphRequest) {
        this.f34130e = graphRequest;
        this.f34131f = handler;
    }

    /* renamed from: a */
    public final void m22797a() {
        if (this.f34127b > this.f34128c) {
            GraphRequest.AbstractC9933b abstractC9933b = this.f34130e.f33079e;
            final long j = this.f34129d;
            if (j <= 0 || !(abstractC9933b instanceof GraphRequest.AbstractC9935d)) {
                return;
            }
            final long j2 = this.f34127b;
            final GraphRequest.AbstractC9935d abstractC9935d = (GraphRequest.AbstractC9935d) abstractC9933b;
            Handler handler = this.f34131f;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.facebook.s.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        if (C10249a.m23108a(this)) {
                        }
                    }
                });
            }
            this.f34128c = this.f34127b;
        }
    }

    /* renamed from: a */
    public final void m22796a(long j) {
        this.f34129d += j;
    }
}
