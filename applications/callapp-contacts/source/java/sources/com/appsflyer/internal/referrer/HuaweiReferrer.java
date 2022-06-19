package com.appsflyer.internal.referrer;

import android.content.Context;
import com.appsflyer.AppsFlyerLibCore;
import com.appsflyer.internal.ContentFetcher;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/appsflyer/internal/referrer/HuaweiReferrer.class */
public class HuaweiReferrer extends Referrer {
    public void start(Context context, final Runnable runnable) {
        ContentFetcher<Map<String, Object>> contentFetcher = new ContentFetcher<Map<String, Object>>(context, "com.huawei.appmarket.commondata", new String[]{"FFE391E0EA186D0734ED601E4E70E3224B7309D48E2075BAC46D8C667EAE7212", "3BAF59A2E5331C30675FAB35FF5FFF0D116142D3D4664F1C3CB804068B40614F"}) { // from class: com.appsflyer.internal.referrer.HuaweiReferrer.3
            /* JADX WARN: Code restructure failed: missing block: B:56:0x0228, code lost:
                if (0 == 0) goto L58;
             */
            /* renamed from: ǃ */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public java.util.Map<java.lang.String, java.lang.Object> query() {
                /*
                    Method dump skipped, instructions count: 627
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.referrer.HuaweiReferrer.C34353.query():java.util.Map");
            }
        };
        if (AppsFlyerLibCore.getInstance().getLaunchCounter(AppsFlyerLibCore.getSharedPreferences(context), false) >= 2 || !contentFetcher.valid()) {
            return;
        }
        contentFetcher.start();
        m37952(context);
    }
}
