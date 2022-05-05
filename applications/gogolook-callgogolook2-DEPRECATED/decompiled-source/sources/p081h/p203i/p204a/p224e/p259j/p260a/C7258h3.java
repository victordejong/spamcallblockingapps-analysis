package p081h.p203i.p204a.p224e.p259j.p260a;

import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.search.SearchAdRequest;
import com.google.android.gms.internal.ads.zzjk;
import com.google.android.gms.internal.ads.zznb;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.List;
import java.util.Set;
@AbstractC7354p0
/* renamed from: h.i.a.e.j.a.h3 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/h3.class */
public final class C7258h3 {

    /* renamed from: a */
    public static final C7258h3 f17345a = new C7258h3();

    /* renamed from: a */
    public static zzjk m20921a(Context context, C7444w5 w5Var) {
        String str;
        Date a = w5Var.m20614a();
        long time = a != null ? a.getTime() : -1L;
        String b = w5Var.m20611b();
        int d = w5Var.m20607d();
        Set<String> e = w5Var.m20606e();
        List unmodifiableList = !e.isEmpty() ? Collections.unmodifiableList(new ArrayList(e)) : null;
        boolean a2 = w5Var.m20613a(context);
        int n = w5Var.m20597n();
        Location f = w5Var.m20605f();
        Bundle c = w5Var.m20608c(AdMobAdapter.class);
        boolean g = w5Var.m20604g();
        String h = w5Var.m20603h();
        SearchAdRequest k = w5Var.m20600k();
        zznb zznbVar = k != null ? new zznb(k) : null;
        Context applicationContext = context.getApplicationContext();
        if (applicationContext != null) {
            String packageName = applicationContext.getPackageName();
            C7430v3.m20640a();
            str = C7343o1.m20768a(Thread.currentThread().getStackTrace(), packageName);
        } else {
            str = null;
        }
        return new zzjk(8, time, c, d, unmodifiableList, a2, n, g, h, zznbVar, f, b, w5Var.m20598m(), w5Var.m20609c(), Collections.unmodifiableList(new ArrayList(w5Var.m20596o())), w5Var.m20601j(), str, w5Var.m20602i(), null, w5Var.m20595p(), null);
    }
}
