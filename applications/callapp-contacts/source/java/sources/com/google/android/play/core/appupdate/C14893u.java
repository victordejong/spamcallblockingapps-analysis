package com.google.android.play.core.appupdate;

import android.app.PendingIntent;
import java.util.Objects;
/* renamed from: com.google.android.play.core.appupdate.u */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/appupdate/u.class */
public final class C14893u extends AbstractC14872a {

    /* renamed from: a */
    private final String f54338a;

    /* renamed from: b */
    private final int f54339b;

    /* renamed from: c */
    private final int f54340c;

    /* renamed from: d */
    private final int f54341d;

    /* renamed from: e */
    private final Integer f54342e;

    /* renamed from: f */
    private final int f54343f;

    /* renamed from: g */
    private final long f54344g;

    /* renamed from: h */
    private final long f54345h;

    /* renamed from: i */
    private final long f54346i;

    /* renamed from: j */
    private final long f54347j;

    /* renamed from: k */
    private final PendingIntent f54348k;

    /* renamed from: l */
    private final PendingIntent f54349l;

    /* renamed from: m */
    private final PendingIntent f54350m;

    /* renamed from: n */
    private final PendingIntent f54351n;

    public C14893u(String str, int i, int i2, int i3, Integer num, int i4, long j, long j2, long j3, long j4, PendingIntent pendingIntent, PendingIntent pendingIntent2, PendingIntent pendingIntent3, PendingIntent pendingIntent4) {
        Objects.requireNonNull(str, "Null packageName");
        this.f54338a = str;
        this.f54339b = i;
        this.f54340c = i2;
        this.f54341d = i3;
        this.f54342e = num;
        this.f54343f = i4;
        this.f54344g = j;
        this.f54345h = j2;
        this.f54346i = j3;
        this.f54347j = j4;
        this.f54348k = pendingIntent;
        this.f54349l = pendingIntent2;
        this.f54350m = pendingIntent3;
        this.f54351n = pendingIntent4;
    }

    @Override // com.google.android.play.core.appupdate.AbstractC14872a
    /* renamed from: a */
    public final String mo9811a() {
        return this.f54338a;
    }

    @Override // com.google.android.play.core.appupdate.AbstractC14872a
    /* renamed from: b */
    public final int mo9810b() {
        return this.f54339b;
    }

    @Override // com.google.android.play.core.appupdate.AbstractC14872a
    /* renamed from: c */
    public final int mo9809c() {
        return this.f54340c;
    }

    @Override // com.google.android.play.core.appupdate.AbstractC14872a
    /* renamed from: d */
    public final int mo9808d() {
        return this.f54341d;
    }

