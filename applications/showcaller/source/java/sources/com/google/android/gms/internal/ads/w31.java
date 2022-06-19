package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/w31.class */
public final class w31 {

    /* renamed from: a */
    public static final w31 f31443a = new w31(-1, -1, -1);

    /* renamed from: b */
    public final int f31444b;

    /* renamed from: c */
    public final int f31445c;

    /* renamed from: d */
    public final int f31446d;

    /* renamed from: e */
    public final int f31447e;

    public w31(int i, int i2, int i3) {
        this.f31444b = i;
        this.f31445c = i2;
        this.f31446d = i3;
        this.f31447e = C7101wa.m9681p(i3) ? C7101wa.m9678s(i3, i2) : -1;
    }

    public final String toString() {
        int i = this.f31444b;
        int i2 = this.f31445c;
        int i3 = this.f31446d;
        StringBuilder sb = new StringBuilder(83);
        sb.append("AudioFormat[sampleRate=");
        sb.append(i);
        sb.append(", channelCount=");
        sb.append(i2);
        sb.append(", encoding=");
        sb.append(i3);
        sb.append(']');
        return sb.toString();
    }
}
