package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.Base64;
import com.callerid.block.bean.EZBlackList;
import com.google.android.gms.ads.internal.C1407r;
import com.google.android.gms.ads.internal.util.C1433l1;
import com.google.android.gms.common.p080g.C1562c;
import java.io.ByteArrayOutputStream;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/nt0.class */
public final class nt0 {

    /* renamed from: a */
    private final Context f7797a;

    /* renamed from: b */
    private final ApplicationInfo f7798b;

    /* renamed from: e */
    private String f7801e = "";

    /* renamed from: c */
    private final int f7799c = ((Integer) C1674c.m7906c().m6878b(C1842m3.f7551z5)).intValue();

    /* renamed from: d */
    private final int f7800d = ((Integer) C1674c.m7906c().m6878b(C1842m3.f7215A5)).intValue();

    public nt0(Context context) {
        this.f7797a = context;
        this.f7798b = context.getApplicationInfo();
    }

    /* renamed from: a */
    public final JSONObject m6390a() {
        Drawable drawable;
        String str;
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(EZBlackList.NAME, C1562c.m8427a(this.f7797a).m8432d(this.f7798b.packageName));
        } catch (PackageManager.NameNotFoundException e) {
        }
        jSONObject.put("packageName", this.f7798b.packageName);
        C1407r.m8920d();
        jSONObject.put("adMobAppId", C1433l1.m8770a0(this.f7797a));
        if (this.f7801e.isEmpty()) {
            try {
                drawable = (Drawable) C1562c.m8427a(this.f7797a).m8431e(this.f7798b.packageName).b;
            } catch (PackageManager.NameNotFoundException e2) {
                drawable = null;
            }
            if (drawable == null) {
                str = "";
            } else {
                drawable.setBounds(0, 0, this.f7799c, this.f7800d);
                Bitmap createBitmap = Bitmap.createBitmap(this.f7799c, this.f7800d, Bitmap.Config.ARGB_8888);
                drawable.draw(new Canvas(createBitmap));
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                createBitmap.compress(Bitmap.CompressFormat.PNG, 100, byteArrayOutputStream);
                str = Base64.encodeToString(byteArrayOutputStream.toByteArray(), 2);
            }
            this.f7801e = str;
        }
        if (!this.f7801e.isEmpty()) {
            jSONObject.put("icon", this.f7801e);
            jSONObject.put("iconWidthPx", this.f7799c);
            jSONObject.put("iconHeightPx", this.f7800d);
        }
        return jSONObject;
    }
}
