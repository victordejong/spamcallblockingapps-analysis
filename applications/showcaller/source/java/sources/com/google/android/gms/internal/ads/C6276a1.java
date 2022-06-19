package com.google.android.gms.internal.ads;

import android.provider.Settings;
import java.lang.reflect.InvocationTargetException;
/* renamed from: com.google.android.gms.internal.ads.a1 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/a1.class */
public final class C6276a1 extends AbstractCallableC7203z1 {
    public C6276a1(C6869q0 c6869q0, String str, String str2, j14 j14Var, int i, int i2) {
        super(c6869q0, "pECbn1i7ArZz8HseR71ZVkvFfTp84DNv2haWC1WmGQudMO74UcIxEa2NyELtzZhK", "LbaQh8VAFWEQeupBiMdSh8EgMse5yKT8p6jkCYTG+aQ=", j14Var, i, 49);
    }

    @Override // com.google.android.gms.internal.ads.AbstractCallableC7203z1
    /* renamed from: a */
    protected final void mo8630a() {
        this.f32757e.m14227R(3);
        try {
            int i = 1;
            boolean booleanValue = ((Boolean) this.f32758f.invoke(null, this.f32754b.m12081c())).booleanValue();
            j14 j14Var = this.f32757e;
            if (true == booleanValue) {
                i = 2;
            }
            j14Var.m14227R(i);
        } catch (InvocationTargetException e) {
            if (!(e.getTargetException() instanceof Settings.SettingNotFoundException)) {
                throw e;
            }
        }
    }
}
