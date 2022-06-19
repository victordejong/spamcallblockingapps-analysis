package io.fabric.sdk.android.services.p072e;

import android.content.Context;
import android.graphics.BitmapFactory;
import io.fabric.sdk.android.C1449c;
import io.fabric.sdk.android.services.p068b.C1480i;
/* renamed from: io.fabric.sdk.android.services.e.n */
/* loaded from: classes-dex2jar.jar:io/fabric/sdk/android/services/e/n.class */
public class C1564n {

    /* renamed from: a */
    public final String f4253a;

    /* renamed from: b */
    public final int f4254b;

    /* renamed from: c */
    public final int f4255c;

    /* renamed from: d */
    public final int f4256d;

    public C1564n(String str, int i, int i2, int i3) {
        this.f4253a = str;
        this.f4254b = i;
        this.f4255c = i2;
        this.f4256d = i3;
    }

    /* renamed from: a */
    public static C1564n m3308a(Context context, String str) {
        C1564n c1564n;
        if (str != null) {
            try {
                int m3465l = C1480i.m3465l(context);
                C1449c.m3572g().mo3552a("Fabric", "App icon resource ID is " + m3465l);
                BitmapFactory.Options options = new BitmapFactory.Options();
                options.inJustDecodeBounds = true;
                BitmapFactory.decodeResource(context.getResources(), m3465l, options);
                c1564n = new C1564n(str, m3465l, options.outWidth, options.outHeight);
            } catch (Exception e) {
                C1449c.m3572g().mo3545e("Fabric", "Failed to load icon", e);
            }
            return c1564n;
        }
        c1564n = null;
        return c1564n;
    }
}
