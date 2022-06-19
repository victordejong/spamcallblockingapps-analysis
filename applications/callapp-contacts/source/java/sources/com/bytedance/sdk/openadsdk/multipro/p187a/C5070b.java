package com.bytedance.sdk.openadsdk.multipro.p187a;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.core.C4522d;
import com.bytedance.sdk.openadsdk.core.C4600n;
import com.bytedance.sdk.openadsdk.multipro.AbstractC5068a;
import com.bytedance.sdk.openadsdk.utils.C5478q;
/* renamed from: com.bytedance.sdk.openadsdk.multipro.a.b */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/multipro/a/b.class */
public class C5070b implements AbstractC5068a {

    /* renamed from: b */
    private static final Object f18317b = new Object();

    /* renamed from: a */
    private Context f18318a;

    /* renamed from: b */
    private boolean m33115b(Uri uri) {
        boolean z = uri == null || TextUtils.isEmpty(uri.getPath());
        if (z) {
            C5478q.m32112b("DBMultiProviderImpl", "==check uri is null==");
        }
        return z;
    }

    /* renamed from: c */
    private Context m33114c() {
        Context context = this.f18318a;
        Context context2 = context;
        if (context == null) {
            context2 = C4600n.m34815a();
        }
        return context2;
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.AbstractC5068a
    /* renamed from: a */
    public int mo33008a(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        C5478q.m32112b("DBMultiProviderImpl", "update: " + String.valueOf(uri));
        synchronized (f18317b) {
            if (m33115b(uri)) {
                return 0;
            }
            String[] split = uri.getPath().split("/");
            if (split != null && split.length >= 4) {
                String str2 = split[2];
                String str3 = split[3];
                if (!"ttopensdk.db".equals(str2)) {
                    return 0;
                }
                return C4522d.m35393a(m33114c()).mo35356a().m35323a(str3, contentValues, str, strArr);
            }
            return 0;
        }
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.AbstractC5068a
    /* renamed from: a */
    public int mo33007a(Uri uri, String str, String[] strArr) {
        C5478q.m32112b("DBMultiProviderImpl", "delete: " + String.valueOf(uri));
        synchronized (f18317b) {
            if (m33115b(uri)) {
                return 0;
            }
            String[] split = uri.getPath().split("/");
            if (split != null && split.length >= 4) {
                String str2 = split[2];
                String str3 = split[3];
                if (!"ttopensdk.db".equals(str2)) {
                    return 0;
                }
                return C4522d.m35393a(m33114c()).mo35356a().m35321a(str3, str, strArr);
            }
            return 0;
        }
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.AbstractC5068a
    /* renamed from: a */
    public Cursor mo33006a(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        C5478q.m32112b("DBMultiProviderImpl", "query: " + String.valueOf(uri));
        synchronized (f18317b) {
            if (m33115b(uri)) {
                return null;
            }
            String[] split = uri.getPath().split("/");
            if (split != null && split.length >= 4) {
                String str3 = split[2];
                String str4 = split[3];
                if (!"ttopensdk.db".equals(str3)) {
                    return null;
                }
                return C4522d.m35393a(m33114c()).mo35356a().m35320a(str4, strArr, str, strArr2, null, null, str2);
            }
            return null;
        }
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.AbstractC5068a
    /* renamed from: a */
    public Uri mo33009a(Uri uri, ContentValues contentValues) {
        C5478q.m32112b("DBMultiProviderImpl", "insert: " + String.valueOf(uri));
        synchronized (f18317b) {
            if (m33115b(uri)) {
                return null;
            }
            String[] split = uri.getPath().split("/");
            if (split != null && split.length >= 4) {
                String str = split[2];
                String str2 = split[3];
                if ("ttopensdk.db".equals(str)) {
                    C4522d.m35393a(m33114c()).mo35356a().m35322a(str2, (String) null, contentValues);
                }
                return null;
            }
            return null;
        }
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.AbstractC5068a
    /* renamed from: a */
    public String mo33012a() {
        return "t_db";
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.AbstractC5068a
    /* renamed from: a */
    public String mo33010a(Uri uri) {
        C5478q.m32112b("DBMultiProviderImpl", "getType: " + String.valueOf(uri));
        synchronized (f18317b) {
            if (m33115b(uri)) {
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
                            C4522d.m35393a(m33114c()).mo35356a().m35324a(Uri.decode(queryParameter));
                        }
                    } else if ("transactionBegin".equals(str2)) {
                        C4522d.m35393a(m33114c()).mo35356a().m35325a();
                    } else if ("transactionSetSuccess".equals(str2)) {
                        C4522d.m35393a(m33114c()).mo35356a().m35319b();
                    } else if ("transactionEnd".equals(str2)) {
                        C4522d.m35393a(m33114c()).mo35356a().m35318c();
                    }
                }
                return null;
            }
            return null;
        }
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.AbstractC5068a
    /* renamed from: a */
    public void mo33011a(Context context) {
        this.f18318a = context;
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.AbstractC5068a
    /* renamed from: b */
    public void mo33005b() {
    }
}