    @Override // com.google.android.play.core.appupdate.AbstractC14872a
    /* renamed from: e */
    public final Integer mo9807e() {
        return this.f54342e;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC14872a)) {
            return false;
        }
        AbstractC14872a abstractC14872a = (AbstractC14872a) obj;
        if (!this.f54338a.equals(abstractC14872a.mo9811a()) || this.f54339b != abstractC14872a.mo9810b() || this.f54340c != abstractC14872a.mo9809c() || this.f54341d != abstractC14872a.mo9808d()) {
            return false;
        }
        Integer num = this.f54342e;
        if (num == null) {
            if (abstractC14872a.mo9807e() != null) {
                return false;
            }
        } else if (!num.equals(abstractC14872a.mo9807e())) {
            return false;
        }
        if (this.f54343f != abstractC14872a.mo9806f() || this.f54344g != abstractC14872a.mo9805g() || this.f54345h != abstractC14872a.mo9804h() || this.f54346i != abstractC14872a.mo9803i() || this.f54347j != abstractC14872a.mo9802j()) {
            return false;
        }
        PendingIntent pendingIntent = this.f54348k;
        if (pendingIntent == null) {
            if (abstractC14872a.mo9801k() != null) {
                return false;
            }
        } else if (!pendingIntent.equals(abstractC14872a.mo9801k())) {
            return false;
        }
        PendingIntent pendingIntent2 = this.f54349l;
        if (pendingIntent2 == null) {
            if (abstractC14872a.mo9800l() != null) {
                return false;
            }
        } else if (!pendingIntent2.equals(abstractC14872a.mo9800l())) {
            return false;
        }
        PendingIntent pendingIntent3 = this.f54350m;
        if (pendingIntent3 == null) {
            if (abstractC14872a.mo9799m() != null) {
                return false;
            }
        } else if (!pendingIntent3.equals(abstractC14872a.mo9799m())) {
            return false;
        }
        PendingIntent pendingIntent4 = this.f54351n;
        PendingIntent mo9798n = abstractC14872a.mo9798n();
        return pendingIntent4 == null ? mo9798n == null : pendingIntent4.equals(mo9798n);
    }

    @Override // com.google.android.play.core.appupdate.AbstractC14872a
    /* renamed from: f */
    public final int mo9806f() {
        return this.f54343f;
    }

    @Override // com.google.android.play.core.appupdate.AbstractC14872a
    /* renamed from: g */
    public final long mo9805g() {
        return this.f54344g;
    }

    @Override // com.google.android.play.core.appupdate.AbstractC14872a
    /* renamed from: h */
    public final long mo9804h() {
        return this.f54345h;
    }

    public final int hashCode() {
        int hashCode = this.f54338a.hashCode();
        int i = this.f54339b;
        int i2 = this.f54340c;
        int i3 = this.f54341d;
        Integer num = this.f54342e;
        int i4 = 0;
        int hashCode2 = num == null ? 0 : num.hashCode();
        int i5 = this.f54343f;
        long j = this.f54344g;
        long j2 = this.f54345h;
        long j3 = this.f54346i;
        long j4 = this.f54347j;
        int i6 = (int) ((j >>> 32) ^ j);
        int i7 = (int) ((j2 >>> 32) ^ j2);
        int i8 = (int) ((j3 >>> 32) ^ j3);
        int i9 = (int) ((j4 >>> 32) ^ j4);
        PendingIntent pendingIntent = this.f54348k;
        int hashCode3 = pendingIntent == null ? 0 : pendingIntent.hashCode();
        PendingIntent pendingIntent2 = this.f54349l;
        int hashCode4 = pendingIntent2 == null ? 0 : pendingIntent2.hashCode();
        PendingIntent pendingIntent3 = this.f54350m;
        int hashCode5 = pendingIntent3 == null ? 0 : pendingIntent3.hashCode();
        PendingIntent pendingIntent4 = this.f54351n;
        if (pendingIntent4 != null) {
            i4 = pendingIntent4.hashCode();
        }
        return ((((((((((((((((((((((((((hashCode ^ 1000003) * 1000003) ^ i) * 1000003) ^ i2) * 1000003) ^ i3) * 1000003) ^ hashCode2) * 1000003) ^ i5) * 1000003) ^ i6) * 1000003) ^ i7) * 1000003) ^ i8) * 1000003) ^ i9) * 1000003) ^ hashCode3) * 1000003) ^ hashCode4) * 1000003) ^ hashCode5) * 1000003) ^ i4;
    }

    @Override // com.google.android.play.core.appupdate.AbstractC14872a
    /* renamed from: i */
    public final long mo9803i() {
        return this.f54346i;
    }

    @Override // com.google.android.play.core.appupdate.AbstractC14872a
    /* renamed from: j */
    public final long mo9802j() {
        return this.f54347j;
    }

    @Override // com.google.android.play.core.appupdate.AbstractC14872a
    /* renamed from: k */
    public final PendingIntent mo9801k() {
        return this.f54348k;
    }

    @Override // com.google.android.play.core.appupdate.AbstractC14872a
    /* renamed from: l */
    public final PendingIntent mo9800l() {
        return this.f54349l;
    }

    @Override // com.google.android.play.core.appupdate.AbstractC14872a
    /* renamed from: m */
    public final PendingIntent mo9799m() {
        return this.f54350m;
    }

    @Override // com.google.android.play.core.appupdate.AbstractC14872a
    /* renamed from: n */
    public final PendingIntent mo9798n() {
        return this.f54351n;
    }

    public final String toString() {
        String str = this.f54338a;
        int i = this.f54339b;
        int i2 = this.f54340c;
        int i3 = this.f54341d;
        String valueOf = String.valueOf(this.f54342e);
        int i4 = this.f54343f;
        long j = this.f54344g;
        long j2 = this.f54345h;
        long j3 = this.f54346i;
        long j4 = this.f54347j;
        String valueOf2 = String.valueOf(this.f54348k);
        String valueOf3 = String.valueOf(this.f54349l);
        String valueOf4 = String.valueOf(this.f54350m);
        String valueOf5 = String.valueOf(this.f54351n);
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
