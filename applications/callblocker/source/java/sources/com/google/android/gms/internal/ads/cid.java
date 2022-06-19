package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.pm.PackageManager;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cid.class */
public final class cid {

    /* renamed from: a */
    private final Map<String, cif> f13086a = new HashMap();

    /* renamed from: b */
    private final Context f13087b;

    /* renamed from: c */
    private final C3542ug f13088c;

    /* renamed from: d */
    private final C3647yd f13089d;

    public cid(Context context, C3647yd c3647yd, C3542ug c3542ug) {
        this.f13087b = context;
        this.f13089d = c3647yd;
        this.f13088c = c3542ug;
    }

    /* renamed from: a */
    private final cif m11257a() {
        return new cif(this.f13087b, this.f13088c.m7084h(), this.f13088c.m7081k());
    }

    /* renamed from: b */
    private final cif m11255b(String str) {
        cif m11257a;
        C3446qs m7298a = C3446qs.m7298a(this.f13087b);
        try {
            m7298a.m7296a(str);
            C3561uz c3561uz = new C3561uz();
            c3561uz.m7048a(this.f13087b, str, false);
            C3563va c3563va = new C3563va(this.f13088c.m7084h(), c3561uz);
            m11257a = new cif(m7298a, c3563va, new C3553ur(C3634xr.m6785c(), c3563va));
        } catch (PackageManager.NameNotFoundException e) {
            m11257a = m11257a();
        }
        return m11257a;
    }

    /* renamed from: a */
    public final cif m11256a(String str) {
        cif cifVar;
        if (str == null) {
            cifVar = m11257a();
        } else if (this.f13086a.containsKey(str)) {
            cifVar = this.f13086a.get(str);
        } else {
            cif m11255b = m11255b(str);
            this.f13086a.put(str, m11255b);
            cifVar = m11255b;
        }
        return cifVar;
    }
}
