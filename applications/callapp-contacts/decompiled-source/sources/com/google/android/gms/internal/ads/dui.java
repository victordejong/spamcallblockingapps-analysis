package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.beb;
import java.lang.reflect.InvocationTargetException;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dui.class */
public final class dui extends dus {

    /* renamed from: d  reason: collision with root package name */
    private List<Long> f27227d = null;

    public dui(dtg dtgVar, String str, String str2, beb.a.b bVar, int i, int i2) {
        super(dtgVar, str, str2, bVar, i, 31);
    }

    @Override // com.google.android.gms.internal.ads.dus
    protected final void a() throws IllegalAccessException, InvocationTargetException {
        this.f27238b.m(-1L);
        this.f27238b.n(-1L);
        if (this.f27227d == null) {
            this.f27227d = (List) this.f27239c.invoke(null, this.f27237a.a());
        }
        List<Long> list = this.f27227d;
        if (list != null && list.size() == 2) {
            synchronized (this.f27238b) {
                this.f27238b.m(this.f27227d.get(0).longValue());
                this.f27238b.n(this.f27227d.get(1).longValue());
            }
        }
    }
}
