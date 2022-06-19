package com.google.firebase.iid;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Parcelable;
import androidx.p035f.p036a.AbstractC0652a;
import com.google.android.gms.tasks.AbstractC4465c;
import com.google.android.gms.tasks.AbstractC4469g;
import java.util.concurrent.ExecutorService;
/* loaded from: classes-dex2jar.jar:com/google/firebase/iid/FirebaseInstanceIdReceiver.class */
public final class FirebaseInstanceIdReceiver extends AbstractC0652a {

    /* renamed from: a */
    private final ExecutorService f21072a = C4956aq.m1958b();

    /* renamed from: a */
    public static final /* synthetic */ void m1974a(boolean z, BroadcastReceiver.PendingResult pendingResult, AbstractC4469g abstractC4469g) {
        if (z) {
            pendingResult.setResultCode(abstractC4469g.mo3894b() ? ((Integer) abstractC4469g.mo3891d()).intValue() : 500);
        }
        pendingResult.finish();
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        if (intent == null) {
            return;
        }
        Parcelable parcelableExtra = intent.getParcelableExtra("wrapped_intent");
        Intent intent2 = parcelableExtra instanceof Intent ? (Intent) parcelableExtra : null;
        if (intent2 != null) {
            intent = intent2;
        }
        intent.setComponent(null);
        intent.setPackage(context.getPackageName());
        if (Build.VERSION.SDK_INT <= 18) {
            intent.removeCategory(context.getPackageName());
        }
        ("google.com/iid".equals(intent.getStringExtra("from")) ? new C4975bh(this.f21072a) : new C4967b(context, this.f21072a)).mo1939a(intent).mo3898a(this.f21072a, new AbstractC4465c(isOrderedBroadcast(), goAsync()) { // from class: com.google.firebase.iid.ba

            /* renamed from: a */
            private final boolean f21122a;

            /* renamed from: b */
            private final BroadcastReceiver.PendingResult f21123b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f21122a = isOrderedBroadcast;
                this.f21123b = goAsync;
            }

            @Override // com.google.android.gms.tasks.AbstractC4465c
            /* renamed from: a */
            public final void mo1947a(AbstractC4469g abstractC4469g) {
                FirebaseInstanceIdReceiver.m1974a(this.f21122a, this.f21123b, abstractC4469g);
            }
        });
    }
}
