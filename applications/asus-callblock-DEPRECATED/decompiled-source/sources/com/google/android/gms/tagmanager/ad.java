package com.google.android.gms.tagmanager;

import android.content.Context;
import com.google.android.gms.internal.h;
import com.google.android.gms.internal.i;
import com.google.android.gms.internal.k;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/ad.class */
final class ad extends q {

    /* renamed from: b  reason: collision with root package name */
    private static final String f4268b = h.INSTALL_REFERRER.toString();
    private static final String c = i.COMPONENT.toString();
    private final Context d;

    public ad(Context context) {
        super(f4268b, new String[0]);
        this.d = context;
    }

    @Override // com.google.android.gms.tagmanager.q
    public final k.a a(Map<String, k.a> map) {
        String b2 = ae.b(this.d, map.get(c) != null ? cn.a(map.get(c)) : null);
        return b2 != null ? cn.a((Object) b2) : cn.f();
    }

    @Override // com.google.android.gms.tagmanager.q
    public final boolean a() {
        return true;
    }
}
