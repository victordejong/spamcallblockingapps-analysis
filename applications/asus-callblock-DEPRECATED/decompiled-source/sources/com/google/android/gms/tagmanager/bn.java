package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.h;
import com.google.android.gms.internal.i;
import com.google.android.gms.internal.k;
import java.util.Map;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/bn.class */
final class bn extends ci {

    /* renamed from: b  reason: collision with root package name */
    private static final String f4309b = h.REGEX.toString();
    private static final String c = i.IGNORE_CASE.toString();

    public bn() {
        super(f4309b);
    }

    @Override // com.google.android.gms.tagmanager.ci
    protected final boolean a(String str, String str2, Map<String, k.a> map) {
        boolean z;
        try {
            z = Pattern.compile(str2, cn.d(map.get(c)).booleanValue() ? 66 : 64).matcher(str).find();
        } catch (PatternSyntaxException e) {
            z = false;
        }
        return z;
    }
}
