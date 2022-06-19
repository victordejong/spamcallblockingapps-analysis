package com.facebook.internal;

import android.util.Log;
import com.facebook.C10181g;
import com.facebook.EnumC10396m;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.C18500ag;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.p532h.C18425p;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��B\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0002\u0018��  2\u00020\u0001:\u0001 B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u000e\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0005J'\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u00052\u0012\u0010\u0015\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00010\u0016\"\u00020\u0001¢\u0006\u0002\u0010\u0017J\u0012\u0010\u0011\u001a\u00020\u00122\n\u0010\u0018\u001a\u00060\bj\u0002`\tJ\u0016\u0010\u0019\u001a\u00020\u00122\u0006\u0010\u001a\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u0001J\u0006\u0010\u001b\u001a\u00020\u0005J\u0006\u0010\u001c\u001a\u00020\u0012J\u000e\u0010\u001d\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0005J\b\u0010\u001e\u001a\u00020\u001fH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��R\u0012\u0010\u0007\u001a\u00060\bj\u0002`\tX\u0082\u000e¢\u0006\u0002\n��R$\u0010\f\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u000b@FX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n��¨\u0006!"}, m4298d2 = {"Lcom/facebook/internal/Logger;", "", "behavior", "Lcom/facebook/LoggingBehavior;", "tag", "", "(Lcom/facebook/LoggingBehavior;Ljava/lang/String;)V", "contents", "Ljava/lang/StringBuilder;", "Lkotlin/text/StringBuilder;", "value", "", "priority", "getPriority", "()I", "setPriority", "(I)V", "append", "", "string", "format", "args", "", "(Ljava/lang/String;[Ljava/lang/Object;)V", "stringBuilder", "appendKeyValue", "key", "getContents", "log", "logString", "shouldLog", "", "Companion", "facebook-core_release"}, m4297k = 1, m4296mv = {1, 4, 0})
/* renamed from: com.facebook.internal.x */
/* loaded from: classes3-dex2jar.jar:com/facebook/internal/x.class */
public final class C10336x {

    /* renamed from: a */
    public static final C10337a f33929a = new C10337a(null);

    /* renamed from: f */
    private static final HashMap<String, String> f33930f = new HashMap<>();

    /* renamed from: b */
    private final EnumC10396m f33931b;

    /* renamed from: c */
    private final String f33932c;

    /* renamed from: e */
    private int f33934e = 3;

