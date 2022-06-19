package com.mopub.nativeads;

import android.view.View;
import java.util.WeakHashMap;
/* renamed from: com.mopub.nativeads.d */
/* loaded from: classes4-dex2jar.jar:com/mopub/nativeads/d.class */
final class C16978d {

    /* renamed from: a */
    private static final WeakHashMap<View, NativeAd> f60163a = new WeakHashMap<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mopub.nativeads.d$a */
    /* loaded from: classes4-dex2jar.jar:com/mopub/nativeads/d$a.class */
    public enum EnumC16979a {
        EMPTY,
        AD
    }

    private C16978d() {
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x003a, code lost:
        if (com.mopub.nativeads.C16978d.EnumC16979a.AD.equals(r6.getTag()) == false) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0086, code lost:
        if (com.mopub.nativeads.C16978d.EnumC16979a.EMPTY.equals(r6.getTag()) == false) goto L21;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.view.View m6113a(android.view.View r6, android.view.ViewGroup r7, android.content.Context r8, com.mopub.nativeads.NativeAd r9) {
        /*
            r0 = r6
            if (r0 == 0) goto L1b
            java.util.WeakHashMap<android.view.View, com.mopub.nativeads.NativeAd> r0 = com.mopub.nativeads.C16978d.f60163a
            r1 = r6
            java.lang.Object r0 = r0.get(r1)
            com.mopub.nativeads.NativeAd r0 = (com.mopub.nativeads.NativeAd) r0
            r10 = r0
            r0 = r10
            if (r0 == 0) goto L1b
            r0 = r10
            r1 = r6
            r0.clear(r1)
        L1b:
            r0 = r9
            if (r0 == 0) goto L66
            r0 = r9
            boolean r0 = r0.isDestroyed()
            if (r0 == 0) goto L29
            goto L66
        L29:
            r0 = r6
            if (r0 == 0) goto L3d
            r0 = r6
            r10 = r0
            com.mopub.nativeads.d$a r0 = com.mopub.nativeads.C16978d.EnumC16979a.AD
            r1 = r6
            java.lang.Object r1 = r1.getTag()
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L4d
        L3d:
            r0 = r9
            r1 = r8
            r2 = r7
            android.view.View r0 = r0.createAdView(r1, r2)
            r10 = r0
            r0 = r10
            com.mopub.nativeads.d$a r1 = com.mopub.nativeads.C16978d.EnumC16979a.AD
            r0.setTag(r1)
        L4d:
            java.util.WeakHashMap<android.view.View, com.mopub.nativeads.NativeAd> r0 = com.mopub.nativeads.C16978d.f60163a
            r1 = r10
            r2 = r9
            java.lang.Object r0 = r0.put(r1, r2)
            r0 = r9
            r1 = r10
            r0.prepare(r1)
            r0 = r9
            r1 = r10
            r0.renderAdView(r1)
            goto La2
        L66:
            com.mopub.common.logging.MoPubLog$SdkLogEvent r0 = com.mopub.common.logging.MoPubLog.SdkLogEvent.CUSTOM
            r1 = 1
            java.lang.Object[] r1 = new java.lang.Object[r1]
            r2 = r1
            r3 = 0
            java.lang.String r4 = "NativeAd null or invalid. Returning empty view"
            r2[r3] = r4
            com.mopub.common.logging.MoPubLog.log(r0, r1)
            r0 = r6
            if (r0 == 0) goto L89
            r0 = r6
            r10 = r0
            com.mopub.nativeads.d$a r0 = com.mopub.nativeads.C16978d.EnumC16979a.EMPTY
            r1 = r6
            java.lang.Object r1 = r1.getTag()
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto La2
        L89:
            android.view.View r0 = new android.view.View
            r1 = r0
            r2 = r8
            r1.<init>(r2)
            r10 = r0
            r0 = r10
            com.mopub.nativeads.d$a r1 = com.mopub.nativeads.C16978d.EnumC16979a.EMPTY
            r0.setTag(r1)
            r0 = r10
            r1 = 8
            r0.setVisibility(r1)
        La2:
            r0 = r10
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mopub.nativeads.C16978d.m6113a(android.view.View, android.view.ViewGroup, android.content.Context, com.mopub.nativeads.NativeAd):android.view.View");
    }
}
