package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.beb;
import java.lang.reflect.InvocationTargetException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dum.class */
public final class dum extends dus {

    /* renamed from: d */
    private final dtn f47623d;

    /* renamed from: e */
    private long f47624e;

    public dum(dtg dtgVar, String str, String str2, beb.C12217a.C12219b c12219b, int i, int i2, dtn dtnVar) {
        super(dtgVar, str, str2, c12219b, i, 53);
        this.f47623d = dtnVar;
        if (dtnVar != null) {
            this.f47624e = dtnVar.m15717a();
        }
    }

    @Override // com.google.android.gms.internal.ads.dus
    /* renamed from: a */
    protected final void mo15698a() throws IllegalAccessException, InvocationTargetException {
        if (this.f47623d != null) {
            this.f47637b.m18059A(((Long) this.f47638c.invoke(null, Long.valueOf(this.f47624e))).longValue());
        }
    }
}
