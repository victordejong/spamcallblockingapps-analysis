package com.google.firebase.iid;

import android.util.Log;
import android.util.Pair;
import androidx.p023b.C0428a;
import com.google.android.gms.tasks.AbstractC14179b;
import com.google.android.gms.tasks.AbstractC14185h;
import java.util.Map;
import java.util.concurrent.Executor;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.firebase.iid.r */
/* loaded from: classes4-dex2jar.jar:com/google/firebase/iid/r.class */
public final class C15778r {

    /* renamed from: a */
    private final Executor f56155a;

    /* renamed from: b */
    private final Map<Pair<String, String>, AbstractC14185h<AbstractC15772l>> f56156b = new C0428a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.firebase.iid.r$a */
    /* loaded from: classes4-dex2jar.jar:com/google/firebase/iid/r$a.class */
    public interface AbstractC15779a {
        /* renamed from: a */
        AbstractC14185h<AbstractC15772l> mo8409a();
    }

    public C15778r(Executor executor) {
        this.f56155a = executor;
    }

    /* renamed from: a */
    public final /* synthetic */ AbstractC14185h m8411a(Pair pair, AbstractC14185h abstractC14185h) throws Exception {
        synchronized (this) {
            this.f56156b.remove(pair);
        }
        return abstractC14185h;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public final AbstractC14185h<AbstractC15772l> m8410a(String str, String str2, AbstractC15779a abstractC15779a) {
        synchronized (this) {
            Pair pair = new Pair(str, str2);
            AbstractC14185h<AbstractC15772l> abstractC14185h = this.f56156b.get(pair);
            if (abstractC14185h != null) {
                if (Log.isLoggable("FirebaseInstanceId", 3)) {
                    String valueOf = String.valueOf(pair);
                    StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 29);
                    sb.append("Joining ongoing request for: ");
                    sb.append(valueOf);
                }
                return abstractC14185h;
            }
            if (Log.isLoggable("FirebaseInstanceId", 3)) {
                String valueOf2 = String.valueOf(pair);
                StringBuilder sb2 = new StringBuilder(String.valueOf(valueOf2).length() + 24);
                sb2.append("Making new request for: ");
                sb2.append(valueOf2);
            }
            AbstractC14185h mo11477b = abstractC15779a.mo8409a().mo11477b(this.f56155a, new AbstractC14179b(this, pair) { // from class: com.google.firebase.iid.s

                /* renamed from: a */
                private final C15778r f56157a;

                /* renamed from: b */
                private final Pair f56158b;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f56157a = this;
                    this.f56158b = pair;
                }

                @Override // com.google.android.gms.tasks.AbstractC14179b
                public final Object then(AbstractC14185h abstractC14185h2) {
                    this.f56157a.m8411a(this.f56158b, abstractC14185h2);
                    return abstractC14185h2;
                }
            });
            this.f56156b.put(pair, mo11477b);
            return mo11477b;
        }
    }
}
