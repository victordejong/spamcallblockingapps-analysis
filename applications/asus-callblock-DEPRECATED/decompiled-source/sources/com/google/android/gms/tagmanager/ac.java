package com.google.android.gms.tagmanager;

import android.content.Context;
import com.google.android.gms.internal.h;
import com.google.android.gms.internal.k;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/ac.class */
final class ac extends q {

    /* renamed from: b  reason: collision with root package name */
    private static final String f4267b = h.ADVERTISER_ID.toString();
    private final f c;

    public ac(Context context) {
        this(f.a(context));
    }

    private ac(f fVar) {
        super(f4267b, new String[0]);
        this.c = fVar;
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
