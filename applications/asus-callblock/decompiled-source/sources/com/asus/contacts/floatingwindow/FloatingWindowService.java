package com.asus.contacts.floatingwindow;

import android.app.Service;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.os.IBinder;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import android.util.Log;
import android.view.WindowManager;
/* loaded from: classes-dex2jar.jar:com/asus/contacts/floatingwindow/FloatingWindowService.class */
public class FloatingWindowService extends Service {

    /* renamed from: a  reason: collision with root package name */
    private WindowManager f2609a;

    /* renamed from: b  reason: collision with root package name */
    private a f2610b;

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        this.f2609a = (WindowManager) getSystemService("window");
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        if (this.f2610b != null) {
            a aVar = this.f2610b;
            try {
                if (aVar.e != null) {
                    aVar.c.removeView(aVar.e);
                    if (aVar.f) {
                        SharedPreferences.Editor edit = PreferenceManager.getDefaultSharedPreferences(aVar.f2612b).edit();
                        edit.putInt("floating_window_position_x", aVar.d.x);
                        edit.putInt("floating_window_position_y", aVar.d.y);
                        edit.apply();
                        Log.d(a.f2611a, "write mParams.x:" + aVar.d.x + ", mParams.y:" + aVar.d.y);
                    }
                }
            } catch (Exception e) {
                Log.e(a.f2611a, "Failed to remove floatin view from WindowManager");
                e.printStackTrace();
            }
            this.f2609a = null;
            this.f2610b = null;
        }
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        Bundle bundle = null;
        if (intent != null) {
            try {
                bundle = intent.getExtras();
            } catch (Exception e) {
                e.printStackTrace();
                bundle = null;
            }
        }
        if (bundle != null && !TextUtils.isEmpty(bundle.getString("ASUS_CALLER_QUERY_NUMBER"))) {
            this.f2610b = new a(this, this.f2609a, bundle);
            if (this.f2610b != null) {
                a aVar = this.f2610b;
                try {
                    Log.d(a.f2611a, ">>> addWindow");
                    aVar.c.addView(aVar.e, aVar.d);
                    Log.d(a.f2611a, "<<< addWindow");
                } catch (Exception e2) {
                    Log.e(a.f2611a, "Failed to add floating view to WindowManager");
                    e2.printStackTrace();
                }
            }
        }
        return super.onStartCommand(intent, i, i2);
    }
}
