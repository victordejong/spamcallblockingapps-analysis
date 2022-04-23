package com.facebook.appevents;

import com.facebook.appevents.g.c;
import com.facebook.internal.b.b.a;
import com.facebook.internal.l;
import com.facebook.internal.q;
/* loaded from: classes3-dex2jar.jar:com/facebook/appevents/i.class */
public class i {
    public static void a() {
        if (!a.a(i.class)) {
            try {
                q.a(new q.b() { // from class: com.facebook.appevents.i.1
                    @Override // com.facebook.internal.q.b
                    public final void a() {
                        l.a(l.b.AAM, new l.a() { // from class: com.facebook.appevents.i.1.1
                            @Override // com.facebook.internal.l.a
                            public final void a(boolean z) {
                                if (z) {
                                    com.facebook.appevents.a.a.a();
                                }
                            }
                        });
                        l.a(l.b.RestrictiveDataFiltering, new l.a() { // from class: com.facebook.appevents.i.1.2
                            @Override // com.facebook.internal.l.a
                            public final void a(boolean z) {
                                if (z) {
                                    com.facebook.appevents.i.a.a();
                                }
                            }
                        });
                        l.a(l.b.PrivacyProtection, new l.a() { // from class: com.facebook.appevents.i.1.3
                            @Override // com.facebook.internal.l.a
                            public final void a(boolean z) {
                                if (z) {
                                    c.a();
                                }
                            }
                        });
                        l.a(l.b.EventDeactivation, new l.a() { // from class: com.facebook.appevents.i.1.4
                            @Override // com.facebook.internal.l.a
                            public final void a(boolean z) {
                                if (z) {
                                    com.facebook.appevents.c.a.a();
                                }
                            }
                        });
                        l.a(l.b.IapLogging, new l.a() { // from class: com.facebook.appevents.i.1.5
                            @Override // com.facebook.internal.l.a
                            public final void a(boolean z) {
                                if (z) {
                                    com.facebook.appevents.d.c.a();
                                }
                            }
                        });
                    }
                });
            } catch (Throwable th) {
                a.a(th, i.class);
            }
        }
    }
}
