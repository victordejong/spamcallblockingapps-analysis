package com.facebook.appevents;

import androidx.annotation.RestrictTo;
import com.facebook.appevents.p035q.C2290a;
import com.facebook.appevents.p039t.C2354b;
import com.facebook.appevents.p040u.C2360a;
import com.facebook.internal.C2455m;
import p081h.p154f.C6135n;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* renamed from: com.facebook.appevents.i */
/* loaded from: classes-dex2jar.jar:com/facebook/appevents/i.class */
public class C2276i {

    /* renamed from: com.facebook.appevents.i$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/appevents/i$a.class */
    public static final class C2277a implements C2455m.AbstractC2458c {
        @Override // com.facebook.internal.C2455m.AbstractC2458c
        /* renamed from: a */
        public void mo23727a(boolean z) {
            if (z) {
                C2290a.m35266c();
            }
        }
    }

    /* renamed from: com.facebook.appevents.i$b */
    /* loaded from: classes-dex2jar.jar:com/facebook/appevents/i$b.class */
    public static final class C2278b implements C2455m.AbstractC2458c {
        @Override // com.facebook.internal.C2455m.AbstractC2458c
        /* renamed from: a */
        public void mo23727a(boolean z) {
            if (z) {
                C2360a.m35033a();
            }
        }
    }

    /* renamed from: com.facebook.appevents.i$c */
    /* loaded from: classes-dex2jar.jar:com/facebook/appevents/i$c.class */
    public static final class C2279c implements C2455m.AbstractC2458c {
        @Override // com.facebook.internal.C2455m.AbstractC2458c
        /* renamed from: a */
        public void mo23727a(boolean z) {
            if (z) {
                C2354b.m35051e();
            }
        }
    }

    /* renamed from: a */
    public static void m35304a() {
        if (C6135n.m23742i()) {
            C2455m.m34685a(C2455m.EnumC2459d.AAM, new C2277a());
            C2455m.m34685a(C2455m.EnumC2459d.RestrictiveDataFiltering, new C2278b());
            C2455m.m34685a(C2455m.EnumC2459d.PrivacyProtection, new C2279c());
        }
    }
}
