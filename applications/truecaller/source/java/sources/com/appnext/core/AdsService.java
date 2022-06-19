package com.appnext.core;

import android.app.IntentService;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.ResultReceiver;
import com.amazon.device.ads.DtbConstants;
import com.appnext.base.C0472a;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/appnext/core/AdsService.class */
public class AdsService extends IntentService {
    public static final int ADD_PACK = 8348;
    public static final int START_APP = 8346;

    /* renamed from: cW */
    private static HashMap<String, C0561l> f1700cW = new HashMap<>();
    private Handler mHandler;
    public Messenger mMessenger = new Messenger(new HandlerC0506a());

    /* renamed from: cX */
    private Runnable f1701cX = new Runnable() { // from class: com.appnext.core.AdsService.2
        @Override // java.lang.Runnable
        public final void run() {
            try {
                for (Map.Entry entry : new HashMap(AdsService.f1700cW).entrySet()) {
                    C0561l c0561l = (C0561l) entry.getValue();
                    if (AdsService.this.m42497r(c0561l.f1835dV)) {
                        new Bundle().putAll(c0561l.f1836dW);
                        AdsService.this.m42500a(c0561l);
                        AdsService.f1700cW.remove(entry.getKey());
                        AdsService.this.startActivity(AdsService.this.getPackageManager().getLaunchIntentForPackage(c0561l.f1835dV));
                    }
                }
                if (AdsService.this.mHandler == null) {
                    return;
                }
                if (AdsService.f1700cW.entrySet().size() > 0) {
                    AdsService.this.mHandler.postDelayed(AdsService.this.f1701cX, 10000L);
                    return;
                }
                AdsService.this.mHandler.removeCallbacksAndMessages(null);
                AdsService.this.mHandler = null;
            } catch (Throwable th) {
                C0472a.m42577a("AdsService$checkPackRunnable", th);
            }
        }
    };

    /* renamed from: com.appnext.core.AdsService$a */
    /* loaded from: classes-dex2jar.jar:com/appnext/core/AdsService$a.class */
    public final class HandlerC0506a extends Handler {
        public HandlerC0506a() {
            AdsService.this = r4;
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            if (message.what != 8348) {
                super.handleMessage(message);
                return;
            }
            Bundle data = message.getData();
            AdsService.this.addPack(data.getString("package"), data, (ResultReceiver) data.getParcelable("receiver"));
            new StringBuilder("Package added: ").append(data.getString("package"));
        }
    }

    public AdsService() {
        super("AdsService");
    }

    /* renamed from: r */
    public boolean m42497r(String str) {
        try {
            getPackageManager().getPackageInfo(str, 128);
            return true;
        } catch (PackageManager.NameNotFoundException e) {
            return false;
        }
    }

    /* renamed from: a */
    public final void m42500a(final C0561l c0561l) {
        synchronized (this) {
            C0564o.m42343az().m42344a(new Runnable() { // from class: com.appnext.core.AdsService.1
                @Override // java.lang.Runnable
                public final void run() {
                    HashMap hashMap = new HashMap();
                    hashMap.put("guid", c0561l.f1836dW.getString("guid"));
                    hashMap.put("zone", c0561l.f1836dW.getString("zone") == null ? "" : c0561l.f1836dW.getString("zone"));
                    hashMap.put("adsID", C0551g.m42380b((Context) AdsService.this, true));
                    hashMap.put("isApk", DtbConstants.NETWORK_TYPE_UNKNOWN);
                    hashMap.put("bannerid", c0561l.f1836dW.getString("bannerid"));
                    hashMap.put("placementid", c0561l.f1836dW.getString("placementid"));
                    hashMap.put("vid", c0561l.f1836dW.getString("vid"));
                    hashMap.put("tid", c0561l.f1836dW.getString("tid", ""));
                    hashMap.put("osid", "100");
                    hashMap.put("auid", c0561l.f1836dW.getString("auid", ""));
                    String installerPackageName = AdsService.this.getPackageManager().getInstallerPackageName(c0561l.f1835dV);
                    if (installerPackageName == null) {
                        installerPackageName = "";
                    }
                    hashMap.put("installer", installerPackageName);
                    try {
                        C0551g.m42391a(AdsService.this.getBaseContext(), "https://admin.appnext.com/AdminService.asmx/SetOpenV1", hashMap);
                    } catch (IOException e) {
                    }
                }
            });
        }
    }

    public void addPack(String str, Bundle bundle, ResultReceiver resultReceiver) {
        if (f1700cW == null) {
            f1700cW = new HashMap<>();
        }
        if (f1700cW.containsKey(str)) {
            C0561l c0561l = f1700cW.get(str);
            if (c0561l == null) {
                addPack(str, bundle, resultReceiver);
                return;
            }
            c0561l.f1836dW = bundle;
            f1700cW.put(str, c0561l);
            return;
        }
        C0561l c0561l2 = new C0561l();
        c0561l2.f1835dV = str;
        c0561l2.f1836dW = bundle;
        f1700cW.put(str, c0561l2);
        if (this.mHandler != null) {
            return;
        }
        Handler handler = new Handler();
        this.mHandler = handler;
        handler.postDelayed(this.f1701cX, 10000L);
    }

    @Override // android.app.IntentService, android.app.Service
    public IBinder onBind(Intent intent) {
        return this.mMessenger.getBinder();
    }

    @Override // android.app.IntentService, android.app.Service
    public void onDestroy() {
        super.onDestroy();
        f1700cW.clear();
        Handler handler = this.mHandler;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
        }
        this.mHandler = null;
    }

    @Override // android.app.IntentService
    public void onHandleIntent(Intent intent) {
        if (intent.getIntExtra("added_info", 0) == 8348) {
            addPack(intent.getStringExtra("package"), intent.getExtras(), (ResultReceiver) intent.getParcelableExtra("receiver"));
            new StringBuilder("Package added: ").append(intent.getStringExtra("package"));
        }
    }

    @Override // android.app.Service
    public boolean onUnbind(Intent intent) {
        return false;
    }
}
