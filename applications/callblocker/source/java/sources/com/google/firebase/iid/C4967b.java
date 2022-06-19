package com.google.firebase.iid;

import android.content.Context;
import android.content.Intent;
import android.util.Base64;
import android.util.Log;
import com.google.android.gms.common.util.C2716m;
import com.google.android.gms.tasks.AbstractC4459a;
import com.google.android.gms.tasks.AbstractC4469g;
import com.google.android.gms.tasks.C4473j;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import javax.annotation.concurrent.GuardedBy;
/* renamed from: com.google.firebase.iid.b */
/* loaded from: classes-dex2jar.jar:com/google/firebase/iid/b.class */
public final class C4967b implements AbstractC4940aa {

    /* renamed from: a */
    private static final Object f21118a = new Object();
    @GuardedBy("lock")

    /* renamed from: b */
    private static ServiceConnectionC4948ai f21119b;

    /* renamed from: c */
    private final Context f21120c;

    /* renamed from: d */
    private final ExecutorService f21121d;

    public C4967b(Context context, ExecutorService executorService) {
        this.f21120c = context;
        this.f21121d = executorService;
    }

    /* renamed from: a */
    public static final /* synthetic */ AbstractC4469g m1952a(Context context, Intent intent, AbstractC4469g abstractC4469g) {
        AbstractC4469g abstractC4469g2 = abstractC4469g;
        if (C2716m.m13832k()) {
            abstractC4469g2 = ((Integer) abstractC4469g.mo3891d()).intValue() != 402 ? abstractC4469g : m1949b(context, intent).mo3900a(C4956aq.m1959a(), C4953an.f21097a);
        }
        return abstractC4469g2;
    }

    /* renamed from: a */
    private static ServiceConnectionC4948ai m1951a(Context context, String str) {
        ServiceConnectionC4948ai serviceConnectionC4948ai;
        synchronized (f21118a) {
            if (f21119b == null) {
                f21119b = new ServiceConnectionC4948ai(context, str);
            }
            serviceConnectionC4948ai = f21119b;
        }
        return serviceConnectionC4948ai;
    }

    /* renamed from: a */
    public static final /* synthetic */ Integer m1950a(AbstractC4469g abstractC4469g) {
        return -1;
    }

    /* renamed from: b */
    private static AbstractC4469g<Integer> m1949b(Context context, Intent intent) {
        if (Log.isLoggable("FirebaseInstanceId", 3)) {
            Log.d("FirebaseInstanceId", "Binding to service");
        }
        return m1951a(context, "com.google.firebase.MESSAGING_EVENT").m1961a(intent).mo3900a(C4956aq.m1959a(), C4954ao.f21098a);
    }

    /* renamed from: b */
    public static final /* synthetic */ Integer m1948b(AbstractC4469g abstractC4469g) {
        return 403;
    }

    @Override // com.google.firebase.iid.AbstractC4940aa
    /* renamed from: a */
    public final AbstractC4469g<Integer> mo1939a(Intent intent) {
        boolean z = true;
        String stringExtra = intent.getStringExtra("gcm.rawData64");
        if (stringExtra != null) {
            intent.putExtra("rawData", Base64.decode(stringExtra, 0));
            intent.removeExtra("gcm.rawData64");
        }
        Context context = this.f21120c;
        boolean z2 = C2716m.m13832k() && context.getApplicationInfo().targetSdkVersion >= 26;
        if ((intent.getFlags() & 268435456) == 0) {
            z = false;
        }
        return (!z2 || z) ? C4473j.m3879a(this.f21121d, new Callable(context, intent) { // from class: com.google.firebase.iid.am

            /* renamed from: a */
            private final Context f21095a;

            /* renamed from: b */
            private final Intent f21096b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f21095a = context;
                this.f21096b = intent;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                Integer valueOf;
                valueOf = Integer.valueOf(C4996w.m1899a().m1897a(this.f21095a, this.f21096b));
                return valueOf;
            }
        }).mo3893b(this.f21121d, new AbstractC4459a(context, intent) { // from class: com.google.firebase.iid.al

            /* renamed from: a */
            private final Context f21093a;

            /* renamed from: b */
            private final Intent f21094b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f21093a = context;
                this.f21094b = intent;
            }

            @Override // com.google.android.gms.tasks.AbstractC4459a
            /* renamed from: a */
            public final Object mo1911a(AbstractC4469g abstractC4469g) {
                return C4967b.m1952a(this.f21093a, this.f21094b, abstractC4469g);
            }
        }) : m1949b(context, intent);
    }
}
