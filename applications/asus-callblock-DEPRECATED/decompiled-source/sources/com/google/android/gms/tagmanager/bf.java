package com.google.android.gms.tagmanager;

import android.os.Build;
import com.google.android.gms.internal.h;
import com.google.android.gms.internal.k;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/bf.class */
final class bf extends q {

    /* renamed from: b  reason: collision with root package name */
    private static final String f4295b = h.OS_VERSION.toString();

    public bf() {
        super(f4295b, new String[0]);
    }

    @Override // com.google.android.gms.tagmanager.q
    public final k.a a(Map<String, k.a> map) {
        return cn.a((Object) Build.VERSION.RELEASE);
    }

    @Override // com.google.android.gms.tagmanager.q
    public final boolean a() {
        return true;
    }
}
