package com.bytedance.sdk.openadsdk.multipro;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.multipro.a.b;
import com.bytedance.sdk.openadsdk.multipro.c.a;
import com.bytedance.sdk.openadsdk.multipro.d.c;
import com.bytedance.sdk.openadsdk.utils.q;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/multipro/f.class */
public class f implements a {

    /* renamed from: a  reason: collision with root package name */
    private static volatile f f9905a;

    /* renamed from: b  reason: collision with root package name */
    private static WeakReference<Context> f9906b;

    /* renamed from: c  reason: collision with root package name */
    private static List<a> f9907c;

    static {
        List<a> synchronizedList = Collections.synchronizedList(new ArrayList());
        f9907c = synchronizedList;
        synchronizedList.add(new c());
        f9907c.add(new b());
        f9907c.add(new com.bytedance.sdk.openadsdk.multipro.c.b());
        f9907c.add(new a());
        for (a aVar : f9907c) {
            aVar.b();
        }
    }

    private f() {
    }

    private a b(Uri uri) {
        if (uri == null) {
            return null;
        }
        if (!c(uri)) {
            q.b("TTProviderManager", "uri is error1");
            return null;
        }
        String[] split = uri.getPath().split("/");
        if (split.length < 2) {
            q.b("TTProviderManager", "uri is error2");
            return null;
        }
        String str = split[1];
        if (TextUtils.isEmpty(str)) {
            q.b("TTProviderManager", "uri is error3");
            return null;
        }
        for (a aVar : f9907c) {
            if (str.equals(aVar.a())) {
                return aVar;
            }
        }
        q.b("TTProviderManager", "uri is error4");
        return null;
    }

    public static f b(Context context) {
        if (context != null) {
            f9906b = new WeakReference<>(context.getApplicationContext());
        }
        if (f9905a == null) {
            synchronized (f.class) {
                try {
                    if (f9905a == null) {
                        f9905a = new f();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f9905a;
    }

    private boolean c(Uri uri) {
        return true;
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.a
    public int a(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        int i;
        try {
            a b2 = b(uri);
            i = 0;
            if (b2 != null) {
                i = b2.a(uri, contentValues, str, strArr);
            }
        } catch (Throwable th) {
            q.a("TTProviderManager", "==provider update error==", th);
            i = 0;
        }
        return i;
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.a
    public int a(Uri uri, String str, String[] strArr) {
        int i;
        try {
            a b2 = b(uri);
            i = 0;
            if (b2 != null) {
                i = b2.a(uri, str, strArr);
            }
        } catch (Throwable th) {
            q.a("TTProviderManager", "==provider delete error==", th);
            i = 0;
        }
        return i;
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.a
    public Cursor a(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        Cursor cursor;
        try {
            a b2 = b(uri);
            cursor = null;
            if (b2 != null) {
                cursor = b2.a(uri, strArr, str, strArr2, str2);
            }
        } catch (Throwable th) {
            q.a("TTProviderManager", "==provider query error==", th);
            cursor = null;
        }
        return cursor;
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.a
    public Uri a(Uri uri, ContentValues contentValues) {
        Uri uri2;
        try {
            a b2 = b(uri);
            uri2 = null;
            if (b2 != null) {
                uri2 = b2.a(uri, contentValues);
            }
        } catch (Throwable th) {
            q.a("TTProviderManager", "==provider insert error==", th);
            uri2 = null;
        }
        return uri2;
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.a
    public String a() {
        return "";
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.a
    public String a(Uri uri) {
        String str;
        try {
            a b2 = b(uri);
            str = null;
            if (b2 != null) {
                str = b2.a(uri);
            }
        } catch (Throwable th) {
            q.a("TTProviderManager", "==provider getType error==", th);
            str = null;
        }
        return str;
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.a
    public void a(Context context) {
        for (a aVar : f9907c) {
            aVar.a(context);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.a
    public void b() {
    }
}
