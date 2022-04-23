package com.google.android.play.core.appupdate;

import android.app.PendingIntent;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/appupdate/u.class */
public final class u extends a {

    /* renamed from: a  reason: collision with root package name */
    private final String f31062a;

    /* renamed from: b  reason: collision with root package name */
    private final int f31063b;

    /* renamed from: c  reason: collision with root package name */
    private final int f31064c;

    /* renamed from: d  reason: collision with root package name */
    private final int f31065d;
    private final Integer e;
    private final int f;
    private final long g;
    private final long h;
    private final long i;
    private final long j;
    private final PendingIntent k;
    private final PendingIntent l;
    private final PendingIntent m;
    private final PendingIntent n;

    /* JADX INFO: Access modifiers changed from: package-private */
    public u(String str, int i, int i2, int i3, Integer num, int i4, long j, long j2, long j3, long j4, PendingIntent pendingIntent, PendingIntent pendingIntent2, PendingIntent pendingIntent3, PendingIntent pendingIntent4) {
        Objects.requireNonNull(str, "Null packageName");
        this.f31062a = str;
        this.f31063b = i;
        this.f31064c = i2;
        this.f31065d = i3;
        this.e = num;
        this.f = i4;
        this.g = j;
        this.h = j2;
        this.i = j3;
        this.j = j4;
        this.k = pendingIntent;
        this.l = pendingIntent2;
        this.m = pendingIntent3;
        this.n = pendingIntent4;
    }

    @Override // com.google.android.play.core.appupdate.a
    public final String a() {
        return this.f31062a;
    }

    @Override // com.google.android.play.core.appupdate.a
    public final int b() {
        return this.f31063b;
    }

    @Override // com.google.android.play.core.appupdate.a
    public final int c() {
        return this.f31064c;
    }

    @Override // com.google.android.play.core.appupdate.a
    public final int d() {
        return this.f31065d;
    }

    @Override // com.google.android.play.core.appupdate.a
    public final Integer e() {
        return this.e;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        if (!this.f31062a.equals(aVar.a()) || this.f31063b != aVar.b() || this.f31064c != aVar.c() || this.f31065d != aVar.d()) {
            return false;
        }
        Integer num = this.e;
        if (num == null) {
            if (aVar.e() != null) {
                return false;
            }
        } else if (!num.equals(aVar.e())) {
            return false;
        }
        if (this.f != aVar.f() || this.g != aVar.g() || this.h != aVar.h() || this.i != aVar.i() || this.j != aVar.j()) {
            return false;
        }
        PendingIntent pendingIntent = this.k;
        if (pendingIntent == null) {
            if (aVar.k() != null) {
                return false;
            }
        } else if (!pendingIntent.equals(aVar.k())) {
            return false;
        }
        PendingIntent pendingIntent2 = this.l;
        if (pendingIntent2 == null) {
            if (aVar.l() != null) {
                return false;
            }
        } else if (!pendingIntent2.equals(aVar.l())) {
            return false;
        }
        PendingIntent pendingIntent3 = this.m;
        if (pendingIntent3 == null) {
            if (aVar.m() != null) {
                return false;
            }
        } else if (!pendingIntent3.equals(aVar.m())) {
            return false;
        }
        PendingIntent pendingIntent4 = this.n;
        PendingIntent n = aVar.n();
        return pendingIntent4 == null ? n == null : pendingIntent4.equals(n);
    }

    @Override // com.google.android.play.core.appupdate.a
    public final int f() {
        return this.f;
    }

    @Override // com.google.android.play.core.appupdate.a
    public final long g() {
        return this.g;
    }

    @Override // com.google.android.play.core.appupdate.a
    public final long h() {
        return this.h;
    }

