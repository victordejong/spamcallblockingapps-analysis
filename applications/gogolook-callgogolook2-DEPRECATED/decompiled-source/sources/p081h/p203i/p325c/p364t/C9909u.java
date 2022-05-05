package p081h.p203i.p325c.p364t;

import android.content.Intent;
import android.util.Log;
import androidx.annotation.WorkerThread;
import com.google.firebase.iid.FirebaseInstanceId;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import p081h.p203i.p204a.p224e.p293r.AbstractC9143h;
import p081h.p203i.p204a.p224e.p293r.C9148k;
/* renamed from: h.i.c.t.u */
/* loaded from: classes2-dex2jar.jar:h/i/c/t/u.class */
public class C9909u implements AbstractC9864a {

    /* renamed from: a */
    public final ExecutorService f22435a;

    public C9909u(ExecutorService executorService) {
        this.f22435a = executorService;
    }

    @WorkerThread
    /* renamed from: c */
    public static int m13972c(Intent intent) {
        String stringExtra = intent.getStringExtra("CMD");
        if (stringExtra == null) {
            return -1;
        }
        if (Log.isLoggable("FirebaseInstanceId", 3)) {
            String valueOf = String.valueOf(intent.getExtras());
            StringBuilder sb = new StringBuilder(String.valueOf(stringExtra).length() + 21 + String.valueOf(valueOf).length());
            sb.append("Received command: ");
            sb.append(stringExtra);
            sb.append(" - ");
            sb.append(valueOf);
            sb.toString();
        }
        if ("RST".equals(stringExtra) || "RST_FULL".equals(stringExtra)) {
            FirebaseInstanceId.getInstance().m31081h();
            return -1;
        } else if (!"SYNC".equals(stringExtra)) {
            return -1;
        } else {
            FirebaseInstanceId.getInstance().m31093b();
            return -1;
        }
    }

    @Override // p081h.p203i.p325c.p364t.AbstractC9864a
    /* renamed from: a */
    public AbstractC9143h<Integer> mo13974a(final Intent intent) {
        return C9148k.m15997a(this.f22435a, new Callable(intent) { // from class: h.i.c.t.t

            /* renamed from: a */
            public final Intent f22433a;

            {
                this.f22433a = intent;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                Integer valueOf;
                valueOf = Integer.valueOf(C9909u.m13972c(this.f22433a));
                return valueOf;
            }
        });
    }
}
