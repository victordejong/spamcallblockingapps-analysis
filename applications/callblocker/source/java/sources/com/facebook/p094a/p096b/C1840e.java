package com.facebook.p094a.p096b;

import android.app.Activity;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.util.Base64;
import android.util.Log;
import android.view.View;
import com.facebook.C1803a;
import com.facebook.C2095j;
import com.facebook.C2102k;
import com.facebook.C2194n;
import com.facebook.EnumC2197q;
import com.facebook.internal.C2060p;
import com.facebook.internal.C2063r;
import com.facebook.internal.C2079x;
import com.facebook.p094a.p096b.p097a.C1828e;
import com.facebook.p094a.p096b.p097a.C1829f;
import com.facebook.p094a.p099d.C1862b;
import java.io.ByteArrayOutputStream;
import java.lang.ref.WeakReference;
import java.util.Locale;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.Callable;
import java.util.concurrent.FutureTask;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.facebook.a.b.e */
/* loaded from: classes-dex2jar.jar:com/facebook/a/b/e.class */
public class C1840e {

    /* renamed from: a */
    private static final String f5608a = C1840e.class.getCanonicalName();

    /* renamed from: f */
    private static C1840e f5609f;

    /* renamed from: c */
    private WeakReference<Activity> f5611c;

    /* renamed from: d */
    private Timer f5612d;

    /* renamed from: e */
    private String f5613e = null;

    /* renamed from: b */
    private final Handler f5610b = new Handler(Looper.getMainLooper());

    /* renamed from: com.facebook.a.b.e$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/a/b/e$a.class */
    private static class CallableC1845a implements Callable<String> {

        /* renamed from: a */
        private WeakReference<View> f5619a;

        CallableC1845a(View view) {
            this.f5619a = new WeakReference<>(view);
        }

        /* renamed from: a */
        public String call() {
            String str;
            View view = this.f5619a.get();
            if (view == null || view.getWidth() == 0 || view.getHeight() == 0) {
                str = "";
            } else {
                Bitmap createBitmap = Bitmap.createBitmap(view.getWidth(), view.getHeight(), Bitmap.Config.RGB_565);
                view.draw(new Canvas(createBitmap));
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                createBitmap.compress(Bitmap.CompressFormat.JPEG, 10, byteArrayOutputStream);
                str = Base64.encodeToString(byteArrayOutputStream.toByteArray(), 2);
            }
            return str;
        }
    }

    public C1840e(Activity activity) {
        this.f5611c = new WeakReference<>(activity);
        f5609f = this;
    }

    /* renamed from: a */
    public static C2102k m16118a(String str, C1803a c1803a, String str2, String str3) {
        C2102k c2102k;
        if (str == null) {
            c2102k = null;
        } else {
            C2102k m15337a = C2102k.m15337a(c1803a, String.format(Locale.US, "%s/app_indexing", str2), (JSONObject) null, (C2102k.AbstractC2108b) null);
            Bundle m15302e = m15337a.m15302e();
            Bundle bundle = m15302e;
            if (m15302e == null) {
                bundle = new Bundle();
            }
            bundle.putString("tree", str);
            bundle.putString("app_version", C1862b.m16060d());
            bundle.putString("platform", "android");
            bundle.putString("request_type", str3);
            if (str3.equals("app_indexing")) {
                bundle.putString("device_session_id", C1830b.m16153c());
            }
            m15337a.m15341a(bundle);
            m15337a.m15336a(new C2102k.AbstractC2108b() { // from class: com.facebook.a.b.e.4
                @Override // com.facebook.C2102k.AbstractC2108b
                /* renamed from: a */
                public void mo15229a(C2194n c2194n) {
                    C2063r.m15550a(EnumC2197q.APP_EVENTS, C1840e.f5608a, "App index sent to FB!");
                }
            });
            c2102k = m15337a;
        }
        return c2102k;
    }

