package p134j4;

import android.content.ComponentName;
import android.content.Context;
import android.os.Bundle;
import java.util.Map;
import java.util.Objects;
import p124i4.C3102d;
import p189o4.AbstractC3882s;
import p189o4.C3874k;
import p291y.C4951d;
/* renamed from: j4.t0 */
/* loaded from: classes-dex2jar.jar:j4/t0.class */
public final /* synthetic */ class C3251t0 implements AbstractC3183a1, AbstractC3882s {

    /* renamed from: a */
    public final /* synthetic */ int f10973a;

    /* renamed from: b */
    public final Object f10974b;

    /* renamed from: c */
    public final Object f10975c;

    public /* synthetic */ C3251t0(Object obj, Object obj2, int i) {
        this.f10973a = i;
        this.f10974b = obj;
        this.f10975c = obj2;
    }

    @Override // p134j4.AbstractC3183a1
    public final Object zza() {
        Boolean bool;
        switch (this.f10973a) {
            case 0:
                C3187b1 c3187b1 = (C3187b1) this.f10974b;
                Bundle bundle = (Bundle) this.f10975c;
                Objects.requireNonNull(c3187b1);
                int i = bundle.getInt("session_id");
                if (i == 0) {
                    bool = Boolean.TRUE;
                } else {
                    Map map = c3187b1.f10734e;
                    Integer valueOf = Integer.valueOf(i);
                    if (!map.containsKey(valueOf)) {
                        bool = Boolean.TRUE;
                    } else {
                        C3266y0 c3266y0 = (C3266y0) c3187b1.f10734e.get(valueOf);
                        if (c3266y0.f11065c.f11054d == 6) {
                            bool = Boolean.FALSE;
                        } else {
                            bool = Boolean.valueOf(!C4951d.m185r(c3266y0.f11065c.f11054d, bundle.getInt(C3102d.m2640L("status", C3187b1.m2561c(bundle)))));
                        }
                    }
                }
                return bool;
            default:
                Object zza = ((AbstractC3882s) this.f10974b).zza();
                Context m2534a = ((C3224k2) ((AbstractC3882s) this.f10975c)).m2534a();
                C3204f2 c3204f2 = (C3204f2) zza;
                C3874k.m1745a(m2534a.getPackageManager(), new ComponentName(m2534a.getPackageName(), "com.google.android.play.core.assetpacks.AssetPackExtractionService"), 4);
                C3874k.m1745a(m2534a.getPackageManager(), new ComponentName(m2534a.getPackageName(), "com.google.android.play.core.assetpacks.ExtractionForegroundService"), 4);
                Objects.requireNonNull(c3204f2, "Cannot return null from a non-@Nullable @Provides method");
                return c3204f2;
        }
    }
}
