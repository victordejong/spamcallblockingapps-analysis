package com.asus.contacts.b;

import android.content.Context;
import android.content.Intent;
import android.util.Log;
/* loaded from: classes-dex2jar.jar:com/asus/contacts/b/h.class */
public class h {

    /* renamed from: a  reason: collision with root package name */
    private static final String f2600a = h.class.getSimpleName();

    /* JADX WARN: Removed duplicated region for block: B:13:0x0069  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x009a  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x00b1 -> B:11:0x0063). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x00c5 -> B:11:0x0063). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean a(android.content.Context r5) {
        /*
            Method dump skipped, instructions count: 232
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.asus.contacts.b.h.a(android.content.Context):boolean");
    }

    public static void b(Context context) {
        Log.d(f2600a, "sendUpdateSmsCacheIntent: com.asus.message.UPDATE_SMS_RINGTONE_CACHE");
        context.sendBroadcast(new Intent("com.asus.message.UPDATE_SMS_RINGTONE_CACHE"));
    }
}
