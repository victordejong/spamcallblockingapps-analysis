package com.facebook.internal;

import android.util.Log;
import com.facebook.g;
import com.facebook.m;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.ag;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��B\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0002\u0018��  2\u00020\u0001:\u0001 B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u000e\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0005J'\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u00052\u0012\u0010\u0015\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00010\u0016\"\u00020\u0001¢\u0006\u0002\u0010\u0017J\u0012\u0010\u0011\u001a\u00020\u00122\n\u0010\u0018\u001a\u00060\bj\u0002`\tJ\u0016\u0010\u0019\u001a\u00020\u00122\u0006\u0010\u001a\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u0001J\u0006\u0010\u001b\u001a\u00020\u0005J\u0006\u0010\u001c\u001a\u00020\u0012J\u000e\u0010\u001d\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0005J\b\u0010\u001e\u001a\u00020\u001fH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��R\u0012\u0010\u0007\u001a\u00060\bj\u0002`\tX\u0082\u000e¢\u0006\u0002\n��R$\u0010\f\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u000b@FX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n��¨\u0006!"}, d2 = {"Lcom/facebook/internal/Logger;", "", "behavior", "Lcom/facebook/LoggingBehavior;", "tag", "", "(Lcom/facebook/LoggingBehavior;Ljava/lang/String;)V", "contents", "Ljava/lang/StringBuilder;", "Lkotlin/text/StringBuilder;", "value", "", "priority", "getPriority", "()I", "setPriority", "(I)V", "append", "", "string", "format", "args", "", "(Ljava/lang/String;[Ljava/lang/Object;)V", "stringBuilder", "appendKeyValue", "key", "getContents", "log", "logString", "shouldLog", "", "Companion", "facebook-core_release"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes3-dex2jar.jar:com/facebook/internal/x.class */
public final class x {

    /* renamed from: a  reason: collision with root package name */
    public static final a f20014a = new a(null);
    private static final HashMap<String, String> f = new HashMap<>();

    /* renamed from: b  reason: collision with root package name */
    private final m f20015b;

    /* renamed from: c  reason: collision with root package name */
    private final String f20016c;
    private int e = 3;

    /* renamed from: d  reason: collision with root package name */
    private StringBuilder f20017d = new StringBuilder();

