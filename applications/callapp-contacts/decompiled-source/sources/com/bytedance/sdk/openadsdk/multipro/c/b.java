package com.bytedance.sdk.openadsdk.multipro.c;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import com.bytedance.sdk.openadsdk.core.n;
import com.bytedance.sdk.openadsdk.multipro.a;
import com.bytedance.sdk.openadsdk.multipro.e;
import com.bytedance.sdk.openadsdk.utils.q;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/multipro/c/b.class */
public class b implements a {

    /* renamed from: a  reason: collision with root package name */
    private Context f9899a;

    public static boolean a(String str) {
        if (n.a() == null) {
            return false;
        }
        try {
            ContentResolver e = e();
            if (e == null) {
                return false;
            }
            return "true".equals(e.getType(Uri.parse(f() + "checkFrequency?rit=" + String.valueOf(str))));
        } catch (Throwable th) {
            return false;
        }
    }

    public static boolean c() {
        if (n.a() == null) {
            return false;
        }
        try {
            ContentResolver e = e();
            if (e == null) {
                return false;
            }
            return "true".equals(e.getType(Uri.parse(f() + "isSilent")));
        } catch (Throwable th) {
            return false;
        }
    }

    public static String d() {
        if (n.a() == null) {
            return null;
        }
        try {
            ContentResolver e = e();
            if (e == null) {
                return null;
            }
            return e.getType(Uri.parse(f() + "maxRit"));
        } catch (Throwable th) {
            return null;
        }
    }

    private static ContentResolver e() {
        try {
            if (n.a() != null) {
                return n.a().getContentResolver();
            }
            return null;
        } catch (Throwable th) {
            return null;
        }
    }

    private static String f() {
        return e.f9904b + "/t_frequent/";
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.a
    public int a(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        return 0;
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.a
    public int a(Uri uri, String str, String[] strArr) {
        return 0;
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.a
    public Cursor a(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.a
    public Uri a(Uri uri, ContentValues contentValues) {
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.a
    public String a() {
        return "t_frequent";
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.a
    public String a(Uri uri) {
        q.b("FrequentCallProviderImpl", "get type uri: " + String.valueOf(uri));
        String str = uri.getPath().split("/")[2];
        if ("checkFrequency".equals(str)) {
            return com.bytedance.sdk.openadsdk.core.c.a.a().a(uri.getQueryParameter("rit")) ? "true" : "false";
        } else if ("isSilent".equals(str)) {
            return com.bytedance.sdk.openadsdk.core.c.a.a().b() ? "true" : "false";
        } else {
            if ("maxRit".equals(str)) {
                return com.bytedance.sdk.openadsdk.core.c.a.a().c();
            }
            return null;
        }
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.a
    public void a(Context context) {
        this.f9899a = context;
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.a
    public void b() {
    }
}
