package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.view.View;
/* renamed from: com.google.android.gms.internal.ads.y0 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/y0.class */
public final class C7165y0 extends AbstractCallableC7203z1 {

    /* renamed from: i */
    private final Activity f32371i;

    /* renamed from: j */
    private final View f32372j;

    public C7165y0(C6869q0 c6869q0, String str, String str2, j14 j14Var, int i, int i2, View view, Activity activity) {
        super(c6869q0, "h8EVC95dwYnFQkP2MhkDIC/tXo0ux4wCcOlQmWH2MzSwaPfcZ/24kCQO32wp6PV0", "0H2C2EeQe84lGZgr+dAw2Fmmx+KWvzkBWNdP/wQOLp8=", j14Var, i, 62);
        this.f32372j = view;
        this.f32371i = activity;
    }

    @Override // com.google.android.gms.internal.ads.AbstractCallableC7203z1
    /* renamed from: a */
    protected final void mo8630a() {
        if (this.f32372j == null) {
            return;
        }
        boolean booleanValue = ((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25509J1)).booleanValue();
        Object[] objArr = (Object[]) this.f32758f.invoke(null, this.f32372j, this.f32371i, Boolean.valueOf(booleanValue));
        synchronized (this.f32757e) {
            this.f32757e.m14234H(((Long) objArr[0]).longValue());
            this.f32757e.m14233I(((Long) objArr[1]).longValue());
            if (booleanValue) {
                this.f32757e.m14232J((String) objArr[2]);
            }
        }
    }
}
