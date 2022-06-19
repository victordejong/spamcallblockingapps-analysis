package com.applovin.impl.adview.activity;

import android.app.Activity;
import android.content.Context;
import android.content.res.Configuration;
import android.view.WindowManager;
import com.applovin.impl.sdk.p053ad.AbstractC1286e;
import com.applovin.impl.sdk.utils.Utils;
import com.applovin.sdk.AppLovinSdkUtils;
/* renamed from: com.applovin.impl.adview.activity.b */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/adview/activity/b.class */
public class C0913b {

    /* renamed from: a */
    private final Activity f3418a;

    /* renamed from: b */
    private final int f3419b;

    /* renamed from: c */
    private final int f3420c;

    /* renamed from: d */
    private final boolean f3421d;

    /* renamed from: e */
    private final boolean f3422e;

    public C0913b(Activity activity) {
        this.f3418a = activity;
        int rotation = Utils.getRotation(activity);
        this.f3420c = rotation;
        boolean isTablet = AppLovinSdkUtils.isTablet(activity);
        this.f3421d = isTablet;
        this.f3419b = m7065a(rotation, isTablet);
        this.f3422e = isTablet && 2 == m7064a(activity);
    }

    /* renamed from: a */
    private int m7065a(int i, boolean z) {
        if (!z || !this.f3422e) {
            if (i == 0) {
                return 1;
            }
            if (i == 1) {
                return 0;
            }
            if (i == 2) {
                return 9;
            }
            return i == 3 ? 8 : -1;
        } else if (i == 0) {
            return 0;
        } else {
            if (i == 1) {
                return 9;
            }
            if (i == 2) {
                return 8;
            }
            return i == 3 ? 1 : -1;
        }
    }

    /* renamed from: a */
    private static int m7064a(Context context) {
        Configuration configuration = context.getResources().getConfiguration();
        int rotation = ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getRotation();
        if ((rotation == 0 || rotation == 2) && configuration.orientation == 2) {
            return 2;
        }
        return ((rotation == 1 || rotation == 3) && configuration.orientation == 1) ? 2 : 1;
    }

    /* renamed from: a */
    private void m7066a(int i) {
        try {
            this.f3418a.setRequestedOrientation(i);
        } catch (Throwable th) {
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:35:0x00a1, code lost:
        if (r0 == 2) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00a7, code lost:
        r6 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00c9, code lost:
        if (r0 == 1) goto L36;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m7063a(com.applovin.impl.sdk.p053ad.AbstractC1286e.EnumC1289b r4) {
        /*
            Method dump skipped, instructions count: 208
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.impl.adview.activity.C0913b.m7063a(com.applovin.impl.sdk.ad.e$b):void");
    }

    /* renamed from: a */
    public void m7062a(AbstractC1286e abstractC1286e) {
        int i;
        if (!abstractC1286e.m5990C() || (i = this.f3419b) == -1) {
            m7063a(abstractC1286e.m5904n());
        } else {
            m7066a(i);
        }
    }
}
