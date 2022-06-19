package com.google.firebase.iid;

import android.content.Intent;
import android.util.Log;
import com.google.android.gms.tasks.AbstractC4469g;
import com.google.android.gms.tasks.C4473j;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
/* renamed from: com.google.firebase.iid.bh */
/* loaded from: classes-dex2jar.jar:com/google/firebase/iid/bh.class */
final class C4975bh implements AbstractC4940aa {

    /* renamed from: a */
    private final ExecutorService f21140a;

    public C4975bh(ExecutorService executorService) {
        this.f21140a = executorService;
    }

    @Override // com.google.firebase.iid.AbstractC4940aa
    /* renamed from: a */
    public final AbstractC4469g<Integer> mo1939a(Intent intent) {
        return C4473j.m3879a(this.f21140a, new Callable(intent) { // from class: com.google.firebase.iid.bg

            /* renamed from: a */
            private final Intent f21139a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f21139a = intent;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                Intent intent2 = this.f21139a;
                String stringExtra = intent2.getStringExtra("CMD");
                if (stringExtra != null) {
                    if (Log.isLoggable("FirebaseInstanceId", 3)) {
                        String valueOf = String.valueOf(intent2.getExtras());
                        Log.d("FirebaseInstanceId", new StringBuilder(String.valueOf(stringExtra).length() + 21 + String.valueOf(valueOf).length()).append("Received command: ").append(stringExtra).append(" - ").append(valueOf).toString());
                    }
                    if ("RST".equals(stringExtra) || "RST_FULL".equals(stringExtra)) {
                        FirebaseInstanceId.m2008a().m1986g();
                    } else if ("SYNC".equals(stringExtra)) {
                        FirebaseInstanceId.m2008a().m1984i();
                    }
                }
                return -1;
            }
        });
    }
}
