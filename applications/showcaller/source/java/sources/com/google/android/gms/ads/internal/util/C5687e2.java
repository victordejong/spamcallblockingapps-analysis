package com.google.android.gms.ads.internal.util;

import android.annotation.TargetApi;
import android.content.ContentResolver;
import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.provider.Settings;
import android.renderscript.Allocation;
import android.renderscript.Element;
import android.renderscript.RenderScript;
import android.renderscript.ScriptIntrinsicBlur;
import android.text.TextUtils;
import android.webkit.WebSettings;
import com.google.android.gms.common.C6094e;
import com.google.android.gms.common.util.C6226d;
import com.google.android.gms.common.util.C6240r;
@TargetApi(17)
/* renamed from: com.google.android.gms.ads.internal.util.e2 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/util/e2.class */
public class C5687e2 extends C5684e {
    public C5687e2() {
        super(null);
    }

    @Override // com.google.android.gms.ads.internal.util.C5684e
    /* renamed from: a */
    public final boolean mo18038a(Context context, WebSettings webSettings) {
        super.mo18038a(context, webSettings);
        webSettings.setMediaPlaybackRequiresUserGesture(false);
        return true;
    }

    @Override // com.google.android.gms.ads.internal.util.C5684e
    /* renamed from: b */
    public final String mo18037b(Context context) {
        C5702i1 m18009a = C5702i1.m18009a();
        if (TextUtils.isEmpty(m18009a.f18490b)) {
            m18009a.f18490b = C6226d.m16818a() ? (String) C5690f1.m18026a(context, new CallableC5694g1(m18009a, context)) : (String) C5690f1.m18026a(context, new CallableC5698h1(m18009a, C6094e.m17207d(context), context));
        }
        return m18009a.f18490b;
    }

    @Override // com.google.android.gms.ads.internal.util.C5684e
    /* renamed from: c */
    public final void mo18036c(Context context) {
        C5702i1 m18009a = C5702i1.m18009a();
        C5722o1.m17990k("Updating user agent.");
        String defaultUserAgent = WebSettings.getDefaultUserAgent(context);
        if (!defaultUserAgent.equals(m18009a.f18490b)) {
            Context m17207d = C6094e.m17207d(context);
            Context context2 = m17207d;
            if (!C6226d.m16818a()) {
                if (m17207d == null) {
                    context2 = null;
                }
                m18009a.f18490b = defaultUserAgent;
            }
            SharedPreferences.Editor putString = context.getSharedPreferences("admob_user_agent", 0).edit().putString("user_agent", WebSettings.getDefaultUserAgent(context));
            if (context2 == null) {
                putString.apply();
            } else {
                C6240r.m16769a(context, putString, "admob_user_agent");
            }
            m18009a.f18490b = defaultUserAgent;
        }
        C5722o1.m17990k("User agent is updated.");
    }

    @Override // com.google.android.gms.ads.internal.util.C5684e
    /* renamed from: d */
    public final Drawable mo18035d(Context context, Bitmap bitmap, boolean z, float f) {
        if (!z || f <= 0.0f || f > 25.0f) {
            return new BitmapDrawable(context.getResources(), bitmap);
        }
        try {
            Bitmap createScaledBitmap = Bitmap.createScaledBitmap(bitmap, bitmap.getWidth(), bitmap.getHeight(), false);
            Bitmap createBitmap = Bitmap.createBitmap(createScaledBitmap);
            RenderScript create = RenderScript.create(context);
            ScriptIntrinsicBlur create2 = ScriptIntrinsicBlur.create(create, Element.U8_4(create));
            Allocation createFromBitmap = Allocation.createFromBitmap(create, createScaledBitmap);
            Allocation createFromBitmap2 = Allocation.createFromBitmap(create, createBitmap);
            create2.setRadius(f);
            create2.setInput(createFromBitmap);
            create2.forEach(createFromBitmap2);
            createFromBitmap2.copyTo(createBitmap);
            return new BitmapDrawable(context.getResources(), createBitmap);
        } catch (RuntimeException e) {
            return new BitmapDrawable(context.getResources(), bitmap);
        }
    }

    @Override // com.google.android.gms.ads.internal.util.C5684e
    /* renamed from: e */
    public final int mo18034e(ContentResolver contentResolver) {
        return Settings.Global.getInt(contentResolver, "wifi_on", 0);
    }

    @Override // com.google.android.gms.ads.internal.util.C5684e
    /* renamed from: f */
    public final int mo18033f(ContentResolver contentResolver) {
        return Settings.Global.getInt(contentResolver, "airplane_mode_on", 0);
    }
}
