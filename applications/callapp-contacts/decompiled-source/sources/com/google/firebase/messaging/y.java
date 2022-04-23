package com.google.firebase.messaging;

import android.content.Intent;
import com.google.android.gms.common.internal.o;
import com.google.firebase.encoders.d;
import com.google.firebase.encoders.e;
import java.io.IOException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/google/firebase/messaging/y.class */
public final class y {

    /* renamed from: a  reason: collision with root package name */
    final String f32568a = o.a("MESSAGE_DELIVERED", (Object) "evenType must be non-null");

    /* renamed from: b  reason: collision with root package name */
    final Intent f32569b;

    /* loaded from: classes4-dex2jar.jar:com/google/firebase/messaging/y$a.class */
    static final class a implements d<y> {
        @Override // com.google.firebase.encoders.b
        public final /* synthetic */ void encode(Object obj, e eVar) throws IOException {
            y yVar = (y) obj;
            e eVar2 = eVar;
            Intent intent = yVar.f32569b;
            eVar2.add("ttl", ae.f(intent));
            eVar2.add("event", yVar.f32568a);
            eVar2.add("instanceId", ae.k(intent));
            eVar2.add("priority", ae.n(intent));
            eVar2.add("packageName", ae.a());
            eVar2.add("sdkPlatform", "ANDROID");
            eVar2.add("messageType", ae.l(intent));
            String j = ae.j(intent);
            if (j != null) {
                eVar2.add("messageId", j);
            }
            String m = ae.m(intent);
            if (m != null) {
                eVar2.add("topic", m);
            }
            String g = ae.g(intent);
            if (g != null) {
                eVar2.add("collapseKey", g);
            }
            if (ae.i(intent) != null) {
                eVar2.add("analyticsLabel", ae.i(intent));
            }
            if (ae.h(intent) != null) {
                eVar2.add("composerLabel", ae.h(intent));
            }
            String o = ae.o(intent);
            if (o != null) {
                eVar2.add("projectNumber", o);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/google/firebase/messaging/y$b.class */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        final y f32570a;

        /* JADX INFO: Access modifiers changed from: package-private */
        public b(y yVar) {
            this.f32570a = (y) o.a(yVar);
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/firebase/messaging/y$c.class */
    static final class c implements d<b> {
        @Override // com.google.firebase.encoders.b
        public final /* synthetic */ void encode(Object obj, e eVar) throws IOException {
            eVar.add("messaging_client_event", ((b) obj).f32570a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public y(String str, Intent intent) {
        this.f32569b = (Intent) o.a(intent, "intent must be non-null");
    }
}
