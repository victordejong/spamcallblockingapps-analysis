package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.h;
import com.google.android.gms.internal.k;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/k.class */
final class k extends ci {

    /* renamed from: b  reason: collision with root package name */
    private static final String f4413b = h.ENDS_WITH.toString();

    public k() {
        super(f4413b);
    }

    @Override // com.google.android.gms.tagmanager.ci
    protected final boolean a(String str, String str2, Map<String, k.a> map) {
        return str.endsWith(str2);
    }
}
