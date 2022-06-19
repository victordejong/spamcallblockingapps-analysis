package com.mopub.nativeads;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.mopub.common.Preconditions;
import java.lang.ref.WeakReference;
/* loaded from: classes3-dex2jar.jar:com/mopub/nativeads/AdapterHelper.class */
public final class AdapterHelper {

    /* renamed from: a */
    public final WeakReference<Context> f9031a;

    /* renamed from: b */
    public final Context f9032b;

    /* renamed from: c */
    public final int f9033c;

    /* renamed from: d */
    public final int f9034d;

    public AdapterHelper(Context context, int i, int i2) {
        Preconditions.checkNotNull(context, "Context cannot be null.");
        Preconditions.checkArgument(i >= 0, "start position must be non-negative");
        Preconditions.checkArgument(i2 >= 2, "interval must be at least 2");
        this.f9031a = new WeakReference<>(context);
        this.f9032b = context.getApplicationContext();
        this.f9033c = i;
        this.f9034d = i2;
    }

    public View getAdView(View view, ViewGroup viewGroup, NativeAd nativeAd) {
        return getAdView(view, viewGroup, nativeAd, null);
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x006b, code lost:
        if (e.n.d.i.a.AD.equals(r7.getTag()) == false) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x00b8, code lost:
        if (e.n.d.i.a.EMPTY.equals(r7.getTag()) == false) goto L25;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.view.View getAdView(android.view.View r7, android.view.ViewGroup r8, com.mopub.nativeads.NativeAd r9, com.mopub.nativeads.ViewBinder r10) {
        /*
            r6 = this;
            r0 = r6
            java.lang.ref.WeakReference<android.content.Context> r0 = r0.f9031a
            java.lang.Object r0 = r0.get()
            android.content.Context r0 = (android.content.Context) r0
            r11 = r0
            r0 = r11
            if (r0 != 0) goto L2c
            com.mopub.common.logging.MoPubLog$SdkLogEvent r0 = com.mopub.common.logging.MoPubLog.SdkLogEvent.CUSTOM
            r1 = 1
            java.lang.Object[] r1 = new java.lang.Object[r1]
            r2 = r1
            r3 = 0
            java.lang.String r4 = "Weak reference to Context in AdapterHelper became null. Returning empty view."
            r2[r3] = r4
            com.mopub.common.logging.MoPubLog.log(r0, r1)
            android.view.View r0 = new android.view.View
            r1 = r0
            r2 = r6
            android.content.Context r2 = r2.f9032b
            r1.<init>(r2)
            return r0
        L2c:
            java.util.WeakHashMap r0 = e.n.d.i.a
            r10 = r0
            r0 = r7
            if (r0 == 0) goto L4c
            java.util.WeakHashMap r0 = e.n.d.i.a
            r1 = r7
            java.lang.Object r0 = r0.get(r1)
            com.mopub.nativeads.NativeAd r0 = (com.mopub.nativeads.NativeAd) r0
            r10 = r0
            r0 = r10
            if (r0 == 0) goto L4c
            r0 = r10
            r1 = r7
            r0.clear(r1)
        L4c:
            r0 = r9
            if (r0 == 0) goto L98
            r0 = r9
            boolean r0 = r0.isDestroyed()
            if (r0 == 0) goto L5a
            goto L98
        L5a:
            r0 = r7
            if (r0 == 0) goto L6e
            r0 = r7
            r10 = r0
            e.n.d.i$a r0 = e.n.d.i.a.AD
            r1 = r7
            java.lang.Object r1 = r1.getTag()
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L7f
        L6e:
            r0 = r9
            r1 = r11
            r2 = r8
            android.view.View r0 = r0.createAdView(r1, r2)
            r10 = r0
            r0 = r10
            e.n.d.i$a r1 = e.n.d.i.a.AD
            r0.setTag(r1)
        L7f:
            java.util.WeakHashMap r0 = e.n.d.i.a
            r1 = r10
            r2 = r9
            java.lang.Object r0 = r0.put(r1, r2)
            r0 = r9
            r1 = r10
            r0.prepare(r1)
            r0 = r9
            r1 = r10
            r0.renderAdView(r1)
            goto Ld5
        L98:
            com.mopub.common.logging.MoPubLog$SdkLogEvent r0 = com.mopub.common.logging.MoPubLog.SdkLogEvent.CUSTOM
            r1 = 1
            java.lang.Object[] r1 = new java.lang.Object[r1]
            r2 = r1
            r3 = 0
            java.lang.String r4 = "NativeAd null or invalid. Returning empty view"
            r2[r3] = r4
            com.mopub.common.logging.MoPubLog.log(r0, r1)
            r0 = r7
            if (r0 == 0) goto Lbb
            r0 = r7
            r10 = r0
            e.n.d.i$a r0 = e.n.d.i.a.EMPTY
            r1 = r7
            java.lang.Object r1 = r1.getTag()
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto Ld5
        Lbb:
            android.view.View r0 = new android.view.View
            r1 = r0
            r2 = r11
            r1.<init>(r2)
            r10 = r0
            r0 = r10
            e.n.d.i$a r1 = e.n.d.i.a.EMPTY
            r0.setTag(r1)
            r0 = r10
            r1 = 8
            r0.setVisibility(r1)
        Ld5:
            r0 = r10
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mopub.nativeads.AdapterHelper.getAdView(android.view.View, android.view.ViewGroup, com.mopub.nativeads.NativeAd, com.mopub.nativeads.ViewBinder):android.view.View");
    }

    public boolean isAdPosition(int i) {
        int i2 = this.f9033c;
        boolean z = false;
        if (i < i2) {
            return false;
        }
        if ((i - i2) % this.f9034d == 0) {
            z = true;
        }
        return z;
    }

    public int shiftedCount(int i) {
        int i2;
        int i3 = this.f9033c;
        if (i <= i3) {
            i2 = 0;
        } else {
            int i4 = this.f9034d - 1;
            int i5 = i - i3;
            i2 = i5 % i4 == 0 ? i5 / i4 : ((int) Math.floor(i5 / i4)) + 1;
        }
        return i + i2;
    }

    public int shiftedPosition(int i) {
        int i2 = this.f9033c;
        return i - (i <= i2 ? 0 : ((int) Math.floor((i - i2) / this.f9034d)) + 1);
    }
}
