package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.view.View;
import com.google.android.gms.internal.ads.beb;
import java.lang.reflect.InvocationTargetException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dts.class */
public final class dts extends dus {

    /* renamed from: d */
    private final Activity f47601d;

    /* renamed from: e */
    private final View f47602e;

    public dts(dtg dtgVar, String str, String str2, beb.C12217a.C12219b c12219b, int i, int i2, View view, Activity activity) {
        super(dtgVar, str, str2, c12219b, i, 62);
        this.f47602e = view;
        this.f47601d = activity;
    }

    @Override // com.google.android.gms.internal.ads.dus
    /* renamed from: a */
    protected final void mo15698a() throws IllegalAccessException, InvocationTargetException {
        if (this.f47602e == null) {
            return;
        }
        boolean booleanValue = ((Boolean) ekb.m14831e().m18571a(C12187aq.f42742bz)).booleanValue();
        Object[] objArr = (Object[]) this.f47638c.invoke(null, this.f47602e, this.f47601d, Boolean.valueOf(booleanValue));
        synchronized (this.f47637b) {
            this.f47637b.m18055E(((Long) objArr[0]).longValue());
            this.f47637b.m18054F(((Long) objArr[1]).longValue());
            if (booleanValue) {
                this.f47637b.m18026h((String) objArr[2]);
            }
        }
    }
}
