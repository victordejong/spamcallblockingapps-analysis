package com.facebook.appevents;

import com.facebook.appevents.p279a.C9961a;
import com.facebook.appevents.p282c.C10006a;
import com.facebook.appevents.p283d.C10015c;
import com.facebook.appevents.p286g.C10052c;
import com.facebook.appevents.p288i.C10082a;
import com.facebook.internal.C10291l;
import com.facebook.internal.C10306q;
import com.facebook.internal.p299b.p301b.C10249a;
/* renamed from: com.facebook.appevents.i */
/* loaded from: classes3-dex2jar.jar:com/facebook/appevents/i.class */
public class C10075i {
    /* renamed from: a */
    public static void m23459a() {
        if (C10249a.m23108a(C10075i.class)) {
            return;
        }
        try {
            C10306q.m23030a(new C10306q.AbstractC10308b() { // from class: com.facebook.appevents.i.1
                @Override // com.facebook.internal.C10306q.AbstractC10308b
                /* renamed from: a */
                public final void mo23016a() {
                    C10291l.m23050a(C10291l.EnumC10293b.AAM, new C10291l.AbstractC10292a() { // from class: com.facebook.appevents.i.1.1
                        @Override // com.facebook.internal.C10291l.AbstractC10292a
                        /* renamed from: a */
                        public final void mo23045a(boolean z) {
                            if (z) {
                                C9961a.m23747a();
                            }
                        }
                    });
                    C10291l.m23050a(C10291l.EnumC10293b.RestrictiveDataFiltering, new C10291l.AbstractC10292a() { // from class: com.facebook.appevents.i.1.2
                        @Override // com.facebook.internal.C10291l.AbstractC10292a
                        /* renamed from: a */
                        public final void mo23045a(boolean z) {
                            if (z) {
                                C10082a.m23458a();
                            }
                        }
                    });
                    C10291l.m23050a(C10291l.EnumC10293b.PrivacyProtection, new C10291l.AbstractC10292a() { // from class: com.facebook.appevents.i.1.3
                        @Override // com.facebook.internal.C10291l.AbstractC10292a
                        /* renamed from: a */
                        public final void mo23045a(boolean z) {
                            if (z) {
                                C10052c.m23524a();
                            }
                        }
                    });
                    C10291l.m23050a(C10291l.EnumC10293b.EventDeactivation, new C10291l.AbstractC10292a() { // from class: com.facebook.appevents.i.1.4
                        @Override // com.facebook.internal.C10291l.AbstractC10292a
                        /* renamed from: a */
                        public final void mo23045a(boolean z) {
                            if (z) {
                                C10006a.m23639a();
                            }
                        }
                    });
                    C10291l.m23050a(C10291l.EnumC10293b.IapLogging, new C10291l.AbstractC10292a() { // from class: com.facebook.appevents.i.1.5
                        @Override // com.facebook.internal.C10291l.AbstractC10292a
                        /* renamed from: a */
                        public final void mo23045a(boolean z) {
                            if (z) {
                                C10015c.m23607a();
                            }
                        }
                    });
                }
            });
        } catch (Throwable th) {
            C10249a.m23106a(th, C10075i.class);
        }
    }
}
