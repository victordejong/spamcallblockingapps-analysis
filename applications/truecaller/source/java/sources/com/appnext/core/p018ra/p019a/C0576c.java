package com.appnext.core.p018ra.p019a;

import android.content.Context;
import android.os.Bundle;
import com.appnext.core.p018ra.services.C0585a;
/* renamed from: com.appnext.core.ra.a.c */
/* loaded from: classes-dex2jar.jar:com/appnext/core/ra/a/c.class */
public final class C0576c {

    /* renamed from: com.appnext.core.ra.a.c$1 */
    /* loaded from: classes-dex2jar.jar:com/appnext/core/ra/a/c$1.class */
    public static final /* synthetic */ class C05771 {

        /* renamed from: eP */
        public static final /* synthetic */ int[] f1868eP;

        static {
            C0585a.EnumC0586a.values();
            int[] iArr = new int[3];
            f1868eP = iArr;
            try {
                C0585a.EnumC0586a enumC0586a = C0585a.EnumC0586a.SendRA;
                iArr[1] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                int[] iArr2 = f1868eP;
                C0585a.EnumC0586a enumC0586a2 = C0585a.EnumC0586a.StoreRa;
                iArr2[2] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                int[] iArr3 = f1868eP;
                C0585a.EnumC0586a enumC0586a3 = C0585a.EnumC0586a.DownloadingConfig;
                iArr3[0] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    /* renamed from: a */
    public static AbstractC0575b m42311a(Context context, C0585a.EnumC0586a enumC0586a, Bundle bundle) {
        int i = C05771.f1868eP[enumC0586a.ordinal()];
        if (i != 1) {
            if (i == 2) {
                return new C0579e(context, bundle);
            }
            if (i == 3) {
                return new C0574a(context, bundle);
            }
            return null;
        }
        return new C0578d(context, bundle);
    }
}
