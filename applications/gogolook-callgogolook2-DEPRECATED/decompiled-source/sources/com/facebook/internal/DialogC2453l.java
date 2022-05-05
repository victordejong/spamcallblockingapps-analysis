package com.facebook.internal;

import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.webkit.WebView;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.facebook.internal.l */
/* loaded from: classes-dex2jar.jar:com/facebook/internal/l.class */
public class DialogC2453l extends DialogC2420i0 {

    /* renamed from: p */
    public static final String f3088p = DialogC2453l.class.getName();

    /* renamed from: o */
    public boolean f3089o;

    /* renamed from: com.facebook.internal.l$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/internal/l$a.class */
    public class RunnableC2454a implements Runnable {
        public RunnableC2454a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            DialogC2453l.super.cancel();
        }
    }

    public DialogC2453l(Context context, String str, String str2) {
        super(context, str);
        m34760b(str2);
    }

    /* renamed from: a */
    public static DialogC2453l m34689a(Context context, String str, String str2) {
        DialogC2420i0.m34772a(context);
        return new DialogC2453l(context, str, str2);
    }

    @Override // com.facebook.internal.DialogC2420i0
    /* renamed from: a */
    public Bundle mo34687a(String str) {
        Bundle f = C2408g0.m34809f(Uri.parse(str).getQuery());
        String string = f.getString("bridge_args");
        f.remove("bridge_args");
        if (!C2408g0.m34816d(string)) {
            try {
                f.putBundle("com.facebook.platform.protocol.BRIDGE_ARGS", C2388c.m34909a(new JSONObject(string)));
            } catch (JSONException e) {
                C2408g0.m34850a(f3088p, "Unable to parse bridge_args JSON", e);
            }
        }
        String string2 = f.getString("method_results");
        f.remove("method_results");
        if (!C2408g0.m34816d(string2)) {
            String str2 = string2;
            if (C2408g0.m34816d(string2)) {
                str2 = "{}";
            }
            try {
                f.putBundle("com.facebook.platform.protocol.RESULT_ARGS", C2388c.m34909a(new JSONObject(str2)));
            } catch (JSONException e2) {
                C2408g0.m34850a(f3088p, "Unable to parse bridge_args JSON", e2);
            }
        }
        f.remove("version");
        f.putInt("com.facebook.platform.protocol.PROTOCOL_VERSION", C2372a0.m34945f());
        return f;
    }

    @Override // com.facebook.internal.DialogC2420i0, android.app.Dialog, android.content.DialogInterface
    public void cancel() {
        WebView b = m34763b();
        if (!m34757d() || m34759c() || b == null || !b.isShown()) {
            super.cancel();
        } else if (!this.f3089o) {
            this.f3089o = true;
            b.loadUrl("javascript:(function() {  var event = document.createEvent('Event');  event.initEvent('fbPlatformDialogMustClose',true,true);  document.dispatchEvent(event);})();");
            new Handler(Looper.getMainLooper()).postDelayed(new RunnableC2454a(), 1500L);
        }
    }
}
