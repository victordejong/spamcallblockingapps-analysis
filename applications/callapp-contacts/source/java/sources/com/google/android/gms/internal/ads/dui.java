package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.beb;
import java.lang.reflect.InvocationTargetException;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dui.class */
public final class dui extends dus {

    /* renamed from: d */
    private List<Long> f47620d = null;

    public dui(dtg dtgVar, String str, String str2, beb.C12217a.C12219b c12219b, int i, int i2) {
        super(dtgVar, str, str2, c12219b, i, 31);
    }

    @Override // com.google.android.gms.internal.ads.dus
    /* renamed from: a */
    protected final void mo15698a() throws IllegalAccessException, InvocationTargetException {
        this.f47637b.m18020m(-1L);
        this.f47637b.m18019n(-1L);
        if (this.f47620d == null) {
            this.f47620d = (List) this.f47638c.invoke(null, this.f47636a.m15741a());
        }
        List<Long> list = this.f47620d;
        if (list == null || list.size() != 2) {
            return;
        }
        synchronized (this.f47637b) {
            this.f47637b.m18020m(this.f47620d.get(0).longValue());
            this.f47637b.m18019n(this.f47620d.get(1).longValue());
        }
    }
}
