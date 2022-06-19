package com.bytedance.sdk.openadsdk.multipro;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.database.Cursor;
import android.net.Uri;
import com.bytedance.sdk.openadsdk.core.p157h.C4587d;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/multipro/TTMultiProvider.class */
public class TTMultiProvider extends ContentProvider {
    @Override // android.content.ContentProvider
    public int delete(Uri uri, String str, String[] strArr) {
        if (!C4587d.m34919a()) {
            return 0;
        }
        return C5110f.m33004b(getContext()).mo33007a(uri, str, strArr);
    }

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        if (!C4587d.m34919a()) {
            return null;
        }
        return C5110f.m33004b(getContext()).mo33010a(uri);
    }

    @Override // android.content.ContentProvider
    public Uri insert(Uri uri, ContentValues contentValues) {
        if (!C4587d.m34919a()) {
            return null;
        }
        return C5110f.m33004b(getContext()).mo33009a(uri, contentValues);
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        if (!C4587d.m34919a()) {
            return false;
        }
        C5110f.m33004b(getContext()).mo33011a(getContext());
        return true;
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        if (!C4587d.m34919a()) {
            return null;
        }
        return C5110f.m33004b(getContext()).mo33006a(uri, strArr, str, strArr2, str2);
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        if (!C4587d.m34919a()) {
            return 0;
        }
        return C5110f.m33004b(getContext()).mo33008a(uri, contentValues, str, strArr);
    }
}
