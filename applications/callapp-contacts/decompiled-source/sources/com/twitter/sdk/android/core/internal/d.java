package com.twitter.sdk.android.core.internal;

import com.twitter.sdk.android.core.l;
import com.twitter.sdk.android.core.m;
import java.util.Calendar;
import java.util.TimeZone;
import java.util.concurrent.ExecutorService;
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/internal/d.class */
public final class d<T extends l> {

    /* renamed from: a  reason: collision with root package name */
    protected final a f35151a;

    /* renamed from: b  reason: collision with root package name */
    private final f f35152b;

    /* renamed from: c  reason: collision with root package name */
    private final m<T> f35153c;

    /* renamed from: d  reason: collision with root package name */
    private final ExecutorService f35154d;
    private final e e;

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/internal/d$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public boolean f35156a;

        /* renamed from: b  reason: collision with root package name */
        public long f35157b;

        /* renamed from: c  reason: collision with root package name */
        private final Calendar f35158c = Calendar.getInstance(TimeZone.getTimeZone("UTC"));

        public final boolean a(long j) {
            synchronized (this) {
                long j2 = this.f35157b;
                boolean z = j - j2 > 21600000;
                this.f35158c.setTimeInMillis(j);
                int i = this.f35158c.get(6);
                int i2 = this.f35158c.get(1);
                this.f35158c.setTimeInMillis(j2);
                boolean z2 = !(i == this.f35158c.get(6) && i2 == this.f35158c.get(1));
                if (this.f35156a || (!z && !z2)) {
                    return false;
                }
                this.f35156a = true;
                return true;
            }
        }

        public final void b(long j) {
            synchronized (this) {
                this.f35156a = false;
                this.f35157b = j;
            }
        }
    }

    d(m<T> mVar, f fVar, ExecutorService executorService, a aVar, e eVar) {
        this.f35152b = fVar;
        this.f35153c = mVar;
        this.f35154d = executorService;
        this.f35151a = aVar;
        this.e = eVar;
    }

    public d(m<T> mVar, ExecutorService executorService, e<T> eVar) {
        this(mVar, new f(), executorService, new a(), eVar);
    }

    public final void a() {
        if (this.f35153c.a() != null && this.f35151a.a(System.currentTimeMillis())) {
            this.f35154d.submit(new Runnable() { // from class: com.twitter.sdk.android.core.internal._$$Lambda$k_jA5ssYmNToZ9dDmtxUkMgCSUA
                @Override // java.lang.Runnable
                public final void run() {
                    d.this.b();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void b() {
        for (T t : this.f35153c.c().values()) {
            this.e.a(t);
        }
        this.f35151a.b(System.currentTimeMillis());
    }
}
