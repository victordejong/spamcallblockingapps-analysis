package com.allinone.callerid.util;

import android.content.ContentUris;
import android.content.Context;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.net.Uri;
import android.provider.ContactsContract;
import java.io.InputStream;
/* renamed from: com.allinone.callerid.util.c */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/c.class */
public class C3717c {

    /* renamed from: a */
    private Context f11913a;

    public C3717c(Context context) {
        this.f11913a = context;
    }

    /* renamed from: a */
    public Bitmap m24438a(String str) {
        Bitmap bitmap;
        Bitmap bitmap2 = null;
        try {
            StringBuilder sb = new StringBuilder();
            sb.append("content://com.android.contacts/data/phones/filter/");
            sb.append(str);
            Cursor query = this.f11913a.getContentResolver().query(Uri.parse(sb.toString()), null, null, null, null);
            Bitmap bitmap3 = null;
            if (query != null) {
                bitmap3 = null;
                if (query.getCount() > 0) {
                    query.moveToFirst();
                    InputStream openContactPhotoInputStream = ContactsContract.Contacts.openContactPhotoInputStream(this.f11913a.getContentResolver(), ContentUris.withAppendedId(ContactsContract.Contacts.CONTENT_URI, Long.valueOf(query.getLong(query.getColumnIndex("contact_id"))).longValue()));
                    bitmap3 = null;
                    if (openContactPhotoInputStream != null) {
                        Bitmap decodeStream = BitmapFactory.decodeStream(openContactPhotoInputStream);
                        bitmap3 = null;
                        if (decodeStream != null) {
                            bitmap3 = m24437b(decodeStream);
                        }
                    }
                }
            }
            bitmap = bitmap3;
            if (query != null) {
                bitmap2 = bitmap3;
                query.close();
                bitmap = bitmap3;
            }
        } catch (Exception e) {
            bitmap = bitmap2;
            if (C3718c0.f11914a) {
                C3718c0.m24436a("quick", str + "出错啦:" + e.getMessage());
                bitmap = bitmap2;
            }
        }
        return bitmap;
    }

    /* renamed from: b */
    public Bitmap m24437b(Bitmap bitmap) {
        float f;
        float f2;
        float f3;
        float f4;
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        if (width <= height) {
            f4 = width / 2;
            f3 = width;
            f2 = f3;
            f = 0.0f;
        } else {
            f4 = height / 2;
            f = (width - height) / 2;
            f2 = height;
            f3 = width - f;
            width = height;
        }
        Bitmap createBitmap = Bitmap.createBitmap(width, width, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        Paint paint = new Paint();
        Rect rect = new Rect((int) f, (int) 0.0f, (int) f3, (int) f2);
        Rect rect2 = new Rect((int) 0.0f, (int) 0.0f, (int) f2, (int) f2);
        RectF rectF = new RectF(rect2);
        paint.setAntiAlias(true);
        canvas.drawARGB(0, 0, 0, 0);
        paint.setColor(-12434878);
        canvas.drawRoundRect(rectF, f4, f4, paint);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
        canvas.drawBitmap(bitmap, rect, rect2, paint);
        return createBitmap;
    }
}
