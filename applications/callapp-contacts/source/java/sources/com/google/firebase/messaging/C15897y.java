package com.google.firebase.messaging;

import android.content.Intent;
import com.google.android.gms.common.internal.C12045o;
import com.google.firebase.encoders.AbstractC15738d;
import com.google.firebase.encoders.AbstractC15739e;
import java.io.IOException;
/* renamed from: com.google.firebase.messaging.y */
/* loaded from: classes4-dex2jar.jar:com/google/firebase/messaging/y.class */
public final class C15897y {

    /* renamed from: a */
    final String f56445a = C12045o.m19159a("MESSAGE_DELIVERED", (Object) "evenType must be non-null");

    /* renamed from: b */
    final Intent f56446b;

    /* renamed from: com.google.firebase.messaging.y$a */
    /* loaded from: classes4-dex2jar.jar:com/google/firebase/messaging/y$a.class */
    static final class C15898a implements AbstractC15738d<C15897y> {
        @Override // com.google.firebase.encoders.AbstractC15735b
        public final /* synthetic */ void encode(Object obj, AbstractC15739e abstractC15739e) throws IOException {
            C15897y c15897y = (C15897y) obj;
            AbstractC15739e abstractC15739e2 = abstractC15739e;
            Intent intent = c15897y.f56446b;
            abstractC15739e2.add("ttl", C15844ae.m8224f(intent));
            abstractC15739e2.add("event", c15897y.f56445a);
            abstractC15739e2.add("instanceId", C15844ae.m8219k(intent));
            abstractC15739e2.add("priority", C15844ae.m8216n(intent));
            abstractC15739e2.add("packageName", C15844ae.m8232a());
            abstractC15739e2.add("sdkPlatform", "ANDROID");
            abstractC15739e2.add("messageType", C15844ae.m8218l(intent));
            String m8220j = C15844ae.m8220j(intent);
            if (m8220j != null) {
                abstractC15739e2.add("messageId", m8220j);
            }
            String m8217m = C15844ae.m8217m(intent);
            if (m8217m != null) {
                abstractC15739e2.add("topic", m8217m);
            }
            String m8223g = C15844ae.m8223g(intent);
            if (m8223g != null) {
                abstractC15739e2.add("collapseKey", m8223g);
            }
            if (C15844ae.m8221i(intent) != null) {
                abstractC15739e2.add("analyticsLabel", C15844ae.m8221i(intent));
            }
            if (C15844ae.m8222h(intent) != null) {
                abstractC15739e2.add("composerLabel", C15844ae.m8222h(intent));
            }
            String m8215o = C15844ae.m8215o(intent);
            if (m8215o != null) {
                abstractC15739e2.add("projectNumber", m8215o);
            }
        }
    }

    /* renamed from: com.google.firebase.messaging.y$b */
    /* loaded from: classes4-dex2jar.jar:com/google/firebase/messaging/y$b.class */
    public static final class C15899b {

        /* renamed from: a */
        final C15897y f56447a;

        public C15899b(C15897y c15897y) {
            this.f56447a = (C15897y) C12045o.m19162a(c15897y);
        }
    }

    /* renamed from: com.google.firebase.messaging.y$c */
    /* loaded from: classes4-dex2jar.jar:com/google/firebase/messaging/y$c.class */
    static final class C15900c implements AbstractC15738d<C15899b> {
        @Override // com.google.firebase.encoders.AbstractC15735b
        public final /* synthetic */ void encode(Object obj, AbstractC15739e abstractC15739e) throws IOException {
            abstractC15739e.add("messaging_client_event", ((C15899b) obj).f56447a);
        }
    }

    public C15897y(String str, Intent intent) {
        this.f56446b = (Intent) C12045o.m19161a(intent, "intent must be non-null");
    }
}
