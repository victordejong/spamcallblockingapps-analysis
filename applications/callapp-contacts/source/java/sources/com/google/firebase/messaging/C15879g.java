package com.google.firebase.messaging;

import android.content.Context;
import android.content.Intent;
import android.util.Base64;
import android.util.Log;
import com.google.android.gms.common.util.C12110n;
import com.google.android.gms.tasks.AbstractC14179b;
import com.google.android.gms.tasks.AbstractC14185h;
import com.google.android.gms.tasks.C14188k;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
/* renamed from: com.google.firebase.messaging.g */
/* loaded from: classes4-dex2jar.jar:com/google/firebase/messaging/g.class */
public final class C15879g {

    /* renamed from: a */
    private static final Object f56420a = new Object();

    /* renamed from: b */
    private static ServiceConnectionC15870az f56421b;

    /* renamed from: c */
    private final Context f56422c;

    /* renamed from: d */
    private final Executor f56423d;

    public C15879g(Context context) {
        this.f56422c = context;
        this.f56423d = ExecutorC15880h.f56424a;
    }

    public C15879g(Context context, ExecutorService executorService) {
        this.f56422c = context;
        this.f56423d = executorService;
    }

    /* renamed from: a */
    public static final /* synthetic */ AbstractC14185h m8123a(Context context, Intent intent, AbstractC14185h abstractC14185h) throws Exception {
        return (!C12110n.m19012j() || ((Integer) abstractC14185h.mo11475d()).intValue() != 402) ? abstractC14185h : m8119c(context, intent).mo11484a(ExecutorC15885m.f56431a, C15886n.f56432a);
    }

    /* renamed from: a */
    private static ServiceConnectionC15870az m8125a(Context context) {
        ServiceConnectionC15870az serviceConnectionC15870az;
        synchronized (f56420a) {
            if (f56421b == null) {
                f56421b = new ServiceConnectionC15870az(context, "com.google.firebase.MESSAGING_EVENT");
            }
            serviceConnectionC15870az = f56421b;
        }
        return serviceConnectionC15870az;
    }

    /* renamed from: a */
    public static final /* synthetic */ Integer m8126a() throws Exception {
        return -1;
    }

    /* renamed from: a */
    public static final /* synthetic */ Integer m8124a(Context context, Intent intent) throws Exception {
        C15852al m8181a = C15852al.m8181a();
        Log.isLoggable("FirebaseMessaging", 3);
        m8181a.f56340c.offer(intent);
        Intent intent2 = new Intent("com.google.firebase.MESSAGING_EVENT");
        intent2.setPackage(context.getPackageName());
        return Integer.valueOf(m8181a.m8179a(context, intent2));
    }

    /* renamed from: b */
    private AbstractC14185h<Integer> m8120b(Context context, Intent intent) {
        boolean z = false;
        if (C12110n.m19012j()) {
            z = false;
            if (context.getApplicationInfo().targetSdkVersion >= 26) {
                z = true;
            }
        }
        return (!z || (intent.getFlags() & 268435456) != 0) ? C14188k.m11462a(this.f56423d, new Callable(context, intent) { // from class: com.google.firebase.messaging.i

            /* renamed from: a */
            private final Context f56425a;

            /* renamed from: b */
            private final Intent f56426b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f56425a = context;
                this.f56426b = intent;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return C15879g.m8124a(this.f56425a, this.f56426b);
            }
        }).mo11477b(this.f56423d, new AbstractC14179b(context, intent) { // from class: com.google.firebase.messaging.j

            /* renamed from: a */
            private final Context f56427a;

            /* renamed from: b */
            private final Intent f56428b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f56427a = context;
                this.f56428b = intent;
            }

            @Override // com.google.android.gms.tasks.AbstractC14179b
            public final Object then(AbstractC14185h abstractC14185h) {
                return C15879g.m8123a(this.f56427a, this.f56428b, abstractC14185h);
            }
        }) : m8119c(context, intent);
    }

    /* renamed from: c */
    private static AbstractC14185h<Integer> m8119c(Context context, Intent intent) {
        Log.isLoggable("FirebaseMessaging", 3);
        return m8125a(context).m8131a(intent).mo11484a(ExecutorC15883k.f56429a, C15884l.f56430a);
    }

    /* renamed from: a */
    public final AbstractC14185h<Integer> m8122a(Intent intent) {
        String stringExtra = intent.getStringExtra("gcm.rawData64");
        if (stringExtra != null) {
            intent.putExtra("rawData", Base64.decode(stringExtra, 0));
            intent.removeExtra("gcm.rawData64");
        }
        return m8120b(this.f56422c, intent);
    }
}
