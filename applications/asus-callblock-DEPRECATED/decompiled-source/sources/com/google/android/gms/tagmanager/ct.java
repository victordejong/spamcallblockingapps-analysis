package com.google.android.gms.tagmanager;

import android.content.Context;
import com.google.android.gms.internal.h;
import com.google.android.gms.internal.k;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/ct.class */
final class ct extends q {

    /* renamed from: b  reason: collision with root package name */
    private static final String f4366b = h.APP_ID.toString();
    private final Context c;

    public ct(Context context) {
        super(f4366b, new String[0]);
        this.c = context;
    }

    @Override // com.google.android.gms.tagmanager.q
    public final k.a a(Map<String, k.a> map) {
        return cn.a((Object) this.c.getPackageName());
    }

    @Override // com.google.android.gms.tagmanager.q
    public final boolean a() {
        return true;
    }
}
