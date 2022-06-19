package com.facebook.internal.p304c.p305a;

import android.webkit.ValueCallback;
import android.webkit.WebView;
import com.mopub.common.AdType;
import java.io.PrintWriter;
import java.util.Arrays;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.internal.C18500ag;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.p532h.C18425p;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��6\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\u0010\u000e\n��\n\u0002\u0010#\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018�� \u00102\u00020\u0001:\u0002\u0010\u0011B\u0005¢\u0006\u0002\u0010\u0002J\u000e\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fJ\u000e\u0010\r\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\u000fR\u001a\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004¢\u0006\u0002\n��R\u0014\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0012"}, m4298d2 = {"Lcom/facebook/internal/logging/dumpsys/WebViewDumpHelper;", "", "()V", "webViewHTMLs", "", "", "webViews", "", "Lcom/facebook/internal/logging/dumpsys/WebViewDumpHelper$WebViewData;", "dump", "", "writer", "Ljava/io/PrintWriter;", "handle", "view", "Landroid/webkit/WebView;", "Companion", "WebViewData", "facebook-core_release"}, m4297k = 1, m4296mv = {1, 4, 0})
/* renamed from: com.facebook.internal.c.a.d */
/* loaded from: classes3-dex2jar.jar:com/facebook/internal/c/a/d.class */
public final class C10273d {

    /* renamed from: b */
    public static final C10274a f33790b = new C10274a(null);

    /* renamed from: a */
    final Set<C10275b> f33791a = new LinkedHashSet();

    /* renamed from: c */
    private final Map<String, String> f33792c = new LinkedHashMap();

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u001c\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u0004H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��¨\u0006\t"}, m4298d2 = {"Lcom/facebook/internal/logging/dumpsys/WebViewDumpHelper$Companion;", "", "()V", "GET_WEBVIEW_HTML_JS_SCRIPT", "", "fixHtmlString", "data", "Lcom/facebook/internal/logging/dumpsys/WebViewDumpHelper$WebViewData;", AdType.HTML, "facebook-core_release"}, m4297k = 1, m4296mv = {1, 4, 0})
    /* renamed from: com.facebook.internal.c.a.d$a */
    /* loaded from: classes3-dex2jar.jar:com/facebook/internal/c/a/d$a.class */
    public static final class C10274a {
        private C10274a() {
        }