    public final int hashCode() {
        int hashCode = this.f31062a.hashCode();
        int i = this.f31063b;
        int i2 = this.f31064c;
        int i3 = this.f31065d;
        Integer num = this.e;
        int i4 = 0;
        int hashCode2 = num == null ? 0 : num.hashCode();
        int i5 = this.f;
        long j = this.g;
        long j2 = this.h;
        long j3 = this.i;
        long j4 = this.j;
        int i6 = (int) ((j >>> 32) ^ j);
        int i7 = (int) ((j2 >>> 32) ^ j2);
        int i8 = (int) ((j3 >>> 32) ^ j3);
        int i9 = (int) ((j4 >>> 32) ^ j4);
        PendingIntent pendingIntent = this.k;
        int hashCode3 = pendingIntent == null ? 0 : pendingIntent.hashCode();
        PendingIntent pendingIntent2 = this.l;
        int hashCode4 = pendingIntent2 == null ? 0 : pendingIntent2.hashCode();
        PendingIntent pendingIntent3 = this.m;
        int hashCode5 = pendingIntent3 == null ? 0 : pendingIntent3.hashCode();
        PendingIntent pendingIntent4 = this.n;
        if (pendingIntent4 != null) {
            i4 = pendingIntent4.hashCode();
        }
        return ((((((((((((((((((((((((((hashCode ^ 1000003) * 1000003) ^ i) * 1000003) ^ i2) * 1000003) ^ i3) * 1000003) ^ hashCode2) * 1000003) ^ i5) * 1000003) ^ i6) * 1000003) ^ i7) * 1000003) ^ i8) * 1000003) ^ i9) * 1000003) ^ hashCode3) * 1000003) ^ hashCode4) * 1000003) ^ hashCode5) * 1000003) ^ i4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.play.core.appupdate.a
    public final long i() {
        return this.i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.play.core.appupdate.a
    public final long j() {
        return this.j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.play.core.appupdate.a
    public final PendingIntent k() {
        return this.k;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.play.core.appupdate.a
    public final PendingIntent l() {
        return this.l;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.play.core.appupdate.a
    public final PendingIntent m() {
        return this.m;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.play.core.appupdate.a
    public final PendingIntent n() {
        return this.n;
    }

    public final String toString() {
        String str = this.f31062a;
        int i = this.f31063b;
        int i2 = this.f31064c;
        int i3 = this.f31065d;
        String valueOf = String.valueOf(this.e);
        int i4 = this.f;
        long j = this.g;
        long j2 = this.h;
        long j3 = this.i;
        long j4 = this.j;
        String valueOf2 = String.valueOf(this.k);
        String valueOf3 = String.valueOf(this.l);
        String valueOf4 = String.valueOf(this.m);
        String valueOf5 = String.valueOf(this.n);
        StringBuilder sb = new StringBuilder(str.length() + 463 + String.valueOf(valueOf).length() + String.valueOf(valueOf2).length() + String.valueOf(valueOf3).length() + String.valueOf(valueOf4).length() + String.valueOf(valueOf5).length());
        sb.append("AppUpdateInfo{packageName=");
        sb.append(str);
        sb.append(", availableVersionCode=");
        sb.append(i);
        sb.append(", updateAvailability=");
        sb.append(i2);
        sb.append(", installStatus=");
        sb.append(i3);
        sb.append(", clientVersionStalenessDays=");
        sb.append(valueOf);
        sb.append(", updatePriority=");
        sb.append(i4);
        sb.append(", bytesDownloaded=");
        sb.append(j);
        sb.append(", totalBytesToDownload=");
        sb.append(j2);
        sb.append(", additionalSpaceRequired=");
        sb.append(j3);
        sb.append(", assetPackStorageSize=");
        sb.append(j4);
        sb.append(", immediateUpdateIntent=");
        sb.append(valueOf2);
        sb.append(", flexibleUpdateIntent=");
        sb.append(valueOf3);
        sb.append(", immediateDestructiveUpdateIntent=");
        sb.append(valueOf4);
        sb.append(", flexibleDestructiveUpdateIntent=");
        sb.append(valueOf5);
        sb.append("}");
        return sb.toString();
    }
}
