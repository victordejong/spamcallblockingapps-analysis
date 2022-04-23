package com.bytedance.sdk.openadsdk.multipro.a;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.core.d;
import com.bytedance.sdk.openadsdk.core.n;
import com.bytedance.sdk.openadsdk.multipro.a;
import com.bytedance.sdk.openadsdk.utils.q;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/multipro/a/b.class */
public class b implements a {

    /* renamed from: b  reason: collision with root package name */
    private static final Object f9850b = new Object();

    /* renamed from: a  reason: collision with root package name */
    private Context f9851a;

    private boolean b(Uri uri) {
        boolean z = uri == null || TextUtils.isEmpty(uri.getPath());
        if (z) {
            q.b("DBMultiProviderImpl", "==check uri is null==");
        }
        return z;
    }

    private Context c() {
        Context context = this.f9851a;
        Context context2 = context;
        if (context == null) {
            context2 = n.a();
        }
        return context2;
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.a
    public int a(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        q.b("DBMultiProviderImpl", "update: " + String.valueOf(uri));
        synchronized (f9850b) {
            if (b(uri)) {
                return 0;
            }
            String[] split = uri.getPath().split("/");
            if (split != null && split.length >= 4) {
                String str2 = split[2];
                String str3 = split[3];
                if (!"ttopensdk.db".equals(str2)) {
                    return 0;
                }
                return d.a(c()).a().a(str3, contentValues, str, strArr);
            }
            return 0;
        }
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.a
    public int a(Uri uri, String str, String[] strArr) {
        q.b("DBMultiProviderImpl", "delete: " + String.valueOf(uri));
        synchronized (f9850b) {
            if (b(uri)) {
                return 0;
            }
            String[] split = uri.getPath().split("/");
            if (split != null && split.length >= 4) {
                String str2 = split[2];
                String str3 = split[3];
                if (!"ttopensdk.db".equals(str2)) {
                    return 0;
                }
                return d.a(c()).a().a(str3, str, strArr);
            }
            return 0;
        }
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.a
    public Cursor a(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        q.b("DBMultiProviderImpl", "query: " + String.valueOf(uri));
        synchronized (f9850b) {
            if (b(uri)) {
                return null;
            }
            String[] split = uri.getPath().split("/");
            if (split != null && split.length >= 4) {
                String str3 = split[2];
                String str4 = split[3];
                if (!"ttopensdk.db".equals(str3)) {
                    return null;
                }
                return d.a(c()).a().a(str4, strArr, str, strArr2, null, null, str2);
            }
            return null;
        }
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.a
    public Uri a(Uri uri, ContentValues contentValues) {
        q.b("DBMultiProviderImpl", "insert: " + String.valueOf(uri));
        synchronized (f9850b) {
            if (b(uri)) {
                return null;
            }
            String[] split = uri.getPath().split("/");
            if (split != null && split.length >= 4) {
                String str = split[2];
                String str2 = split[3];
                if ("ttopensdk.db".equals(str)) {
                    d.a(c()).a().a(str2, (String) null, contentValues);
                }
                return null;
            }
            return null;
        }
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.a
    public String a() {
        return "t_db";
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.a
    public String a(Uri uri) {
        q.b("DBMultiProviderImpl", "getType: " + String.valueOf(uri));
        synchronized (f9850b) {
            if (b(uri)) {
                return null;
            }
            String[] split = uri.getPath().split("/");
            if (split != null && split.length >= 5) {
                String str = split[2];
                String str2 = split[4];
                if ("ttopensdk.db".equals(str)) {
                    if ("execSQL".equals(str2)) {
                        String queryParameter = uri.getQueryParameter("sql");
                        if (!TextUtils.isEmpty(queryParameter)) {
                            d.a(c()).a().a(Uri.decode(queryParameter));
                        }
                    } else if ("transactionBegin".equals(str2)) {
                        d.a(c()).a().a();
                    } else if ("transactionSetSuccess".equals(str2)) {
                        d.a(c()).a().b();
                    } else if ("transactionEnd".equals(str2)) {
                        d.a(c()).a().c();
                    }
                }
                return null;
            }
            return null;
        }
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.a
    public void a(Context context) {
        this.f9851a = context;
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.a
    public void b() {
    }
}
