package com.bytedance.sdk.openadsdk.multipro.p192d;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.net.Uri;
import com.bytedance.sdk.openadsdk.core.C4600n;
import com.bytedance.sdk.openadsdk.multipro.AbstractC5068a;
import java.util.Map;
/* renamed from: com.bytedance.sdk.openadsdk.multipro.d.c */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/multipro/d/c.class */
public class C5108c implements AbstractC5068a {

    /* renamed from: a */
    private Context f18376a;

    /* renamed from: c */
    private Context m33014c() {
        Context context = this.f18376a;
        Context context2 = context;
        if (context == null) {
            context2 = C4600n.m34815a();
        }
        return context2;
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.AbstractC5068a
    /* renamed from: a */
    public int mo33008a(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        if (contentValues == null) {
            return 0;
        }
        mo33009a(uri, contentValues);
        return 0;
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.AbstractC5068a
    /* renamed from: a */
    public int mo33007a(Uri uri, String str, String[] strArr) {
        String[] split = uri.getPath().split("/");
        if (split[2].equals("clean")) {
            C5107b.m33031a(m33014c(), uri.getQueryParameter("sp_file_name"));
            return 0;
        }
        String str2 = split[3];
        if (!C5107b.m33030a(m33014c(), uri.getQueryParameter("sp_file_name"), str2)) {
            return 0;
        }
        C5107b.m33019b(m33014c(), uri.getQueryParameter("sp_file_name"), str2);
        return 0;
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.AbstractC5068a
    /* renamed from: a */
    public Cursor mo33006a(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        Map<String, ?> m33020b;
        if (!uri.getPath().split("/")[2].equals("get_all") || (m33020b = C5107b.m33020b(m33014c(), uri.getQueryParameter("sp_file_name"))) == null) {
            return null;
        }
        MatrixCursor matrixCursor = new MatrixCursor(new String[]{"cursor_name", "cursor_type", "cursor_value"});
        for (String str3 : m33020b.keySet()) {
            Object[] objArr = new Object[3];
            objArr[0] = str3;
            objArr[2] = m33020b.get(str3);
            if (objArr[2] instanceof Boolean) {
                objArr[1] = "boolean";
            } else if (objArr[2] instanceof String) {
                objArr[1] = "string";
            } else if (objArr[2] instanceof Integer) {
                objArr[1] = "int";
            } else if (objArr[2] instanceof Long) {
                objArr[1] = "long";
            } else if (objArr[2] instanceof Float) {
                objArr[1] = "float";
            }
            matrixCursor.addRow(objArr);
        }
        return matrixCursor;
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.AbstractC5068a
    /* renamed from: a */
    public Uri mo33009a(Uri uri, ContentValues contentValues) {
        if (contentValues == null) {
            return null;
        }
        String str = uri.getPath().split("/")[3];
        Object obj = contentValues.get("value");
        if (obj == null) {
            return null;
        }
        C5107b.m33026a(m33014c(), uri.getQueryParameter("sp_file_name"), str, obj);
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.AbstractC5068a
    /* renamed from: a */
    public String mo33012a() {
        return "t_sp";
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.AbstractC5068a
    /* renamed from: a */
    public String mo33010a(Uri uri) {
        String[] split = uri.getPath().split("/");
        String str = split[2];
        String str2 = split[3];
        if (str.equals("contain")) {
            StringBuilder sb = new StringBuilder();
            sb.append(C5107b.m33030a(C4600n.m34815a(), uri.getQueryParameter("sp_file_name"), str2));
            return sb.toString();
        }
        return C5107b.m33025a(m33014c(), uri.getQueryParameter("sp_file_name"), str2, str);
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.AbstractC5068a
    /* renamed from: a */
    public void mo33011a(Context context) {
        this.f18376a = context;
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.AbstractC5068a
    /* renamed from: b */
    public void mo33005b() {
    }
}
