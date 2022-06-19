package com.google.android.play.core.install;

import java.util.Objects;
/* renamed from: com.google.android.play.core.install.c */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/install/c.class */
public final class C15007c extends AbstractC15005a {

    /* renamed from: a */
    private final int f54735a;

    /* renamed from: b */
    private final long f54736b;

    /* renamed from: c */
    private final long f54737c;

    /* renamed from: d */
    private final int f54738d;

    /* renamed from: e */
    private final String f54739e;

    public C15007c(int i, long j, long j2, int i2, String str) {
        this.f54735a = i;
        this.f54736b = j;
        this.f54737c = j2;
        this.f54738d = i2;
        Objects.requireNonNull(str, "Null packageName");
        this.f54739e = str;
    }

    @Override // com.google.android.play.core.install.AbstractC15005a
    /* renamed from: a */
    public final int mo9629a() {
        return this.f54735a;
    }

    @Override // com.google.android.play.core.install.AbstractC15005a
    /* renamed from: b */
    public final long mo9628b() {
        return this.f54736b;
    }

    @Override // com.google.android.play.core.install.AbstractC15005a
    /* renamed from: c */
    public final long mo9627c() {
        return this.f54737c;
    }

    @Override // com.google.android.play.core.install.AbstractC15005a
    /* renamed from: d */
    public final int mo9626d() {
        return this.f54738d;
    }

    @Override // com.google.android.play.core.install.AbstractC15005a
    /* renamed from: e */
    public final String mo9625e() {
        return this.f54739e;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC15005a)) {
            return false;
        }
        AbstractC15005a abstractC15005a = (AbstractC15005a) obj;
        return this.f54735a == abstractC15005a.mo9629a() && this.f54736b == abstractC15005a.mo9628b() && this.f54737c == abstractC15005a.mo9627c() && this.f54738d == abstractC15005a.mo9626d() && this.f54739e.equals(abstractC15005a.mo9625e());
    }

    public final int hashCode() {
        int i = this.f54735a;
        long j = this.f54736b;
        long j2 = this.f54737c;
        return ((((((((i ^ 1000003) * 1000003) ^ ((int) (j ^ (j >>> 32)))) * 1000003) ^ ((int) ((j2 >>> 32) ^ j2))) * 1000003) ^ this.f54738d) * 1000003) ^ this.f54739e.hashCode();
    }

    public final String toString() {
        int i = this.f54735a;
        long j = this.f54736b;
        long j2 = this.f54737c;
        int i2 = this.f54738d;
        String str = this.f54739e;
        StringBuilder sb = new StringBuilder(str.length() + 164);
        sb.append("InstallState{installStatus=");
        sb.append(i);
        sb.append(", bytesDownloaded=");
        sb.append(j);
        sb.append(", totalBytesToDownload=");
        sb.append(j2);
        sb.append(", installErrorCode=");
        sb.append(i2);
        sb.append(", packageName=");
        sb.append(str);
        sb.append("}");
        return sb.toString();
    }
}
