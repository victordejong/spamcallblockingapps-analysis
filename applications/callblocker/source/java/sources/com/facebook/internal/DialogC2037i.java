package com.facebook.internal;

import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.webkit.WebView;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.facebook.internal.i */
/* loaded from: classes-dex2jar.jar:com/facebook/internal/i.class */
public class DialogC2037i extends DialogC2085z {

    /* renamed from: a */
    private static final String f6001a = DialogC2037i.class.getName();

    /* renamed from: b */
    private boolean f6002b;

    private DialogC2037i(Context context, String str, String str2) {
        super(context, str);
        m15393b(str2);
    }

    /* renamed from: a */
    public static DialogC2037i m15627a(Context context, String str, String str2) {
        DialogC2085z.m15406a(context);
        return new DialogC2037i(context, str, str2);
    }

    @Override // com.facebook.internal.DialogC2085z
    /* renamed from: a */
    protected Bundle mo15398a(String str) {
        Bundle m15437d = C2079x.m15437d(Uri.parse(str).getQuery());
        String string = m15437d.getString("bridge_args");
        m15437d.remove("bridge_args");
        if (!C2079x.m15472a(string)) {
            try {
                m15437d.putBundle("com.facebook.platform.protocol.BRIDGE_ARGS", C2016c.m15650a(new JSONObject(string)));
            } catch (JSONException e) {
                C2079x.m15467a(f6001a, "Unable to parse bridge_args JSON", e);
            }
        }
        String string2 = m15437d.getString("method_results");
        m15437d.remove("method_results");
        if (!C2079x.m15472a(string2)) {
            String str2 = string2;
            if (C2079x.m15472a(string2)) {
                str2 = "{}";
            }
            try {
                m15437d.putBundle("com.facebook.platform.protocol.RESULT_ARGS", C2016c.m15650a(new JSONObject(str2)));
            } catch (JSONException e2) {
                C2079x.m15467a(f6001a, "Unable to parse bridge_args JSON", e2);
            }
        }
        m15437d.remove("version");
        m15437d.putInt("com.facebook.platform.protocol.PROTOCOL_VERSION", C2064s.m15540a());
        return m15437d;
    }

    @Override // com.facebook.internal.DialogC2085z, android.app.Dialog, android.content.DialogInterface
    public void cancel() {
        WebView d = m15390d();
        if (!m15392c() || m15396b() || d == null || !d.isShown()) {
            super.cancel();
        } else if (this.f6002b) {
        } else {
            this.f6002b = true;
            d.loadUrl("javascript:(function() {  var event = document.createEvent('Event');  event.initEvent('fbPlatformDialogMustClose',true,true);  document.dispatchEvent(event);})();");
            new Handler(Looper.getMainLooper()).postDelayed(new Runnable() { // from class: com.facebook.internal.i.1
                @Override // java.lang.Runnable
                public void run() {
                    DialogC2037i.super.cancel();
                }
            }, 1500L);
        }
    }
}
