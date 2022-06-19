package com.p488vk.api.sdk.p496e;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Build;
import android.util.DisplayMetrics;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import com.explorestack.iab.mraid.C9568h;
import com.google.api.client.googleapis.notifications.C15291b;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.jvm.internal.C18489aa;
import kotlin.jvm.internal.C18496ac;
import kotlin.jvm.internal.C18524p;
import kotlin.p532h.C18425p;
import kotlin.reflect.KProperty;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��X\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0007\n��\n\u0002\u0010\b\n��\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0012\n\u0002\b\u0003\bÆ\u0002\u0018��2\u00020\u0001:\u0001!B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u0006\u0010\u0007\u001a\u00020\bJ\u000e\u0010\t\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\nJ \u0010\u000b\u001a\u0010\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\r\u0018\u00010\f2\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0007J)\u0010\u000f\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\r\u0018\u00010\u00102\b\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0011\u001a\u00020\rH\u0007¢\u0006\u0002\u0010\u0012J\u0006\u0010\u0013\u001a\u00020\u0014J\u000e\u0010\u0015\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u0006J\u0018\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\rH\u0007J*\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0019\u001a\u00020\r2\b\u0010\u001a\u001a\u0004\u0018\u00010\u001b2\u0006\u0010\u001c\u001a\u00020\rH\u0007J\u0010\u0010\u001d\u001a\u00020\r2\u0006\u0010\u001e\u001a\u00020\u001fH\u0002J\u000e\u0010 \u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\""}, m4298d2 = {"Lcom/vk/api/sdk/utils/VKUtils;", "", "()V", "clearAllCookies", "", "context", "Landroid/content/Context;", "density", "", "dp", "", "explodeQueryString", "", "", "queryString", "getCertificateFingerprint", "", "packageName", "(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;", "getDisplayMetrics", "Landroid/util/DisplayMetrics;", "height", "isAppInstalled", "", "isIntentAvailable", "action", "data", "Landroid/net/Uri;", "allowedPackage", "toHex", "bytes", "", "width", "MD5", "libapi-sdk-core_release"}, m4297k = 1, m4296mv = {1, 4, 2})
/* renamed from: com.vk.api.sdk.e.h */
/* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/e/h.class */
public final class C17676h {

    /* renamed from: a */
    public static final C17676h f62484a = new C17676h();

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��0\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u0019\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010\u0012\n��\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\rH\u0007J\u0010\u0010\u0003\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0003R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n��R\u001f\u0010\u0005\u001a\u00060\u0006j\u0002`\u00078BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\b\u0010\t¨\u0006\u0012"}, m4298d2 = {"Lcom/vk/api/sdk/utils/VKUtils$MD5;", "", "()V", "hex", "", "tmpBuilder", "Ljava/lang/StringBuilder;", "Lkotlin/text/StringBuilder;", "getTmpBuilder", "()Ljava/lang/StringBuilder;", "tmpBuilder$delegate", "Lcom/vk/api/sdk/utils/ThreadLocalDelegate;", "convert", "", C9568h.f32519a, "", C15291b.f55271a, "", "libapi-sdk-core_release"}, m4297k = 1, m4296mv = {1, 4, 2})
    /* renamed from: com.vk.api.sdk.e.h$a */
    /* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/e/h$a.class */
    public static final class C17677a {

        /* renamed from: a */
        static final /* synthetic */ KProperty[] f62485a = {C18496ac.m3883a(new C18489aa(C17677a.class, "tmpBuilder", "getTmpBuilder()Ljava/lang/StringBuilder;", 0))};

        /* renamed from: b */
        public static final C17677a f62486b = new C17677a();

        /* renamed from: c */
        private static final char[] f62487c = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

        /* renamed from: d */
        private static final AbstractC17669c f62488d = C17672e.m4841a(C17678a.f62489a);

        @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\f\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\u0010��\u001a\u00060\u0001j\u0002`\u0002H\n¢\u0006\u0002\b\u0003"}, m4298d2 = {"<anonymous>", "Ljava/lang/StringBuilder;", "Lkotlin/text/StringBuilder;", "invoke"}, m4297k = 3, m4296mv = {1, 4, 2})
        /* renamed from: com.vk.api.sdk.e.h$a$a */
        /* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/e/h$a$a.class */
        static final class C17678a extends AbstractC18526r implements Function0<StringBuilder> {

