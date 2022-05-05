package com.asus.eabservice;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.util.Log;
import com.asus.eabservice.b;
/* loaded from: classes-dex2jar.jar:com/asus/eabservice/a.class */
public class a {
    private static a e = null;
    private final String c = "EABManager";
    private final String d = "com.asus.eabservice";

    /* renamed from: a  reason: collision with root package name */
    public b f2893a = null;

    /* renamed from: b  reason: collision with root package name */
    public ServiceConnection f2894b = new ServiceConnection() { // from class: com.asus.eabservice.a.1
        @Override // android.content.ServiceConnection
        public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            Log.d("EABManager", "[Tauros][EABManager] EABService is connected.");
            if (a.this.f2893a == null) {
                a.this.f2893a = b.a.a(iBinder);
            }
        }

        @Override // android.content.ServiceConnection
        public final void onServiceDisconnected(ComponentName componentName) {
            Log.d("EABManager", "[Tauros][EABManager] EABService is disconnected.");
            if (a.this.f2893a != null) {
                a.this.f2893a = null;
            }
        }
    };

    public static a a() {
        if (e == null) {
            synchronized (a.class) {
                try {
                    if (e == null) {
                        e = new a();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return e;
    }
}
