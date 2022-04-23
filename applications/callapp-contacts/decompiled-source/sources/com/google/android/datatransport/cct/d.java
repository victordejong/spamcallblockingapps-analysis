package com.google.android.datatransport.cct;

import com.google.android.datatransport.cct.b;
import com.google.android.datatransport.runtime.b.a;
import com.google.android.datatransport.runtime.c.b;
/* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/cct/d.class */
final /* synthetic */ class d implements b {

    /* renamed from: a  reason: collision with root package name */
    private static final d f20384a = new d();

    private d() {
    }

    public static b a() {
        return f20384a;
    }

    @Override // com.google.android.datatransport.runtime.c.b
    public final Object a(Object obj, Object obj2) {
        b.a aVar = (b.a) obj;
        b.C0414b bVar = (b.C0414b) obj2;
        if (bVar.f20381b == null) {
            return null;
        }
        a.a("CctTransportBackend", "Following redirect to: %s", bVar.f20381b);
        return new b.a(bVar.f20381b, aVar.f20378b, aVar.f20379c);
    }
}
