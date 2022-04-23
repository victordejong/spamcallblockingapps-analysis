package com.google.android.play.core.splitinstall;

import android.app.PendingIntent;
import android.content.Intent;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/splitinstall/e.class */
public final class e extends c {

    /* renamed from: a  reason: collision with root package name */
    private final int f31518a;

    /* renamed from: b  reason: collision with root package name */
    private final int f31519b;

    /* renamed from: c  reason: collision with root package name */
    private final int f31520c;

    /* renamed from: d  reason: collision with root package name */
    private final long f31521d;
    private final long e;
    private final List<String> f;
    private final List<String> g;
    private final PendingIntent h;
    private final List<Intent> i;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(int i, int i2, int i3, long j, long j2, List<String> list, List<String> list2, PendingIntent pendingIntent, List<Intent> list3) {
        this.f31518a = i;
        this.f31519b = i2;
        this.f31520c = i3;
        this.f31521d = j;
        this.e = j2;
        this.f = list;
        this.g = list2;
        this.h = pendingIntent;
        this.i = list3;
    }

    @Override // com.google.android.play.core.splitinstall.c
    public final int a() {
        return this.f31518a;
    }

    @Override // com.google.android.play.core.splitinstall.c
    public final int b() {
        return this.f31519b;
    }

    @Override // com.google.android.play.core.splitinstall.c
    public final int c() {
        return this.f31520c;
    }

    @Override // com.google.android.play.core.splitinstall.c
    public final long d() {
        return this.f31521d;
    }

    @Override // com.google.android.play.core.splitinstall.c
    public final long e() {
        return this.e;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        if (this.f31518a != cVar.a() || this.f31519b != cVar.b() || this.f31520c != cVar.c() || this.f31521d != cVar.d() || this.e != cVar.e()) {
            return false;
        }
        List<String> list = this.f;
        if (list == null) {
            if (cVar.i() != null) {
                return false;
            }
        } else if (!list.equals(cVar.i())) {
            return false;
        }
        List<String> list2 = this.g;
        if (list2 == null) {
            if (cVar.j() != null) {
                return false;
            }
        } else if (!list2.equals(cVar.j())) {
            return false;
        }
        PendingIntent pendingIntent = this.h;
        if (pendingIntent == null) {
            if (cVar.h() != null) {
                return false;
            }
        } else if (!pendingIntent.equals(cVar.h())) {
            return false;
        }
        List<Intent> list3 = this.i;
        List<Intent> k = cVar.k();
        return list3 == null ? k == null : list3.equals(k);
    }

    @Override // com.google.android.play.core.splitinstall.c
    @Deprecated
    public final PendingIntent h() {
        return this.h;
    }

    public final int hashCode() {
        int i = this.f31518a;
        int i2 = this.f31519b;
        int i3 = this.f31520c;
        long j = this.f31521d;
        long j2 = this.e;
        int i4 = (int) ((j >>> 32) ^ j);
        int i5 = (int) ((j2 >>> 32) ^ j2);
        List<String> list = this.f;
        int i6 = 0;
        int hashCode = list == null ? 0 : list.hashCode();
        List<String> list2 = this.g;
        int hashCode2 = list2 == null ? 0 : list2.hashCode();
        PendingIntent pendingIntent = this.h;
        int hashCode3 = pendingIntent == null ? 0 : pendingIntent.hashCode();
        List<Intent> list3 = this.i;
        if (list3 != null) {
            i6 = list3.hashCode();
        }
        return ((((((((((((((((i ^ 1000003) * 1000003) ^ i2) * 1000003) ^ i3) * 1000003) ^ i4) * 1000003) ^ i5) * 1000003) ^ hashCode) * 1000003) ^ hashCode2) * 1000003) ^ hashCode3) * 1000003) ^ i6;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.play.core.splitinstall.c
    public final List<String> i() {
        return this.f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.play.core.splitinstall.c
    public final List<String> j() {
        return this.g;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.play.core.splitinstall.c
    public final List<Intent> k() {
        return this.i;
    }

    public final String toString() {
        int i = this.f31518a;
        int i2 = this.f31519b;
        int i3 = this.f31520c;
        long j = this.f31521d;
        long j2 = this.e;
        String valueOf = String.valueOf(this.f);
        String valueOf2 = String.valueOf(this.g);
        String valueOf3 = String.valueOf(this.h);
        String valueOf4 = String.valueOf(this.i);
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
