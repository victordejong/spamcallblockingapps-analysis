package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.beb;
import java.lang.reflect.InvocationTargetException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dug.class */
public final class dug extends dus {
    public dug(dtg dtgVar, String str, String str2, beb.a.b bVar, int i, int i2) {
        super(dtgVar, str, str2, bVar, i, 3);
    }

    @Override // com.google.android.gms.internal.ads.dus
    protected final void a() throws IllegalAccessException, InvocationTargetException {
        dmg dmgVar = new dmg((String) this.f27239c.invoke(null, this.f27237a.a(), Boolean.valueOf(((Boolean) ekb.e().a(aq.bB)).booleanValue())));
        synchronized (this.f27238b) {
            this.f27238b.a(dmgVar.f26953a);
            this.f27238b.C(dmgVar.f26954b);
        }
    }
}
