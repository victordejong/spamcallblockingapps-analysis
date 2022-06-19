package p000;

import android.view.View;
import com.mopub.common.VisibleForTesting;
import com.mopub.nativeads.NativeAd;
import java.util.WeakHashMap;
/* renamed from: xh1 */
/* loaded from: classes3-dex2jar.jar:xh1.class */
public class xh1 {

    /* renamed from: a */
    public static final WeakHashMap<View, NativeAd> f8703a = new WeakHashMap<>();

    @VisibleForTesting
    /* renamed from: xh1$a */
    /* loaded from: classes3-dex2jar.jar:xh1$a.class */
    public enum EnumC1733a {
        EMPTY,
        AD
    }

    /* renamed from: a */
    public static void m102a(View view) {
        NativeAd nativeAd = f8703a.get(view);
        if (nativeAd != null) {
            nativeAd.clear(view);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0027, code lost:
        if (p000.xh1.EnumC1733a.AD.equals(r6.getTag()) == false) goto L13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0069, code lost:
        if (p000.xh1.EnumC1733a.EMPTY.equals(r6.getTag()) == false) goto L19;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.view.View m101b(android.view.View r6, android.view.ViewGroup r7, android.content.Context r8, com.mopub.nativeads.NativeAd r9) {
        /*
            r0 = r6
            if (r0 == 0) goto L8
            r0 = r6
            m102a(r0)
        L8:
            r0 = r9
            if (r0 == 0) goto L49
            r0 = r9
            boolean r0 = r0.isDestroyed()
            if (r0 == 0) goto L16
            goto L49
        L16:
            r0 = r6
            if (r0 == 0) goto L2a
            r0 = r6
            r10 = r0
            xh1$a r0 = p000.xh1.EnumC1733a.AD
            r1 = r6
            java.lang.Object r1 = r1.getTag()
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L3a
        L2a:
            r0 = r9
            r1 = r8
            r2 = r7
            android.view.View r0 = r0.createAdView(r1, r2)
            r10 = r0
            r0 = r10
            xh1$a r1 = p000.xh1.EnumC1733a.AD
            r0.setTag(r1)
        L3a:
            r0 = r10
            r1 = r9
            m100c(r0, r1)
            r0 = r9
            r1 = r10
            r0.renderAdView(r1)
            goto L85
        L49:
            com.mopub.common.logging.MoPubLog$SdkLogEvent r0 = com.mopub.common.logging.MoPubLog.SdkLogEvent.CUSTOM
            r1 = 1
            java.lang.Object[] r1 = new java.lang.Object[r1]
            r2 = r1
            r3 = 0
            java.lang.String r4 = "NativeAd null or invalid. Returning empty view"
            r2[r3] = r4
            com.mopub.common.logging.MoPubLog.log(r0, r1)
            r0 = r6
            if (r0 == 0) goto L6c
            r0 = r6
            r10 = r0
            xh1$a r0 = p000.xh1.EnumC1733a.EMPTY
            r1 = r6
            java.lang.Object r1 = r1.getTag()
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L85
        L6c:
            android.view.View r0 = new android.view.View
            r1 = r0
            r2 = r8
            r1.<init>(r2)
            r10 = r0
            r0 = r10
            xh1$a r1 = p000.xh1.EnumC1733a.EMPTY
            r0.setTag(r1)
            r0 = r10
            r1 = 8
            r0.setVisibility(r1)
        L85:
            r0 = r10
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p000.xh1.m101b(android.view.View, android.view.ViewGroup, android.content.Context, com.mopub.nativeads.NativeAd):android.view.View");
    }

    /* renamed from: c */
    public static void m100c(View view, NativeAd nativeAd) {
        f8703a.put(view, nativeAd);
        nativeAd.prepare(view);
    }
}
