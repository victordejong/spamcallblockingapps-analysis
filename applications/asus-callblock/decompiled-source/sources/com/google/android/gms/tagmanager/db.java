package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.h;
import com.google.android.gms.internal.i;
import com.google.android.gms.internal.k;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/db.class */
final class db extends q {

    /* renamed from: b  reason: collision with root package name */
    private static final String f4374b = h.CONSTANT.toString();
    private static final String c = i.VALUE.toString();

    public db() {
        super(f4374b, c);
    }

    public static String d() {
        return f4374b;
    }

    public static String e() {
        return c;
    }

    @Override // com.google.android.gms.tagmanager.q
    public final k.a a(Map<String, k.a> map) {
        return map.get(c);
    }

    @Override // com.google.android.gms.tagmanager.q
    public final boolean a() {
        return true;
    }
}
