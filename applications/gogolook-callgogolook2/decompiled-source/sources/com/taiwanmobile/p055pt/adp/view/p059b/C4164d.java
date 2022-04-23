package com.taiwanmobile.p055pt.adp.view.p059b;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.Handler;
import com.taiwanmobile.p055pt.adp.view.webview.JSWebView;
import java.lang.ref.WeakReference;
import p081h.p447o.p448a.p449a.C10831c;
import p081h.p447o.p448a.p449a.C10832d;
/* renamed from: com.taiwanmobile.pt.adp.view.b.d */
/* loaded from: classes2-dex2jar.jar:com/taiwanmobile/pt/adp/view/b/d.class */
public class C4164d {

    /* renamed from: a */
    public static final String f9976a = "d";

    /* renamed from: b */
    public WeakReference<Context> f9977b;

    /* renamed from: c */
    public WeakReference<JSWebView> f9978c;

    /* renamed from: d */
    public SensorManager f9979d;

    /* renamed from: e */
    public Sensor f9980e;

    /* renamed from: f */
    public int f9981f = -1;

    /* renamed from: g */
    public int f9982g = 0;

    /* renamed from: h */
    public double f9983h = -1.0d;

    /* renamed from: i */
    public SensorEventListener f9984i = new SensorEventListener() { // from class: com.taiwanmobile.pt.adp.view.b.d.5
        @Override // android.hardware.SensorEventListener
        public void onAccuracyChanged(Sensor sensor, int i) {
        }

        @Override // android.hardware.SensorEventListener
        public void onSensorChanged(SensorEvent sensorEvent) {
            if (C4164d.this.f9981f == 0 && C4164d.this.f9983h > 0.0d) {
                if (C4164d.this.f9983h > sensorEvent.values[0]) {
                    C4164d.m29475e(C4164d.this);
                    String str = C4164d.f9976a;
                    C10831c.m10518c(str, "Proximity sensor of covering time = " + C4164d.this.f9982g);
                }
            }
            C4164d.this.f9983h = sensorEvent.values[0];
        }
    };

    /* renamed from: com.taiwanmobile.pt.adp.view.b.d$a */
    /* loaded from: classes2-dex2jar.jar:com/taiwanmobile/pt/adp/view/b/d$a.class */
    public class C4170a extends Thread {
        public C4170a() {
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            while (C4164d.this.f9981f == 0) {
                try {
                    Thread.sleep(50L);
                } catch (InterruptedException e) {
                    String str = C4164d.f9976a;
                    C10831c.m10520b(str, "CountProximityThread run InterruptedException: " + e.getMessage());
                } catch (Exception e2) {
                    String str2 = C4164d.f9976a;
                    C10831c.m10520b(str2, "CountProximityThread run Exception: " + e2.getMessage());
                }
            }
            if (C4164d.this.f9981f == 1) {
                ((JSWebView) C4164d.this.f9978c.get()).post(new Runnable() { // from class: com.taiwanmobile.pt.adp.view.b.d.a.1
                    @Override // java.lang.Runnable
                    public void run() {
                        JSWebView jSWebView = (JSWebView) C4164d.this.f9978c.get();
                        jSWebView.loadUrl("javascript:try{countProximityWithinTimeCallback(" + C4164d.this.f9982g + ");}catch(e){}");
                    }
                });
                C4164d.this.m29486a();
            } else if (C4164d.this.f9981f == -1) {
                C10831c.m10518c(C4164d.f9976a, "countProximityWithinTime result: Fail, ad is already close.");
            }
        }
    }

    /* renamed from: com.taiwanmobile.pt.adp.view.b.d$b */
    /* loaded from: classes2-dex2jar.jar:com/taiwanmobile/pt/adp/view/b/d$b.class */
    public class C4172b extends Thread {

        /* renamed from: b */
        public int f9993b;

