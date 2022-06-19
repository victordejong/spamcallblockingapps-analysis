package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.Parcelable;
import com.google.android.gms.ads.internal.util.zzf;
import com.google.android.gms.ads.internal.zzr;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
/* renamed from: com.google.android.gms.internal.ads.yo */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/yo.class */
public final class C13075yo implements efc {

    /* renamed from: c */
    final C13071yk f50089c;

    /* renamed from: f */
    private final zzf f50092f;

    /* renamed from: a */
    final Object f50087a = new Object();

    /* renamed from: d */
    final HashSet<C13063yc> f50090d = new HashSet<>();

    /* renamed from: g */
    private final HashSet<Object> f50093g = new HashSet<>();

    /* renamed from: e */
    boolean f50091e = false;

    /* renamed from: b */
    final C13074yn f50088b = new C13074yn();

    public C13075yo(String str, zzf zzfVar) {
        this.f50089c = new C13071yk(str, zzfVar);
        this.f50092f = zzfVar;
    }

    /* renamed from: a */
    public final Bundle m13955a(Context context, AbstractC13070yj abstractC13070yj) {
        HashSet<C13063yc> hashSet = new HashSet<>();
        synchronized (this.f50087a) {
            hashSet.addAll(this.f50090d);
            this.f50090d.clear();
        }
        Bundle bundle = new Bundle();
        bundle.putBundle("app", this.f50089c.m13971a(context, this.f50088b.m13956b()));
        Bundle bundle2 = new Bundle();
        Iterator<Object> it2 = this.f50093g.iterator();
        if (it2.hasNext()) {
            it2.next();
            throw new NoSuchMethodError();
        }
        bundle.putBundle("slots", bundle2);
        ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
        Iterator<C13063yc> it3 = hashSet.iterator();
        while (it3.hasNext()) {
            arrayList.add(it3.next().m13984a());
        }
        bundle.putParcelableArrayList("ads", arrayList);
        abstractC13070yj.mo13973a(hashSet);
        return bundle;
    }

    /* renamed from: a */
    public final void m13954a(C13063yc c13063yc) {
        synchronized (this.f50087a) {
            this.f50090d.add(c13063yc);
        }
    }

    @Override // com.google.android.gms.internal.ads.efc
    /* renamed from: a */
    public final void mo13953a(boolean z) {
        long mo19039a = zzr.zzlc().mo19039a();
        if (!z) {
            this.f50092f.zzfa(mo19039a);
            this.f50092f.zzdj(this.f50089c.f50076d);
            return;
        }
        if (mo19039a - this.f50092f.zzzh() > ((Long) ekb.m14831e().m18571a(C12187aq.f42640aC)).longValue()) {
            this.f50089c.f50076d = -1;
        } else {
            this.f50089c.f50076d = this.f50092f.zzzi();
        }
        this.f50091e = true;
    }
}
