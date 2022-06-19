package com.appnext.core.p018ra.services;

import android.content.Context;
import com.appnext.core.p018ra.services.p021a.AbstractC0587a;
import com.appnext.core.p018ra.services.p021a.C0588b;
import com.freshchat.consumer.sdk.beans.config.DefaultRefreshIntervals;
import java.util.ArrayList;
/* renamed from: com.appnext.core.ra.services.a */
/* loaded from: classes-dex2jar.jar:com/appnext/core/ra/services/a.class */
public class C0585a {

    /* renamed from: fe */
    private static C0585a f1884fe;

    /* renamed from: ff */
    private AbstractC0587a f1885ff;

    /* renamed from: com.appnext.core.ra.services.a$a */
    /* loaded from: classes-dex2jar.jar:com/appnext/core/ra/services/a$a.class */
    public enum EnumC0586a {
        DownloadingConfig,
        SendRA,
        StoreRa
    }

    private C0585a(Context context) {
        try {
            this.f1885ff = new C0588b(context);
        } catch (Throwable th) {
        }
    }

    /* renamed from: s */
    public static C0585a m42294s(Context context) {
        if (f1884fe == null) {
            synchronized (C0585a.class) {
                try {
                    if (f1884fe == null) {
                        f1884fe = new C0585a(context);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f1884fe;
    }

    /* renamed from: aW */
    public final void m42298aW() {
        try {
            this.f1885ff.m42292aW();
        } catch (Throwable th) {
        }
    }

    /* renamed from: b */
    public final void m42297b(long j) {
        try {
            this.f1885ff.m42290d(j * DefaultRefreshIntervals.ACTIVE_CONV_MAX_FETCH_INTERVAL);
        } catch (Throwable th) {
        }
    }

    /* renamed from: c */
    public final void m42296c(long j) {
        try {
            this.f1885ff.m42291c(j * DefaultRefreshIntervals.ACTIVE_CONV_MAX_FETCH_INTERVAL);
        } catch (Throwable th) {
        }
    }

    /* renamed from: d */
    public final void m42295d(ArrayList<String> arrayList) {
        if (arrayList != null) {
            try {
                if (arrayList.isEmpty()) {
                    return;
                }
                this.f1885ff.m42289d(arrayList);
            } catch (Throwable th) {
            }
        }
    }
}
