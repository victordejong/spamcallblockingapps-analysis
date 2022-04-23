package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.beb;
import java.lang.reflect.InvocationTargetException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/duk.class */
public final class duk extends dus {

    /* renamed from: d  reason: collision with root package name */
    private final StackTraceElement[] f27228d;

    public duk(dtg dtgVar, String str, String str2, beb.a.b bVar, int i, int i2, StackTraceElement[] stackTraceElementArr) {
        super(dtgVar, str, str2, bVar, i, 45);
        this.f27228d = stackTraceElementArr;
    }

    @Override // com.google.android.gms.internal.ads.dus
    protected final void a() throws IllegalAccessException, InvocationTargetException {
        if (this.f27228d != null) {
            dtc dtcVar = new dtc((String) this.f27239c.invoke(null, this.f27228d));
            synchronized (this.f27238b) {
                this.f27238b.x(dtcVar.f27180a.longValue());
                if (dtcVar.f27181b.booleanValue()) {
                    this.f27238b.c(dtcVar.f27182c.booleanValue() ? bpi.ENUM_FALSE : bpi.ENUM_TRUE);
                } else {
                    this.f27238b.c(bpi.ENUM_FAILURE);
                }
            }
        }
    }
}
