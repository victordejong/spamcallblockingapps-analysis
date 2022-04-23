package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/drw.class */
public final class drw extends drz {

    /* renamed from: a  reason: collision with root package name */
    private String f27140a;

    public drw(String str) {
        this.f27140a = str;
    }

    @Override // com.google.android.gms.internal.ads.drz
    public final void a(String str) {
        String str2 = this.f27140a;
        StringBuilder sb = new StringBuilder(String.valueOf(str2).length() + 1 + String.valueOf(str).length());
        sb.append(str2);
        sb.append(":");
        sb.append(str);
    }
}
