package com.facebook;

import android.os.Handler;
import com.facebook.GraphRequest;
import com.facebook.internal.b.b.a;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/facebook/s.class */
public final class s {

    /* renamed from: a  reason: collision with root package name */
    final long f20155a = g.l();

    /* renamed from: b  reason: collision with root package name */
    long f20156b;

    /* renamed from: c  reason: collision with root package name */
    long f20157c;

    /* renamed from: d  reason: collision with root package name */
    long f20158d;
    private final GraphRequest e;
    private final Handler f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public s(Handler handler, GraphRequest graphRequest) {
        this.e = graphRequest;
        this.f = handler;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a() {
        if (this.f20156b > this.f20157c) {
            GraphRequest.b bVar = this.e.e;
            final long j = this.f20158d;
            if (j > 0 && (bVar instanceof GraphRequest.d)) {
                final long j2 = this.f20156b;
                final GraphRequest.d dVar = (GraphRequest.d) bVar;
                Handler handler = this.f;
                if (handler != null) {
                    handler.post(new Runnable() { // from class: com.facebook.s.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            if (a.a(this)) {
                            }
                        }
                    });
                }
                this.f20157c = this.f20156b;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(long j) {
        this.f20158d += j;
    }
}
