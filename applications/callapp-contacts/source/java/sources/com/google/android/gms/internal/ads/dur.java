package com.google.android.gms.internal.ads;

import android.view.View;
import com.google.android.gms.internal.ads.beb;
import java.lang.reflect.InvocationTargetException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dur.class */
public final class dur extends dus {

    /* renamed from: d */
    private final View f47635d;

    public dur(dtg dtgVar, String str, String str2, beb.C12217a.C12219b c12219b, int i, int i2, View view) {
        super(dtgVar, str, str2, c12219b, i, 57);
        this.f47635d = view;
    }

    @Override // com.google.android.gms.internal.ads.dus
    /* renamed from: a */
    protected final void mo15698a() throws IllegalAccessException, InvocationTargetException {
        if (this.f47635d != null) {
            Boolean bool = (Boolean) ekb.m14831e().m18571a(C12187aq.f42701bK);
            dto dtoVar = new dto((String) this.f47638c.invoke(null, this.f47635d, this.f47636a.m15741a().getResources().getDisplayMetrics(), bool));
            beb.C12217a.C12226g.C12227a m17963a = beb.C12217a.C12226g.m17963a();
            m17963a.m17957a(dtoVar.f47595a.longValue()).m17956b(dtoVar.f47596b.longValue()).m17955c(dtoVar.f47597c.longValue());
            if (bool.booleanValue()) {
                m17963a.m17954d(dtoVar.f47598d.longValue());
            }
            this.f47637b.m18048a((beb.C12217a.C12226g) ((dnh) m17963a.mo16259f()));
        }
    }
}
