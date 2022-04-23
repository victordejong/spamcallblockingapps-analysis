package com.google.android.gms.common.api.internal;

import androidx.b.a;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.AvailabilityException;
import com.google.android.gms.common.api.h;
import com.google.android.gms.tasks.i;
import java.util.Iterator;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/internal/br.class */
public final class br {

    /* renamed from: d  reason: collision with root package name */
    private int f22703d;

    /* renamed from: b  reason: collision with root package name */
    private final a<b<?>, String> f22701b = new a<>();

    /* renamed from: c  reason: collision with root package name */
    private final i<Map<b<?>, String>> f22702c = new i<>();
    private boolean e = false;

    /* renamed from: a  reason: collision with root package name */
    final a<b<?>, ConnectionResult> f22700a = new a<>();

    public br(Iterable<? extends h<?>> iterable) {
        Iterator<? extends h<?>> it2 = iterable.iterator();
        while (it2.hasNext()) {
            this.f22700a.put(((h) it2.next()).e(), null);
        }
        this.f22703d = this.f22700a.keySet().size();
    }

    public final void a(b<?> bVar, ConnectionResult connectionResult, String str) {
        this.f22700a.put(bVar, connectionResult);
        this.f22701b.put(bVar, str);
        this.f22703d--;
        if (!connectionResult.isSuccess()) {
            this.e = true;
        }
        if (this.f22703d != 0) {
            return;
        }
        if (this.e) {
            this.f22702c.a(new AvailabilityException(this.f22700a));
            return;
        }
        this.f22702c.a((i<Map<b<?>, String>>) this.f22701b);
    }
}
