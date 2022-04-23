package com.aotter.net.trek.global;

import android.app.Application;
import android.content.Context;
import com.aotter.net.trek.model.Device;
import com.aotter.net.trek.model.User;
/* loaded from: classes-dex2jar.jar:com/aotter/net/trek/global/AotterTrekApplication.class */
public class AotterTrekApplication extends Application {
    public static final String SDK_VERSION = "2.0.2_rc12";
    public static String TAG = "AotterTrek";
    public static String TAG_API_ERROR = "error";
    public static String TAG_API_SUCCESS = "success";

    /* renamed from: b */
    public static Context f1548b;
    public static Device mDevice;
    public static User mUser;

    /* renamed from: a */
    public static Boolean f1547a = false;
    public static Boolean isForTest = false;
    public static String mClientId = "";
    public static String mClientSecret = "";

    public static Context getAppContext() {
        return f1548b;
    }

    @Override // android.app.Application
    public void onCreate() {
        super.onCreate();
    }
}
