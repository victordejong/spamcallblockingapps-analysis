package com.huawei.updatesdk.p097a.p098a.p103d.p104i;

import android.car.Car;
import android.car.CarInfoManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.huawei.updatesdk.p097a.p098a.C2511a;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: com.huawei.updatesdk.a.a.d.i.a */
/* loaded from: classes3-dex2jar.jar:com/huawei/updatesdk/a/a/d/i/a.class */
public class C2524a {

    /* renamed from: a */
    private static Car f8191a;

    /* renamed from: b */
    private static String f8192b;

    /* renamed from: c */
    private static String f8193c;

    /* renamed from: d */
    private static boolean f8194d = false;

    /* renamed from: com.huawei.updatesdk.a.a.d.i.a$a */
    /* loaded from: classes3-dex2jar.jar:com/huawei/updatesdk/a/a/d/i/a$a.class */
    public static final class ServiceConnectionC2525a implements ServiceConnection {
        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            try {
                CarInfoManager carInfoManager = (CarInfoManager) C2524a.f8191a.getCarManager("info");
                String unused = C2524a.f8193c = carInfoManager.getManufacturer();
                String unused2 = C2524a.f8192b = carInfoManager.getModel();
                C2511a.m36862b("CarInfoUtil", "car getManufacturer = " + C2524a.f8193c + "  getModel = " + C2524a.f8192b);
            } catch (Throwable th) {
                StringBuilder m8728C = C22128a.m8728C("Car not connected in onServiceConnected");
                m8728C.append(th.toString());
                C2511a.m36863a("CarInfoUtil", m8728C.toString());
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            C2511a.m36862b("CarInfoUtil", "onServiceDisconnected");
        }
    }

    /* renamed from: a */
    private static void m36811a(Context context) {
        if (context == null || f8194d) {
            return;
        }
        try {
            f8194d = true;
            Car createCar = Car.createCar(context.getApplicationContext(), new ServiceConnectionC2525a());
            f8191a = createCar;
            if (createCar == null) {
                return;
            }
            createCar.connect();
        } catch (Throwable th) {
            StringBuilder m8728C = C22128a.m8728C("Car Service Connect Error");
            m8728C.append(th.toString());
            C2511a.m36863a("CarInfoUtil", m8728C.toString());
        }
    }

    /* renamed from: b */
    public static void m36808b(Context context) {
        m36811a(context);
    }

    /* renamed from: d */
    public static String m36805d() {
        return f8193c;
    }

    /* renamed from: e */
    public static String m36804e() {
        return f8192b;
    }
}
