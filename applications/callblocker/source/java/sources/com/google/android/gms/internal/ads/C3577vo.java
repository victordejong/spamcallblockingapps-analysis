package com.google.android.gms.internal.ads;

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
import com.google.android.gms.common.C2595h;
import com.google.android.gms.common.util.C2707d;
import com.google.android.gms.common.util.C2719p;
@TargetApi(17)
/* renamed from: com.google.android.gms.internal.ads.vo */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/vo.class */
public class C3577vo extends C3572vj {
    public C3577vo() {
        super();
    }

    @Override // com.google.android.gms.internal.ads.C3572vj
    /* renamed from: a */
    public final int mo6935a(ContentResolver contentResolver) {
        return Settings.Global.getInt(contentResolver, "wifi_on", 0);
    }

    @Override // com.google.android.gms.internal.ads.C3572vj
    /* renamed from: a */
    public final Drawable mo6933a(Context context, Bitmap bitmap, boolean z, float f) {
        BitmapDrawable bitmapDrawable;
        if (!z || f <= 0.0f || f > 25.0f) {
            bitmapDrawable = new BitmapDrawable(context.getResources(), bitmap);
        } else {
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
                bitmapDrawable = new BitmapDrawable(context.getResources(), createBitmap);
            } catch (RuntimeException e) {
                bitmapDrawable = new BitmapDrawable(context.getResources(), bitmap);
            }
        }
        return bitmapDrawable;
    }

    @Override // com.google.android.gms.internal.ads.C3572vj
    /* renamed from: a */
    public final String mo6934a(Context context) {
        C3625xi m6822a = C3625xi.m6822a();
        if (TextUtils.isEmpty(m6822a.f17593a)) {
            m6822a.f17593a = C2707d.m13875a() ? (String) C3626xj.m6821a(context, new CallableC3628xl(m6822a, context)) : (String) C3626xj.m6821a(context, new CallableC3627xk(m6822a, C2595h.m14150d(context), context));
        }
        return m6822a.f17593a;
    }

    @Override // com.google.android.gms.internal.ads.C3572vj
    /* renamed from: a */
    public final boolean mo6932a(Context context, WebSettings webSettings) {
        super.mo6932a(context, webSettings);
        webSettings.setMediaPlaybackRequiresUserGesture(false);
        return true;
    }

    @Override // com.google.android.gms.internal.ads.C3572vj
    /* renamed from: b */
    public final int mo6931b(ContentResolver contentResolver) {
        return Settings.Global.getInt(contentResolver, "airplane_mode_on", 0);
    }

    @Override // com.google.android.gms.internal.ads.C3572vj
    /* renamed from: b */
    public final void mo6930b(Context context) {
        C3625xi m6822a = C3625xi.m6822a();
        C3556uu.m7052a("Updating user agent.");
        String defaultUserAgent = WebSettings.getDefaultUserAgent(context);
        if (!defaultUserAgent.equals(m6822a.f17593a)) {
            Context m14150d = C2595h.m14150d(context);
            if (C2707d.m13875a() || m14150d == null) {
                SharedPreferences.Editor putString = context.getSharedPreferences("admob_user_agent", 0).edit().putString("user_agent", WebSettings.getDefaultUserAgent(context));
                if (m14150d == null) {
                    putString.apply();
                } else {
                    C2719p.m13827a(context, putString, "admob_user_agent");
                }
            }
            m6822a.f17593a = defaultUserAgent;
        }
        C3556uu.m7052a("User agent is updated.");
    }
}
