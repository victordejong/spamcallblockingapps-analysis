package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.beb;
import java.lang.reflect.InvocationTargetException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/duk.class */
public final class duk extends dus {

    /* renamed from: d */
    private final StackTraceElement[] f47621d;

    public duk(dtg dtgVar, String str, String str2, beb.C12217a.C12219b c12219b, int i, int i2, StackTraceElement[] stackTraceElementArr) {
        super(dtgVar, str, str2, c12219b, i, 45);
        this.f47621d = stackTraceElementArr;
    }

    @Override // com.google.android.gms.internal.ads.dus
    /* renamed from: a */
    protected final void mo15698a() throws IllegalAccessException, InvocationTargetException {
        if (this.f47621d != null) {
            dtc dtcVar = new dtc((String) this.f47638c.invoke(null, this.f47621d));
            synchronized (this.f47637b) {
                this.f47637b.m18009x(dtcVar.f47536a.longValue());
                if (dtcVar.f47537b.booleanValue()) {
                    this.f47637b.m18039c(dtcVar.f47538c.booleanValue() ? bpi.ENUM_FALSE : bpi.ENUM_TRUE);
                } else {
                    this.f47637b.m18039c(bpi.ENUM_FAILURE);
                }
            }
        }
    }
}
