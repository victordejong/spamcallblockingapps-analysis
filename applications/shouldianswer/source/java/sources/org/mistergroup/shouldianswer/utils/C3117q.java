package org.mistergroup.shouldianswer.utils;

import android.content.ContentUris;
import android.content.res.AssetFileDescriptor;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.provider.ContactsContract;
import android.util.LongSparseArray;
import java.io.FileNotFoundException;
import kotlin.p081e.p083b.C1694h;
import org.mistergroup.shouldianswer.MyApp;
/* renamed from: org.mistergroup.shouldianswer.utils.q */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/utils/q.class */
public final class C3117q {

    /* renamed from: a */
    public static final C3117q f9185a = new C3117q();

    /* renamed from: b */
    private static final LongSparseArray<Bitmap> f9186b = new LongSparseArray<>();

    private C3117q() {
    }

    /* renamed from: a */
    public final Bitmap m102a(long j) {
        try {
            return f9186b.get(j, null);
        } catch (Exception e) {
            C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
            return null;
        }
    }

    /* renamed from: a */
    public final void m103a() {
        try {
            f9186b.clear();
        } catch (Exception e) {
            C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
        }
    }

    /* renamed from: b */
    public final Bitmap m101b(long j) {
        try {
            Bitmap bitmap = f9186b.get(j, null);
            if (bitmap != null) {
                return bitmap;
            }
            Cursor query = MyApp.f5480c.m1801b().query(ContactsContract.Data.CONTENT_URI, new String[]{"data15"}, "_id=?", new String[]{String.valueOf(j)}, null);
            byte[] bArr = null;
            byte[] bArr2 = bArr;
            if (query != null) {
                bArr2 = bArr;
                if (query.moveToFirst()) {
                    bArr2 = query.getBlob(0);
                }
                query.close();
            }
            Bitmap bitmap2 = bitmap;
            if (bArr2 != null) {
                bitmap2 = BitmapFactory.decodeByteArray(bArr2, 0, bArr2.length);
                C3104j c3104j = C3104j.f9124a;
                StringBuilder sb = new StringBuilder();
                sb.append("PhotoHelper.getPhotoBitmap ");
                sb.append(String.valueOf(j));
                sb.append(" loaded bitmap with size ");
                if (bitmap2 == null) {
                    C1694h.m3124a();
                }
                sb.append(String.valueOf(bitmap2.getByteCount()));
                sb.append(" b");
                C3104j.m157a(c3104j, sb.toString(), (String) null, 2, (Object) null);
                f9186b.put(j, bitmap2);
            }
            return bitmap2;
        } catch (Exception e) {
            C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
            return null;
        }
    }

    /* renamed from: c */
    public final Bitmap m100c(long j) {
        try {
            AssetFileDescriptor openAssetFileDescriptor = MyApp.f5480c.m1802a().getContentResolver().openAssetFileDescriptor(Uri.withAppendedPath(ContentUris.withAppendedId(ContactsContract.Contacts.CONTENT_URI, j), "display_photo"), "r");
            return BitmapFactory.decodeStream(openAssetFileDescriptor != null ? openAssetFileDescriptor.createInputStream() : null);
        } catch (FileNotFoundException e) {
            return null;
        } catch (Exception e2) {
            C3104j.m158a(C3104j.f9124a, e2, (String) null, 2, (Object) null);
            return null;
        }
    }
}
