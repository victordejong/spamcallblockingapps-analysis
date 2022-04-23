package com.flurry.sdk;

import android.content.Context;
import com.flurry.sdk.AbstractDialogInterface$OnKeyListenerC3134fw;
/* renamed from: com.flurry.sdk.fd */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/fd.class */
public final class C3073fd {

    /* renamed from: com.flurry.sdk.fd$1 */
    /* loaded from: classes2-dex2jar.jar:com/flurry/sdk/fd$1.class */
    public static final /* synthetic */ class C30741 {

        /* renamed from: a */
        public static final /* synthetic */ int[] f4887a = new int[C3075fe.m33153a().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0032 -> B:19:0x0013). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x0036 -> B:17:0x001d). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003a -> B:15:0x0027). Please submit an issue!!! */
        static {
            try {
                f4887a[C3075fe.f4888a - 1] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f4887a[C3075fe.f4889b - 1] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f4887a[C3075fe.f4890c - 1] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f4887a[C3075fe.f4891d - 1] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    /* renamed from: a */
    public static AbstractC3066fc m33154a(Context context, int i, AbstractC3518x xVar, AbstractDialogInterface$OnKeyListenerC3134fw.AbstractC3137a aVar) {
        int i2 = C30741.f4887a[i - 1];
        if (i2 == 1) {
            return new C3065fb(context, xVar, aVar);
        }
        if (i2 == 2) {
            return new C3054ey(context, xVar, aVar);
        }
        if (i2 == 3) {
            return new C3045ew(context, xVar, aVar);
        }
        String str = null;
        if (i2 != 4) {
            return null;
        }
        AbstractC3055ez ezVar = ((C2772aa) xVar).f3890p;
        if (ezVar != null) {
            str = ezVar.getVideoUrl();
        }
        C3046ex exVar = new C3046ex(context, xVar, aVar, str);
        exVar.m33210d();
        return exVar;
    }
}
