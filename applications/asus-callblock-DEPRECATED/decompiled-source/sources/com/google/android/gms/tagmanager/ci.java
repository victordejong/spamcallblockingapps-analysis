package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.k;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/ci.class */
abstract class ci extends bi {
    public ci(String str) {
        super(str);
    }

    @Override // com.google.android.gms.tagmanager.bi
    protected final boolean a(k.a aVar, k.a aVar2, Map<String, k.a> map) {
        String a2 = cn.a(aVar);
        String a3 = cn.a(aVar2);
        return (a2 == cn.e() || a3 == cn.e()) ? false : a(a2, a3, map);
    }

    protected abstract boolean a(String str, String str2, Map<String, k.a> map);
}
