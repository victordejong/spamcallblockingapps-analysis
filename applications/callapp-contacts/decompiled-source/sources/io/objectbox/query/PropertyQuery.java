package io.objectbox.query;

import io.objectbox.g;
import java.util.concurrent.Callable;
/* loaded from: classes5-dex2jar.jar:io/objectbox/query/PropertyQuery.class */
public class PropertyQuery {

    /* renamed from: a  reason: collision with root package name */
    final Query<?> f36239a;

    /* renamed from: b  reason: collision with root package name */
    final long f36240b;

    /* renamed from: c  reason: collision with root package name */
    final g<?> f36241c;

    /* renamed from: d  reason: collision with root package name */
    final int f36242d;
    boolean e = true;

    public PropertyQuery(Query<?> query, g<?> gVar) {
        this.f36239a = query;
        this.f36240b = query.f36245c;
        this.f36241c = gVar;
        this.f36242d = gVar.f36237c;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Long b() throws Exception {
        return Long.valueOf(nativeSum(this.f36240b, this.f36239a.f36243a.a().internalHandle(), this.f36242d));
    }

    public final long a() {
        return ((Long) this.f36239a.a(new Callable() { // from class: io.objectbox.query._$$Lambda$PropertyQuery$9Zcz1_tQuPNty0M5QL_Jp0Afre0
            @Override // java.util.concurrent.Callable
            public final Object call() {
                Long b2;
                b2 = PropertyQuery.this.b();
                return b2;
            }
        })).longValue();
    }

    native long nativeSum(long j, long j2, int i);
}
