package com.google.firebase.iid;

import android.os.Binder;
import android.os.Process;
import android.util.Log;
import com.google.android.gms.tasks.AbstractC4465c;
import com.google.android.gms.tasks.AbstractC4469g;
/* renamed from: com.google.firebase.iid.ad */
/* loaded from: classes-dex2jar.jar:com/google/firebase/iid/ad.class */
public final class BinderC4943ad extends Binder {

    /* renamed from: a */
    private final AbstractC4945af f21078a;

    /* renamed from: a */
    public final void m1969a(C4947ah c4947ah) {
        if (Binder.getCallingUid() != Process.myUid()) {
            throw new SecurityException("Binding only allowed within app");
        }
        if (Log.isLoggable("FirebaseInstanceId", 3)) {
            Log.d("FirebaseInstanceId", "service received new intent via bind strategy");
        }
        this.f21078a.m1966a(c4947ah.f21083a).mo3898a(C4956aq.m1959a(), new AbstractC4465c(c4947ah) { // from class: com.google.firebase.iid.ag

            /* renamed from: a */
            private final C4947ah f21082a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f21082a = c4947ah;
            }

            @Override // com.google.android.gms.tasks.AbstractC4465c
            /* renamed from: a */
            public final void mo1947a(AbstractC4469g abstractC4469g) {
                this.f21082a.m1964b();
            }
        });
    }
}
