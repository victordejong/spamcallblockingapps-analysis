package com.google.firebase.messaging;

import android.util.Log;
import com.google.android.gms.tasks.AbstractC7954a;
import com.google.android.gms.tasks.AbstractC7966g;
import java.util.Map;
import java.util.concurrent.Executor;
import p020b.p036e.C1489a;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.firebase.messaging.j0 */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/messaging/j0.class */
public class C9289j0 {

    /* renamed from: a */
    private final Executor f39800a;

    /* renamed from: b */
    private final Map<String, AbstractC7966g<String>> f39801b = new C1489a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.firebase.messaging.j0$a */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/messaging/j0$a.class */
    public interface AbstractC9290a {
        AbstractC7966g<String> start();
    }

    public C9289j0(Executor executor) {
        this.f39800a = executor;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public AbstractC7966g<String> m1227a(String str, AbstractC9290a abstractC9290a) {
        synchronized (this) {
            AbstractC7966g<String> abstractC7966g = this.f39801b.get(str);
            if (abstractC7966g != null) {
                if (Log.isLoggable("FirebaseMessaging", 3)) {
                    String valueOf = String.valueOf(str);
                    Log.d("FirebaseMessaging", valueOf.length() != 0 ? "Joining ongoing request for: ".concat(valueOf) : new String("Joining ongoing request for: "));
                }
                return abstractC7966g;
            }
            if (Log.isLoggable("FirebaseMessaging", 3)) {
                String valueOf2 = String.valueOf(str);
                Log.d("FirebaseMessaging", valueOf2.length() != 0 ? "Making new request for: ".concat(valueOf2) : new String("Making new request for: "));
            }
            AbstractC7966g mo5816k = abstractC9290a.start().mo5816k(this.f39800a, new AbstractC7954a(this, str) { // from class: com.google.firebase.messaging.i0

                /* renamed from: a */
                private final C9289j0 f39797a;

                /* renamed from: b */
                private final String f39798b;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f39797a = this;
                    this.f39798b = str;
                }

                @Override // com.google.android.gms.tasks.AbstractC7954a
                /* renamed from: a */
                public Object mo1125a(AbstractC7966g abstractC7966g2) {
                    this.f39797a.m1226b(this.f39798b, abstractC7966g2);
                    return abstractC7966g2;
                }
            });
            this.f39801b.put(str, mo5816k);
            return mo5816k;
        }
    }

    /* renamed from: b */
    public final /* synthetic */ AbstractC7966g m1226b(String str, AbstractC7966g abstractC7966g) {
        synchronized (this) {
            this.f39801b.remove(str);
        }
        return abstractC7966g;
    }
}
