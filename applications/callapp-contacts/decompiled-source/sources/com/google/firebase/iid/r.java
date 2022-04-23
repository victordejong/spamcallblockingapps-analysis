package com.google.firebase.iid;

import android.util.Log;
import android.util.Pair;
import com.google.android.gms.tasks.b;
import com.google.android.gms.tasks.h;
import java.util.Map;
import java.util.concurrent.Executor;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/iid/r.class */
final class r {

    /* renamed from: a  reason: collision with root package name */
    private final Executor f32355a;

    /* renamed from: b  reason: collision with root package name */
    private final Map<Pair<String, String>, h<l>> f32356b = new androidx.b.a();

    /* loaded from: classes4-dex2jar.jar:com/google/firebase/iid/r$a.class */
    interface a {
        h<l> a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public r(Executor executor) {
        this.f32355a = executor;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ h a(Pair pair, h hVar) throws Exception {
        synchronized (this) {
            this.f32356b.remove(pair);
        }
        return hVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    public final h<l> a(String str, String str2, a aVar) {
        synchronized (this) {
            final Pair pair = new Pair(str, str2);
            h<l> hVar = this.f32356b.get(pair);
            if (hVar != null) {
                if (Log.isLoggable("FirebaseInstanceId", 3)) {
                    String valueOf = String.valueOf(pair);
                    StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 29);
                    sb.append("Joining ongoing request for: ");
                    sb.append(valueOf);
                }
                return hVar;
            }
            if (Log.isLoggable("FirebaseInstanceId", 3)) {
                String valueOf2 = String.valueOf(pair);
                StringBuilder sb2 = new StringBuilder(String.valueOf(valueOf2).length() + 24);
                sb2.append("Making new request for: ");
                sb2.append(valueOf2);
            }
            h b2 = aVar.a().b(this.f32355a, new b(this, pair) { // from class: com.google.firebase.iid.s

                /* renamed from: a  reason: collision with root package name */
                private final r f32357a;

                /* renamed from: b  reason: collision with root package name */
                private final Pair f32358b;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f32357a = this;
                    this.f32358b = pair;
                }

                @Override // com.google.android.gms.tasks.b
                public final Object then(h hVar2) {
                    this.f32357a.a(this.f32358b, hVar2);
                    return hVar2;
                }
            });
            this.f32356b.put(pair, b2);
            return b2;
        }
    }
}
