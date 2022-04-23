package com.google.android.gms.internal.ads;

import android.view.View;
import com.google.android.gms.internal.ads.beb;
import java.lang.reflect.InvocationTargetException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dur.class */
public final class dur extends dus {

    /* renamed from: d  reason: collision with root package name */
    private final View f27236d;

    public dur(dtg dtgVar, String str, String str2, beb.a.b bVar, int i, int i2, View view) {
        super(dtgVar, str, str2, bVar, i, 57);
        this.f27236d = view;
    }

    @Override // com.google.android.gms.internal.ads.dus
    protected final void a() throws IllegalAccessException, InvocationTargetException {
        if (this.f27236d != null) {
            Boolean bool = (Boolean) ekb.e().a(aq.bK);
            dto dtoVar = new dto((String) this.f27239c.invoke(null, this.f27236d, this.f27237a.a().getResources().getDisplayMetrics(), bool));
            beb.a.g.C0464a a2 = beb.a.g.a();
            a2.a(dtoVar.f27209a.longValue()).b(dtoVar.f27210b.longValue()).c(dtoVar.f27211c.longValue());
            if (bool.booleanValue()) {
                a2.d(dtoVar.f27212d.longValue());
            }
            this.f27238b.a((beb.a.g) ((dnh) a2.f()));
        }
    }
}
