package com.telguarder.features.phoneCallWidget;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
/* loaded from: classes2-dex2jar.jar:com/telguarder/features/phoneCallWidget/PhoneCallWidgetDcyActivity.class */
public class PhoneCallWidgetDcyActivity extends Activity {
    public static void openPermDcyActivity(Context context) {
        Intent intent = new Intent(context, PhoneCallWidgetDcyActivity.class);
        intent.addFlags(343965696);
        context.startActivity(intent);
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (PhoneCallWidget.isInstantiated()) {
            new Handler(getMainLooper()).post(new Runnable() { // from class: com.telguarder.features.phoneCallWidget.PhoneCallWidgetDcyActivity.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        PhoneCallWidget.getInstance().showWidget(PhoneCallWidgetDcyActivity.this);
                    } catch (Exception e) {
                    }
                }
            });
        }
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        finish();
    }

    @Override // android.app.Activity
    public void onStart() {
        super.onStart();
        finish();
    }
}
