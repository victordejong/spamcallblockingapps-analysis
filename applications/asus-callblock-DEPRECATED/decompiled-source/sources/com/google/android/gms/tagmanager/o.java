package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.h;
import com.google.android.gms.internal.k;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/o.class */
public final class o extends q {

    /* renamed from: b  reason: collision with root package name */
    private static final String f4415b = h.EVENT.toString();
    private final bx c;

    public o(bx bxVar) {
        super(f4415b, new String[0]);
        this.c = bxVar;
    }

    @Override // com.google.android.gms.tagmanager.q
    public final k.a a(Map<String, k.a> map) {
        String a2 = this.c.a();
        return a2 == null ? cn.f() : cn.a((Object) a2);
    }

    @Override // com.google.android.gms.tagmanager.q
    public final boolean a() {
        return false;
    }
}
