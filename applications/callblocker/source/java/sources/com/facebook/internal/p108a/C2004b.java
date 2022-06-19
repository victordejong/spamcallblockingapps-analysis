package com.facebook.internal.p108a;

import com.facebook.C2095j;
import com.facebook.internal.C2039j;
import com.facebook.internal.p108a.p109a.C2001a;
import com.facebook.internal.p108a.p110b.C2008b;
/* renamed from: com.facebook.internal.a.b */
/* loaded from: classes-dex2jar.jar:com/facebook/internal/a/b.class */
public class C2004b {
    /* renamed from: a */
    public static void m15674a() {
        if (!C2095j.m15352p()) {
            return;
        }
        C2039j.m15624a(C2039j.EnumC2043b.CrashReport, new C2039j.AbstractC2042a() { // from class: com.facebook.internal.a.b.1
            @Override // com.facebook.internal.C2039j.AbstractC2042a
            /* renamed from: a */
            public void mo15345a(boolean z) {
                if (z) {
                    C2001a.m15679a();
                }
            }
        });
        C2039j.m15624a(C2039j.EnumC2043b.ErrorReport, new C2039j.AbstractC2042a() { // from class: com.facebook.internal.a.b.2
            @Override // com.facebook.internal.C2039j.AbstractC2042a
            /* renamed from: a */
            public void mo15345a(boolean z) {
                if (z) {
                    C2008b.m15668a();
                }
            }
        });
    }
}
