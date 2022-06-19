package com.google.firebase.messaging;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.util.Base64;
import android.util.Log;
import com.google.android.gms.common.util.C6237o;
import com.google.android.gms.tasks.AbstractC7954a;
import com.google.android.gms.tasks.AbstractC7966g;
import com.google.android.gms.tasks.C7970j;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
/* renamed from: com.google.firebase.messaging.n */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/messaging/n.class */
public class C9297n {

    /* renamed from: a */
    private static final Object f39817a = new Object();

    /* renamed from: b */
    private static ServiceConnectionC9269a1 f39818b;

    /* renamed from: c */
    private final Context f39819c;

    /* renamed from: d */
    private final Executor f39820d = ExecutorC9282g.f39791d;

    public C9297n(Context context) {
        this.f39819c = context;
    }

    /* renamed from: a */
    private static AbstractC7966g<Integer> m1209a(Context context, Intent intent) {
        if (Log.isLoggable("FirebaseMessaging", 3)) {
            Log.d("FirebaseMessaging", "Binding to service");
        }
        return m1208b(context, "com.google.firebase.MESSAGING_EVENT").m1310c(intent).mo5818i(ExecutorC9288j.f39799d, C9291k.f39802a);
    }

    /* renamed from: b */
    private static ServiceConnectionC9269a1 m1208b(Context context, String str) {
        ServiceConnectionC9269a1 serviceConnectionC9269a1;
        synchronized (f39817a) {
            if (f39818b == null) {
                f39818b = new ServiceConnectionC9269a1(context, "com.google.firebase.MESSAGING_EVENT");
            }
            serviceConnectionC9269a1 = f39818b;
        }
        return serviceConnectionC9269a1;
    }

    /* renamed from: c */
    public static final /* synthetic */ Integer m1207c(AbstractC7966g abstractC7966g) {
        return -1;
    }

    /* renamed from: e */
    public static final /* synthetic */ Integer m1205e(AbstractC7966g abstractC7966g) {
        return 403;
    }

    /* renamed from: f */
    public static final /* synthetic */ AbstractC7966g m1204f(Context context, Intent intent, AbstractC7966g abstractC7966g) {
        return (!C6237o.m16773k() || ((Integer) abstractC7966g.mo5814m()).intValue() != 402) ? abstractC7966g : m1209a(context, intent).mo5818i(ExecutorC9293l.f39808d, C9295m.f39810a);
    }

    /* renamed from: g */
    public AbstractC7966g<Integer> m1203g(Intent intent) {
        String stringExtra = intent.getStringExtra("gcm.rawData64");
        if (stringExtra != null) {
            intent.putExtra("rawData", Base64.decode(stringExtra, 0));
            intent.removeExtra("gcm.rawData64");
        }
        return m1202h(this.f39819c, intent);
    }

    @SuppressLint({"InlinedApi"})
    /* renamed from: h */
    public AbstractC7966g<Integer> m1202h(Context context, Intent intent) {
        boolean z = false;
        if (C6237o.m16773k()) {
            z = false;
            if (context.getApplicationInfo().targetSdkVersion >= 26) {
                z = true;
            }
        }
        return (!z || (intent.getFlags() & 268435456) != 0) ? C7970j.m5800c(this.f39820d, new Callable(context, intent) { // from class: com.google.firebase.messaging.h

            /* renamed from: a */
            private final Context f39793a;

            /* renamed from: b */
            private final Intent f39794b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f39793a = context;
                this.f39794b = intent;
            }

            @Override // java.util.concurrent.Callable
            public Object call() {
                Integer valueOf;
                valueOf = Integer.valueOf(C9292k0.m1224b().m1219g(this.f39793a, this.f39794b));
                return valueOf;
            }
        }).mo5816k(this.f39820d, new AbstractC7954a(context, intent) { // from class: com.google.firebase.messaging.i

            /* renamed from: a */
            private final Context f39795a;

            /* renamed from: b */
            private final Intent f39796b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f39795a = context;
                this.f39796b = intent;
            }

            @Override // com.google.android.gms.tasks.AbstractC7954a
            /* renamed from: a */
            public Object mo1125a(AbstractC7966g abstractC7966g) {
                return C9297n.m1204f(this.f39795a, this.f39796b, abstractC7966g);
            }
        }) : m1209a(context, intent);
    }
}
