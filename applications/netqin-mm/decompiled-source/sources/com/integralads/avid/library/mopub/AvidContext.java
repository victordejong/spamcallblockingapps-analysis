package com.integralads.avid.library.mopub;

import android.content.Context;
/* loaded from: classes2-dex2jar.jar:com/integralads/avid/library/mopub/AvidContext.class */
public class AvidContext {

    /* renamed from: b */
    public static final AvidContext f33006b = new AvidContext();

    /* renamed from: a */
    public String f33007a;

    public static AvidContext getInstance() {
        return f33006b;
    }

    public String getAvidReleaseDate() {
        return BuildConfig.RELEASE_DATE;
    }

    public String getAvidVersion() {
        return BuildConfig.VERSION_NAME;
    }

    public String getBundleId() {
        return this.f33007a;
    }

    public String getPartnerName() {
        return "mopub";
    }

    public void init(Context context) {
        if (this.f33007a == null) {
            this.f33007a = context.getApplicationContext().getPackageName();
        }
    }
}
