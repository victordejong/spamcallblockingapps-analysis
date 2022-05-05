package com.google.firebase.iid;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import androidx.annotation.NonNull;
import androidx.legacy.content.WakefulBroadcastReceiver;
import com.google.firebase.iid.FirebaseInstanceIdReceiver;
import java.util.concurrent.ExecutorService;
import p081h.p203i.p204a.p224e.p293r.AbstractC9132c;
import p081h.p203i.p204a.p224e.p293r.AbstractC9143h;
import p081h.p203i.p325c.p364t.AbstractC9864a;
import p081h.p203i.p325c.p364t.C9874f;
import p081h.p203i.p325c.p364t.C9878h;
import p081h.p203i.p325c.p364t.C9897p0;
import p081h.p203i.p325c.p364t.C9909u;
/* loaded from: classes2-dex2jar.jar:com/google/firebase/iid/FirebaseInstanceIdReceiver.class */
public final class FirebaseInstanceIdReceiver extends WakefulBroadcastReceiver {

    /* renamed from: a */
    public final ExecutorService f7765a = C9878h.m14049b();

    /* renamed from: a */
    public static final /* synthetic */ void m31071a(boolean z, BroadcastReceiver.PendingResult pendingResult, AbstractC9143h hVar) {
        if (z) {
            pendingResult.setResultCode(hVar.mo16009e() ? ((Integer) hVar.mo16014b()).intValue() : 500);
        }
        pendingResult.finish();
    }

    /* renamed from: c */
    public static Intent m31069c(Context context, Intent intent) {
        Intent a = C9897p0.m14023a(intent);
        if (a != null) {
            intent = a;
        }
        intent.setComponent(null);
        intent.setPackage(context.getPackageName());
        if (Build.VERSION.SDK_INT <= 18) {
            intent.removeCategory(context.getPackageName());
        }
        return intent;
    }

    /* renamed from: b */
    public final void m31070b(Context context, Intent intent) {
        AbstractC9864a uVar = "google.com/iid".equals(intent.getStringExtra("from")) ? new C9909u(this.f7765a) : new C9874f(context, this.f7765a);
        final boolean isOrderedBroadcast = isOrderedBroadcast();
        final BroadcastReceiver.PendingResult goAsync = goAsync();
        uVar.mo13974a(intent).mo16018a(this.f7765a, new AbstractC9132c(isOrderedBroadcast, goAsync) { // from class: h.i.c.t.p

            /* renamed from: a */
            public final boolean f22404a;

            /* renamed from: b */
            public final BroadcastReceiver.PendingResult f22405b;

            {
                this.f22404a = isOrderedBroadcast;
                this.f22405b = goAsync;
            }

            @Override // p081h.p203i.p204a.p224e.p293r.AbstractC9132c
            /* renamed from: a */
            public final void mo3743a(AbstractC9143h hVar) {
                FirebaseInstanceIdReceiver.m31071a(this.f22404a, this.f22405b, hVar);
            }
        });
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(@NonNull Context context, @NonNull Intent intent) {
        if (intent != null) {
            m31070b(context, m31069c(context, intent));
        }
    }
}
