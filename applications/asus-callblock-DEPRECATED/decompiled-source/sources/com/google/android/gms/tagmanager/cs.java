package com.google.android.gms.tagmanager;

import android.content.Context;
import com.google.android.gms.internal.h;
import com.google.android.gms.internal.i;
import com.google.android.gms.internal.k;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/cs.class */
final class cs extends q {

    /* renamed from: b  reason: collision with root package name */
    private static final String f4365b = h.ADWORDS_CLICK_REFERRER.toString();
    private static final String c = i.COMPONENT.toString();
    private static final String d = i.CONVERSION_ID.toString();
    private final Context e;

    public cs(Context context) {
        super(f4365b, d);
        this.e = context;
    }

    @Override // com.google.android.gms.tagmanager.q
    public final k.a a(Map<String, k.a> map) {
        k.a a2;
        k.a aVar = map.get(d);
        if (aVar == null) {
            a2 = cn.f();
        } else {
            String a3 = cn.a(aVar);
            k.a aVar2 = map.get(c);
            String a4 = ae.a(this.e, a3, aVar2 != null ? cn.a(aVar2) : null);
            a2 = a4 != null ? cn.a((Object) a4) : cn.f();
        }
        return a2;
    }

    @Override // com.google.android.gms.tagmanager.q
    public final boolean a() {
        return true;
    }
}
