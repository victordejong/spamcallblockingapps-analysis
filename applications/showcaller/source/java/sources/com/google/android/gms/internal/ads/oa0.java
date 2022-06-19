package com.google.android.gms.internal.ads;

import android.app.AlertDialog;
import android.content.Context;
import android.content.res.Resources;
import android.net.Uri;
import android.text.TextUtils;
import android.webkit.URLUtil;
import com.google.android.gms.ads.internal.C5667s;
import com.google.android.gms.ads.p264w.C5858a;
import com.yanzhenjie.nohttp.Headers;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/oa0.class */
public final class oa0 extends ra0 {

    /* renamed from: c */
    private final Map<String, String> f27478c;

    /* renamed from: d */
    private final Context f27479d;

    public oa0(wn0 wn0Var, Map<String, String> map) {
        super(wn0Var, "storePicture");
        this.f27478c = map;
        this.f27479d = wn0Var.mo7908g();
    }

    /* renamed from: i */
    public final void m12702i() {
        if (this.f27479d == null) {
            m11621b("Activity context is not available");
            return;
        }
        C5667s.m18160d();
        if (!new C7011tv(this.f27479d).m10495a()) {
            m11621b("Feature is not supported by the device.");
            return;
        }
        String str = this.f27478c.get("iurl");
        if (TextUtils.isEmpty(str)) {
            m11621b("Image url cannot be empty.");
        } else if (!URLUtil.isValidUrl(str)) {
            String valueOf = String.valueOf(str);
            m11621b(valueOf.length() != 0 ? "Invalid image url: ".concat(valueOf) : new String("Invalid image url: "));
        } else {
            String lastPathSegment = Uri.parse(str).getLastPathSegment();
            C5667s.m18160d();
            if (TextUtils.isEmpty(lastPathSegment) || !lastPathSegment.matches("([^\\s]+(\\.(?i)(jpg|png|gif|bmp|webp))$)")) {
                String valueOf2 = String.valueOf(lastPathSegment);
                m11621b(valueOf2.length() != 0 ? "Image type not recognized: ".concat(valueOf2) : new String("Image type not recognized: "));
                return;
            }
            Resources m12236j = C5667s.m18156h().m12236j();
            C5667s.m18160d();
            AlertDialog.Builder builder = new AlertDialog.Builder(this.f27479d);
            builder.setTitle(m12236j != null ? m12236j.getString(C5858a.f18817s1) : "Save image");
            builder.setMessage(m12236j != null ? m12236j.getString(C5858a.f18818s2) : "Allow Ad to store image in Picture gallery?");
            builder.setPositiveButton(m12236j != null ? m12236j.getString(C5858a.f18819s3) : Headers.HEAD_KEY_ACCEPT, new ma0(this, str, lastPathSegment));
            builder.setNegativeButton(m12236j != null ? m12236j.getString(C5858a.f18820s4) : "Decline", new na0(this));
            builder.create().show();
        }
    }
}
