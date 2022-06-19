package com.google.firebase.messaging;

import android.content.Intent;
import android.os.Binder;
import android.os.Process;
import android.util.Log;
import com.google.android.gms.tasks.AbstractC7958c;
import com.google.android.gms.tasks.AbstractC7966g;
import com.google.firebase.messaging.ServiceConnectionC9269a1;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.firebase.messaging.x0 */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/messaging/x0.class */
public class BinderC9324x0 extends Binder {

    /* renamed from: d */
    private final AbstractC9325a f39884d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.firebase.messaging.x0$a */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/messaging/x0$a.class */
    public interface AbstractC9325a {
        /* renamed from: a */
        AbstractC7966g<Void> mo1126a(Intent intent);
    }

    public BinderC9324x0(AbstractC9325a abstractC9325a) {
        this.f39884d = abstractC9325a;
    }

    /* renamed from: b */
    public void m1127b(ServiceConnectionC9269a1.C9270a c9270a) {
        if (Binder.getCallingUid() == Process.myUid()) {
            if (Log.isLoggable("FirebaseMessaging", 3)) {
                Log.d("FirebaseMessaging", "service received new intent via bind strategy");
            }
            this.f39884d.mo1126a(c9270a.f39768a).mo5824c(ExecutorC9317v0.f39878d, new AbstractC7958c(c9270a) { // from class: com.google.firebase.messaging.w0

                /* renamed from: a */
                private final ServiceConnectionC9269a1.C9270a f39880a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f39880a = c9270a;
                }

                @Override // com.google.android.gms.tasks.AbstractC7958c
                /* renamed from: a */
                public void mo1124a(AbstractC7966g abstractC7966g) {
                    this.f39880a.m1307b();
                }
            });
            return;
        }
        throw new SecurityException("Binding only allowed within app");
    }
}
