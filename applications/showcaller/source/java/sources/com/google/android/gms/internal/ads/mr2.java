package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.tasks.AbstractC7954a;
import com.google.android.gms.tasks.AbstractC7966g;
import com.google.android.gms.tasks.C7970j;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/mr2.class */
public final class mr2 {

    /* renamed from: a */
    private static volatile int f26840a = 1;

    /* renamed from: b */
    public static final /* synthetic */ int f26841b = 0;

    /* renamed from: c */
    private final Context f26842c;

    /* renamed from: d */
    private final Executor f26843d;

    /* renamed from: e */
    private final AbstractC7966g<jt2> f26844e;

    /* renamed from: f */
    private final boolean f26845f;

    mr2(Context context, Executor executor, AbstractC7966g<jt2> abstractC7966g, boolean z) {
        this.f26842c = context;
        this.f26843d = executor;
        this.f26844e = abstractC7966g;
        this.f26845f = z;
    }

    /* renamed from: a */
    public static mr2 m13102a(Context context, Executor executor, boolean z) {
        return new mr2(context, executor, C7970j.m5800c(executor, new Callable(context, z) { // from class: com.google.android.gms.internal.ads.jr2

            /* renamed from: a */
            private final Context f24969a;

            /* renamed from: b */
            private final boolean f24970b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f24969a = context;
                this.f24970b = z;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return new jt2(this.f24969a, true != this.f24970b ? "" : "GLAS", null);
            }
        }), z);
    }

    /* renamed from: g */
    public static void m13096g(int i) {
        f26840a = i;
    }

    /* renamed from: h */
    private final AbstractC7966g<Boolean> m13095h(int i, long j, Exception exc, String str, Map<String, String> map, String str2) {
        if (!this.f26845f) {
            return this.f26844e.mo5818i(this.f26843d, kr2.f25305a);
        }
        u04 m9004C = y04.m9004C();
        m9004C.m10442q(this.f26842c.getPackageName());
        m9004C.m10441r(j);
        m9004C.m10436x(f26840a);
        if (exc != null) {
            m9004C.m10440s(kv2.m13777b(exc));
            m9004C.m10439t(exc.getClass().getName());
        }
        if (str2 != null) {
            m9004C.m10438v(str2);
        }
        if (str != null) {
            m9004C.m10437w(str);
        }
        return this.f26844e.mo5818i(this.f26843d, new AbstractC7954a(m9004C, i) { // from class: com.google.android.gms.internal.ads.lr2

            /* renamed from: a */
            private final u04 f26257a;

            /* renamed from: b */
            private final int f26258b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f26257a = m9004C;
                this.f26258b = i;
            }

            @Override // com.google.android.gms.tasks.AbstractC7954a
            /* renamed from: a */
            public final Object mo1125a(AbstractC7966g abstractC7966g) {
                Boolean bool;
                u04 u04Var = this.f26257a;
                int i2 = this.f26258b;
                int i3 = mr2.f26841b;
                if (abstractC7966g.mo5810q()) {
                    ht2 m14041a = ((jt2) abstractC7966g.mo5814m()).m14041a(u04Var.m15512n().mo10723K());
                    m14041a.m14551c(i2);
                    m14041a.m14553a();
                    bool = Boolean.TRUE;
                } else {
                    bool = Boolean.FALSE;
                }
                return bool;
            }
        });
    }

    /* renamed from: b */
    public final AbstractC7966g<Boolean> m13101b(int i, long j) {
        return m13095h(i, j, null, null, null, null);
    }

    /* renamed from: c */
    public final AbstractC7966g<Boolean> m13100c(int i, long j, Exception exc) {
        return m13095h(i, j, exc, null, null, null);
    }

    /* renamed from: d */
    public final AbstractC7966g<Boolean> m13099d(int i, long j, String str, Map<String, String> map) {
        return m13095h(i, j, null, str, null, null);
    }

    /* renamed from: e */
    public final AbstractC7966g<Boolean> m13098e(int i, String str) {
        return m13095h(i, 0L, null, null, null, str);
    }

    /* renamed from: f */
    public final AbstractC7966g<Boolean> m13097f(int i, long j, String str) {
        return m13095h(i, j, null, null, null, str);
    }
}
