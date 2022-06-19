package com.google.firebase.messaging;

import android.util.Log;
import androidx.p023b.C0428a;
import com.google.android.gms.tasks.AbstractC14179b;
import com.google.android.gms.tasks.AbstractC14185h;
import java.util.Map;
import java.util.concurrent.Executor;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.firebase.messaging.aj */
/* loaded from: classes4-dex2jar.jar:com/google/firebase/messaging/aj.class */
public final class C15849aj {

    /* renamed from: a */
    private final Executor f56333a;

    /* renamed from: b */
    private final Map<String, AbstractC14185h<String>> f56334b = new C0428a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.firebase.messaging.aj$a */
    /* loaded from: classes4-dex2jar.jar:com/google/firebase/messaging/aj$a.class */
    public interface AbstractC15850a {
        /* renamed from: a */
        AbstractC14185h<String> mo8116a();
    }

    public C15849aj(Executor executor) {
        this.f56333a = executor;
    }

    /* renamed from: a */
    public final /* synthetic */ AbstractC14185h m8183a(String str, AbstractC14185h abstractC14185h) throws Exception {
        synchronized (this) {
            this.f56334b.remove(str);
        }
        return abstractC14185h;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public final AbstractC14185h<String> m8182a(String str, AbstractC15850a abstractC15850a) {
        synchronized (this) {
            AbstractC14185h<String> abstractC14185h = this.f56334b.get(str);
            if (abstractC14185h != null) {
                if (Log.isLoggable("FirebaseMessaging", 3)) {
                    String valueOf = String.valueOf(str);
                    if (valueOf.length() != 0) {
                        "Joining ongoing request for: ".concat(valueOf);
                    } else {
                        new String("Joining ongoing request for: ");
                    }
                }
                return abstractC14185h;
            }
            if (Log.isLoggable("FirebaseMessaging", 3)) {
                String valueOf2 = String.valueOf(str);
                if (valueOf2.length() != 0) {
                    "Making new request for: ".concat(valueOf2);
                } else {
                    new String("Making new request for: ");
                }
            }
            AbstractC14185h mo11477b = abstractC15850a.mo8116a().mo11477b(this.f56333a, new AbstractC14179b(this, str) { // from class: com.google.firebase.messaging.ak

                /* renamed from: a */
                private final C15849aj f56335a;

                /* renamed from: b */
                private final String f56336b;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f56335a = this;
                    this.f56336b = str;
                }

                @Override // com.google.android.gms.tasks.AbstractC14179b
                public final Object then(AbstractC14185h abstractC14185h2) {
                    this.f56335a.m8183a(this.f56336b, abstractC14185h2);
                    return abstractC14185h2;
                }
            });
            this.f56334b.put(str, mo11477b);
            return mo11477b;
        }
    }
}
