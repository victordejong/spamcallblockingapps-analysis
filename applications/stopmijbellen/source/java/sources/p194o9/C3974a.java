package p194o9;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.support.p012v4.media.C0082b;
import java.util.Collections;
import java.util.List;
import me.leolin.shortcutbadger.ShortcutBadgeException;
/* renamed from: o9.a */
/* loaded from: classes2-dex2jar.jar:o9/a.class */
public class C3974a {
    /* renamed from: a */
    public static List<ResolveInfo> m1585a(Context context, Intent intent) {
        List<ResolveInfo> queryBroadcastReceivers = context.getPackageManager().queryBroadcastReceivers(intent, 0);
        if (queryBroadcastReceivers == null) {
            queryBroadcastReceivers = Collections.emptyList();
        }
        return queryBroadcastReceivers;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0028 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0029  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m1584b(android.content.Context r4, android.content.Intent r5) throws me.leolin.shortcutbadger.ShortcutBadgeException {
        /*
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 26
            if (r0 < r1) goto L22
            android.content.Intent r0 = new android.content.Intent
            r1 = r0
            r2 = r5
            r1.<init>(r2)
            r6 = r0
            r0 = r6
            java.lang.String r1 = "me.leolin.shortcutbadger.BADGE_COUNT_UPDATE"
            android.content.Intent r0 = r0.setAction(r1)
            r0 = r4
            r1 = r6
            m1583c(r0, r1)     // Catch: me.leolin.shortcutbadger.ShortcutBadgeException -> L2f
            r0 = 1
            r7 = r0
            goto L24
        L22:
            r0 = 0
            r7 = r0
        L24:
            r0 = r7
            if (r0 == 0) goto L29
            return
        L29:
            r0 = r4
            r1 = r5
            m1583c(r0, r1)
            return
        L2f:
            r6 = move-exception
            goto L22
        */
        throw new UnsupportedOperationException("Method not decompiled: p194o9.C3974a.m1584b(android.content.Context, android.content.Intent):void");
    }

    /* renamed from: c */
    public static void m1583c(Context context, Intent intent) throws ShortcutBadgeException {
        List<ResolveInfo> m1585a = m1585a(context, intent);
        if (m1585a.size() == 0) {
            StringBuilder m8752j = C0082b.m8752j("unable to resolve intent: ");
            m8752j.append(intent.toString());
            throw new ShortcutBadgeException(m8752j.toString());
        }
        for (ResolveInfo resolveInfo : m1585a) {
            Intent intent2 = new Intent(intent);
            if (resolveInfo != null) {
                intent2.setPackage(resolveInfo.resolvePackageName);
                context.sendBroadcast(intent2);
            }
        }
    }
}
