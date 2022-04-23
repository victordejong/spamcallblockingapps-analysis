package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.beb;
import java.lang.reflect.InvocationTargetException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dum.class */
public final class dum extends dus {

    /* renamed from: d  reason: collision with root package name */
    private final dtn f27230d;
    private long e;

    public dum(dtg dtgVar, String str, String str2, beb.a.b bVar, int i, int i2, dtn dtnVar) {
        super(dtgVar, str, str2, bVar, i, 53);
        this.f27230d = dtnVar;
        if (dtnVar != null) {
            this.e = dtnVar.a();
        }
    }

    @Override // com.google.android.gms.internal.ads.dus
    protected final void a() throws IllegalAccessException, InvocationTargetException {
        if (this.f27230d != null) {
            this.f27238b.A(((Long) this.f27239c.invoke(null, Long.valueOf(this.e))).longValue());
        }
    }
}
