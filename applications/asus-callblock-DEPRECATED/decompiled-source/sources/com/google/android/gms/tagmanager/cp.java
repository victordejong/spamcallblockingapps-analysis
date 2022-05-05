package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.h;
import com.google.android.gms.internal.i;
import com.google.android.gms.internal.k;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/cp.class */
final class cp extends q {

    /* renamed from: b  reason: collision with root package name */
    private static final String f4364b = h.UPPERCASE_STRING.toString();
    private static final String c = i.ARG0.toString();

    public cp() {
        super(f4364b, c);
    }

    @Override // com.google.android.gms.tagmanager.q
    public final k.a a(Map<String, k.a> map) {
        return cn.a((Object) cn.a(map.get(c)).toUpperCase());
    }

    @Override // com.google.android.gms.tagmanager.q
    public final boolean a() {
        return true;
    }
}
