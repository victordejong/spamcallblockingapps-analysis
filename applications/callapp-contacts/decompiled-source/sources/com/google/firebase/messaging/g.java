package com.google.firebase.messaging;

import android.content.Context;
import android.content.Intent;
import android.util.Base64;
import android.util.Log;
import com.google.android.gms.common.util.n;
import com.google.android.gms.tasks.b;
import com.google.android.gms.tasks.h;
import com.google.android.gms.tasks.k;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/messaging/g.class */
public final class g {

    /* renamed from: a  reason: collision with root package name */
    private static final Object f32543a = new Object();

    /* renamed from: b  reason: collision with root package name */
    private static az f32544b;

    /* renamed from: c  reason: collision with root package name */
    private final Context f32545c;

    /* renamed from: d  reason: collision with root package name */
    private final Executor f32546d;

    public g(Context context) {
        this.f32545c = context;
        this.f32546d = h.f32547a;
    }

    public g(Context context, ExecutorService executorService) {
        this.f32545c = context;
        this.f32546d = executorService;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ h a(Context context, Intent intent, h hVar) throws Exception {
        return (!n.j() || ((Integer) hVar.d()).intValue() != 402) ? hVar : c(context, intent).a(m.f32554a, n.f32555a);
    }

    private static az a(Context context) {
        az azVar;
        synchronized (f32543a) {
            if (f32544b == null) {
                f32544b = new az(context, "com.google.firebase.MESSAGING_EVENT");
            }
            azVar = f32544b;
        }
        return azVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ Integer a() throws Exception {
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ Integer a(Context context, Intent intent) throws Exception {
        al a2 = al.a();
        Log.isLoggable("FirebaseMessaging", 3);
        a2.f32480c.offer(intent);
        Intent intent2 = new Intent("com.google.firebase.MESSAGING_EVENT");
        intent2.setPackage(context.getPackageName());
        return Integer.valueOf(a2.a(context, intent2));
    }

    private h<Integer> b(final Context context, final Intent intent) {
        boolean z = false;
        if (n.j()) {
            z = false;
            if (context.getApplicationInfo().targetSdkVersion >= 26) {
                z = true;
            }
        }
        return (!z || (intent.getFlags() & 268435456) != 0) ? k.a(this.f32546d, new Callable(context, intent) { // from class: com.google.firebase.messaging.i

            /* renamed from: a  reason: collision with root package name */
            private final Context f32548a;

            /* renamed from: b  reason: collision with root package name */
            private final Intent f32549b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f32548a = context;
                this.f32549b = intent;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return g.a(this.f32548a, this.f32549b);
            }
        }).b(this.f32546d, new b(context, intent) { // from class: com.google.firebase.messaging.j

            /* renamed from: a  reason: collision with root package name */
            private final Context f32550a;

            /* renamed from: b  reason: collision with root package name */
            private final Intent f32551b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f32550a = context;
                this.f32551b = intent;
            }

            @Override // com.google.android.gms.tasks.b
            public final Object then(h hVar) {
                return g.a(this.f32550a, this.f32551b, hVar);
            }
        }) : c(context, intent);
    }

    private static h<Integer> c(Context context, Intent intent) {
        Log.isLoggable("FirebaseMessaging", 3);
        return a(context).a(intent).a(k.f32552a, l.f32553a);
    }

    public final h<Integer> a(Intent intent) {
        String stringExtra = intent.getStringExtra("gcm.rawData64");
        if (stringExtra != null) {
            intent.putExtra("rawData", Base64.decode(stringExtra, 0));
            intent.removeExtra("gcm.rawData64");
        }
        return b(this.f32545c, intent);
    }
}