            /* renamed from: a */
            public static final C17678a f62489a = new C17678a();

            C17678a() {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final /* synthetic */ StringBuilder invoke() {
                return new StringBuilder();
            }
        }

        private C17677a() {
        }

        /* renamed from: a */
        public static final String m4834a(String h) {
            C18524p.m3840d(h, "h");
            try {
                MessageDigest messageDigest = MessageDigest.getInstance("MD5");
                Charset forName = Charset.forName("UTF-8");
                C18524p.m3843b(forName, "Charset.forName(charsetName)");
                byte[] bytes = h.getBytes(forName);
                C18524p.m3843b(bytes, "(this as java.lang.String).getBytes(charset)");
                byte[] md5 = messageDigest.digest(bytes);
                f62486b.m4835a().setLength(0);
                C18524p.m3843b(md5, "md5");
                for (byte b : md5) {
                    C17677a c17677a = f62486b;
                    StringBuilder m4835a = c17677a.m4835a();
                    char[] cArr = f62487c;
                    m4835a.append(cArr[(b & 240) >> 4]);
                    c17677a.m4835a().append(cArr[b & 15]);
                }
                String sb = f62486b.m4835a().toString();
                C18524p.m3843b(sb, "tmpBuilder.toString()");
                return sb;
            } catch (Exception e) {
                return "";
            }
        }

        /* renamed from: a */
        private final StringBuilder m4835a() {
            return (StringBuilder) f62488d.mo4842a(f62485a[0]);
        }
    }

    private C17676h() {
    }

    /* renamed from: a */
    public static DisplayMetrics m4839a() {
        Resources system = Resources.getSystem();
        C18524p.m3843b(system, "Resources.getSystem()");
        DisplayMetrics displayMetrics = system.getDisplayMetrics();
        C18524p.m3843b(displayMetrics, "Resources.getSystem().displayMetrics");
        return displayMetrics;
    }

    /* renamed from: a */
    public static final Map<String, String> m4836a(String str) {
        List a;
        if (str == null) {
            return null;
        }
        List<String> a2 = C18425p.m3934a((CharSequence) str, new String[]{"&"}, false, 0);
        HashMap hashMap = new HashMap(a2.size());
        for (String str2 : a2) {
            a = C18425p.m3934a(str2, new String[]{"="}, false, 0);
            if (a.size() > 1) {
                hashMap.put(a.get(0), a.get(1));
            }
        }
        return hashMap;
    }

    /* renamed from: a */
    public static void m4838a(Context context) {
        C18524p.m3840d(context, "context");
        CookieManager cookieManager = CookieManager.getInstance();
        if (Build.VERSION.SDK_INT >= 21) {
            cookieManager.removeAllCookies(null);
            return;
        }
        CookieSyncManager createInstance = CookieSyncManager.createInstance(context);
        createInstance.startSync();
        cookieManager.removeAllCookie();
        createInstance.stopSync();
    }

    /* renamed from: a */
    public static final boolean m4837a(Context context, String action, String allowedPackage) {
        List<ResolveInfo> queryIntentActivities;
        C18524p.m3840d(context, "context");
        C18524p.m3840d(action, "action");
        C18524p.m3840d(allowedPackage, "allowedPackage");
        PackageManager packageManager = context.getPackageManager();
        if (packageManager == null || (queryIntentActivities = packageManager.queryIntentActivities(new Intent(action, (Uri) null), 65536)) == null) {
            return false;
        }
        List<ResolveInfo> list = queryIntentActivities;
        if ((list instanceof Collection) && list.isEmpty()) {
            return false;
        }
        for (ResolveInfo resolveInfo : list) {
            if (C18524p.m3850a((Object) resolveInfo.activityInfo.packageName, (Object) allowedPackage)) {
                return true;
            }
        }
        return false;
    }
}
