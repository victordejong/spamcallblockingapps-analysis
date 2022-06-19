package p1727n3.p1807k.p1809b.p1810c;

import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.ShortcutManager;
import android.graphics.Bitmap;
import android.os.Build;
import android.os.Bundle;
import androidx.core.graphics.drawable.IconCompat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: n3.k.b.c.d */
/* loaded from: classes-dex2jar.jar:n3/k/b/c/d.class */
public class C26480d {

    /* renamed from: a */
    public static volatile AbstractC26478c<?> f74246a;

    /* renamed from: b */
    public static volatile List<AbstractC26476a> f74247b;

    /* renamed from: a */
    public static List<AbstractC26476a> m1775a(Context context) {
        Bundle bundle;
        String string;
        if (f74247b == null) {
            ArrayList arrayList = new ArrayList();
            PackageManager packageManager = context.getPackageManager();
            Intent intent = new Intent("androidx.core.content.pm.SHORTCUT_LISTENER");
            intent.setPackage(context.getPackageName());
            for (ResolveInfo resolveInfo : packageManager.queryIntentActivities(intent, 128)) {
                ActivityInfo activityInfo = resolveInfo.activityInfo;
                if (activityInfo != null && (bundle = activityInfo.metaData) != null && (string = bundle.getString("androidx.core.content.pm.shortcut_listener_impl")) != null) {
                    try {
                        arrayList.add((AbstractC26476a) Class.forName(string, false, C26480d.class.getClassLoader()).getMethod("getInstance", Context.class).invoke(null, context));
                    } catch (Exception e) {
                    }
                }
            }
            if (f74247b == null) {
                f74247b = arrayList;
            }
        }
        return f74247b;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0040  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m1774b(android.content.Context r5) {
        /*
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 26
            if (r0 < r1) goto L15
            r0 = r5
            java.lang.Class<android.content.pm.ShortcutManager> r1 = android.content.pm.ShortcutManager.class
            java.lang.Object r0 = r0.getSystemService(r1)
            android.content.pm.ShortcutManager r0 = (android.content.pm.ShortcutManager) r0
            boolean r0 = r0.isRequestPinShortcutSupported()
            return r0
        L15:
            r0 = r5
            java.lang.String r1 = "com.android.launcher.permission.INSTALL_SHORTCUT"
            int r0 = p1727n3.p1807k.p1809b.C26467a.m1801a(r0, r1)
            if (r0 == 0) goto L20
            r0 = 0
            return r0
        L20:
            r0 = r5
            android.content.pm.PackageManager r0 = r0.getPackageManager()
            android.content.Intent r1 = new android.content.Intent
            r2 = r1
            java.lang.String r3 = "com.android.launcher.action.INSTALL_SHORTCUT"
            r2.<init>(r3)
            r2 = 0
            java.util.List r0 = r0.queryBroadcastReceivers(r1, r2)
            java.util.Iterator r0 = r0.iterator()
            r5 = r0
        L37:
            r0 = r5
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L62
            r0 = r5
            java.lang.Object r0 = r0.next()
            android.content.pm.ResolveInfo r0 = (android.content.pm.ResolveInfo) r0
            android.content.pm.ActivityInfo r0 = r0.activityInfo
            java.lang.String r0 = r0.permission
            r6 = r0
            r0 = r6
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 != 0) goto L60
            java.lang.String r0 = "com.android.launcher.permission.INSTALL_SHORTCUT"
            r1 = r6
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L37
        L60:
            r0 = 1
            return r0
        L62:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1807k.p1809b.p1810c.C26480d.m1774b(android.content.Context):boolean");
    }

    /* renamed from: c */
    public static void m1773c(Context context, String str) {
        Objects.requireNonNull(str);
        if (Build.VERSION.SDK_INT >= 25) {
            ((ShortcutManager) context.getSystemService(ShortcutManager.class)).reportShortcutUsed(str);
        }
        for (AbstractC26476a abstractC26476a : m1775a(context)) {
            Collections.singletonList(str);
            Objects.requireNonNull(abstractC26476a);
        }
    }

    /* renamed from: d */
    public static boolean m1772d(Context context, C26477b c26477b, IntentSender intentSender) {
        Bitmap bitmap;
        if (Build.VERSION.SDK_INT >= 26) {
            return ((ShortcutManager) context.getSystemService(ShortcutManager.class)).requestPinShortcut(c26477b.m1778a(), null);
        }
        if (!m1774b(context)) {
            return false;
        }
        Intent intent = new Intent("com.android.launcher.action.INSTALL_SHORTCUT");
        Intent[] intentArr = c26477b.f74241c;
        intent.putExtra("android.intent.extra.shortcut.INTENT", intentArr[intentArr.length - 1]).putExtra("android.intent.extra.shortcut.NAME", c26477b.f74242d.toString());
        IconCompat iconCompat = c26477b.f74243e;
        if (iconCompat != null) {
            Context context2 = c26477b.f74239a;
            iconCompat.e(context2);
            int i = iconCompat.a;
            if (i == 1) {
                bitmap = (Bitmap) iconCompat.b;
            } else if (i == 2) {
                try {
                    intent.putExtra("android.intent.extra.shortcut.ICON_RESOURCE", Intent.ShortcutIconResource.fromContext(context2.createPackageContext(iconCompat.m(), 0), iconCompat.e));
                } catch (PackageManager.NameNotFoundException e) {
                    StringBuilder m8728C = C22128a.m8728C("Can't find package ");
                    m8728C.append(iconCompat.b);
                    throw new IllegalArgumentException(m8728C.toString(), e);
                }
            } else if (i != 5) {
                throw new IllegalArgumentException("Icon type not supported for intent shortcuts");
            } else {
                bitmap = IconCompat.g((Bitmap) iconCompat.b, true);
            }
            intent.putExtra("android.intent.extra.shortcut.ICON", bitmap);
        }
        context.sendBroadcast(intent);
        return true;
    }
}