        public C4172b(int i) {
            this.f9993b = i;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            while (this.f9993b > C4164d.this.f9982g && C4164d.this.f9981f == 0) {
                try {
                    Thread.sleep(50L);
                } catch (InterruptedException e) {
                    String str = C4164d.f9976a;
                    C10831c.m10520b(str, "RequestProximityTouchesThread run InterruptedException: " + e.getMessage());
                } catch (Exception e2) {
                    String str2 = C4164d.f9976a;
                    C10831c.m10520b(str2, "RequestProximityTouchesThread run Exception: " + e2.getMessage());
                }
            }
            if (C4164d.this.f9982g >= this.f9993b) {
                C10831c.m10518c(C4164d.f9976a, "requestProximityWithTimeAndTouches result: Success.");
                ((JSWebView) C4164d.this.f9978c.get()).post(new Runnable() { // from class: com.taiwanmobile.pt.adp.view.b.d.b.1
                    @Override // java.lang.Runnable
                    public void run() {
                        ((JSWebView) C4164d.this.f9978c.get()).loadUrl("javascript:try{requestProximityWithTimeAndTouchesCallback(0);}catch(e){}");
                    }
                });
                C4164d.this.m29486a();
            } else if (C4164d.this.f9981f == 1) {
                C10831c.m10520b(C4164d.f9976a, "requestProximityWithTimeAndTouches result: Fail, cover time is not enough! ");
                ((JSWebView) C4164d.this.f9978c.get()).post(new Runnable() { // from class: com.taiwanmobile.pt.adp.view.b.d.b.2
                    @Override // java.lang.Runnable
                    public void run() {
                        ((JSWebView) C4164d.this.f9978c.get()).loadUrl("javascript:try{requestProximityWithTimeAndTouchesCallback(1);}catch(e){}");
                    }
                });
                C4164d.this.m29486a();
            } else if (C4164d.this.f9981f == -1) {
                C10831c.m10518c(C4164d.f9976a, "requestProximityWithTimeAndTouches result: Fail, ad is already close.");
            }
        }
    }

    public C4164d(Context context, JSWebView jSWebView) {
        this.f9977b = null;
        this.f9978c = null;
        this.f9977b = new WeakReference<>(context);
        this.f9978c = new WeakReference<>(jSWebView);
    }

    /* renamed from: b */
    private void m29480b() {
        this.f9983h = -1.0d;
        this.f9982g = 0;
        this.f9981f = 0;
    }

    /* renamed from: c */
    private boolean m29478c() {
        C10831c.m10518c(f9976a, "openProximity invoke !!!");
        this.f9979d = (SensorManager) this.f9977b.get().getSystemService("sensor");
        this.f9980e = C10832d.m10507a(this.f9979d);
        if (this.f9980e == null) {
            return false;
        }
        m29480b();
        this.f9979d.registerListener(this.f9984i, this.f9980e, 0);
        return true;
    }

    /* renamed from: e */
    public static /* synthetic */ int m29475e(C4164d dVar) {
        int i = dVar.f9982g;
        dVar.f9982g = i + 1;
        return i;
    }

    /* renamed from: a */
    public void m29486a() {
        SensorManager sensorManager;
        C10831c.m10518c(f9976a, "releaseProximity invoke !!!");
        if (this.f9981f >= 0 && (sensorManager = this.f9979d) != null) {
            this.f9981f = -1;
            sensorManager.unregisterListener(this.f9984i);
            this.f9979d = null;
        }
    }

    /* renamed from: a */
    public void m29485a(float f) {
        if (m29478c()) {
            new C4170a().start();
            new Handler().postDelayed(new Runnable() { // from class: com.taiwanmobile.pt.adp.view.b.d.3
                @Override // java.lang.Runnable
                public void run() {
                    C4164d.this.f9981f = 1;
                }
            }, f * 1000.0f);
            return;
        }
        C10831c.m10520b(f9976a, "countProximityWithinTime result: Fail, open proximity failed! ");
        this.f9978c.get().post(new Runnable() { // from class: com.taiwanmobile.pt.adp.view.b.d.4
            @Override // java.lang.Runnable
            public void run() {
                ((JSWebView) C4164d.this.f9978c.get()).loadUrl("javascript:try{countProximityWithinTimeCallback(-1);}catch(e){}");
            }
        });
    }

    /* renamed from: a */
    public void m29484a(float f, int i) {
        if (m29478c()) {
            new C4172b(i).start();
            new Handler().postDelayed(new Runnable() { // from class: com.taiwanmobile.pt.adp.view.b.d.1
                @Override // java.lang.Runnable
                public void run() {
                    C4164d.this.f9981f = 1;
                }
            }, f * 1000.0f);
            return;
        }
        C10831c.m10518c(f9976a, "requestProximityWithTimeAndTouches result: Fail, open proximity failed! ");
        this.f9978c.get().post(new Runnable() { // from class: com.taiwanmobile.pt.adp.view.b.d.2
            @Override // java.lang.Runnable
            public void run() {
                ((JSWebView) C4164d.this.f9978c.get()).loadUrl("javascript:try{requestProximityWithTimeAndTouchesCallback(-1);}catch(e){}");
            }
        });
    }
}
