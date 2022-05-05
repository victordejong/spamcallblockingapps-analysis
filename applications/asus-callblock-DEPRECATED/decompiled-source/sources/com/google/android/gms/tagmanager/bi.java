package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.i;
import com.google.android.gms.internal.k;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/bi.class */
public abstract class bi extends q {

    /* renamed from: b  reason: collision with root package name */
    private static final String f4302b = i.ARG0.toString();
    private static final String c = i.ARG1.toString();

    public bi(String str) {
        super(str, f4302b, c);
    }

    @Override // com.google.android.gms.tagmanager.q
    public final k.a a(Map<String, k.a> map) {
        k.a a2;
        Iterator<k.a> it = map.values().iterator();
        while (true) {
            if (it.hasNext()) {
                if (it.next() == cn.f()) {
                    a2 = cn.a((Object) false);
                    break;
                }
            } else {
                k.a aVar = map.get(f4302b);
                k.a aVar2 = map.get(c);
                a2 = cn.a(Boolean.valueOf((aVar == null || aVar2 == null) ? false : a(aVar, aVar2, map)));
            }
        }
        return a2;
    }

    @Override // com.google.android.gms.tagmanager.q
    public final boolean a() {
        return true;
    }

    protected abstract boolean a(k.a aVar, k.a aVar2, Map<String, k.a> map);

    @Override // com.google.android.gms.tagmanager.q
    public final /* bridge */ /* synthetic */ String b() {
        return super.b();
    }

    @Override // com.google.android.gms.tagmanager.q
    public final /* bridge */ /* synthetic */ Set c() {
        return super.c();
    }
}
