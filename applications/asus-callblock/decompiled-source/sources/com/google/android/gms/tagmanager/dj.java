package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.h;
import com.google.android.gms.internal.i;
import com.google.android.gms.internal.k;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/dj.class */
final class dj extends q {

    /* renamed from: b  reason: collision with root package name */
    private static final String f4386b = h.CUSTOM_VAR.toString();
    private static final String c = i.NAME.toString();
    private static final String d = i.DEFAULT_VALUE.toString();
    private final c e;

    public dj(c cVar) {
        super(f4386b, c);
        this.e = cVar;
    }

    @Override // com.google.android.gms.tagmanager.q
    public final k.a a(Map<String, k.a> map) {
        k.a a2;
        Object b2 = this.e.b(cn.a(map.get(c)));
        if (b2 == null) {
            a2 = map.get(d);
            if (a2 == null) {
                a2 = cn.f();
            }
        } else {
            a2 = cn.a(b2);
        }
        return a2;
    }

    @Override // com.google.android.gms.tagmanager.q
    public final boolean a() {
        return false;
    }
}
