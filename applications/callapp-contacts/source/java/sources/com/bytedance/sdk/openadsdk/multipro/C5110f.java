package com.bytedance.sdk.openadsdk.multipro;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.multipro.p187a.C5070b;
import com.bytedance.sdk.openadsdk.multipro.p191c.C5098a;
import com.bytedance.sdk.openadsdk.multipro.p191c.C5104b;
import com.bytedance.sdk.openadsdk.multipro.p192d.C5108c;
import com.bytedance.sdk.openadsdk.utils.C5478q;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* renamed from: com.bytedance.sdk.openadsdk.multipro.f */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/multipro/f.class */
public class C5110f implements AbstractC5068a {

    /* renamed from: a */
    private static volatile C5110f f18379a;

    /* renamed from: b */
    private static WeakReference<Context> f18380b;

    /* renamed from: c */
    private static List<AbstractC5068a> f18381c;

    static {
        List<AbstractC5068a> synchronizedList = Collections.synchronizedList(new ArrayList());
        f18381c = synchronizedList;
        synchronizedList.add(new C5108c());
        f18381c.add(new C5070b());
        f18381c.add(new C5104b());
        f18381c.add(new C5098a());
        for (AbstractC5068a abstractC5068a : f18381c) {
            abstractC5068a.mo33005b();
        }
    }

    private C5110f() {
    }

    /* renamed from: b */
    private AbstractC5068a m33003b(Uri uri) {
        if (uri == null) {
            return null;
        }
        if (!m33002c(uri)) {
            C5478q.m32112b("TTProviderManager", "uri is error1");
            return null;
        }
        String[] split = uri.getPath().split("/");
        if (split.length < 2) {
            C5478q.m32112b("TTProviderManager", "uri is error2");
            return null;
        }
        String str = split[1];
        if (TextUtils.isEmpty(str)) {
            C5478q.m32112b("TTProviderManager", "uri is error3");
            return null;
        }
        for (AbstractC5068a abstractC5068a : f18381c) {
            if (str.equals(abstractC5068a.mo33012a())) {
                return abstractC5068a;
            }
        }
        C5478q.m32112b("TTProviderManager", "uri is error4");
        return null;
    }

    /* renamed from: b */
    public static C5110f m33004b(Context context) {
        if (context != null) {
            f18380b = new WeakReference<>(context.getApplicationContext());
        }
        if (f18379a == null) {
            synchronized (C5110f.class) {
                try {
                    if (f18379a == null) {
                        f18379a = new C5110f();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f18379a;
    }

    /* renamed from: c */
    private boolean m33002c(Uri uri) {
        return true;
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.AbstractC5068a
    /* renamed from: a */
    public int mo33008a(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        int i;
        try {
            AbstractC5068a m33003b = m33003b(uri);
            i = 0;
            if (m33003b != null) {
                i = m33003b.mo33008a(uri, contentValues, str, strArr);
            }
        } catch (Throwable th) {
            C5478q.m32117a("TTProviderManager", "==provider update error==", th);
            i = 0;
        }
        return i;
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.AbstractC5068a
    /* renamed from: a */
    public int mo33007a(Uri uri, String str, String[] strArr) {
        int i;
        try {
            AbstractC5068a m33003b = m33003b(uri);
            i = 0;
            if (m33003b != null) {
                i = m33003b.mo33007a(uri, str, strArr);
            }
        } catch (Throwable th) {
            C5478q.m32117a("TTProviderManager", "==provider delete error==", th);
            i = 0;
        }
        return i;
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.AbstractC5068a
    /* renamed from: a */
    public Cursor mo33006a(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        Cursor cursor;
        try {
            AbstractC5068a m33003b = m33003b(uri);
            cursor = null;
            if (m33003b != null) {
                cursor = m33003b.mo33006a(uri, strArr, str, strArr2, str2);
            }
        } catch (Throwable th) {
            C5478q.m32117a("TTProviderManager", "==provider query error==", th);
            cursor = null;
        }
        return cursor;
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.AbstractC5068a
    /* renamed from: a */
    public Uri mo33009a(Uri uri, ContentValues contentValues) {
        Uri uri2;
        try {
            AbstractC5068a m33003b = m33003b(uri);
            uri2 = null;
            if (m33003b != null) {
                uri2 = m33003b.mo33009a(uri, contentValues);
            }
        } catch (Throwable th) {
            C5478q.m32117a("TTProviderManager", "==provider insert error==", th);
            uri2 = null;
        }
        return uri2;
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.AbstractC5068a
    /* renamed from: a */
    public String mo33012a() {
        return "";
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.AbstractC5068a
    /* renamed from: a */
    public String mo33010a(Uri uri) {
        String str;
        try {
            AbstractC5068a m33003b = m33003b(uri);
            str = null;
            if (m33003b != null) {
                str = m33003b.mo33010a(uri);
            }
        } catch (Throwable th) {
            C5478q.m32117a("TTProviderManager", "==provider getType error==", th);
            str = null;
        }
        return str;
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.AbstractC5068a
    /* renamed from: a */
    public void mo33011a(Context context) {
        for (AbstractC5068a abstractC5068a : f18381c) {
            abstractC5068a.mo33011a(context);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.AbstractC5068a
    /* renamed from: b */
    public void mo33005b() {
    }
}
