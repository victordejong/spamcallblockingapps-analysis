package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.k;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/q.class */
public abstract class q {

    /* renamed from: a  reason: collision with root package name */
    final Set<String> f4416a;

    /* renamed from: b  reason: collision with root package name */
    private final String f4417b;

    public q(String str, String... strArr) {
        this.f4417b = str;
        this.f4416a = new HashSet(strArr.length);
        for (String str2 : strArr) {
            this.f4416a.add(str2);
        }
    }

    public abstract k.a a(Map<String, k.a> map);

    public abstract boolean a();

    public String b() {
        return this.f4417b;
    }

    public Set<String> c() {
        return this.f4416a;
    }
}
