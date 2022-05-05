package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.k;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/cl.class */
abstract class cl extends q {
    public cl(String str, String... strArr) {
        super(str, strArr);
    }

    @Override // com.google.android.gms.tagmanager.q
    public k.a a(Map<String, k.a> map) {
        b(map);
        return cn.f();
    }

    @Override // com.google.android.gms.tagmanager.q
    public boolean a() {
        return false;
    }

    public abstract void b(Map<String, k.a> map);
}
