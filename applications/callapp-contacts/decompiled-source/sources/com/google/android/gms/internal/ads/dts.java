package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.view.View;
import com.google.android.gms.internal.ads.beb;
import java.lang.reflect.InvocationTargetException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dts.class */
public final class dts extends dus {

    /* renamed from: d  reason: collision with root package name */
    private final Activity f27215d;
    private final View e;

    public dts(dtg dtgVar, String str, String str2, beb.a.b bVar, int i, int i2, View view, Activity activity) {
        super(dtgVar, str, str2, bVar, i, 62);
        this.e = view;
        this.f27215d = activity;
    }

    @Override // com.google.android.gms.internal.ads.dus
    protected final void a() throws IllegalAccessException, InvocationTargetException {
        if (this.e != null) {
            boolean booleanValue = ((Boolean) ekb.e().a(aq.bz)).booleanValue();
            Object[] objArr = (Object[]) this.f27239c.invoke(null, this.e, this.f27215d, Boolean.valueOf(booleanValue));
            synchronized (this.f27238b) {
                this.f27238b.E(((Long) objArr[0]).longValue());
                this.f27238b.F(((Long) objArr[1]).longValue());
                if (booleanValue) {
                    this.f27238b.h((String) objArr[2]);
                }
            }
        }
    }
}
