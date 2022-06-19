package com.google.android.play.core.splitinstall;

import android.app.PendingIntent;
import android.content.Intent;
import java.util.List;
/* renamed from: com.google.android.play.core.splitinstall.e */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/splitinstall/e.class */
public final class C15154e extends AbstractC15152c {

    /* renamed from: a */
    private final int f54954a;

    /* renamed from: b */
    private final int f54955b;

    /* renamed from: c */
    private final int f54956c;

    /* renamed from: d */
    private final long f54957d;

    /* renamed from: e */
    private final long f54958e;

    /* renamed from: f */
    private final List<String> f54959f;

    /* renamed from: g */
    private final List<String> f54960g;

    /* renamed from: h */
    private final PendingIntent f54961h;

    /* renamed from: i */
    private final List<Intent> f54962i;

    public C15154e(int i, int i2, int i3, long j, long j2, List<String> list, List<String> list2, PendingIntent pendingIntent, List<Intent> list3) {
        this.f54954a = i;
        this.f54955b = i2;
        this.f54956c = i3;
        this.f54957d = j;
        this.f54958e = j2;
        this.f54959f = list;
        this.f54960g = list2;
        this.f54961h = pendingIntent;
        this.f54962i = list3;
    }

    @Override // com.google.android.play.core.splitinstall.AbstractC15152c
    /* renamed from: a */
    public final int mo9381a() {
        return this.f54954a;
    }

    @Override // com.google.android.play.core.splitinstall.AbstractC15152c
    /* renamed from: b */
    public final int mo9380b() {
        return this.f54955b;
    }

    @Override // com.google.android.play.core.splitinstall.AbstractC15152c
    /* renamed from: c */
    public final int mo9379c() {
        return this.f54956c;
    }

    @Override // com.google.android.play.core.splitinstall.AbstractC15152c
    /* renamed from: d */
    public final long mo9378d() {
        return this.f54957d;
    }

    @Override // com.google.android.play.core.splitinstall.AbstractC15152c
    /* renamed from: e */
    public final long mo9377e() {
        return this.f54958e;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC15152c)) {
            return false;
        }
        AbstractC15152c abstractC15152c = (AbstractC15152c) obj;
        if (this.f54954a != abstractC15152c.mo9381a() || this.f54955b != abstractC15152c.mo9380b() || this.f54956c != abstractC15152c.mo9379c() || this.f54957d != abstractC15152c.mo9378d() || this.f54958e != abstractC15152c.mo9377e()) {
            return false;
        }
        List<String> list = this.f54959f;
        if (list == null) {
            if (abstractC15152c.mo9375i() != null) {
                return false;
            }
        } else if (!list.equals(abstractC15152c.mo9375i())) {
            return false;
        }
        List<String> list2 = this.f54960g;
        if (list2 == null) {
            if (abstractC15152c.mo9374j() != null) {
                return false;
            }
        } else if (!list2.equals(abstractC15152c.mo9374j())) {
            return false;
        }
        PendingIntent pendingIntent = this.f54961h;
        if (pendingIntent == null) {
            if (abstractC15152c.mo9376h() != null) {
                return false;
            }
        } else if (!pendingIntent.equals(abstractC15152c.mo9376h())) {
            return false;
        }
        List<Intent> list3 = this.f54962i;
        List<Intent> mo9373k = abstractC15152c.mo9373k();
        return list3 == null ? mo9373k == null : list3.equals(mo9373k);
    }

    @Override // com.google.android.play.core.splitinstall.AbstractC15152c
    @Deprecated
    /* renamed from: h */
    public final PendingIntent mo9376h() {
        return this.f54961h;
    }

    public final int hashCode() {
        int i = this.f54954a;
        int i2 = this.f54955b;
        int i3 = this.f54956c;
        long j = this.f54957d;
        long j2 = this.f54958e;
        int i4 = (int) ((j >>> 32) ^ j);
        int i5 = (int) ((j2 >>> 32) ^ j2);
        List<String> list = this.f54959f;
        int i6 = 0;
        int hashCode = list == null ? 0 : list.hashCode();
        List<String> list2 = this.f54960g;
        int hashCode2 = list2 == null ? 0 : list2.hashCode();
        PendingIntent pendingIntent = this.f54961h;
        int hashCode3 = pendingIntent == null ? 0 : pendingIntent.hashCode();
        List<Intent> list3 = this.f54962i;
        if (list3 != null) {
            i6 = list3.hashCode();
        }
        return ((((((((((((((((i ^ 1000003) * 1000003) ^ i2) * 1000003) ^ i3) * 1000003) ^ i4) * 1000003) ^ i5) * 1000003) ^ hashCode) * 1000003) ^ hashCode2) * 1000003) ^ hashCode3) * 1000003) ^ i6;
    }

    @Override // com.google.android.play.core.splitinstall.AbstractC15152c
    /* renamed from: i */
    public final List<String> mo9375i() {
        return this.f54959f;
    }

    @Override // com.google.android.play.core.splitinstall.AbstractC15152c
    /* renamed from: j */
    public final List<String> mo9374j() {
        return this.f54960g;
    }

    @Override // com.google.android.play.core.splitinstall.AbstractC15152c
    /* renamed from: k */
    public final List<Intent> mo9373k() {
        return this.f54962i;
    }

    public final String toString() {
        int i = this.f54954a;
        int i2 = this.f54955b;
        int i3 = this.f54956c;
        long j = this.f54957d;
        long j2 = this.f54958e;
        String valueOf = String.valueOf(this.f54959f);
        String valueOf2 = String.valueOf(this.f54960g);
        String valueOf3 = String.valueOf(this.f54961h);
        String valueOf4 = String.valueOf(this.f54962i);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 251 + String.valueOf(valueOf2).length() + String.valueOf(valueOf3).length() + String.valueOf(valueOf4).length());
        sb.append("SplitInstallSessionState{sessionId=");
        sb.append(i);
        sb.append(", status=");
        sb.append(i2);
        sb.append(", errorCode=");
        sb.append(i3);
        sb.append(", bytesDownloaded=");
        sb.append(j);
        sb.append(", totalBytesToDownload=");
        sb.append(j2);
        sb.append(", moduleNamesNullable=");
        sb.append(valueOf);
        sb.append(", languagesNullable=");
        sb.append(valueOf2);
        sb.append(", resolutionIntent=");
        sb.append(valueOf3);
        sb.append(", splitFileIntents=");
        sb.append(valueOf4);
        sb.append("}");
        return sb.toString();
    }
}
