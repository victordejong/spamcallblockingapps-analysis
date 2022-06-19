package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/drw.class */
public final class drw extends drz {

    /* renamed from: a */
    private String f47487a;

    public drw(String str) {
        this.f47487a = str;
    }

    @Override // com.google.android.gms.internal.ads.drz
    /* renamed from: a */
    public final void mo15789a(String str) {
        String str2 = this.f47487a;
        StringBuilder sb = new StringBuilder(String.valueOf(str2).length() + 1 + String.valueOf(str).length());
        sb.append(str2);
        sb.append(":");
        sb.append(str);
    }
}
