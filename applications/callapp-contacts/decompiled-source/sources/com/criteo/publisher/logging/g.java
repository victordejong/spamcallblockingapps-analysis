package com.criteo.publisher.logging;

import android.util.Log;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/logging/g.class */
public final class g {

    /* renamed from: a  reason: collision with root package name */
    private static final String f17451a = f.a("Logger");

    /* renamed from: b  reason: collision with root package name */
    private static final ThreadLocal<Integer> f17452b = new a();

    /* renamed from: c  reason: collision with root package name */
    private final String f17453c;

    /* renamed from: d  reason: collision with root package name */
    private final List<com.criteo.publisher.g.a<d>> f17454d;

    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/logging/g$a.class */
    static final class a extends ThreadLocal<Integer> {
        a() {
        }

        @Override // java.lang.ThreadLocal
        protected final /* synthetic */ Integer initialValue() {
            return 0;
        }
    }

    public g(Class<?> cls, List<com.criteo.publisher.g.a<d>> list) {
        this(cls.getSimpleName(), list);
    }

    g(String str, List<com.criteo.publisher.g.a<d>> list) {
        this.f17453c = str;
        this.f17454d = list;
    }

    public final void a(e eVar) {
        int intValue = f17452b.get().intValue();
        if (intValue <= 1) {
            for (com.criteo.publisher.g.a<d> aVar : this.f17454d) {
                f17452b.set(Integer.valueOf(intValue + 1));
                try {
                    try {
                        aVar.a().a(this.f17453c, eVar);
                    } catch (Exception e) {
                        String str = f17451a;
                        Log.w(str, "Impossible to log with handler: " + aVar, e);
                        if (intValue == 0) {
                        }
                    }
                    if (intValue == 0) {
                        f17452b.remove();
                    } else {
                        f17452b.set(Integer.valueOf(intValue));
                    }
                } catch (Throwable th) {
                    if (intValue == 0) {
                        f17452b.remove();
                    } else {
                        f17452b.set(Integer.valueOf(intValue));
                    }
                    throw th;
                }
            }
        }
    }

    public final void a(String str, Throwable th) {
        a(new e(3, str, th, null));
    }

    public final void a(String str, Object... objArr) {
        a(new e(3, String.format(str, objArr), null, null));
    }
}
