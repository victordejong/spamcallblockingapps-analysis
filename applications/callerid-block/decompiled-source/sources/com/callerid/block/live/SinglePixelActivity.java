package com.callerid.block.live;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.Window;
import android.view.WindowManager;
import com.callerid.block.util.C1227w;
/* loaded from: classes-dex2jar.jar:com/callerid/block/live/SinglePixelActivity.class */
public class SinglePixelActivity extends Activity {

    /* renamed from: b */
    private C1092a f4572b;

    /* renamed from: com.callerid.block.live.SinglePixelActivity$a */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/live/SinglePixelActivity$a.class */
    class C1092a extends BroadcastReceiver {
        C1092a() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (TextUtils.equals(intent.getAction(), "android.intent.action.SCREEN_ON")) {
                SinglePixelActivity.this.finish();
            }
        }
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Window window = getWindow();
        window.setGravity(8388659);
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.x = 0;
        attributes.y = 0;
        attributes.height = 1;
        attributes.width = 1;
        window.setAttributes(attributes);
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.SCREEN_ON");
        intentFilter.setPriority(1000);
        C1092a aVar = new C1092a();
        this.f4572b = aVar;
        registerReceiver(aVar, intentFilter);
        if (C1227w.f5084a) {
            C1227w.m9527a("tony", "SinglePixe--onCreate");
        }
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        C1092a aVar = this.f4572b;
        if (aVar != null) {
            unregisterReceiver(aVar);
        }
        if (C1227w.f5084a) {
            C1227w.m9527a("tony", "SinglePixe--onDestroy");
        }
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
    }

    @Override // android.app.Activity
    public boolean onTouchEvent(MotionEvent motionEvent) {
        finish();
        return super.onTouchEvent(motionEvent);
    }
}
