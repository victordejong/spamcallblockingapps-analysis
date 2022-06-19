package com.appnext.nativeads;

import android.content.Context;
import com.appnext.core.AbstractC0501Ad;
import com.appnext.core.AbstractC0529c;
import com.appnext.core.callbacks.OnECPMLoaded;
/* loaded from: classes-dex2jar.jar:com/appnext/nativeads/NativeAdObject.class */
public class NativeAdObject extends AbstractC0501Ad {
    public static final String AUID = "550";
    public static final String TID = "301";
    public static final String VID = "2.6.5.473";

    public NativeAdObject(Context context, String str) {
        super(context, str);
    }

    public NativeAdObject(AbstractC0501Ad abstractC0501Ad) {
        super(abstractC0501Ad);
    }

    @Override // com.appnext.core.AbstractC0501Ad
    public String getAUID() {
        return AUID;
    }

    @Override // com.appnext.core.AbstractC0501Ad
    public AbstractC0529c getAdRequest() {
        return super.getAdRequest();
    }

    @Override // com.appnext.core.AbstractC0501Ad
    public Context getContext() {
        return this.context;
    }

    @Override // com.appnext.core.AbstractC0501Ad
    public void getECPM(OnECPMLoaded onECPMLoaded) {
    }

    @Override // com.appnext.core.AbstractC0501Ad
    public String getSessionId() {
        return super.getSessionId();
    }

    @Override // com.appnext.core.AbstractC0501Ad
    public String getTID() {
        return TID;
    }

    /* JADX WARN: Code restructure failed: missing block: B:44:0x00d3, code lost:
        if (r0.equals("a") != false) goto L46;
     */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00df A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00e2 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String getTemId(com.appnext.nativeads.NativeAdData r4) {
        /*
            Method dump skipped, instructions count: 239
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appnext.nativeads.NativeAdObject.getTemId(com.appnext.nativeads.NativeAdData):java.lang.String");
    }

    @Override // com.appnext.core.AbstractC0501Ad
    public String getVID() {
        return VID;
    }

    @Override // com.appnext.core.AbstractC0501Ad
    public boolean isAdLoaded() {
        return C0641b.m42201be().mo42117a(this);
    }

    @Override // com.appnext.core.AbstractC0501Ad
    public void loadAd() {
    }

    @Override // com.appnext.core.AbstractC0501Ad
    public void setAdRequest(AbstractC0529c abstractC0529c) {
        super.setAdRequest(abstractC0529c);
    }

    @Override // com.appnext.core.AbstractC0501Ad
    public void showAd() {
    }
}
