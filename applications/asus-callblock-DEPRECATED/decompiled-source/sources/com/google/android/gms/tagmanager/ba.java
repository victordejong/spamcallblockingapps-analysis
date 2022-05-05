package com.google.android.gms.tagmanager;

import android.content.Context;
import com.google.android.gms.internal.h;
import com.google.android.gms.internal.k;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/ba.class */
final class ba extends q {

    /* renamed from: b  reason: collision with root package name */
    private static final String f4292b = h.ADVERTISING_TRACKING_ENABLED.toString();
    private final f c;

    public ba(Context context) {
        this(f.a(context));
    }

    private ba(f fVar) {
        super(f4292b, new String[0]);
        this.c = fVar;
    }

    @Override // com.google.android.gms.tagmanager.q
    public final k.a a(Map<String, k.a> map) {
        return cn.a(Boolean.valueOf(!this.c.b()));
    }

    @Override // com.google.android.gms.tagmanager.q
    public final boolean a() {
        return false;
    }
}
