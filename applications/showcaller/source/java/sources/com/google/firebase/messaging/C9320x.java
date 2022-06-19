package com.google.firebase.messaging;

import android.content.Intent;
import com.google.android.gms.common.internal.C6155o;
import com.google.firebase.encoders.AbstractC9153c;
import com.google.firebase.encoders.AbstractC9154d;
/* renamed from: com.google.firebase.messaging.x */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/messaging/x.class */
public final class C9320x {

    /* renamed from: a */
    private final String f39881a = C6155o.m17021g("MESSAGE_DELIVERED", "evenType must be non-null");

    /* renamed from: b */
    private final Intent f39882b;

    /* renamed from: com.google.firebase.messaging.x$a */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/messaging/x$a.class */
    static class C9321a implements AbstractC9153c<C9320x> {
        /* renamed from: b */
        public void mo1130a(C9320x c9320x, AbstractC9154d abstractC9154d) {
            Intent m1133b = c9320x.m1133b();
            abstractC9154d.mo1685d("ttl", C9279e0.m1274q(m1133b));
            abstractC9154d.mo1682g("event", c9320x.m1134a());
            abstractC9154d.mo1682g("instanceId", C9279e0.m1286e(m1133b));
            abstractC9154d.mo1685d("priority", C9279e0.m1277n(m1133b));
            abstractC9154d.mo1682g("packageName", C9279e0.m1278m());
            abstractC9154d.mo1682g("sdkPlatform", "ANDROID");
            abstractC9154d.mo1682g("messageType", C9279e0.m1280k(m1133b));
            String m1284g = C9279e0.m1284g(m1133b);
            if (m1284g != null) {
                abstractC9154d.mo1682g("messageId", m1284g);
            }
            String m1275p = C9279e0.m1275p(m1133b);
            if (m1275p != null) {
                abstractC9154d.mo1682g("topic", m1275p);
            }
            String m1289b = C9279e0.m1289b(m1133b);
            if (m1289b != null) {
                abstractC9154d.mo1682g("collapseKey", m1289b);
            }
            if (C9279e0.m1283h(m1133b) != null) {
                abstractC9154d.mo1682g("analyticsLabel", C9279e0.m1283h(m1133b));
            }
            if (C9279e0.m1287d(m1133b) != null) {
                abstractC9154d.mo1682g("composerLabel", C9279e0.m1287d(m1133b));
            }
            String m1276o = C9279e0.m1276o(m1133b);
            if (m1276o != null) {
                abstractC9154d.mo1682g("projectNumber", m1276o);
            }
        }
    }

    /* renamed from: com.google.firebase.messaging.x$b */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/messaging/x$b.class */
    public static final class C9322b {

        /* renamed from: a */
        private final C9320x f39883a;

        public C9322b(C9320x c9320x) {
            this.f39883a = (C9320x) C6155o.m17018j(c9320x);
        }

        /* renamed from: a */
        C9320x m1131a() {
            return this.f39883a;
        }
    }

    /* renamed from: com.google.firebase.messaging.x$c */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/messaging/x$c.class */
    static final class C9323c implements AbstractC9153c<C9322b> {
        /* renamed from: b */
        public void mo1130a(C9322b c9322b, AbstractC9154d abstractC9154d) {
            abstractC9154d.mo1682g("messaging_client_event", c9322b.m1131a());
        }
    }

    public C9320x(String str, Intent intent) {
        this.f39882b = (Intent) C6155o.m17017k(intent, "intent must be non-null");
    }

    /* renamed from: a */
    String m1134a() {
        return this.f39881a;
    }

    /* renamed from: b */
    Intent m1133b() {
        return this.f39882b;
    }
}
