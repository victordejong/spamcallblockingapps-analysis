package com.twitter.sdk.android.core.internal;

import com.twitter.sdk.android.core.AbstractC17279m;
import com.twitter.sdk.android.core.C17278l;
import java.util.Calendar;
import java.util.TimeZone;
import java.util.concurrent.ExecutorService;
/* renamed from: com.twitter.sdk.android.core.internal.d */
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/internal/d.class */
public final class C17249d<T extends C17278l> {

    /* renamed from: a */
    protected final C17251a f60998a;

    /* renamed from: b */
    private final C17253f f60999b;

    /* renamed from: c */
    private final AbstractC17279m<T> f61000c;

    /* renamed from: d */
    private final ExecutorService f61001d;

    /* renamed from: e */
    private final AbstractC17252e f61002e;

    /* renamed from: com.twitter.sdk.android.core.internal.d$a */
    /* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/internal/d$a.class */
    public static final class C17251a {

        /* renamed from: a */
        public boolean f61004a;

        /* renamed from: b */
        public long f61005b;

        /* renamed from: c */
        private final Calendar f61006c = Calendar.getInstance(TimeZone.getTimeZone("UTC"));

        /* renamed from: a */
        public final boolean m5662a(long j) {
            synchronized (this) {
                long j2 = this.f61005b;
                boolean z = j - j2 > 21600000;
                this.f61006c.setTimeInMillis(j);
                int i = this.f61006c.get(6);
                int i2 = this.f61006c.get(1);
                this.f61006c.setTimeInMillis(j2);
                boolean z2 = !(i == this.f61006c.get(6) && i2 == this.f61006c.get(1));
                if (this.f61004a || (!z && !z2)) {
                    return false;
                }
                this.f61004a = true;
                return true;
            }
        }

        /* renamed from: b */
        public final void m5661b(long j) {
            synchronized (this) {
                this.f61004a = false;
                this.f61005b = j;
            }
        }
    }

    C17249d(AbstractC17279m<T> abstractC17279m, C17253f c17253f, ExecutorService executorService, C17251a c17251a, AbstractC17252e abstractC17252e) {
        this.f60999b = c17253f;
        this.f61000c = abstractC17279m;
        this.f61001d = executorService;
        this.f60998a = c17251a;
        this.f61002e = abstractC17252e;
    }

    public C17249d(AbstractC17279m<T> abstractC17279m, ExecutorService executorService, AbstractC17252e<T> abstractC17252e) {
        this(abstractC17279m, new C17253f(), executorService, new C17251a(), abstractC17252e);
    }

    /* renamed from: a */
    public final void m5665a() {
        if (this.f61000c.mo5637a() != null && this.f60998a.m5662a(System.currentTimeMillis())) {
            this.f61001d.submit(new Runnable() { // from class: com.twitter.sdk.android.core.internal._$$Lambda$k_jA5ssYmNToZ9dDmtxUkMgCSUA
                @Override // java.lang.Runnable
                public final void run() {
                    C17249d.this.m5664b();
                }
            });
        }
    }

    /* renamed from: b */
    public final void m5664b() {
        for (T t : this.f61000c.mo5633c().values()) {
            this.f61002e.mo5659a(t);
        }
        this.f60998a.m5661b(System.currentTimeMillis());
    }
}
