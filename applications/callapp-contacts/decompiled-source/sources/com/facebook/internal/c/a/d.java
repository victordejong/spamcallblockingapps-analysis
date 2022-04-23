package com.facebook.internal.c.a;

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
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.ag;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��6\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\u0010\u000e\n��\n\u0002\u0010#\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018�� \u00102\u00020\u0001:\u0002\u0010\u0011B\u0005¢\u0006\u0002\u0010\u0002J\u000e\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fJ\u000e\u0010\r\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\u000fR\u001a\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004¢\u0006\u0002\n��R\u0014\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0012"}, d2 = {"Lcom/facebook/internal/logging/dumpsys/WebViewDumpHelper;", "", "()V", "webViewHTMLs", "", "", "webViews", "", "Lcom/facebook/internal/logging/dumpsys/WebViewDumpHelper$WebViewData;", "dump", "", "writer", "Ljava/io/PrintWriter;", "handle", "view", "Landroid/webkit/WebView;", "Companion", "WebViewData", "facebook-core_release"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes3-dex2jar.jar:com/facebook/internal/c/a/d.class */
public final class d {

    /* renamed from: b  reason: collision with root package name */
    public static final a f19915b = new a(null);

    /* renamed from: a  reason: collision with root package name */
    final Set<b> f19916a = new LinkedHashSet();

    /* renamed from: c  reason: collision with root package name */
    private final Map<String, String> f19917c = new LinkedHashMap();

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u001c\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u0004H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��¨\u0006\t"}, d2 = {"Lcom/facebook/internal/logging/dumpsys/WebViewDumpHelper$Companion;", "", "()V", "GET_WEBVIEW_HTML_JS_SCRIPT", "", "fixHtmlString", "data", "Lcom/facebook/internal/logging/dumpsys/WebViewDumpHelper$WebViewData;", AdType.HTML, "facebook-core_release"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes3-dex2jar.jar:com/facebook/internal/c/a/d$a.class */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\"\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\n\b\u0002\u0018�� \u00132\u00020\u0001:\u0001\u0013B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n��\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\t\u001a\u00020\n¢\u0006\b\n��\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\r\u001a\u00020\u0006¢\u0006\b\n��\u001a\u0004\b\u000e\u0010\bR\u0011\u0010\u000f\u001a\u00020\u0006¢\u0006\b\n��\u001a\u0004\b\u0010\u0010\bR\u0011\u0010\u0011\u001a\u00020\u0006¢\u0006\b\n��\u001a\u0004\b\u0012\u0010\b¨\u0006\u0014"}, d2 = {"Lcom/facebook/internal/logging/dumpsys/WebViewDumpHelper$WebViewData;", "", "webView", "Landroid/webkit/WebView;", "(Landroid/webkit/WebView;)V", "height", "", "getHeight", "()I", "key", "", "getKey", "()Ljava/lang/String;", "left", "getLeft", "top", "getTop", "width", "getWidth", "Companion", "facebook-core_release"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes3-dex2jar.jar:com/facebook/internal/c/a/d$b.class */
    static final class b {
        public static final a f = new a(null);
        private static final int[] g = new int[2];

        /* renamed from: a  reason: collision with root package name */
        final String f19918a;

        /* renamed from: b  reason: collision with root package name */
        final int f19919b;

        /* renamed from: c  reason: collision with root package name */
        final int f19920c;

        /* renamed from: d  reason: collision with root package name */
        final int f19921d;
        final int e;

        @Metadata(bv = {1, 0, 3}, d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u0015\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0005"}, d2 = {"Lcom/facebook/internal/logging/dumpsys/WebViewDumpHelper$WebViewData$Companion;", "", "()V", "location", "", "facebook-core_release"}, k = 1, mv = {1, 4, 0})
        /* loaded from: classes3-dex2jar.jar:com/facebook/internal/c/a/d$b$a.class */
        public static final class a {
            private a() {
            }

            public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }
        }

        public b(WebView webView) {
            p.d(webView, "webView");
            ag agVar = ag.f36785a;
            String format = String.format("%s{%s}", Arrays.copyOf(new Object[]{webView.getClass().getName(), Integer.toHexString(webView.hashCode())}, 2));
            p.b(format, "java.lang.String.format(format, *args)");
            this.f19918a = format;
            int[] iArr = g;
            webView.getLocationOnScreen(iArr);
            this.f19919b = iArr[0];
            this.f19920c = iArr[1];
            this.f19921d = webView.getWidth();
            this.e = webView.getHeight();
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\u0010��\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n¢\u0006\u0002\b\u0005"}, d2 = {"<anonymous>", "", AdType.HTML, "", "kotlin.jvm.PlatformType", "onReceiveValue"}, k = 3, mv = {1, 4, 0})
    /* loaded from: classes3-dex2jar.jar:com/facebook/internal/c/a/d$c.class */
    static final class c<T> implements ValueCallback<String> {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ b f19923b;

        /* JADX INFO: Access modifiers changed from: package-private */
        public c(b bVar) {
            this.f19923b = bVar;
        }

        @Override // android.webkit.ValueCallback
        public final /* synthetic */ void onReceiveValue(String str) {
            String html = str;
            Map map = d.this.f19917c;
            String str2 = this.f19923b.f19918a;
            p.b(html, "html");
            map.put(str2, html);
        }
    }

    public final void a(PrintWriter writer) {
        p.d(writer, "writer");
        try {
            for (b bVar : this.f19916a) {
                String str = this.f19917c.get(bVar.f19918a);
                if (str != null) {
                    writer.print("WebView HTML for ");
                    writer.print(bVar);
                    writer.println(":");
                    String a2 = kotlin.h.p.a(kotlin.h.p.a(kotlin.h.p.a(str, "\\u003C", "<", false), "\\n", "", false), "\\\"", "\"", false);
                    ag agVar = ag.f36785a;
                    String str2 = bVar.f19918a;
                    int i = bVar.f19919b;
                    int i2 = bVar.f19920c;
                    int i3 = bVar.f19921d;
                    int i4 = bVar.e;
                    int length = a2.length();
                    if (a2 != null) {
                        String substring = a2.substring(1, length - 1);
                        p.b(substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                        String format = String.format("<html id=\"%s\" data-rect=\"%d,%d,%d,%d\">%s</html>", Arrays.copyOf(new Object[]{str2, Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4), substring}, 6));
                        p.b(format, "java.lang.String.format(format, *args)");
                        writer.println(format);
                    } else {
                        throw new NullPointerException("null cannot be cast to non-null type java.lang.String");
                    }
                }
            }
        } catch (Exception e) {
        }
        this.f19916a.clear();
        this.f19917c.clear();
    }
}
