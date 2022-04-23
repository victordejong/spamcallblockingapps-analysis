package com.android.contacts.util;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import com.android.contacts.k;
import com.android.contacts.simcardmanage.b;
/* loaded from: classes-dex2jar.jar:com/android/contacts/util/ContactBadgeUtil.class */
public class ContactBadgeUtil {
    private static final String TAG = "ContactBadgeUtil";

    /* JADX WARN: Removed duplicated region for block: B:36:0x00f2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.CharSequence getSocialDate(com.android.contacts.util.StreamItemEntry r8, android.content.Context r9) {
        /*
            Method dump skipped, instructions count: 252
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.util.ContactBadgeUtil.getSocialDate(com.android.contacts.util.StreamItemEntry, android.content.Context):java.lang.CharSequence");
    }

    public static Bitmap loadDefaultAvatarPhoto(Context context, boolean z, boolean z2, int i) {
        return i > 0 ? BitmapFactory.decodeResource(context.getResources(), k.a(i, b.a(context))) : BitmapFactory.decodeResource(context.getResources(), k.a(z2));
    }
}
