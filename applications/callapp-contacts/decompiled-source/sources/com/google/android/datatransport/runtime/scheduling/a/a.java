package com.google.android.datatransport.runtime.scheduling.a;

import com.callapp.contacts.model.Constants;
import com.google.android.datatransport.runtime.scheduling.a.d;
/* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/a/a.class */
final class a extends d {

    /* renamed from: b  reason: collision with root package name */
    private final long f20470b;

    /* renamed from: c  reason: collision with root package name */
    private final int f20471c;

    /* renamed from: d  reason: collision with root package name */
    private final int f20472d;
    private final long e;
    private final int f;

    /* renamed from: com.google.android.datatransport.runtime.scheduling.a.a$a  reason: collision with other inner class name */
    /* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/a/a$a.class */
    static final class C0417a extends d.a {

        /* renamed from: a  reason: collision with root package name */
        private Long f20473a;

        /* renamed from: b  reason: collision with root package name */
        private Integer f20474b;

        /* renamed from: c  reason: collision with root package name */
        private Integer f20475c;

        /* renamed from: d  reason: collision with root package name */
        private Long f20476d;
        private Integer e;

        @Override // com.google.android.datatransport.runtime.scheduling.a.d.a
        final d.a a() {
            this.f20473a = 10485760L;
            return this;
        }

        @Override // com.google.android.datatransport.runtime.scheduling.a.d.a
        final d.a b() {
            this.f20474b = 200;
            return this;
        }

        @Override // com.google.android.datatransport.runtime.scheduling.a.d.a
        final d.a c() {
            this.f20475c = 10000;
            return this;
        }

        @Override // com.google.android.datatransport.runtime.scheduling.a.d.a
        final d.a d() {
            this.f20476d = Long.valueOf((long) Constants.WEEK_IN_MILLIS);
            return this;
        }

        @Override // com.google.android.datatransport.runtime.scheduling.a.d.a
        final d.a e() {
            this.e = 81920;
            return this;
        }

        @Override // com.google.android.datatransport.runtime.scheduling.a.d.a
        final d f() {
            String str = "";
            if (this.f20473a == null) {
                str = " maxStorageSizeInBytes";
            }
            String str2 = str;
            if (this.f20474b == null) {
                str2 = str + " loadBatchSize";
            }
            String str3 = str2;
            if (this.f20475c == null) {
                str3 = str2 + " criticalSectionEnterTimeoutMs";
            }
            String str4 = str3;
            if (this.f20476d == null) {
                str4 = str3 + " eventCleanUpAge";
            }
            String str5 = str4;
            if (this.e == null) {
                str5 = str4 + " maxBlobByteSizePerRow";
            }
            if (str5.isEmpty()) {
                return new a(this.f20473a.longValue(), this.f20474b.intValue(), this.f20475c.intValue(), this.f20476d.longValue(), this.e.intValue());
            }
            throw new IllegalStateException("Missing required properties:".concat(String.valueOf(str5)));
        }
    }

    private a(long j, int i, int i2, long j2, int i3) {
        this.f20470b = j;
        this.f20471c = i;
        this.f20472d = i2;
        this.e = j2;
        this.f = i3;
    }

    @Override // com.google.android.datatransport.runtime.scheduling.a.d
    final long a() {
        return this.f20470b;
    }

    @Override // com.google.android.datatransport.runtime.scheduling.a.d
    final int b() {
        return this.f20471c;
    }

    @Override // com.google.android.datatransport.runtime.scheduling.a.d
    final int c() {
        return this.f20472d;
    }

    @Override // com.google.android.datatransport.runtime.scheduling.a.d
    final long d() {
        return this.e;
    }

    @Override // com.google.android.datatransport.runtime.scheduling.a.d
    final int e() {
        return this.f;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        return this.f20470b == dVar.a() && this.f20471c == dVar.b() && this.f20472d == dVar.c() && this.e == dVar.d() && this.f == dVar.e();
    }

    public final int hashCode() {
        long j = this.f20470b;
        int i = (int) (j ^ (j >>> 32));
        int i2 = this.f20471c;
        int i3 = this.f20472d;
        long j2 = this.e;
        return this.f ^ ((((((((i ^ 1000003) * 1000003) ^ i2) * 1000003) ^ i3) * 1000003) ^ ((int) ((j2 >>> 32) ^ j2))) * 1000003);
    }

    public final String toString() {
        return "EventStoreConfig{maxStorageSizeInBytes=" + this.f20470b + ", loadBatchSize=" + this.f20471c + ", criticalSectionEnterTimeoutMs=" + this.f20472d + ", eventCleanUpAge=" + this.e + ", maxBlobByteSizePerRow=" + this.f + "}";
    }
}
