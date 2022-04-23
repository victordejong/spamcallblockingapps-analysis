package com.inmobi.ads;

import com.inmobi.ads.C8139az;
import com.mopub.nativeads.MoPubNativeAdPositioning;
import java.util.LinkedList;
import java.util.List;
import org.json.JSONObject;
/* renamed from: com.inmobi.ads.an */
/* loaded from: classes2-dex2jar.jar:com/inmobi/ads/an.class */
public final class C8107an extends C8139az {

    /* renamed from: com.inmobi.ads.an$a */
    /* loaded from: classes2-dex2jar.jar:com/inmobi/ads/an$a.class */
    public static final class C8108a extends C8139az.C8140a {
        public C8108a(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, String str, String str2, String str3, String str4, int i9, String str5, String[] strArr, C8144ba baVar) {
            super(i, i2, i3, i4, i5, i6, i7, i8, str, str2, str3, str4, baVar);
            this.f31817l = i9;
            this.f31819n = MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT;
            this.f31818m = str5.length() == 0 ? "#ff000000" : str5;
            int min = Math.min(strArr.length, 1);
            String[] strArr2 = new String[min];
            this.f31820o = strArr2;
            System.arraycopy(strArr, 0, strArr2, 0, min);
        }
    }

    public C8107an(String str, String str2, C8104al alVar, String str3, int i, JSONObject jSONObject) {
        this(str, str2, alVar, str3, new LinkedList(), i, jSONObject);
    }

    public C8107an(String str, String str2, C8104al alVar, String str3, List<NativeTracker> list, int i, JSONObject jSONObject) {
        super(str, str2, "CTA", alVar, str3);
        m6449a(list);
        if (jSONObject != null) {
            this.f31684i = i;
            this.f31681f = jSONObject;
        }
    }
}
