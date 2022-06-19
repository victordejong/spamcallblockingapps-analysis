package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.Base64;
import com.allinone.callerid.bean.ShortCut;
import com.google.android.gms.ads.internal.C5667s;
import com.google.android.gms.ads.internal.util.C5679c2;
import com.google.android.gms.common.p272k.C6198c;
import java.io.ByteArrayOutputStream;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/xp1.class */
public final class xp1 {

    /* renamed from: a */
    private final Context f32144a;

    /* renamed from: b */
    private final ApplicationInfo f32145b;

    /* renamed from: e */
    private String f32148e = "";

    /* renamed from: c */
    private final int f32146c = ((Integer) C7192yr.m8714c().m14263c(C6679kw.f25458C6)).intValue();

    /* renamed from: d */
    private final int f32147d = ((Integer) C7192yr.m8714c().m14263c(C6679kw.f25466D6)).intValue();

    public xp1(Context context) {
        this.f32144a = context;
        this.f32145b = context.getApplicationInfo();
    }

    /* renamed from: a */
    public final JSONObject m9094a() {
        Drawable drawable;
        String str;
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(ShortCut.NAME, C6198c.m16885a(this.f32144a).m16890d(this.f32145b.packageName));
        } catch (PackageManager.NameNotFoundException e) {
        }
        jSONObject.put("packageName", this.f32145b.packageName);
        C5667s.m18160d();
        jSONObject.put("adMobAppId", C5679c2.m18076c0(this.f32144a));
        if (this.f32148e.isEmpty()) {
            try {
                drawable = C6198c.m16885a(this.f32144a).m16889e(this.f32145b.packageName).f6188b;
            } catch (PackageManager.NameNotFoundException e2) {
                drawable = null;
            }
            if (drawable == null) {
                str = "";
            } else {
                drawable.setBounds(0, 0, this.f32146c, this.f32147d);
                Bitmap createBitmap = Bitmap.createBitmap(this.f32146c, this.f32147d, Bitmap.Config.ARGB_8888);
                drawable.draw(new Canvas(createBitmap));
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                createBitmap.compress(Bitmap.CompressFormat.PNG, 100, byteArrayOutputStream);
                str = Base64.encodeToString(byteArrayOutputStream.toByteArray(), 2);
            }
            this.f32148e = str;
        }
        if (!this.f32148e.isEmpty()) {
            jSONObject.put("icon", this.f32148e);
            jSONObject.put("iconWidthPx", this.f32146c);
            jSONObject.put("iconHeightPx", this.f32147d);
        }
        return jSONObject;
    }
}