        public /* synthetic */ C10274a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\"\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\n\b\u0002\u0018�� \u00132\u00020\u0001:\u0001\u0013B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n��\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\t\u001a\u00020\n¢\u0006\b\n��\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\r\u001a\u00020\u0006¢\u0006\b\n��\u001a\u0004\b\u000e\u0010\bR\u0011\u0010\u000f\u001a\u00020\u0006¢\u0006\b\n��\u001a\u0004\b\u0010\u0010\bR\u0011\u0010\u0011\u001a\u00020\u0006¢\u0006\b\n��\u001a\u0004\b\u0012\u0010\b¨\u0006\u0014"}, m4298d2 = {"Lcom/facebook/internal/logging/dumpsys/WebViewDumpHelper$WebViewData;", "", "webView", "Landroid/webkit/WebView;", "(Landroid/webkit/WebView;)V", "height", "", "getHeight", "()I", "key", "", "getKey", "()Ljava/lang/String;", "left", "getLeft", "top", "getTop", "width", "getWidth", "Companion", "facebook-core_release"}, m4297k = 1, m4296mv = {1, 4, 0})
    /* renamed from: com.facebook.internal.c.a.d$b */
    /* loaded from: classes3-dex2jar.jar:com/facebook/internal/c/a/d$b.class */
    public static final class C10275b {

        /* renamed from: f */
        public static final C10276a f33793f = new C10276a(null);

        /* renamed from: g */
        private static final int[] f33794g = new int[2];

        /* renamed from: a */
        final String f33795a;

        /* renamed from: b */
        final int f33796b;

        /* renamed from: c */
        final int f33797c;

        /* renamed from: d */
        final int f33798d;

        /* renamed from: e */
        final int f33799e;

        @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u0015\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0005"}, m4298d2 = {"Lcom/facebook/internal/logging/dumpsys/WebViewDumpHelper$WebViewData$Companion;", "", "()V", "location", "", "facebook-core_release"}, m4297k = 1, m4296mv = {1, 4, 0})
        /* renamed from: com.facebook.internal.c.a.d$b$a */
        /* loaded from: classes3-dex2jar.jar:com/facebook/internal/c/a/d$b$a.class */
        public static final class C10276a {
            private C10276a() {
            }

            public /* synthetic */ C10276a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }
        }

        public C10275b(WebView webView) {
            C18524p.m3840d(webView, "webView");
            C18500ag c18500ag = C18500ag.f63594a;
            String format = String.format("%s{%s}", Arrays.copyOf(new Object[]{webView.getClass().getName(), Integer.toHexString(webView.hashCode())}, 2));
            C18524p.m3843b(format, "java.lang.String.format(format, *args)");
            this.f33795a = format;
            int[] iArr = f33794g;
            webView.getLocationOnScreen(iArr);
            this.f33796b = iArr[0];
            this.f33797c = iArr[1];
            this.f33798d = webView.getWidth();
            this.f33799e = webView.getHeight();
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0010\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\u0010��\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n¢\u0006\u0002\b\u0005"}, m4298d2 = {"<anonymous>", "", AdType.HTML, "", "kotlin.jvm.PlatformType", "onReceiveValue"}, m4297k = 3, m4296mv = {1, 4, 0})
    /* renamed from: com.facebook.internal.c.a.d$c */
    /* loaded from: classes3-dex2jar.jar:com/facebook/internal/c/a/d$c.class */
    static final class C10277c<T> implements ValueCallback<String> {

        /* renamed from: b */
        final /* synthetic */ C10275b f33801b;

        public C10277c(C10275b c10275b) {
            C10273d.this = r4;
            this.f33801b = c10275b;
        }

        @Override // android.webkit.ValueCallback
        public final /* synthetic */ void onReceiveValue(String str) {
            String html = str;
            Map map = C10273d.this.f33792c;
            String str2 = this.f33801b.f33795a;
            C18524p.m3843b(html, "html");
            map.put(str2, html);
        }
    }

    /* renamed from: a */
    public final void m23074a(PrintWriter writer) {
        C18524p.m3840d(writer, "writer");
        try {
            for (C10275b c10275b : this.f33791a) {
                String str = this.f33792c.get(c10275b.f33795a);
                if (str != null) {
                    writer.print("WebView HTML for ");
                    writer.print(c10275b);
                    writer.println(":");
                    String a = C18425p.m3958a(C18425p.m3958a(C18425p.m3958a(str, "\\u003C", "<", false), "\\n", "", false), "\\\"", "\"", false);
                    C18500ag c18500ag = C18500ag.f63594a;
                    String str2 = c10275b.f33795a;
                    int i = c10275b.f33796b;
                    int i2 = c10275b.f33797c;
                    int i3 = c10275b.f33798d;
                    int i4 = c10275b.f33799e;
                    int length = a.length();
                    if (a == null) {
                        throw new NullPointerException("null cannot be cast to non-null type java.lang.String");
                    }
                    String substring = a.substring(1, length - 1);
                    C18524p.m3843b(substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                    String format = String.format("<html id=\"%s\" data-rect=\"%d,%d,%d,%d\">%s</html>", Arrays.copyOf(new Object[]{str2, Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4), substring}, 6));
                    C18524p.m3843b(format, "java.lang.String.format(format, *args)");
                    writer.println(format);
                }
            }
        } catch (Exception e) {
        }
        this.f33791a.clear();
        this.f33792c.clear();
    }
}
