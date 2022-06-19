package com.facebook;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.database.Cursor;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import android.util.Pair;
import java.io.File;
import java.io.FileNotFoundException;
import java.util.UUID;
/* loaded from: classes-dex2jar.jar:com/facebook/FacebookContentProvider.class */
public class FacebookContentProvider extends ContentProvider {

    /* renamed from: a */
    public static final String f2462a = FacebookContentProvider.class.getName();

    /* renamed from: a */
    public static String m5214a(String str, UUID uuid, String str2) {
        return String.format("%s%s/%s/%s", "content://com.facebook.app.FacebookContentProvider", str, uuid.toString(), str2);
    }

    /* renamed from: b */
    public Pair<UUID, String> m5213b(Uri uri) {
        try {
            String[] split = uri.getPath().substring(1).split("/");
            String str = split[0];
            String str2 = split[1];
            if (!"..".contentEquals(str) && !"..".contentEquals(str2)) {
                return new Pair<>(UUID.fromString(str), str2);
            }
            throw new Exception();
        } catch (Exception e) {
            return null;
        }
    }

    @Override // android.content.ContentProvider
    public int delete(Uri uri, String str, String[] strArr) {
        return 0;
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
    public ParcelFileDescriptor openFile(Uri uri, String str) {
        Pair<UUID, String> m5213b = m5213b(uri);
        if (m5213b != null) {
            try {
                File j = ym0.j((UUID) m5213b.first, (String) m5213b.second);
                if (j == null) {
                    throw new FileNotFoundException();
                }
                return ParcelFileDescriptor.open(j, 268435456);
            } catch (FileNotFoundException e) {
                String str2 = f2462a;
                Log.e(str2, "Got unexpected exception:" + e);
                throw e;
            }
        }
        throw new FileNotFoundException();
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        return null;
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        return 0;
    }
}
