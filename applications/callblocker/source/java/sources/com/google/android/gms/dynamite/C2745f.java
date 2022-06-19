package com.google.android.gms.dynamite;

import android.content.Context;
import com.google.android.gms.dynamite.DynamiteModule;
/* renamed from: com.google.android.gms.dynamite.f */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/dynamite/f.class */
final class C2745f implements DynamiteModule.AbstractC2735a {
    @Override // com.google.android.gms.dynamite.DynamiteModule.AbstractC2735a
    /* renamed from: a */
    public final DynamiteModule.AbstractC2735a.C2736a mo13777a(Context context, String str, DynamiteModule.AbstractC2735a.AbstractC2737b abstractC2737b) {
        DynamiteModule.AbstractC2735a.C2736a c2736a = new DynamiteModule.AbstractC2735a.C2736a();
        c2736a.f7564a = abstractC2737b.mo13779a(context, str);
        if (c2736a.f7564a != 0) {
            c2736a.f7565b = abstractC2737b.mo13778a(context, str, false);
        } else {
            c2736a.f7565b = abstractC2737b.mo13778a(context, str, true);
        }
        if (c2736a.f7564a == 0 && c2736a.f7565b == 0) {
            c2736a.f7566c = 0;
        } else if (c2736a.f7565b >= c2736a.f7564a) {
            c2736a.f7566c = 1;
        } else {
            c2736a.f7566c = -1;
        }
        return c2736a;
    }
}
