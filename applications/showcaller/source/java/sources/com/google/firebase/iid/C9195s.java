package com.google.firebase.iid;

import android.util.Log;
import android.util.Pair;
import com.google.android.gms.tasks.AbstractC7954a;
import com.google.android.gms.tasks.AbstractC7966g;
import java.util.Map;
import java.util.concurrent.Executor;
import p020b.p036e.C1489a;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.firebase.iid.s */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/iid/s.class */
public class C9195s {

    /* renamed from: a */
    private final Executor f39558a;

    /* renamed from: b */
    private final Map<Pair<String, String>, AbstractC7966g<AbstractC9188l>> f39559b = new C1489a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.firebase.iid.s$a */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/iid/s$a.class */
    public interface AbstractC9196a {
        AbstractC7966g<AbstractC9188l> start();
    }

    public C9195s(Executor executor) {
        this.f39558a = executor;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public AbstractC7966g<AbstractC9188l> m1588a(String str, String str2, AbstractC9196a abstractC9196a) {
        synchronized (this) {
            Pair pair = new Pair(str, str2);
            AbstractC7966g<AbstractC9188l> abstractC7966g = this.f39559b.get(pair);
            if (abstractC7966g != null) {
                if (Log.isLoggable("FirebaseInstanceId", 3)) {
                    String valueOf = String.valueOf(pair);
                    StringBuilder sb = new StringBuilder(valueOf.length() + 29);
                    sb.append("Joining ongoing request for: ");
                    sb.append(valueOf);
                    Log.d("FirebaseInstanceId", sb.toString());
                }
                return abstractC7966g;
            }
            if (Log.isLoggable("FirebaseInstanceId", 3)) {
                String valueOf2 = String.valueOf(pair);
                StringBuilder sb2 = new StringBuilder(valueOf2.length() + 24);
                sb2.append("Making new request for: ");
                sb2.append(valueOf2);
                Log.d("FirebaseInstanceId", sb2.toString());
            }
            AbstractC7966g mo5816k = abstractC9196a.start().mo5816k(this.f39558a, new AbstractC7954a(this, pair) { // from class: com.google.firebase.iid.r

                /* renamed from: a */
                private final C9195s f39556a;

                /* renamed from: b */
                private final Pair f39557b;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f39556a = this;
                    this.f39557b = pair;
                }

                @Override // com.google.android.gms.tasks.AbstractC7954a
                /* renamed from: a */
                public Object mo1125a(AbstractC7966g abstractC7966g2) {
                    this.f39556a.m1587b(this.f39557b, abstractC7966g2);
                    return abstractC7966g2;
                }
            });
            this.f39559b.put(pair, mo5816k);
            return mo5816k;
        }
    }

    /* renamed from: b */
    public final /* synthetic */ AbstractC7966g m1587b(Pair pair, AbstractC7966g abstractC7966g) {
        synchronized (this) {
            this.f39559b.remove(pair);
        }
        return abstractC7966g;
    }
}
