package com.google.android.play.core.splitinstall;

import android.app.PendingIntent;
import android.content.Intent;
import java.util.List;
/* renamed from: com.google.android.play.core.splitinstall.c */
/* loaded from: classes2-dex2jar.jar:com/google/android/play/core/splitinstall/c.class */
public final class C8556c extends AbstractC8554a {

    /* renamed from: a */
    private final int f38138a;

    /* renamed from: b */
    private final int f38139b;

    /* renamed from: c */
    private final int f38140c;

    /* renamed from: d */
    private final long f38141d;

    /* renamed from: e */
    private final long f38142e;

    /* renamed from: f */
    private final List<String> f38143f;

    /* renamed from: g */
    private final List<String> f38144g;

    /* renamed from: h */
    private final PendingIntent f38145h;

    /* renamed from: i */
    private final List<Intent> f38146i;

    public C8556c(int i, int i2, int i3, long j, long j2, List<String> list, List<String> list2, PendingIntent pendingIntent, List<Intent> list3) {
        this.f38138a = i;
        this.f38139b = i2;
        this.f38140c = i3;
        this.f38141d = j;
        this.f38142e = j2;
        this.f38143f = list;
        this.f38144g = list2;
        this.f38145h = pendingIntent;
        this.f38146i = list3;
    }

    @Override // com.google.android.play.core.splitinstall.AbstractC8554a
    /* renamed from: a */
    public final List<String> mo3351a() {
        return this.f38143f;
    }

    @Override // com.google.android.play.core.splitinstall.AbstractC8554a
    /* renamed from: b */
    public final List<String> mo3350b() {
        return this.f38144g;
    }

    @Override // com.google.android.play.core.splitinstall.AbstractC8554a
    /* renamed from: c */
    public final long mo3349c() {
        return this.f38141d;
    }

    @Override // com.google.android.play.core.splitinstall.AbstractC8554a
    /* renamed from: d */
    public final List<Intent> mo3348d() {
        return this.f38146i;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC8554a)) {
            return false;
        }
        AbstractC8554a abstractC8554a = (AbstractC8554a) obj;
        if (this.f38138a != abstractC8554a.mo3345h() || this.f38139b != abstractC8554a.mo3344i() || this.f38140c != abstractC8554a.mo3347f() || this.f38141d != abstractC8554a.mo3349c() || this.f38142e != abstractC8554a.mo3343j()) {
            return false;
        }
        List<String> list = this.f38143f;
        if (list == null) {
            if (abstractC8554a.mo3351a() != null) {
                return false;
            }
        } else if (!list.equals(abstractC8554a.mo3351a())) {
            return false;
        }
        List<String> list2 = this.f38144g;
        if (list2 == null) {
            if (abstractC8554a.mo3350b() != null) {
                return false;
            }
        } else if (!list2.equals(abstractC8554a.mo3350b())) {
            return false;
        }
        PendingIntent pendingIntent = this.f38145h;
        if (pendingIntent == null) {
            if (abstractC8554a.mo3346g() != null) {
                return false;
            }
        } else if (!pendingIntent.equals(abstractC8554a.mo3346g())) {
            return false;
        }
        List<Intent> list3 = this.f38146i;
        List<Intent> mo3348d = abstractC8554a.mo3348d();
        return list3 == null ? mo3348d == null : list3.equals(mo3348d);
    }

    @Override // com.google.android.play.core.splitinstall.AbstractC8554a
    /* renamed from: f */
    public final int mo3347f() {
        return this.f38140c;
    }

    @Override // com.google.android.play.core.splitinstall.AbstractC8554a
    @Deprecated
    /* renamed from: g */
    public final PendingIntent mo3346g() {
        return this.f38145h;
    }

    @Override // com.google.android.play.core.splitinstall.AbstractC8554a
    /* renamed from: h */
    public final int mo3345h() {
        return this.f38138a;
    }

    public final int hashCode() {
        int i = this.f38138a;
        int i2 = this.f38139b;
        int i3 = this.f38140c;
        long j = this.f38141d;
        long j2 = this.f38142e;
        int i4 = (int) ((j >>> 32) ^ j);
        int i5 = (int) ((j2 >>> 32) ^ j2);
        List<String> list = this.f38143f;
        int i6 = 0;
        int hashCode = list == null ? 0 : list.hashCode();
        List<String> list2 = this.f38144g;
        int hashCode2 = list2 == null ? 0 : list2.hashCode();
        PendingIntent pendingIntent = this.f38145h;
        int hashCode3 = pendingIntent == null ? 0 : pendingIntent.hashCode();
        List<Intent> list3 = this.f38146i;
        if (list3 != null) {
            i6 = list3.hashCode();
        }
        return ((((((((((((((((i ^ 1000003) * 1000003) ^ i2) * 1000003) ^ i3) * 1000003) ^ i4) * 1000003) ^ i5) * 1000003) ^ hashCode) * 1000003) ^ hashCode2) * 1000003) ^ hashCode3) * 1000003) ^ i6;
    }

    @Override // com.google.android.play.core.splitinstall.AbstractC8554a
    /* renamed from: i */
    public final int mo3344i() {
        return this.f38139b;
    }

    @Override // com.google.android.play.core.splitinstall.AbstractC8554a
    /* renamed from: j */
    public final long mo3343j() {
        return this.f38142e;
    }

    public final String toString() {
        int i = this.f38138a;
        int i2 = this.f38139b;
        int i3 = this.f38140c;
        long j = this.f38141d;
        long j2 = this.f38142e;
        String valueOf = String.valueOf(this.f38143f);
        String valueOf2 = String.valueOf(this.f38144g);
        String valueOf3 = String.valueOf(this.f38145h);
        String valueOf4 = String.valueOf(this.f38146i);
        StringBuilder sb = new StringBuilder(valueOf.length() + 251 + valueOf2.length() + valueOf3.length() + valueOf4.length());
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
