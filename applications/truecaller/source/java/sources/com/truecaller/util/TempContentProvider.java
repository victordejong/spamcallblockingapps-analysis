package com.truecaller.util;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import com.tenor.android.core.constant.StringConstant;
import com.truecaller.log.AssertionUtil;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import p193e.p1432d.p1439c.p1440a.C22128a;
import w3.c.a.a.a.f;
import w3.c.a.a.a.h;
/* loaded from: classes15-dex2jar.jar:com/truecaller/util/TempContentProvider.class */
public class TempContentProvider extends ContentProvider {

    /* renamed from: a */
    public static final String[] f15946a = {"_size"};

    /* renamed from: a */
    public static Uri m34472a(Context context, Integer num) {
        File file = new File(context.getCacheDir(), "temp_provider");
        if (file.exists() || file.mkdirs()) {
            String a = f.a(32, false, true);
            File file2 = new File(file, a);
            try {
                if (!file2.exists()) {
                    if (!file2.createNewFile()) {
                        return null;
                    }
                }
                StringBuilder m8728C = C22128a.m8728C("content://");
                m8728C.append(context.getPackageName());
                m8728C.append(".TempContentProvider");
                return Uri.withAppendedPath(Uri.parse(m8728C.toString()), a);
            } catch (IOException e) {
                AssertionUtil.reportThrowableButNeverCrash(e);
                return null;
            }
        }
        return null;
    }

    /* renamed from: b */
    public final File m34471b(Uri uri) {
        String path;
        Context context = getContext();
        if (context == null || (path = uri.getPath()) == null) {
            return null;
        }
        String str = path;
        if (path.startsWith(StringConstant.SLASH)) {
            str = path.substring(1);
        }
        if (h.n(str.startsWith(StringConstant.DASH) ? str.substring(1) : str)) {
            return new File(new File(context.getCacheDir(), "temp_provider"), str);
        }
        return null;
    }

    @Override // android.content.ContentProvider
    public int delete(Uri uri, String str, String[] strArr) {
        File m34471b = m34471b(uri);
        return (m34471b == null || !m34471b.delete()) ? 0 : 1;
    }

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        return null;
    }

    @Override // android.content.ContentProvider
    public Uri insert(Uri uri, ContentValues contentValues) {
        return null;
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        return true;
    }

    @Override // android.content.ContentProvider
    public ParcelFileDescriptor openFile(Uri uri, String str) throws FileNotFoundException {
        File m34471b = m34471b(uri);
        if (m34471b == null) {
            return null;
        }
        return ParcelFileDescriptor.open(m34471b, "r".equals(str) ? 268435456 : 603979776);
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0086  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x008c  */
    @Override // android.content.ContentProvider
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.database.Cursor query(android.net.Uri r9, java.lang.String[] r10, java.lang.String r11, java.lang.String[] r12, java.lang.String r13) {
        /*
            Method dump skipped, instructions count: 266
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.truecaller.util.TempContentProvider.query(android.net.Uri, java.lang.String[], java.lang.String, java.lang.String[], java.lang.String):android.database.Cursor");
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        return 0;
    }
}
