package p081h.p430l.p435d;

import android.view.View;
import androidx.annotation.NonNull;
import com.mopub.common.VisibleForTesting;
import com.mopub.nativeads.NativeAd;
import java.util.WeakHashMap;
/* renamed from: h.l.d.d */
/* loaded from: classes2-dex2jar.jar:h/l/d/d.class */
public class C10733d {

    /* renamed from: a */
    public static final WeakHashMap<View, NativeAd> f24467a = new WeakHashMap<>();

    @VisibleForTesting
    /* renamed from: h.l.d.d$a */
    /* loaded from: classes2-dex2jar.jar:h/l/d/d$a.class */
    public enum EnumC10734a {
        EMPTY,
        AD
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0027, code lost:
        if (p081h.p430l.p435d.C10733d.EnumC10734a.f24468AD.equals(r6.getTag()) == false) goto L_0x002a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0069, code lost:
        if (p081h.p430l.p435d.C10733d.EnumC10734a.EMPTY.equals(r6.getTag()) == false) goto L_0x006c;
     */
    @androidx.annotation.NonNull
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.view.View m10784a(@androidx.annotation.Nullable android.view.View r6, @androidx.annotation.Nullable android.view.ViewGroup r7, @androidx.annotation.NonNull android.content.Context r8, @androidx.annotation.Nullable com.mopub.nativeads.NativeAd r9) {
        /*
            r0 = r6
            if (r0 == 0) goto L_0x0008
            r0 = r6
            m10785a(r0)
        L_0x0008:
            r0 = r9
            if (r0 == 0) goto L_0x0049
            r0 = r9
            boolean r0 = r0.isDestroyed()
            if (r0 == 0) goto L_0x0016
            goto L_0x0049
        L_0x0016:
            r0 = r6
            if (r0 == 0) goto L_0x002a
            r0 = r6
            r10 = r0
            h.l.d.d$a r0 = p081h.p430l.p435d.C10733d.EnumC10734a.AD
            r1 = r6
            java.lang.Object r1 = r1.getTag()
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L_0x003a
        L_0x002a:
            r0 = r9
            r1 = r8
            r2 = r7
            android.view.View r0 = r0.createAdView(r1, r2)
            r10 = r0
            r0 = r10
            h.l.d.d$a r1 = p081h.p430l.p435d.C10733d.EnumC10734a.AD
            r0.setTag(r1)
        L_0x003a:
            r0 = r10
            r1 = r9
            m10783a(r0, r1)
            r0 = r9
            r1 = r10
            r0.renderAdView(r1)
            goto L_0x0085
        L_0x0049:
            com.mopub.common.logging.MoPubLog$SdkLogEvent r0 = com.mopub.common.logging.MoPubLog.SdkLogEvent.CUSTOM
            r1 = 1
            java.lang.Object[] r1 = new java.lang.Object[r1]
            r2 = r1
            r3 = 0
            java.lang.String r4 = "NativeAd null or invalid. Returning empty view"
            r2[r3] = r4
            com.mopub.common.logging.MoPubLog.log(r0, r1)
            r0 = r6
            if (r0 == 0) goto L_0x006c
            r0 = r6
            r10 = r0
            h.l.d.d$a r0 = p081h.p430l.p435d.C10733d.EnumC10734a.EMPTY
            r1 = r6
            java.lang.Object r1 = r1.getTag()
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L_0x0085
        L_0x006c:
            android.view.View r0 = new android.view.View
            r1 = r0
            r2 = r8
            r1.<init>(r2)
            r10 = r0
            r0 = r10
            h.l.d.d$a r1 = p081h.p430l.p435d.C10733d.EnumC10734a.EMPTY
            r0.setTag(r1)
            r0 = r10
            r1 = 8
            r0.setVisibility(r1)
        L_0x0085:
            r0 = r10
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p081h.p430l.p435d.C10733d.m10784a(android.view.View, android.view.ViewGroup, android.content.Context, com.mopub.nativeads.NativeAd):android.view.View");
    }

    /* renamed from: a */
    public static void m10785a(@NonNull View view) {
        NativeAd nativeAd = f24467a.get(view);
        if (nativeAd != null) {
            nativeAd.clear(view);
        }
    }

    /* renamed from: a */
    public static void m10783a(@NonNull View view, @NonNull NativeAd nativeAd) {
        f24467a.put(view, nativeAd);
        nativeAd.prepare(view);
    }
}
