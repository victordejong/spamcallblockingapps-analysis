package com.truecaller.messaging.urgent;

import android.app.Activity;
import android.app.KeyguardManager;
import android.os.Bundle;
import java.util.Objects;
import kotlin.Metadata;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\b\t\u0010\bJ\u0019\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\u0007\u001a\u00020\u0004H\u0014¢\u0006\u0004\b\u0007\u0010\b¨\u0006\n"}, d2 = {"Lcom/truecaller/messaging/urgent/DismissKeyguardActivity;", "Landroid/app/Activity;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "onResume", "()V", "<init>", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes11-dex2jar.jar:com/truecaller/messaging/urgent/DismissKeyguardActivity.class */
public final class DismissKeyguardActivity extends Activity {

    /* renamed from: com.truecaller.messaging.urgent.DismissKeyguardActivity$a */
    /* loaded from: classes11-dex2jar.jar:com/truecaller/messaging/urgent/DismissKeyguardActivity$a.class */
    public static final class RunnableC4268a implements Runnable {
        public RunnableC4268a() {
            DismissKeyguardActivity.this = r4;
        }

        @Override // java.lang.Runnable
        public final void run() {
            Object systemService = DismissKeyguardActivity.this.getSystemService("keyguard");
            Objects.requireNonNull(systemService, "null cannot be cast to non-null type android.app.KeyguardManager");
            if (!((KeyguardManager) systemService).isKeyguardLocked()) {
                DismissKeyguardActivity.this.finish();
            }
        }
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        getWindow().addFlags(4194304);
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        findViewById(16908290).post(new RunnableC4268a());
    }
}
