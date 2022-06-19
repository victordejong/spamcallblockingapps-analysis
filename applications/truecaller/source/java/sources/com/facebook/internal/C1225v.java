package com.facebook.internal;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import com.facebook.internal.p037u0.p040m.C1220a;
import java.util.HashSet;
import java.util.List;
import kotlin.Metadata;
import p193e.p1538j.C23228f0;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import s1.z.c.l;
@Metadata(d1 = {"��\u0018\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\b\u0006\bÇ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\n\u0010\u0007\u001a\u0004\u0018\u00010\u0005H\u0007J\b\u0010\b\u001a\u00020\u0005H\u0007J\u0010\u0010\t\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u0005H\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0006¨\u0006\u000b"}, d2 = {"Lcom/facebook/internal/CustomTabUtils;", "", "()V", "CHROME_PACKAGES", "", "", "[Ljava/lang/String;", "getChromePackage", "getDefaultRedirectURI", "getValidRedirectURI", "developerDefinedRedirectURI", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* renamed from: com.facebook.internal.v */
/* loaded from: classes2-dex2jar.jar:com/facebook/internal/v.class */
public final class C1225v {

    /* renamed from: a */
    public static final String[] f3307a = {"com.android.chrome", "com.chrome.beta", "com.chrome.dev"};

    /* renamed from: a */
    public static final String m41622a() {
        if (C1220a.m41623b(C1225v.class)) {
            return null;
        }
        try {
            C23228f0 c23228f0 = C23228f0.f64291a;
            Context m7354a = C23228f0.m7354a();
            List<ResolveInfo> queryIntentServices = m7354a.getPackageManager().queryIntentServices(new Intent("android.support.customtabs.action.CustomTabsService"), 0);
            if (queryIntentServices == null) {
                return null;
            }
            String[] strArr = f3307a;
            l.e(strArr, "$this$toHashSet");
            HashSet hashSet = new HashSet(C25225a.m3942Y1(strArr.length));
            C25225a.m3927b3(strArr, hashSet);
            for (ResolveInfo resolveInfo : queryIntentServices) {
                ServiceInfo serviceInfo = resolveInfo.serviceInfo;
                if (serviceInfo != null && hashSet.contains(serviceInfo.packageName)) {
                    return serviceInfo.packageName;
                }
            }
            return null;
        } catch (Throwable th) {
            C1220a.m41624a(th, C1225v.class);
            return null;
        }
    }

    /* renamed from: b */
    public static final String m41621b() {
        if (C1220a.m41623b(C1225v.class)) {
            return null;
        }
        try {
            C23228f0 c23228f0 = C23228f0.f64291a;
            return l.j("fbconnect://cct.", C23228f0.m7354a().getPackageName());
        } catch (Throwable th) {
            C1220a.m41624a(th, C1225v.class);
            return null;
        }
    }

    /* renamed from: c */
    public static final String m41620c(String str) {
        if (C1220a.m41623b(C1225v.class)) {
            return null;
        }
        try {
            l.e(str, "developerDefinedRedirectURI");
            C1172r0 c1172r0 = C1172r0.f3203a;
            C23228f0 c23228f0 = C23228f0.f64291a;
            return C1172r0.m41654a(C23228f0.m7354a(), str) ? str : C1172r0.m41654a(C23228f0.m7354a(), m41621b()) ? m41621b() : "";
        } catch (Throwable th) {
            C1220a.m41624a(th, C1225v.class);
            return null;
        }
    }
}
