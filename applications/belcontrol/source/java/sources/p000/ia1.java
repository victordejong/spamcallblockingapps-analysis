package p000;

import android.content.ContentUris;
import android.content.ContentValues;
import android.content.Context;
import android.net.Uri;
import java.util.Arrays;
import p000.fa1;
/* renamed from: ia1 */
/* loaded from: classes3-dex2jar.jar:ia1.class */
public class ia1 extends ja1 {
    /* renamed from: b */
    public static l81 m1588b(Context context, l81 l81Var) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("address", l81Var.f6929m.toString());
        contentValues.put("body", l81Var.f6928l);
        contentValues.put("read", (Integer) 1);
        contentValues.put("type", Integer.valueOf(l81Var.f6930n == 1 ? 1 : 2));
        long m1483a = ja1.m1483a(context, Arrays.asList(l81Var));
        l81Var.f6937u = m1483a;
        contentValues.put("thread_id", Long.valueOf(m1483a));
        Uri insert = context.getContentResolver().insert(l81Var.f6930n == 1 ? fa1.C1422f.f6598e : fa1.C1422f.f6599f, contentValues);
        if (insert != null) {
            l81Var.f6923f = ContentUris.parseId(insert);
        }
        return l81Var;
    }

    /* renamed from: c */
    public static void m1587c(Context context, long j, int i) {
        if (j > 0 || i >= 0) {
            m1586d(context, Uri.withAppendedPath(fa1.C1422f.f6598e, String.valueOf(j)), i);
        }
    }

    /* renamed from: d */
    public static void m1586d(Context context, Uri uri, int i) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("type", Integer.valueOf(i));
        context.getContentResolver().update(uri, contentValues, null, null);
    }
}
