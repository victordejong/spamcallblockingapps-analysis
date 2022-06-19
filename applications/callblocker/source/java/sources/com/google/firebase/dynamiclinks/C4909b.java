package com.google.firebase.dynamiclinks;

import android.net.Uri;
import com.google.android.gms.common.util.C2711h;
import com.google.firebase.dynamiclinks.internal.C4910a;
/* renamed from: com.google.firebase.dynamiclinks.b */
/* loaded from: classes-dex2jar.jar:com/google/firebase/dynamiclinks/b.class */
public class C4909b {

    /* renamed from: a */
    private final C4910a f21027a;

    public C4909b(C4910a c4910a) {
        if (c4910a == null) {
            this.f21027a = null;
            return;
        }
        if (c4910a.m2037b() == 0) {
            c4910a.m2038a(C2711h.m13859d().mo13862a());
        }
        this.f21027a = c4910a;
    }

    /* renamed from: a */
    public Uri m2040a() {
        String m2039a;
        Uri uri = null;
        if (this.f21027a != null && (m2039a = this.f21027a.m2039a()) != null) {
            uri = Uri.parse(m2039a);
        }
        return uri;
    }
}
