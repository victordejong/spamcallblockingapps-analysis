package com.vk.api.sdk.e;

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
import com.google.api.client.googleapis.notifications.b;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.aa;
import kotlin.jvm.internal.ac;
import kotlin.jvm.internal.p;
import kotlin.jvm.internal.r;
import kotlin.reflect.KProperty;
@Metadata(bv = {1, 0, 3}, d1 = {"��X\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0007\n��\n\u0002\u0010\b\n��\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0012\n\u0002\b\u0003\bÆ\u0002\u0018��2\u00020\u0001:\u0001!B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u0006\u0010\u0007\u001a\u00020\bJ\u000e\u0010\t\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\nJ \u0010\u000b\u001a\u0010\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\r\u0018\u00010\f2\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0007J)\u0010\u000f\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\r\u0018\u00010\u00102\b\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0011\u001a\u00020\rH\u0007¢\u0006\u0002\u0010\u0012J\u0006\u0010\u0013\u001a\u00020\u0014J\u000e\u0010\u0015\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u0006J\u0018\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\rH\u0007J*\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0019\u001a\u00020\r2\b\u0010\u001a\u001a\u0004\u0018\u00010\u001b2\u0006\u0010\u001c\u001a\u00020\rH\u0007J\u0010\u0010\u001d\u001a\u00020\r2\u0006\u0010\u001e\u001a\u00020\u001fH\u0002J\u000e\u0010 \u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\""}, d2 = {"Lcom/vk/api/sdk/utils/VKUtils;", "", "()V", "clearAllCookies", "", "context", "Landroid/content/Context;", "density", "", "dp", "", "explodeQueryString", "", "", "queryString", "getCertificateFingerprint", "", "packageName", "(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;", "getDisplayMetrics", "Landroid/util/DisplayMetrics;", "height", "isAppInstalled", "", "isIntentAvailable", "action", "data", "Landroid/net/Uri;", "allowedPackage", "toHex", "bytes", "", "width", "MD5", "libapi-sdk-core_release"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/e/h.class */
public final class h {

    /* renamed from: a  reason: collision with root package name */
    public static final h f36063a = new h();

    @Metadata(bv = {1, 0, 3}, d1 = {"��0\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u0019\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010\u0012\n��\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\rH\u0007J\u0010\u0010\u0003\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0003R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n��R\u001f\u0010\u0005\u001a\u00060\u0006j\u0002`\u00078BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\b\u0010\t¨\u0006\u0012"}, d2 = {"Lcom/vk/api/sdk/utils/VKUtils$MD5;", "", "()V", "hex", "", "tmpBuilder", "Ljava/lang/StringBuilder;", "Lkotlin/text/StringBuilder;", "getTmpBuilder", "()Ljava/lang/StringBuilder;", "tmpBuilder$delegate", "Lcom/vk/api/sdk/utils/ThreadLocalDelegate;", "convert", "", com.explorestack.iab.mraid.h.f19142a, "", b.f31754a, "", "libapi-sdk-core_release"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/e/h$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ KProperty[] f36064a = {ac.a(new aa(a.class, "tmpBuilder", "getTmpBuilder()Ljava/lang/StringBuilder;", 0))};

        /* renamed from: b  reason: collision with root package name */
        public static final a f36065b = new a();

        /* renamed from: c  reason: collision with root package name */
        private static final char[] f36066c = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

        /* renamed from: d  reason: collision with root package name */
        private static final c f36067d = e.a(C0579a.f36068a);

        @Metadata(bv = {1, 0, 3}, d1 = {"��\f\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\u0010��\u001a\u00060\u0001j\u0002`\u0002H\n¢\u0006\u0002\b\u0003"}, d2 = {"<anonymous>", "Ljava/lang/StringBuilder;", "Lkotlin/text/StringBuilder;", "invoke"}, k = 3, mv = {1, 4, 2})
        /* renamed from: com.vk.api.sdk.e.h$a$a  reason: collision with other inner class name */
        /* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/e/h$a$a.class */
        static final class C0579a extends r implements Function0<StringBuilder> {

            /* renamed from: a  reason: collision with root package name */
            public static final C0579a f36068a = new C0579a();

            C0579a() {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final /* synthetic */ StringBuilder invoke() {
                return new StringBuilder();
            }
        }

        private a() {
        }

        public static final String a(String h) {
            p.d(h, "h");
            try {
                MessageDigest instance = MessageDigest.getInstance("MD5");
                Charset forName = Charset.forName("UTF-8");
                p.b(forName, "Charset.forName(charsetName)");
                byte[] bytes = h.getBytes(forName);
                p.b(bytes, "(this as java.lang.String).getBytes(charset)");
                byte[] md5 = instance.digest(bytes);
                f36065b.a().setLength(0);
                p.b(md5, "md5");
                for (byte b2 : md5) {
                    a aVar = f36065b;
                    StringBuilder a2 = aVar.a();
                    char[] cArr = f36066c;
                    a2.append(cArr[(b2 & 240) >> 4]);
                    aVar.a().append(cArr[b2 & 15]);
                }
                String sb = f36065b.a().toString();
                p.b(sb, "tmpBuilder.toString()");
                return sb;
            } catch (Exception e) {
                return "";
            }
        }

        private final StringBuilder a() {
            return (StringBuilder) f36067d.a(f36064a[0]);
        }
    }

    private h() {
    }

    public static DisplayMetrics a() {
        Resources system = Resources.getSystem();
        p.b(system, "Resources.getSystem()");
        DisplayMetrics displayMetrics = system.getDisplayMetrics();
        p.b(displayMetrics, "Resources.getSystem().displayMetrics");
        return displayMetrics;
    }

    public static final Map<String, String> a(String str) {
        List a2;
        if (str == null) {
            return null;
        }
        List<String> a3 = kotlin.h.p.a((CharSequence) str, new String[]{"&"}, false, 0);
        HashMap hashMap = new HashMap(a3.size());
        for (String str2 : a3) {
            a2 = kotlin.h.p.a(str2, new String[]{"="}, false, 0);
            if (a2.size() > 1) {
                hashMap.put(a2.get(0), a2.get(1));
            }
        }
        return hashMap;
    }

    public static void a(Context context) {
        p.d(context, "context");
        CookieManager instance = CookieManager.getInstance();
        if (Build.VERSION.SDK_INT >= 21) {
            instance.removeAllCookies(null);
            return;
        }
        CookieSyncManager createInstance = CookieSyncManager.createInstance(context);
        createInstance.startSync();
        instance.removeAllCookie();
        createInstance.stopSync();
    }

    public static final boolean a(Context context, String action, String allowedPackage) {
        List<ResolveInfo> queryIntentActivities;
        p.d(context, "context");
        p.d(action, "action");
        p.d(allowedPackage, "allowedPackage");
        PackageManager packageManager = context.getPackageManager();
        if (packageManager == null || (queryIntentActivities = packageManager.queryIntentActivities(new Intent(action, (Uri) null), 65536)) == null) {
            return false;
        }
        List<ResolveInfo> list = queryIntentActivities;
        if ((list instanceof Collection) && list.isEmpty()) {
            return false;
        }
        for (ResolveInfo resolveInfo : list) {
            if (p.a((Object) resolveInfo.activityInfo.packageName, (Object) allowedPackage)) {
                return true;
            }
        }
        return false;
    }
}
