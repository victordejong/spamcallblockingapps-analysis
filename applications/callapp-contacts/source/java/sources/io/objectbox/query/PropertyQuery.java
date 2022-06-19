package io.objectbox.query;

import io.objectbox.C17978g;
import java.util.concurrent.Callable;
/* loaded from: classes5-dex2jar.jar:io/objectbox/query/PropertyQuery.class */
public class PropertyQuery {

    /* renamed from: a */
    final Query<?> f62818a;

    /* renamed from: b */
    final long f62819b;

    /* renamed from: c */
    final C17978g<?> f62820c;

    /* renamed from: d */
    final int f62821d;

    /* renamed from: e */
    boolean f62822e = true;

    public PropertyQuery(Query<?> query, C17978g<?> c17978g) {
        this.f62818a = query;
        this.f62819b = query.f62825c;
        this.f62820c = c17978g;
        this.f62821d = c17978g.f62808c;
    }

    /* renamed from: b */
    public /* synthetic */ Long m4642b() throws Exception {
        return Long.valueOf(nativeSum(this.f62819b, this.f62818a.f62823a.m4718a().internalHandle(), this.f62821d));
    }

    /* renamed from: a */
    public final long m4643a() {
        return ((Long) this.f62818a.m4632a(new Callable() { // from class: io.objectbox.query._$$Lambda$PropertyQuery$9Zcz1_tQuPNty0M5QL_Jp0Afre0
            @Override // java.util.concurrent.Callable
            public final Object call() {
                Long m4642b;
                m4642b = PropertyQuery.this.m4642b();
                return m4642b;
            }
        })).longValue();
    }

    native long nativeSum(long j, long j2, int i);
}
