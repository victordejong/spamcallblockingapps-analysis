package com.facebook.internal;

import android.util.Log;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import kotlin.Metadata;
import p193e.p1538j.C23228f0;
import p193e.p1538j.EnumC23248n0;
import s1.f0.r;
import s1.z.c.f;
import s1.z.c.l;
@Metadata(d1 = {"��B\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0002\u0018��  2\u00020\u0001:\u0001 B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u000e\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0005J'\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u00052\u0012\u0010\u0015\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00010\u0016\"\u00020\u0001¢\u0006\u0002\u0010\u0017J\u0012\u0010\u0011\u001a\u00020\u00122\n\u0010\u0018\u001a\u00060\bj\u0002`\tJ\u0016\u0010\u0019\u001a\u00020\u00122\u0006\u0010\u001a\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u0001J\u0006\u0010\u001b\u001a\u00020\u0005J\u0006\u0010\u001c\u001a\u00020\u0012J\u000e\u0010\u001d\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0005J\b\u0010\u001e\u001a\u00020\u001fH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��R\u0012\u0010\u0007\u001a\u00060\bj\u0002`\tX\u0082\u000e¢\u0006\u0002\n��R$\u0010\f\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u000b@FX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n��¨\u0006!"}, d2 = {"Lcom/facebook/internal/Logger;", "", "behavior", "Lcom/facebook/LoggingBehavior;", RemoteMessageConst.Notification.TAG, "", "(Lcom/facebook/LoggingBehavior;Ljava/lang/String;)V", "contents", "Ljava/lang/StringBuilder;", "Lkotlin/text/StringBuilder;", "value", "", RemoteMessageConst.Notification.PRIORITY, "getPriority", "()I", "setPriority", "(I)V", "append", "", "string", "format", "args", "", "(Ljava/lang/String;[Ljava/lang/Object;)V", "stringBuilder", "appendKeyValue", AnalyticsConstants.KEY, "getContents", AnalyticsConstants.LOG, "logString", "shouldLog", "", "Companion", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* renamed from: com.facebook.internal.k0 */
/* loaded from: classes2-dex2jar.jar:com/facebook/internal/k0.class */
public final class C1143k0 {

    /* renamed from: e */
    public static final C1144a f3139e = new C1144a(null);

    /* renamed from: f */
    public static final HashMap<String, String> f3140f = new HashMap<>();

    /* renamed from: a */
    public final EnumC23248n0 f3141a;

    /* renamed from: b */
    public final String f3142b;

    /* renamed from: d */
    public int f3144d = 3;

    /* renamed from: c */
    public StringBuilder f3143c = new StringBuilder();

    @Metadata(d1 = {"��8\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0011\n\u0002\b\t\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J(\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u0004H\u0007JA\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u00042\u0012\u0010\u0011\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00010\u0012\"\u00020\u0001H\u0007¢\u0006\u0002\u0010\u0013J \u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u0004H\u0007J9\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u00042\u0012\u0010\u0011\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00010\u0012\"\u00020\u0001H\u0007¢\u0006\u0002\u0010\u0014J\u0010\u0010\u0015\u001a\u00020\t2\u0006\u0010\u0016\u001a\u00020\u0004H\u0007J\u0018\u0010\u0017\u001a\u00020\t2\u0006\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0019\u001a\u00020\u0004H\u0007J\u0010\u0010\u001a\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u0004H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R*\u0010\u0005\u001a\u001e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u0006j\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004`\u0007X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u001b"}, d2 = {"Lcom/facebook/internal/Logger$Companion;", "", "()V", "LOG_TAG_BASE", "", "stringsToReplace", "Ljava/util/HashMap;", "Lkotlin/collections/HashMap;", AnalyticsConstants.LOG, "", "behavior", "Lcom/facebook/LoggingBehavior;", RemoteMessageConst.Notification.PRIORITY, "", RemoteMessageConst.Notification.TAG, "string", "format", "args", "", "(Lcom/facebook/LoggingBehavior;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V", "(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V", "registerAccessToken", "accessToken", "registerStringToReplace", "original", "replace", "replaceStrings", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* renamed from: com.facebook.internal.k0$a */
    /* loaded from: classes2-dex2jar.jar:com/facebook/internal/k0$a.class */
    public static final class C1144a {
        public C1144a(f fVar) {
        }

        /* renamed from: a */
        public final void m41730a(EnumC23248n0 enumC23248n0, int i, String str, String str2) {
            l.e(enumC23248n0, "behavior");
            l.e(str, RemoteMessageConst.Notification.TAG);
            l.e(str2, "string");
            C23228f0 c23228f0 = C23228f0.f64291a;
            if (C23228f0.m7344k(enumC23248n0)) {
                synchronized (this) {
                    for (Map.Entry<String, String> entry : C1143k0.f3140f.entrySet()) {
                        str2 = r.t(str2, entry.getKey(), entry.getValue(), false, 4);
                    }
                }
                String str3 = str;
                if (!r.y(str, "FacebookSDK.", false, 2)) {
                    str3 = l.j("FacebookSDK.", str);
                }
                Log.println(i, str3, str2);
                if (enumC23248n0 != EnumC23248n0.DEVELOPER_ERRORS) {
                    return;
                }
                new Exception().printStackTrace();
            }
        }

        /* renamed from: b */
        public final void m41729b(EnumC23248n0 enumC23248n0, String str, String str2) {
            l.e(enumC23248n0, "behavior");
            l.e(str, RemoteMessageConst.Notification.TAG);
            l.e(str2, "string");
            m41730a(enumC23248n0, 3, str, str2);
        }

        /* renamed from: c */
        public final void m41728c(EnumC23248n0 enumC23248n0, String str, String str2, Object... objArr) {
            l.e(enumC23248n0, "behavior");
            l.e(str, RemoteMessageConst.Notification.TAG);
            l.e(str2, "format");
            l.e(objArr, "args");
            C23228f0 c23228f0 = C23228f0.f64291a;
            if (C23228f0.m7344k(enumC23248n0)) {
                Object[] copyOf = Arrays.copyOf(objArr, objArr.length);
                String format = String.format(str2, Arrays.copyOf(copyOf, copyOf.length));
                l.d(format, "java.lang.String.format(format, *args)");
                m41730a(enumC23248n0, 3, str, format);
            }
        }

        /* renamed from: d */
        public final void m41727d(String str) {
            synchronized (this) {
                l.e(str, "accessToken");
                C23228f0 c23228f0 = C23228f0.f64291a;
                if (!C23228f0.m7344k(EnumC23248n0.INCLUDE_ACCESS_TOKENS)) {
                    synchronized (this) {
                        l.e(str, "original");
                        l.e("ACCESS_TOKEN_REMOVED", "replace");
                        C1143k0.f3140f.put(str, "ACCESS_TOKEN_REMOVED");
                    }
                }
            }
        }
    }

    public C1143k0(EnumC23248n0 enumC23248n0, String str) {
        l.e(enumC23248n0, "behavior");
        l.e(str, RemoteMessageConst.Notification.TAG);
        this.f3141a = enumC23248n0;
        C1172r0 c1172r0 = C1172r0.f3203a;
        C1172r0.m41650e(str, RemoteMessageConst.Notification.TAG);
        this.f3142b = l.j("FacebookSDK.", str);
    }

    /* renamed from: a */
    public final void m41733a(String str) {
        l.e(str, "string");
        C23228f0 c23228f0 = C23228f0.f64291a;
        if (C23228f0.m7344k(this.f3141a)) {
            this.f3143c.append(str);
        }
    }

    /* renamed from: b */
    public final void m41732b(String str, Object obj) {
        l.e(str, AnalyticsConstants.KEY);
        l.e(obj, "value");
        Object[] objArr = {str, obj};
        l.e("  %s:\t%s\n", "format");
        l.e(objArr, "args");
        C23228f0 c23228f0 = C23228f0.f64291a;
        if (C23228f0.m7344k(this.f3141a)) {
            StringBuilder sb = this.f3143c;
            Object[] copyOf = Arrays.copyOf(objArr, 2);
            String format = String.format("  %s:\t%s\n", Arrays.copyOf(copyOf, copyOf.length));
            l.d(format, "java.lang.String.format(format, *args)");
            sb.append(format);
        }
    }

    /* renamed from: c */
    public final void m41731c() {
        String sb = this.f3143c.toString();
        l.d(sb, "contents.toString()");
        l.e(sb, "string");
        f3139e.m41730a(this.f3141a, this.f3144d, this.f3142b, sb);
        this.f3143c = new StringBuilder();
    }
}
