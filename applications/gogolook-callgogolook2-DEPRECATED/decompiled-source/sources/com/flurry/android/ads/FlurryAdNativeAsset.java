package com.flurry.android.ads;

import android.view.View;
import com.flurry.sdk.C2921cr;
import com.flurry.sdk.C3484p;
import com.flurry.sdk.EnumC2922cs;
/* loaded from: classes2-dex2jar.jar:com/flurry/android/ads/FlurryAdNativeAsset.class */
public final class FlurryAdNativeAsset {

    /* renamed from: a */
    public static final String f3880a = "FlurryAdNativeAsset";

    /* renamed from: b */
    public C2921cr f3881b;

    /* renamed from: c */
    public int f3882c;

    /* renamed from: com.flurry.android.ads.FlurryAdNativeAsset$1 */
    /* loaded from: classes2-dex2jar.jar:com/flurry/android/ads/FlurryAdNativeAsset$1.class */
    public static final /* synthetic */ class C27711 {

        /* renamed from: a */
        public static final /* synthetic */ int[] f3883a = new int[EnumC2922cs.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            try {
                f3883a[EnumC2922cs.STRING.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f3883a[EnumC2922cs.IMAGE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f3883a[EnumC2922cs.VIDEO.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    public FlurryAdNativeAsset(C2921cr crVar, int i) {
        if (crVar != null) {
            this.f3881b = crVar;
            this.f3882c = i;
            return;
        }
        throw new IllegalArgumentException("NativeAsset cannot be null.");
    }

    public final String getName() {
        return this.f3881b.f4515a;
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0060, code lost:
        if (r3.f3881b.f4515a.equals("secImage") != false) goto L_0x0063;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String getValue() {
        /*
            r3 = this;
            int[] r0 = com.flurry.android.ads.FlurryAdNativeAsset.C27711.f3883a
            r1 = r3
            com.flurry.sdk.cr r1 = r1.f3881b
            com.flurry.sdk.cs r1 = r1.f4516b
            int r1 = r1.ordinal()
            r0 = r0[r1]
            r4 = r0
            r0 = 1
            r5 = r0
            r0 = r4
            r1 = 1
            if (r0 == r1) goto L_0x00a8
            r0 = r4
            r1 = 2
            if (r0 == r1) goto L_0x002c
            r0 = r4
            r1 = 3
            if (r0 == r1) goto L_0x0022
            r0 = 0
            return r0
        L_0x0022:
            java.lang.String r0 = com.flurry.android.ads.FlurryAdNativeAsset.f3880a
            java.lang.String r1 = "Cannot call getValue() on video type."
            com.flurry.sdk.C3356jq.m32613a(r0, r1)
            r0 = 0
            return r0
        L_0x002c:
            r0 = r3
            com.flurry.sdk.cr r0 = r0.f3881b
            r6 = r0
            r0 = r6
            java.util.Map<java.lang.String, java.lang.String> r0 = r0.f4521g
            r7 = r0
            r0 = r6
            java.lang.String r0 = r0.f4515a
            java.lang.String r1 = "secOrigImg"
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L_0x0063
            r0 = r3
            com.flurry.sdk.cr r0 = r0.f3881b
            java.lang.String r0 = r0.f4515a
            java.lang.String r1 = "secHqImage"
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L_0x0063
            r0 = r5
            r4 = r0
            r0 = r3
            com.flurry.sdk.cr r0 = r0.f3881b
            java.lang.String r0 = r0.f4515a
            java.lang.String r1 = "secImage"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x0087
        L_0x0063:
            r0 = r5
            r4 = r0
            r0 = r7
            java.lang.String r1 = "internalOnly"
            boolean r0 = r0.containsKey(r1)
            if (r0 == 0) goto L_0x0087
            r0 = r5
            r4 = r0
            r0 = r7
            java.lang.String r1 = "internalOnly"
            java.lang.Object r0 = r0.get(r1)
            java.lang.String r0 = (java.lang.String) r0
            boolean r0 = java.lang.Boolean.parseBoolean(r0)
            if (r0 == 0) goto L_0x0087
            r0 = 0
            r4 = r0
        L_0x0087:
            r0 = r4
            if (r0 == 0) goto L_0x009e
            com.flurry.sdk.p r0 = com.flurry.sdk.C3484p.m32358a()
            com.flurry.sdk.s r0 = r0.f6004f
            r6 = r0
            r0 = r3
            com.flurry.sdk.cr r0 = r0.f3881b
            r1 = r3
            int r1 = r1.f3882c
            java.lang.String r0 = com.flurry.sdk.C3497s.m32326a(r0, r1)
            return r0
        L_0x009e:
            java.lang.String r0 = com.flurry.android.ads.FlurryAdNativeAsset.f3880a
            java.lang.String r1 = "Cannot call getValue() this is video ad. Please look for video asset."
            com.flurry.sdk.C3356jq.m32613a(r0, r1)
            r0 = 0
            return r0
        L_0x00a8:
            r0 = r3
            com.flurry.sdk.cr r0 = r0.f3881b
            java.lang.String r0 = r0.f4517c
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.flurry.android.ads.FlurryAdNativeAsset.getValue():java.lang.String");
    }

    public final void loadAssetIntoView(View view) {
        C3484p.m32358a().f6004f.m32325a(this.f3881b, view, this.f3882c);
    }
}
