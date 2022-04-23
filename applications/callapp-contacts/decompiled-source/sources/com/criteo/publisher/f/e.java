package com.criteo.publisher.f;

import com.criteo.publisher.f.y;
import com.google.gson.annotations.b;
import java.util.List;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/f/e.class */
abstract class e extends y.a {

    /* renamed from: a  reason: collision with root package name */
    private final List<y.b> f17263a;

    /* renamed from: b  reason: collision with root package name */
    private final Long f17264b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f17265c;

    /* renamed from: d  reason: collision with root package name */
    private final long f17266d;
    private final Long e;
    private final String f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(List<y.b> list, Long l, boolean z, long j, Long l2, String str) {
        Objects.requireNonNull(list, "Null slots");
        this.f17263a = list;
        this.f17264b = l;
        this.f17265c = z;
        this.f17266d = j;
        this.e = l2;
        this.f = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.criteo.publisher.f.y.a
    public final List<y.b> a() {
        return this.f17263a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.criteo.publisher.f.y.a
    public final Long b() {
        return this.f17264b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.criteo.publisher.f.y.a
    @b(a = "isTimeout")
    public final boolean c() {
        return this.f17265c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.criteo.publisher.f.y.a
    public final long d() {
        return this.f17266d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.criteo.publisher.f.y.a
    public final Long e() {
        return this.e;
    }

    public boolean equals(Object obj) {
        Long l;
        Long l2;
        String str;
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof y.a)) {
            return false;
        }
        y.a aVar = (y.a) obj;
        if (!this.f17263a.equals(aVar.a()) || ((l = this.f17264b) != null ? !l.equals(aVar.b()) : aVar.b() != null) || this.f17265c != aVar.c() || this.f17266d != aVar.d() || ((l2 = this.e) != null ? !l2.equals(aVar.e()) : aVar.e() != null) || ((str = this.f) != null ? !str.equals(aVar.f()) : aVar.f() != null)) {
            z = false;
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.criteo.publisher.f.y.a
    public final String f() {
        return this.f;
    }

    public int hashCode() {
        int hashCode = this.f17263a.hashCode();
        Long l = this.f17264b;
        int i = 0;
        int hashCode2 = l == null ? 0 : l.hashCode();
        int i2 = this.f17265c ? 1231 : 1237;
        long j = this.f17266d;
        int i3 = (int) (j ^ (j >>> 32));
        Long l2 = this.e;
        int hashCode3 = l2 == null ? 0 : l2.hashCode();
        String str = this.f;
        if (str != null) {
            i = str.hashCode();
        }
        return ((((((((((hashCode ^ 1000003) * 1000003) ^ hashCode2) * 1000003) ^ i2) * 1000003) ^ i3) * 1000003) ^ hashCode3) * 1000003) ^ i;
    }

    public String toString() {
        return "MetricRequestFeedback{slots=" + this.f17263a + ", elapsed=" + this.f17264b + ", timeout=" + this.f17265c + ", cdbCallStartElapsed=" + this.f17266d + ", cdbCallEndElapsed=" + this.e + ", requestGroupId=" + this.f + "}";
    }
}
