package com.criteo.publisher.logging;

import android.util.Log;
import com.criteo.publisher.p247g.C8335a;
import java.util.List;
/* renamed from: com.criteo.publisher.logging.g */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/logging/g.class */
public final class C8402g {

    /* renamed from: a */
    private static final String f30126a = C8401f.m25745a("Logger");

    /* renamed from: b */
    private static final ThreadLocal<Integer> f30127b = new C8403a();

    /* renamed from: c */
    private final String f30128c;

    /* renamed from: d */
    private final List<C8335a<AbstractC8399d>> f30129d;

    /* renamed from: com.criteo.publisher.logging.g$a */
    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/logging/g$a.class */
    static final class C8403a extends ThreadLocal<Integer> {
        C8403a() {
        }

        @Override // java.lang.ThreadLocal
        protected final /* synthetic */ Integer initialValue() {
            return 0;
        }
    }

    public C8402g(Class<?> cls, List<C8335a<AbstractC8399d>> list) {
        this(cls.getSimpleName(), list);
    }

    C8402g(String str, List<C8335a<AbstractC8399d>> list) {
        this.f30128c = str;
        this.f30129d = list;
    }

    /* renamed from: a */
    public final void m25744a(C8400e c8400e) {
        int intValue = f30127b.get().intValue();
        if (intValue > 1) {
            return;
        }
        for (C8335a<AbstractC8399d> c8335a : this.f30129d) {
            f30127b.set(Integer.valueOf(intValue + 1));
            try {
                try {
                    c8335a.m25829a().mo25725a(this.f30128c, c8400e);
                } catch (Exception e) {
                    String str = f30126a;
                    Log.w(str, "Impossible to log with handler: " + c8335a, e);
                    if (intValue == 0) {
                    }
                }
                if (intValue == 0) {
                    f30127b.remove();
                } else {
                    f30127b.set(Integer.valueOf(intValue));
                }
            } catch (Throwable th) {
                if (intValue == 0) {
                    f30127b.remove();
                } else {
                    f30127b.set(Integer.valueOf(intValue));
                }
                throw th;
            }
        }
    }

    /* renamed from: a */
    public final void m25743a(String str, Throwable th) {
        m25744a(new C8400e(3, str, th, null));
    }

    /* renamed from: a */
    public final void m25742a(String str, Object... objArr) {
        m25744a(new C8400e(3, String.format(str, objArr), null, null));
    }
}
