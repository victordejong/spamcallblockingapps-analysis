package com.google.android.gms.location;

import android.content.Context;
import com.google.android.gms.common.api.C11808a;
import com.google.android.gms.internal.location.C13326an;
import com.google.android.gms.internal.location.C13328c;
import com.google.android.gms.internal.location.C13341p;
import com.google.android.gms.internal.location.C13347v;
/* renamed from: com.google.android.gms.location.e */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/location/e.class */
public final class C13755e {

    /* renamed from: a */
    public static final C11808a<C11808a.AbstractC11812d.C11815c> f51095a;
    @Deprecated

    /* renamed from: b */
    public static final AbstractC13728a f51096b = new C13326an();
    @Deprecated

    /* renamed from: c */
    public static final AbstractC13753c f51097c = new C13328c();
    @Deprecated

    /* renamed from: d */
    public static final AbstractC13756f f51098d = new C13347v();

    /* renamed from: e */
    private static final C11808a.C11818g<C13341p> f51099e;

    /* renamed from: f */
    private static final C11808a.AbstractC11809a<C13341p, C11808a.AbstractC11812d.C11815c> f51100f;

    static {
        C11808a.C11818g<C13341p> c11818g = new C11808a.C11818g<>();
        f51099e = c11818g;
        C13729aa c13729aa = new C13729aa();
        f51100f = c13729aa;
        f51095a = new C11808a<>("LocationServices.API", c13729aa, c11818g);
    }

    private C13755e() {
    }

    /* renamed from: a */
    public static C13752b m12271a(Context context) {
        return new C13752b(context);
    }
}
