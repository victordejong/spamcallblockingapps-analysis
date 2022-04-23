package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.Parcelable;
import com.google.android.gms.ads.internal.util.zzf;
import com.google.android.gms.ads.internal.zzr;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/yo.class */
public final class yo implements efc {

    /* renamed from: c  reason: collision with root package name */
    final yk f28553c;
    private final zzf f;

    /* renamed from: a  reason: collision with root package name */
    final Object f28551a = new Object();

    /* renamed from: d  reason: collision with root package name */
    final HashSet<yc> f28554d = new HashSet<>();
    private final HashSet<Object> g = new HashSet<>();
    boolean e = false;

    /* renamed from: b  reason: collision with root package name */
    final yn f28552b = new yn();

    public yo(String str, zzf zzfVar) {
        this.f28553c = new yk(str, zzfVar);
        this.f = zzfVar;
    }

    public final Bundle a(Context context, yj yjVar) {
        HashSet<yc> hashSet = new HashSet<>();
        synchronized (this.f28551a) {
            hashSet.addAll(this.f28554d);
            this.f28554d.clear();
        }
        Bundle bundle = new Bundle();
        bundle.putBundle("app", this.f28553c.a(context, this.f28552b.b()));
        Bundle bundle2 = new Bundle();
        Iterator<Object> it2 = this.g.iterator();
        if (!it2.hasNext()) {
            bundle.putBundle("slots", bundle2);
            ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
            Iterator<yc> it3 = hashSet.iterator();
            while (it3.hasNext()) {
                arrayList.add(it3.next().a());
            }
            bundle.putParcelableArrayList("ads", arrayList);
            yjVar.a(hashSet);
            return bundle;
        }
        it2.next();
        throw new NoSuchMethodError();
    }

    public final void a(yc ycVar) {
        synchronized (this.f28551a) {
            this.f28554d.add(ycVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.efc
    public final void a(boolean z) {
        long a2 = zzr.zzlc().a();
        if (z) {
            if (a2 - this.f.zzzh() > ((Long) ekb.e().a(aq.aC)).longValue()) {
                this.f28553c.f28546d = -1;
            } else {
                this.f28553c.f28546d = this.f.zzzi();
            }
            this.e = true;
            return;
        }
        this.f.zzfa(a2);
        this.f.zzdj(this.f28553c.f28546d);
    }
}
