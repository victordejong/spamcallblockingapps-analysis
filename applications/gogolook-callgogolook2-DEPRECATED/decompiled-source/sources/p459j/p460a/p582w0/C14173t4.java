package p459j.p460a.p582w0;

import android.app.Notification;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Color;
import android.os.Build;
import androidx.core.app.NotificationCompat;
import gogolook.callgogolook2.MyApplication;
import gogolook.callgogolook2.R$drawable;
import gogolook.callgogolook2.R$mipmap;
import p081h.p160h.p172b.p173a.C6298e;
/* renamed from: j.a.w0.t4 */
/* loaded from: classes3-dex2jar.jar:j/a/w0/t4.class */
public class C14173t4 {

    /* renamed from: a */
    public static final int f31692a = Color.parseColor("#1CBD3A");

    /* renamed from: b */
    public static Bitmap f31693b = null;

    /* renamed from: a */
    public static Notification m2305a(NotificationCompat.Builder builder) {
        try {
            return builder.build();
        } catch (Throwable th) {
            C13973d4.m2952a(th);
            return builder.setLargeIcon(null).build();
        }
    }

    /* renamed from: a */
    public static NotificationCompat.Builder m2308a() {
        return m2306a(MyApplication.m29013o(), C14195v2.f31724e);
    }

    /* renamed from: a */
    public static NotificationCompat.Builder m2307a(Context context) {
        return m2306a(context, C14195v2.f31720a);
    }

    /* renamed from: a */
    public static NotificationCompat.Builder m2306a(Context context, String str) {
        Bitmap bitmap;
        NotificationCompat.Builder a = C6298e.m23352a(context, str);
        a.setColor(f31692a);
        a.setSmallIcon(R$drawable.notification_icon);
        a.setAutoCancel(true);
        if (Build.VERSION.SDK_INT < 21 && context != null && ((bitmap = f31693b) == null || bitmap.isRecycled())) {
            try {
                f31693b = BitmapFactory.decodeResource(MyApplication.m29013o().getResources(), R$mipmap.ic_launcher);
            } catch (Exception e) {
            }
        }
        Bitmap bitmap2 = f31693b;
        if (bitmap2 != null && !bitmap2.isRecycled()) {
            a.setLargeIcon(f31693b);
        }
        return a;
    }

    /* renamed from: b */
    public static NotificationCompat.Builder m2304b(Context context) {
        return m2306a(context, C14195v2.f31721b).setOnlyAlertOnce(true);
    }
}
