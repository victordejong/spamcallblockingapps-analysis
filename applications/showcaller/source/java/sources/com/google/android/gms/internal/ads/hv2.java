package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/hv2.class */
public final class hv2 {

    /* renamed from: a */
    private final ku2 f24052a;

    /* renamed from: b */
    private final gv2 f24053b;

    private hv2(gv2 gv2Var) {
        ju2 ju2Var = ju2.f24996b;
        this.f24053b = gv2Var;
        this.f24052a = ju2Var;
    }

    /* renamed from: b */
    public static hv2 m14535b(ku2 ku2Var) {
        return new hv2(new bv2(ku2Var));
    }

    /* renamed from: c */
    public static hv2 m14534c(int i) {
        return new hv2(new dv2(4000));
    }

    /* renamed from: g */
    public final Iterator<String> m14530g(CharSequence charSequence) {
        return this.f24053b.mo14798a(this, charSequence);
    }

    /* renamed from: d */
    public final Iterable<String> m14533d(CharSequence charSequence) {
        Objects.requireNonNull(charSequence);
        return new ev2(this, charSequence);
    }

    /* renamed from: f */
    public final List<String> m14531f(CharSequence charSequence) {
        Iterator<String> m14530g = m14530g(charSequence);
        ArrayList arrayList = new ArrayList();
        while (m14530g.hasNext()) {
            arrayList.add(m14530g.next());
        }
        return Collections.unmodifiableList(arrayList);
    }
}