    @Metadata(bv = {1, 0, 3}, d1 = {"��8\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0011\n\u0002\b\t\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J(\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u0004H\u0007JA\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u00042\u0012\u0010\u0011\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00010\u0012\"\u00020\u0001H\u0007¢\u0006\u0002\u0010\u0013J \u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u0004H\u0007J9\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u00042\u0012\u0010\u0011\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00010\u0012\"\u00020\u0001H\u0007¢\u0006\u0002\u0010\u0014J\u0010\u0010\u0015\u001a\u00020\t2\u0006\u0010\u0016\u001a\u00020\u0004H\u0007J\u0018\u0010\u0017\u001a\u00020\t2\u0006\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0019\u001a\u00020\u0004H\u0007J\u0010\u0010\u001a\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u0004H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R*\u0010\u0005\u001a\u001e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u0006j\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004`\u0007X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u001b"}, d2 = {"Lcom/facebook/internal/Logger$Companion;", "", "()V", "LOG_TAG_BASE", "", "stringsToReplace", "Ljava/util/HashMap;", "Lkotlin/collections/HashMap;", "log", "", "behavior", "Lcom/facebook/LoggingBehavior;", "priority", "", "tag", "string", "format", "args", "", "(Lcom/facebook/LoggingBehavior;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V", "(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V", "registerAccessToken", "accessToken", "registerStringToReplace", "original", "replace", "replaceStrings", "facebook-core_release"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes3-dex2jar.jar:com/facebook/internal/x$a.class */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private void a(String original, String replace) {
            synchronized (this) {
                p.d(original, "original");
                p.d(replace, "replace");
                x.f.put(original, replace);
            }
        }

        private final String b(String str) {
            synchronized (this) {
                for (Map.Entry entry : x.f.entrySet()) {
                    str = kotlin.h.p.a(str, (String) entry.getKey(), (String) entry.getValue(), false);
                }
            }
            return str;
        }

        public final void a(m behavior, int i, String tag, String string) {
            p.d(behavior, "behavior");
            p.d(tag, "tag");
            p.d(string, "string");
            if (g.b(behavior)) {
                String b2 = b(string);
                String str = tag;
                if (!kotlin.h.p.a(tag, "FacebookSDK.", false)) {
                    str = "FacebookSDK.".concat(String.valueOf(tag));
                }
                Log.println(i, str, b2);
                if (behavior == m.DEVELOPER_ERRORS) {
                    new Exception().printStackTrace();
                }
            }
        }

        public final void a(m behavior, String tag, String string) {
            p.d(behavior, "behavior");
            p.d(tag, "tag");
            p.d(string, "string");
            a(behavior, 3, tag, string);
        }

        public final void a(String accessToken) {
            synchronized (this) {
                p.d(accessToken, "accessToken");
                if (!g.b(m.INCLUDE_ACCESS_TOKENS)) {
                    a(accessToken, "ACCESS_TOKEN_REMOVED");
                }
            }
        }
    }

    public x(m behavior, String tag) {
        p.d(behavior, "behavior");
        p.d(tag, "tag");
        af.a(tag, "tag");
        this.f20015b = behavior;
        this.f20016c = "FacebookSDK.".concat(String.valueOf(tag));
    }

    public static final void a(m mVar, String str, String str2) {
        f20014a.a(mVar, str, str2);
    }

    public static final void a(m behavior, String tag, String format, Object... args) {
        a aVar = f20014a;
        p.d(behavior, "behavior");
        p.d(tag, "tag");
        p.d(format, "format");
        p.d(args, "args");
        if (g.b(behavior)) {
            ag agVar = ag.f36785a;
            Object[] copyOf = Arrays.copyOf(args, args.length);
            String format2 = String.format(format, Arrays.copyOf(copyOf, copyOf.length));
            p.b(format2, "java.lang.String.format(format, *args)");
            aVar.a(behavior, 3, tag, format2);
        }
    }

    private void a(String format, Object... args) {
        p.d(format, "format");
        p.d(args, "args");
        if (g.b(this.f20015b)) {
            StringBuilder sb = this.f20017d;
            ag agVar = ag.f36785a;
            Object[] copyOf = Arrays.copyOf(args, 2);
            String format2 = String.format(format, Arrays.copyOf(copyOf, copyOf.length));
            p.b(format2, "java.lang.String.format(format, *args)");
            sb.append(format2);
        }
    }

    public static final void b(m mVar, String str, String str2) {
        f20014a.a(mVar, 5, str, str2);
    }

    public static final void b(m behavior, String tag, String format, Object... args) {
        a aVar = f20014a;
        p.d(behavior, "behavior");
        p.d(tag, "tag");
        p.d(format, "format");
        p.d(args, "args");
        if (g.b(behavior)) {
            ag agVar = ag.f36785a;
            Object[] copyOf = Arrays.copyOf(args, 1);
            String format2 = String.format(format, Arrays.copyOf(copyOf, copyOf.length));
            p.b(format2, "java.lang.String.format(format, *args)");
            aVar.a(behavior, 5, tag, format2);
        }
    }

    public static final void b(String str) {
        synchronized (x.class) {
            try {
                f20014a.a(str);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private void c(String string) {
        p.d(string, "string");
        f20014a.a(this.f20015b, this.e, this.f20016c, string);
    }

    public final void a() {
        String sb = this.f20017d.toString();
        p.b(sb, "contents.toString()");
        c(sb);
        this.f20017d = new StringBuilder();
    }

    public final void a(String string) {
        p.d(string, "string");
        if (g.b(this.f20015b)) {
            this.f20017d.append(string);
        }
    }

    public final void a(String key, Object value) {
        p.d(key, "key");
        p.d(value, "value");
        a("  %s:\t%s\n", key, value);
    }
}
