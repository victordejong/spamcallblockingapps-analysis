package com.google.android.gms.internal.ads;

import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.C2384n;
import com.google.android.gms.ads.p124g.C2295a;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Date;
import java.util.List;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dyb.class */
public final class dyb {

    /* renamed from: a */
    public static final dyb f16089a = new dyb();

    protected dyb() {
    }

    /* renamed from: a */
    public static final /* synthetic */ int m8194a(String str, String str2) {
        return C2384n.f6846a.indexOf(str) - C2384n.f6846a.indexOf(str2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v70, types: [long] */
    /* JADX WARN: Type inference failed for: r29v0 */
    /* JADX WARN: Type inference failed for: r29v1 */
    /* JADX WARN: Type inference failed for: r29v2 */
    /* JADX WARN: Type inference failed for: r3v4 */
    /* renamed from: a */
    public static dya m8196a(Context context, ebi ebiVar) {
        Date m8063a = ebiVar.m8063a();
        ?? time = m8063a != null ? m8063a.getTime() : true;
        String m8060b = ebiVar.m8060b();
        int m8058d = ebiVar.m8058d();
        Set<String> m8057e = ebiVar.m8057e();
        List unmodifiableList = !m8057e.isEmpty() ? Collections.unmodifiableList(new ArrayList(m8057e)) : null;
        boolean m8062a = ebiVar.m8062a(context);
        Location m8056f = ebiVar.m8056f();
        Bundle m8061a = ebiVar.m8061a(AdMobAdapter.class);
        dxu dxuVar = null;
        if (ebiVar.m8045q() != null) {
            String str = "";
            if (dyx.m8154i().containsKey(ebiVar.m8045q().m14819a())) {
                str = dyx.m8154i().get(ebiVar.m8045q().m14819a());
            }
            dxuVar = new dxu(ebiVar.m8045q().m14818b(), str);
        }
        boolean m8055g = ebiVar.m8055g();
        String m8054h = ebiVar.m8054h();
        C2295a m8052j = ebiVar.m8052j();
        eck eckVar = m8052j != null ? new eck(m8052j) : null;
        Context applicationContext = context.getApplicationContext();
        String str2 = null;
        if (applicationContext != null) {
            String packageName = applicationContext.getPackageName();
            dyx.m8162a();
            str2 = C3634xr.m6791a(Thread.currentThread().getStackTrace(), packageName);
        }
        boolean m8046p = ebiVar.m8046p();
        C2384n m8004c = ebl.m8012a().m8004c();
        return new dya(8, time == true ? 1L : 0L, m8061a, m8058d, unmodifiableList, m8062a, Math.max(ebiVar.m8049m(), m8004c.m14623a()), m8055g, m8054h, eckVar, m8056f, m8060b, ebiVar.m8050l(), ebiVar.m8048n(), Collections.unmodifiableList(new ArrayList(ebiVar.m8047o())), ebiVar.m8053i(), str2, m8046p, dxuVar, Math.max(ebiVar.m8044r(), m8004c.m14622b()), (String) Collections.max(Arrays.asList(ebiVar.m8043s(), m8004c.m14621c()), dye.f16104a), ebiVar.m8059c());
    }

    /* renamed from: a */
    public static C3462rh m8195a(Context context, ebi ebiVar, String str) {
        return new C3462rh(m8196a(context, ebiVar), str);
    }
}
