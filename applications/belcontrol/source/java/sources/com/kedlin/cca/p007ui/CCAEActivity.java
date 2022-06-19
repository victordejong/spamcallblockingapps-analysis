package com.kedlin.cca.p007ui;

import android.app.Activity;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
/* renamed from: com.kedlin.cca.ui.CCAEActivity */
/* loaded from: classes3-dex2jar.jar:com/kedlin/cca/ui/CCAEActivity.class */
public class CCAEActivity extends Activity {

    /* renamed from: com.kedlin.cca.ui.CCAEActivity$a */
    /* loaded from: classes3-dex2jar.jar:com/kedlin/cca/ui/CCAEActivity$a.class */
    public class RunnableC0646a implements Runnable {
        public RunnableC0646a() {
            CCAEActivity.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            CCAEActivity.this.finish();
        }
    }

    static {
        String str = CCAEActivity.class.getSimpleName() + ".CATEGORY_DLG_DEFAULT_MESSAGING_APP_PERMISSION_ERROR";
    }

    @Override // android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (Build.VERSION.SDK_INT >= 26) {
            if (fa1.m1831s(i, i2, intent)) {
                fa1.m1842h("cca_message", "Call Control Messages", true);
            }
            if (!fa1.m1825y(i, i2, intent)) {
                return;
            }
            fa1.m1841i("cca_message");
        }
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        new Handler(Looper.getMainLooper()).postDelayed(new RunnableC0646a(), 100L);
    }
}
