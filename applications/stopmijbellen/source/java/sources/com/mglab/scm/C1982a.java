package com.mglab.scm;

import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.FullScreenContentCallback;
import com.mglab.scm.MainActivity;
import p095f8.C2780h;
/* renamed from: com.mglab.scm.a */
/* loaded from: classes2-dex2jar.jar:com/mglab/scm/a.class */
public class C1982a extends FullScreenContentCallback {

    /* renamed from: a */
    public final /* synthetic */ MainActivity.C1980d f7283a;

    public C1982a(MainActivity.C1980d c1980d) {
        this.f7283a = c1980d;
    }

    @Override // com.google.android.gms.ads.FullScreenContentCallback
    public void onAdDismissedFullScreenContent() {
        MainActivity mainActivity = MainActivity.this;
        mainActivity.f7274q = null;
        mainActivity.m3980w();
    }

    @Override // com.google.android.gms.ads.FullScreenContentCallback
    public void onAdFailedToShowFullScreenContent(AdError adError) {
        MainActivity mainActivity = MainActivity.this;
        mainActivity.f7274q = null;
        mainActivity.m3980w();
    }

    @Override // com.google.android.gms.ads.FullScreenContentCallback
    public void onAdShowedFullScreenContent() {
        C2780h.m3041k0(MainActivity.this.getApplicationContext(), "valshown", System.currentTimeMillis());
    }
}
