package com.google.android.gms.common.api;

import com.google.android.gms.common.api.internal.BasePendingResult;
import com.google.android.gms.common.api.internal.C2561o;
import com.google.android.gms.common.internal.C2662s;
/* renamed from: com.google.android.gms.common.api.f */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/f.class */
public final class C2497f {

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.google.android.gms.common.api.f$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/f$a.class */
    public static final class C2498a<R extends AbstractC2500h> extends BasePendingResult<R> {

        /* renamed from: b */
        private final R f7061b;

        public C2498a(AbstractC2492d abstractC2492d, R r) {
            super(abstractC2492d);
            this.f7061b = r;
        }

        @Override // com.google.android.gms.common.api.internal.BasePendingResult
        /* renamed from: a */
        public final R mo14232a(Status status) {
            return this.f7061b;
        }
    }

    /* renamed from: a */
    public static AbstractC2495e<Status> m14418a(Status status, AbstractC2492d abstractC2492d) {
        C2662s.m13980a(status, "Result must not be null");
        C2561o c2561o = new C2561o(abstractC2492d);
        c2561o.m14412b((C2561o) status);
        return c2561o;
    }

    /* renamed from: a */
    public static <R extends AbstractC2500h> AbstractC2495e<R> m14417a(R r, AbstractC2492d abstractC2492d) {
        C2662s.m13980a(r, "Result must not be null");
        C2662s.m13972b(!r.mo14416b().m14460d(), "Status code must not be SUCCESS");
        C2498a c2498a = new C2498a(abstractC2492d, r);
        c2498a.m14412b((C2498a) r);
        return c2498a;
    }
}
