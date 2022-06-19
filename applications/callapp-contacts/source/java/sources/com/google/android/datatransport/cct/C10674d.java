package com.google.android.datatransport.cct;

import com.google.android.datatransport.cct.C10670b;
import com.google.android.datatransport.runtime.p318b.C10692a;
import com.google.android.datatransport.runtime.p319c.AbstractC10715b;
/* renamed from: com.google.android.datatransport.cct.d */
/* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/cct/d.class */
final /* synthetic */ class C10674d implements AbstractC10715b {

    /* renamed from: a */
    private static final C10674d f34516a = new C10674d();

    private C10674d() {
    }

    /* renamed from: a */
    public static AbstractC10715b m22524a() {
        return f34516a;
    }

    @Override // com.google.android.datatransport.runtime.p319c.AbstractC10715b
    /* renamed from: a */
    public final Object mo22495a(Object obj, Object obj2) {
        C10670b.C10671a c10671a = (C10670b.C10671a) obj;
        C10670b.C10672b c10672b = (C10670b.C10672b) obj2;
        if (c10672b.f34513b != null) {
            C10692a.m22517a("CctTransportBackend", "Following redirect to: %s", c10672b.f34513b);
            return new C10670b.C10671a(c10672b.f34513b, c10671a.f34510b, c10671a.f34511c);
        }
        return null;
    }
}
