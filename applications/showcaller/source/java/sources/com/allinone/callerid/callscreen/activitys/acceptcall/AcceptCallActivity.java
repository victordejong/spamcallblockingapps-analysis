package com.allinone.callerid.callscreen.activitys.acceptcall;

import android.app.Activity;
import android.app.KeyguardManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.media.AudioManager;
import android.os.Build;
import android.os.Bundle;
import android.view.KeyEvent;
import com.allinone.callerid.bean.ShortCut;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/callscreen/activitys/acceptcall/AcceptCallActivity.class */
public class AcceptCallActivity extends Activity {

    /* renamed from: d */
    private KeyguardManager f8424d;

    /* renamed from: e */
    private AudioManager f8425e;

    /* renamed from: f */
    private C2417b f8426f;

    /* renamed from: com.allinone.callerid.callscreen.activitys.acceptcall.AcceptCallActivity$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/callscreen/activitys/acceptcall/AcceptCallActivity$b.class */
    public class C2417b extends BroadcastReceiver {
        private C2417b() {
            AcceptCallActivity.this = r4;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            AcceptCallActivity.this.finish();
        }
    }

    /* renamed from: a */
    private void m27474a() {
        boolean z = "HTC".equalsIgnoreCase(Build.MANUFACTURER) && !this.f8425e.isWiredHeadsetOn();
        if (z) {
            m27473b(false);
        }
        try {
            try {
                Runtime runtime = Runtime.getRuntime();
                runtime.exec("input keyevent " + Integer.toString(79));
            } catch (IOException e) {
                Intent putExtra = new Intent("android.intent.action.MEDIA_BUTTON").putExtra("android.intent.extra.KEY_EVENT", new KeyEvent(0, 79));
                Intent putExtra2 = new Intent("android.intent.action.MEDIA_BUTTON").putExtra("android.intent.extra.KEY_EVENT", new KeyEvent(1, 79));
                sendOrderedBroadcast(putExtra, "android.permission.CALL_PRIVILEGED");
                sendOrderedBroadcast(putExtra2, "android.permission.CALL_PRIVILEGED");
            }
            if (!z) {
                return;
            }
            m27473b(false);
        } catch (Throwable th) {
            if (z) {
                m27473b(false);
            }
            throw th;
        }
    }

    /* renamed from: b */
    private void m27473b(boolean z) {
        Intent intent = new Intent("android.intent.action.HEADSET_PLUG");
        intent.addFlags(1073741824);
        intent.putExtra("state", z ? 1 : 0);
        intent.putExtra(ShortCut.NAME, "mysms");
        try {
            sendOrderedBroadcast(intent, null);
        } catch (Exception e) {
        }
    }

    /* renamed from: c */
    private void m27472c() {
        this.f8426f = new C2417b();
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.PHONE_STATE");
        registerReceiver(this.f8426f, intentFilter);
    }

    /* renamed from: d */
    private void m27471d() {
        if (this.f8424d.inKeyguardRestrictedInputMode()) {
            getWindow().addFlags(6815744);
        } else {
            getWindow().clearFlags(4718720);
        }
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f8424d = (KeyguardManager) getSystemService("keyguard");
        this.f8425e = (AudioManager) getSystemService("audio");
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        C2417b c2417b = this.f8426f;
        if (c2417b != null) {
            unregisterReceiver(c2417b);
            this.f8426f = null;
        }
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        m27472c();
        m27471d();
        m27474a();
    }
}
