package com.google.firebase.messaging;

import android.util.Log;
import com.google.android.gms.tasks.b;
import com.google.android.gms.tasks.h;
import java.util.Map;
import java.util.concurrent.Executor;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/messaging/aj.class */
final class aj {

    /* renamed from: a  reason: collision with root package name */
    private final Executor f32473a;

    /* renamed from: b  reason: collision with root package name */
    private final Map<String, h<String>> f32474b = new androidx.b.a();

    /* loaded from: classes4-dex2jar.jar:com/google/firebase/messaging/aj$a.class */
    interface a {
        h<String> a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public aj(Executor executor) {
        this.f32473a = executor;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ h a(String str, h hVar) throws Exception {
        synchronized (this) {
            this.f32474b.remove(str);
        }
        return hVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    public final h<String> a(final String str, a aVar) {
        synchronized (this) {
            h<String> hVar = this.f32474b.get(str);
            if (hVar != null) {
                if (Log.isLoggable("FirebaseMessaging", 3)) {
                    String valueOf = String.valueOf(str);
                    if (valueOf.length() != 0) {
                        "Joining ongoing request for: ".concat(valueOf);
                    } else {
                        new String("Joining ongoing request for: ");
                    }
                }
                return hVar;
            }
            if (Log.isLoggable("FirebaseMessaging", 3)) {
                String valueOf2 = String.valueOf(str);
                if (valueOf2.length() != 0) {
                    "Making new request for: ".concat(valueOf2);
                } else {
                    new String("Making new request for: ");
                }
            }
            h b2 = aVar.a().b(this.f32473a, new b(this, str) { // from class: com.google.firebase.messaging.ak

                /* renamed from: a  reason: collision with root package name */
                private final aj f32475a;

                /* renamed from: b  reason: collision with root package name */
                private final String f32476b;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f32475a = this;
                    this.f32476b = str;
                }

                @Override // com.google.android.gms.tasks.b
                public final Object then(h hVar2) {
                    this.f32475a.a(this.f32476b, hVar2);
                    return hVar2;
                }
            });
            this.f32474b.put(str, b2);
            return b2;
        }
    }
}