    /* renamed from: d */
    private StringBuilder f33933d = new StringBuilder();

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��8\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0011\n\u0002\b\t\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J(\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u0004H\u0007JA\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u00042\u0012\u0010\u0011\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00010\u0012\"\u00020\u0001H\u0007¢\u0006\u0002\u0010\u0013J \u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u0004H\u0007J9\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u00042\u0012\u0010\u0011\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00010\u0012\"\u00020\u0001H\u0007¢\u0006\u0002\u0010\u0014J\u0010\u0010\u0015\u001a\u00020\t2\u0006\u0010\u0016\u001a\u00020\u0004H\u0007J\u0018\u0010\u0017\u001a\u00020\t2\u0006\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0019\u001a\u00020\u0004H\u0007J\u0010\u0010\u001a\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u0004H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R*\u0010\u0005\u001a\u001e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u0006j\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004`\u0007X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u001b"}, m4298d2 = {"Lcom/facebook/internal/Logger$Companion;", "", "()V", "LOG_TAG_BASE", "", "stringsToReplace", "Ljava/util/HashMap;", "Lkotlin/collections/HashMap;", "log", "", "behavior", "Lcom/facebook/LoggingBehavior;", "priority", "", "tag", "string", "format", "args", "", "(Lcom/facebook/LoggingBehavior;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V", "(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V", "registerAccessToken", "accessToken", "registerStringToReplace", "original", "replace", "replaceStrings", "facebook-core_release"}, m4297k = 1, m4296mv = {1, 4, 0})
    /* renamed from: com.facebook.internal.x$a */
    /* loaded from: classes3-dex2jar.jar:com/facebook/internal/x$a.class */
    public static final class C10337a {
        private C10337a() {
        }

        public /* synthetic */ C10337a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: a */
        private void m22980a(String original, String replace) {
            synchronized (this) {
                C18524p.m3840d(original, "original");
                C18524p.m3840d(replace, "replace");
                C10336x.f33930f.put(original, replace);
            }
        }

        /* renamed from: b */
        private final String m22979b(String str) {
            synchronized (this) {
                for (Map.Entry entry : C10336x.f33930f.entrySet()) {
                    str = C18425p.m3958a(str, (String) entry.getKey(), (String) entry.getValue(), false);
                }
            }
            return str;
        }

        /* renamed from: a */
        public final void m22983a(EnumC10396m behavior, int i, String tag, String string) {
            C18524p.m3840d(behavior, "behavior");
            C18524p.m3840d(tag, "tag");
            C18524p.m3840d(string, "string");
            if (C10181g.m23298b(behavior)) {
                String m22979b = m22979b(string);
                String str = tag;
                if (!C18425p.m3957a(tag, "FacebookSDK.", false)) {
                    str = "FacebookSDK.".concat(String.valueOf(tag));
                }
                Log.println(i, str, m22979b);
                if (behavior != EnumC10396m.DEVELOPER_ERRORS) {
                    return;
                }
                new Exception().printStackTrace();
            }
        }

        /* renamed from: a */
        public final void m22982a(EnumC10396m behavior, String tag, String string) {
            C18524p.m3840d(behavior, "behavior");
            C18524p.m3840d(tag, "tag");
            C18524p.m3840d(string, "string");
            m22983a(behavior, 3, tag, string);
        }

        /* renamed from: a */
        public final void m22981a(String accessToken) {
            synchronized (this) {
                C18524p.m3840d(accessToken, "accessToken");
                if (!C10181g.m23298b(EnumC10396m.INCLUDE_ACCESS_TOKENS)) {
                    m22980a(accessToken, "ACCESS_TOKEN_REMOVED");
                }
            }
        }
    }

    public C10336x(EnumC10396m behavior, String tag) {
        C18524p.m3840d(behavior, "behavior");
        C18524p.m3840d(tag, "tag");
        C10218af.m23178a(tag, "tag");
        this.f33931b = behavior;
        this.f33932c = "FacebookSDK.".concat(String.valueOf(tag));
    }

    /* renamed from: a */
    public static final void m22993a(EnumC10396m enumC10396m, String str, String str2) {
        f33929a.m22982a(enumC10396m, str, str2);
    }

    /* renamed from: a */
    public static final void m22992a(EnumC10396m behavior, String tag, String format, Object... args) {
        C10337a c10337a = f33929a;
        C18524p.m3840d(behavior, "behavior");
        C18524p.m3840d(tag, "tag");
        C18524p.m3840d(format, "format");
        C18524p.m3840d(args, "args");
        if (C10181g.m23298b(behavior)) {
            C18500ag c18500ag = C18500ag.f63594a;
            Object[] copyOf = Arrays.copyOf(args, args.length);
            String format2 = String.format(format, Arrays.copyOf(copyOf, copyOf.length));
            C18524p.m3843b(format2, "java.lang.String.format(format, *args)");
            c10337a.m22983a(behavior, 3, tag, format2);
        }
    }

    /* renamed from: a */
    private void m22989a(String format, Object... args) {
        C18524p.m3840d(format, "format");
        C18524p.m3840d(args, "args");
        if (C10181g.m23298b(this.f33931b)) {
            StringBuilder sb = this.f33933d;
            C18500ag c18500ag = C18500ag.f63594a;
            Object[] copyOf = Arrays.copyOf(args, 2);
            String format2 = String.format(format, Arrays.copyOf(copyOf, copyOf.length));
            C18524p.m3843b(format2, "java.lang.String.format(format, *args)");
            sb.append(format2);
        }
    }

    /* renamed from: b */
    public static final void m22987b(EnumC10396m enumC10396m, String str, String str2) {
        f33929a.m22983a(enumC10396m, 5, str, str2);
    }

    /* renamed from: b */
    public static final void m22986b(EnumC10396m behavior, String tag, String format, Object... args) {
        C10337a c10337a = f33929a;
        C18524p.m3840d(behavior, "behavior");
        C18524p.m3840d(tag, "tag");
        C18524p.m3840d(format, "format");
        C18524p.m3840d(args, "args");
        if (C10181g.m23298b(behavior)) {
            C18500ag c18500ag = C18500ag.f63594a;
            Object[] copyOf = Arrays.copyOf(args, 1);
            String format2 = String.format(format, Arrays.copyOf(copyOf, copyOf.length));
            C18524p.m3843b(format2, "java.lang.String.format(format, *args)");
            c10337a.m22983a(behavior, 5, tag, format2);
        }
    }

    /* renamed from: b */
    public static final void m22985b(String str) {
        synchronized (C10336x.class) {
            try {
                f33929a.m22981a(str);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: c */
    private void m22984c(String string) {
        C18524p.m3840d(string, "string");
        f33929a.m22983a(this.f33931b, this.f33934e, this.f33932c, string);
    }

    /* renamed from: a */
    public final void m22994a() {
        String sb = this.f33933d.toString();
        C18524p.m3843b(sb, "contents.toString()");
        m22984c(sb);
        this.f33933d = new StringBuilder();
    }

    /* renamed from: a */
    public final void m22991a(String string) {
        C18524p.m3840d(string, "string");
        if (C10181g.m23298b(this.f33931b)) {
            this.f33933d.append(string);
        }
    }

    /* renamed from: a */
    public final void m22990a(String key, Object value) {
        C18524p.m3840d(key, "key");
        C18524p.m3840d(value, "value");
        m22989a("  %s:\t%s\n", key, value);
    }
}