    /* renamed from: a */
    public void m16119a(final String str) {
        C2095j.m15362f().execute(new Runnable() { // from class: com.facebook.a.b.e.3
            @Override // java.lang.Runnable
            public void run() {
                C2102k m16118a;
                String m15450b = C2079x.m15450b(str);
                C1803a m16259a = C1803a.m16259a();
                if ((m15450b == null || !m15450b.equals(C1840e.this.f5613e)) && (m16118a = C1840e.m16118a(str, m16259a, C2095j.m15356l(), "app_indexing")) != null) {
                    C2194n m15293i = m16118a.m15293i();
                    try {
                        JSONObject m14980b = m15293i.m14980b();
                        if (m14980b == null) {
                            Log.e(C1840e.f5608a, "Error sending UI component tree to Facebook: " + m15293i.m14987a());
                            return;
                        }
                        if ("true".equals(m14980b.optString("success"))) {
                            C2063r.m15550a(EnumC2197q.APP_EVENTS, C1840e.f5608a, "Successfully send UI component tree to server");
                            C1840e.this.f5613e = m15450b;
                        }
                        if (!m14980b.has("is_app_indexing_enabled")) {
                            return;
                        }
                        C1830b.m16159a(Boolean.valueOf(m14980b.getBoolean("is_app_indexing_enabled")));
                    } catch (JSONException e) {
                        Log.e(C1840e.f5608a, "Error decoding server response.", e);
                    }
                }
            }
        });
    }

    /* renamed from: a */
    public void m16123a() {
        final TimerTask timerTask = new TimerTask() { // from class: com.facebook.a.b.e.1
            /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x00c7 -> B:15:0x0073). Please submit an issue!!! */
            @Override // java.util.TimerTask, java.lang.Runnable
            public void run() {
                String str;
                try {
                    Activity activity = (Activity) C1840e.this.f5611c.get();
                    if (activity == null) {
                        return;
                    }
                    String simpleName = activity.getClass().getSimpleName();
                    View rootView = activity.getWindow().getDecorView().getRootView();
                    if (!C1830b.m16149d()) {
                        return;
                    }
                    if (C2060p.m15557b()) {
                        C1828e.m16182a();
                        return;
                    }
                    FutureTask futureTask = new FutureTask(new CallableC1845a(rootView));
                    C1840e.this.f5610b.post(futureTask);
                    try {
                        str = (String) futureTask.get(1L, TimeUnit.SECONDS);
                    } catch (Exception e) {
                        Log.e(C1840e.f5608a, "Failed to take screenshot.", e);
                        str = "";
                    }
                    JSONObject jSONObject = new JSONObject();
                    try {
                        jSONObject.put("screenname", simpleName);
                        jSONObject.put("screenshot", str);
                        JSONArray jSONArray = new JSONArray();
                        jSONArray.put(C1829f.m16172c(rootView));
                        jSONObject.put("view", jSONArray);
                    } catch (JSONException e2) {
                        Log.e(C1840e.f5608a, "Failed to create JSONObject");
                    }
                    C1840e.this.m16119a(jSONObject.toString());
                } catch (Exception e3) {
                    Log.e(C1840e.f5608a, "UI Component tree indexing failure!", e3);
                }
            }
        };
        C2095j.m15362f().execute(new Runnable() { // from class: com.facebook.a.b.e.2
            @Override // java.lang.Runnable
            public void run() {
                try {
                    if (C1840e.this.f5612d != null) {
                        C1840e.this.f5612d.cancel();
                    }
                    C1840e.this.f5613e = null;
                    C1840e.this.f5612d = new Timer();
                    C1840e.this.f5612d.scheduleAtFixedRate(timerTask, 0L, 1000L);
                } catch (Exception e) {
                    Log.e(C1840e.f5608a, "Error scheduling indexing job", e);
                }
            }
        });
    }

    /* renamed from: b */
    public void m16117b() {
        if (this.f5611c.get() == null || this.f5612d == null) {
            return;
        }
        try {
            this.f5612d.cancel();
            this.f5612d = null;
        } catch (Exception e) {
            Log.e(f5608a, "Error unscheduling indexing job", e);
        }
    }
}
