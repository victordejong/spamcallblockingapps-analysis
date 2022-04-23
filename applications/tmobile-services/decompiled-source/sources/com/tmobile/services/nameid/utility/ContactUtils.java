package com.tmobile.services.nameid.utility;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import com.tmobile.services.nameid.model.Contact;
import java.util.List;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/utility/ContactUtils.class */
public class ContactUtils {
    private ContactUtils() {
        throw new IllegalAccessError("This is a utility class, it doesn't need to be created");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x01d0, code lost:
        if (r0.isEmpty() != false) goto L_0x01d3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x022b, code lost:
        if (r7 != null) goto L_0x0274;
     */
    @javax.annotation.Nonnull
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.List<com.tmobile.services.nameid.model.Contact> m5816a(android.content.Context r7) {
        /*
            Method dump skipped, instructions count: 685
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tmobile.services.nameid.utility.ContactUtils.m5816a(android.content.Context):java.util.List");
    }

    @Nonnull
    /* renamed from: b */
    public static List<Contact> m5815b(String str, Context context, boolean z) {
        String replaceAll = str.replaceAll("\\+", "");
        String str2 = replaceAll;
        if (replaceAll.length() > 10) {
            str2 = replaceAll.substring(replaceAll.length() - 10);
        }
        List<Contact> c = m5814c(str2, context, z);
        return c.isEmpty() ? m5814c(str, context, z) : c;
    }

    /* JADX WARN: Code restructure failed: missing block: B:119:0x0368, code lost:
        if (r0.isEmpty() != false) goto L_0x036b;
     */
    /* JADX WARN: Code restructure failed: missing block: B:154:0x0417, code lost:
        if (r10 != null) goto L_0x0460;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x0294, code lost:
        if (r0.isEmpty() != false) goto L_0x0297;
     */
    /* JADX WARN: Removed duplicated region for block: B:147:0x03f3  */
    @javax.annotation.Nonnull
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static java.util.List<com.tmobile.services.nameid.model.Contact> m5814c(java.lang.String r9, android.content.Context r10, boolean r11) {
        /*
            Method dump skipped, instructions count: 1145
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tmobile.services.nameid.utility.ContactUtils.m5814c(java.lang.String, android.content.Context, boolean):java.util.List");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    /* renamed from: d */
    public static Bitmap m5813d(Bitmap bitmap) {
        Bitmap bitmap2 = null;
        try {
            Bitmap createBitmap = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(createBitmap);
            Paint paint = new Paint();
            Rect rect = new Rect(0, 0, bitmap.getWidth(), bitmap.getHeight());
            paint.setAntiAlias(true);
            canvas.drawARGB(0, 0, 0, 0);
            paint.setColor(-1);
            float width = bitmap.getWidth() / 2.0f;
            float height = bitmap.getHeight() / 2.0f;
            canvas.drawCircle(width, height, Math.min(width, height), paint);
            paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
            bitmap2 = createBitmap;
            canvas.drawBitmap(bitmap, rect, rect, paint);
            bitmap2 = createBitmap;
        } catch (Exception e) {
            LogUtil.m5641f("NotificationUtil#getRoundedRectBitmap", "", e);
        }
        return bitmap2;
    }
}
