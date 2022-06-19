package com.google.firebase.iid;

import android.util.Log;
import android.util.Pair;
import androidx.p013b.C0373a;
import com.google.android.gms.tasks.AbstractC4459a;
import com.google.android.gms.tasks.AbstractC4469g;
import java.util.Map;
import java.util.concurrent.Executor;
import javax.annotation.concurrent.GuardedBy;
/* renamed from: com.google.firebase.iid.t */
/* loaded from: classes-dex2jar.jar:com/google/firebase/iid/t.class */
public final class C4993t {

    /* renamed from: a */
    private final Executor f21177a;
    @GuardedBy("this")

    /* renamed from: b */
    private final Map<Pair<String, String>, AbstractC4469g<AbstractC4938a>> f21178b = new C0373a();

    public C4993t(Executor executor) {
        this.f21177a = executor;
    }

    /* renamed from: a */
    public final /* synthetic */ AbstractC4469g m1910a(Pair pair, AbstractC4469g abstractC4469g) {
        synchronized (this) {
            this.f21178b.remove(pair);
        }
        return abstractC4469g;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public final AbstractC4469g<AbstractC4938a> m1909a(String str, String str2, AbstractC4995v abstractC4995v) {
        AbstractC4469g mo3893b;
        synchronized (this) {
            Pair<String, String> pair = new Pair<>(str, str2);
            AbstractC4469g abstractC4469g = this.f21178b.get(pair);
            if (abstractC4469g != null) {
                mo3893b = abstractC4469g;
                if (Log.isLoggable("FirebaseInstanceId", 3)) {
                    String valueOf = String.valueOf(pair);
                    Log.d("FirebaseInstanceId", new StringBuilder(String.valueOf(valueOf).length() + 29).append("Joining ongoing request for: ").append(valueOf).toString());
                    mo3893b = abstractC4469g;
                }
            } else {
                if (Log.isLoggable("FirebaseInstanceId", 3)) {
                    String valueOf2 = String.valueOf(pair);
                    Log.d("FirebaseInstanceId", new StringBuilder(String.valueOf(valueOf2).length() + 24).append("Making new request for: ").append(valueOf2).toString());
                }
                mo3893b = abstractC4995v.mo1900a().mo3893b(this.f21177a, new AbstractC4459a(this, pair) { // from class: com.google.firebase.iid.s

                    /* renamed from: a */
                    private final C4993t f21175a;

                    /* renamed from: b */
                    private final Pair f21176b;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f21175a = this;
                        this.f21176b = pair;
                    }

                    @Override // com.google.android.gms.tasks.AbstractC4459a
                    /* renamed from: a */
                    public final Object mo1911a(AbstractC4469g abstractC4469g2) {
                        return this.f21175a.m1910a(this.f21176b, abstractC4469g2);
                    }
                });
                this.f21178b.put(pair, mo3893b);
            }
        }
        return mo3893b;
    }
}
