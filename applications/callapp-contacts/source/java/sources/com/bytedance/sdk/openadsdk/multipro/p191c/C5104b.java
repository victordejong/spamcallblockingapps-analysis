package com.bytedance.sdk.openadsdk.multipro.p191c;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import com.bytedance.sdk.openadsdk.core.C4600n;
import com.bytedance.sdk.openadsdk.core.p152c.C4517a;
import com.bytedance.sdk.openadsdk.multipro.AbstractC5068a;
import com.bytedance.sdk.openadsdk.multipro.C5109e;
import com.bytedance.sdk.openadsdk.utils.C5478q;
/* renamed from: com.bytedance.sdk.openadsdk.multipro.c.b */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/multipro/c/b.class */
public class C5104b implements AbstractC5068a {

    /* renamed from: a */
    private Context f18373a;

    /* renamed from: a */
    public static boolean m33057a(String str) {
        if (C4600n.m34815a() == null) {
            return false;
        }
        try {
            ContentResolver m33054e = m33054e();
            if (m33054e == null) {
                return false;
            }
            return "true".equals(m33054e.getType(Uri.parse(m33053f() + "checkFrequency?rit=" + String.valueOf(str))));
        } catch (Throwable th) {
            return false;
        }
    }

    /* renamed from: c */
    public static boolean m33056c() {
        if (C4600n.m34815a() == null) {
            return false;
        }
        try {
            ContentResolver m33054e = m33054e();
            if (m33054e == null) {
                return false;
            }
            return "true".equals(m33054e.getType(Uri.parse(m33053f() + "isSilent")));
        } catch (Throwable th) {
            return false;
        }
    }

    /* renamed from: d */
    public static String m33055d() {
        if (C4600n.m34815a() == null) {
            return null;
        }
        try {
            ContentResolver m33054e = m33054e();
            if (m33054e == null) {
                return null;
            }
            return m33054e.getType(Uri.parse(m33053f() + "maxRit"));
        } catch (Throwable th) {
            return null;
        }
    }

    /* renamed from: e */
    private static ContentResolver m33054e() {
        try {
            if (C4600n.m34815a() == null) {
                return null;
            }
            return C4600n.m34815a().getContentResolver();
        } catch (Throwable th) {
            return null;
        }
    }

    /* renamed from: f */
    private static String m33053f() {
        return C5109e.f18378b + "/t_frequent/";
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.AbstractC5068a
    /* renamed from: a */
    public int mo33008a(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        return 0;
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.AbstractC5068a
    /* renamed from: a */
    public int mo33007a(Uri uri, String str, String[] strArr) {
        return 0;
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.AbstractC5068a
    /* renamed from: a */
    public Cursor mo33006a(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.AbstractC5068a
    /* renamed from: a */
    public Uri mo33009a(Uri uri, ContentValues contentValues) {
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.AbstractC5068a
    /* renamed from: a */
    public String mo33012a() {
        return "t_frequent";
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.AbstractC5068a
    /* renamed from: a */
    public String mo33010a(Uri uri) {
        C5478q.m32112b("FrequentCallProviderImpl", "get type uri: " + String.valueOf(uri));
        String str = uri.getPath().split("/")[2];
        if ("checkFrequency".equals(str)) {
            return C4517a.m35409a().m35406a(uri.getQueryParameter("rit")) ? "true" : "false";
        } else if ("isSilent".equals(str)) {
            return C4517a.m35409a().m35404b() ? "true" : "false";
        } else if (!"maxRit".equals(str)) {
            return null;
        } else {
            return C4517a.m35409a().m35401c();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.AbstractC5068a
    /* renamed from: a */
    public void mo33011a(Context context) {
        this.f18373a = context;
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.AbstractC5068a
    /* renamed from: b */
    public void mo33005b() {
    }
}
