package com.google.android.gms.tagmanager;

import android.os.Build;
import com.google.android.gms.internal.h;
import com.google.android.gms.internal.k;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/bz.class */
final class bz extends q {

    /* renamed from: b  reason: collision with root package name */
    private static final String f4334b = h.SDK_VERSION.toString();

    public bz() {
        super(f4334b, new String[0]);
    }

    @Override // com.google.android.gms.tagmanager.q
    public final k.a a(Map<String, k.a> map) {
        return cn.a(Integer.valueOf(Build.VERSION.SDK_INT));
    }

    @Override // com.google.android.gms.tagmanager.q
    public final boolean a() {
        return true;
    }
}
