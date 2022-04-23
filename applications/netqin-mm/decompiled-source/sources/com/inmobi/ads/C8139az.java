package com.inmobi.ads;

import com.mopub.nativeads.MoPubNativeAdPositioning;
import java.util.Locale;
/* renamed from: com.inmobi.ads.az */
/* loaded from: classes2-dex2jar.jar:com/inmobi/ads/az.class */
public class C8139az extends C8103ak {

    /* renamed from: com.inmobi.ads.az$a */
    /* loaded from: classes2-dex2jar.jar:com/inmobi/ads/az$a.class */
    public static class C8140a extends C8104al {

        /* renamed from: l */
        public int f31817l;

        /* renamed from: m */
        public String f31818m;

        /* renamed from: n */
        public int f31819n;

        /* renamed from: o */
        public String[] f31820o;

        /* renamed from: p */
        public int f31821p;

        public C8140a(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, String str, String str2, String str3, String str4, int i9, int i10, int i11, String str5, String[] strArr, C8144ba baVar) {
            super(i, i2, i3, i4, i5, i6, i7, i8, str, str2, str3, str4, baVar);
            this.f31817l = i9;
            this.f31818m = str5.length() == 0 ? "#ff000000" : str5;
            this.f31819n = i11;
            int min = Math.min(strArr.length, 4);
            String[] strArr2 = new String[min];
            this.f31820o = strArr2;
            this.f31821p = i10;
            System.arraycopy(strArr, 0, strArr2, 0, min);
        }

        public C8140a(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, String str, String str2, String str3, String str4, C8144ba baVar) {
            this(i, i2, i3, i4, i5, i6, i7, i8, str, str2, str3, str4, 12, 0, MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT, "#ff000000", new String[]{"none"}, baVar);
        }

        @Override // com.inmobi.ads.C8104al
        /* renamed from: e */
        public final String mo6351e() {
            return this.f31710j.toLowerCase(Locale.US);
        }

        /* renamed from: h */
        public final int m6350h() {
            return this.f31817l;
        }

        /* renamed from: i */
        public final String m6349i() {
            return this.f31818m.toLowerCase(Locale.US);
        }

        /* renamed from: j */
        public final String[] m6348j() {
            return this.f31820o;
        }
    }

    public C8139az(String str, String str2, C8104al alVar, String str3) {
        super(str, str2, "TEXT", alVar);
        this.f31680e = str3;
    }

    public C8139az(String str, String str2, String str3, C8104al alVar, String str4) {
        super(str, str2, str3, alVar);
        this.f31680e = str4;
    }
}
