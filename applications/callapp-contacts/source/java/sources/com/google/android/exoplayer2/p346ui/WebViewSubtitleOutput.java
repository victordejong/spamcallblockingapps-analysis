package com.google.android.exoplayer2.p346ui;

import android.content.Context;
import android.text.Layout;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.webkit.WebView;
import android.widget.FrameLayout;
import com.google.android.exoplayer2.p346ui.SubtitleView;
import com.google.android.exoplayer2.text.C11343a;
import com.google.android.exoplayer2.text.C11356b;
import com.google.android.exoplayer2.util.C11599af;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.exoplayer2.ui.WebViewSubtitleOutput */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/ui/WebViewSubtitleOutput.class */
public final class WebViewSubtitleOutput extends FrameLayout implements SubtitleView.AbstractC11470a {

    /* renamed from: a */
    final WebView f38157a;

    /* renamed from: b */
    private final CanvasSubtitleOutput f38158b;

    /* renamed from: c */
    private List<C11356b> f38159c;

    /* renamed from: d */
    private C11343a f38160d;

    /* renamed from: e */
    private float f38161e;

    /* renamed from: f */
    private int f38162f;

    /* renamed from: g */
    private float f38163g;

    /* renamed from: com.google.android.exoplayer2.ui.WebViewSubtitleOutput$2 */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/ui/WebViewSubtitleOutput$2.class */
    public static final /* synthetic */ class C114762 {

        /* renamed from: a */
        static final /* synthetic */ int[] f38165a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[Layout.Alignment.values().length];
            f38165a = iArr;
            try {
                iArr[Layout.Alignment.ALIGN_NORMAL.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f38165a[Layout.Alignment.ALIGN_OPPOSITE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f38165a[Layout.Alignment.ALIGN_CENTER.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    public WebViewSubtitleOutput(Context context) {
        this(context, null);
    }

    public WebViewSubtitleOutput(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f38159c = Collections.emptyList();
        this.f38160d = C11343a.f37307a;
        this.f38161e = 0.0533f;
        this.f38162f = 0;
        this.f38163g = 0.08f;
        CanvasSubtitleOutput canvasSubtitleOutput = new CanvasSubtitleOutput(context, attributeSet);
        this.f38158b = canvasSubtitleOutput;
        WebView webView = new WebView(context, attributeSet) { // from class: com.google.android.exoplayer2.ui.WebViewSubtitleOutput.1
            @Override // android.webkit.WebView, android.view.View
            public final boolean onTouchEvent(MotionEvent motionEvent) {
                super.onTouchEvent(motionEvent);
                return false;
            }

            @Override // android.view.View
            public final boolean performClick() {
                super.performClick();
                return false;
            }
        };
        this.f38157a = webView;
        webView.setBackgroundColor(0);
        addView(canvasSubtitleOutput);
        addView(webView);
    }

    /* renamed from: a */
    private static String m20281a(int i) {
        return i != 1 ? i != 2 ? "horizontal-tb" : "vertical-lr" : "vertical-rl";
    }

    /* renamed from: a */
    private String m20280a(int i, float f) {
        float m20233a = C11508g.m20233a(i, f, getHeight(), (getHeight() - getPaddingTop()) - getPaddingBottom());
        return m20233a == -3.4028235E38f ? "unset" : C11599af.m19968a("%.2fpx", Float.valueOf(m20233a / getContext().getResources().getDisplayMetrics().density));
    }

    /* renamed from: a */
    private static String m20279a(Layout.Alignment alignment) {
        if (alignment == null) {
            return "center";
        }
        int i = C114762.f38165a[alignment.ordinal()];
        return i != 1 ? i != 2 ? "center" : "end" : EventConstants.START;
    }

    /* renamed from: a */
    private static String m20278a(C11343a c11343a) {
        int i = c11343a.f37311e;
        return i != 1 ? i != 2 ? i != 3 ? i != 4 ? "unset" : C11599af.m19968a("-0.05em -0.05em 0.15em %s", C11478b.m20268a(c11343a.f37312f)) : C11599af.m19968a("0.06em 0.08em 0.15em %s", C11478b.m20268a(c11343a.f37312f)) : C11599af.m19968a("0.1em 0.12em 0.15em %s", C11478b.m20268a(c11343a.f37312f)) : C11599af.m19968a("1px 1px 0 %1$s, 1px -1px 0 %1$s, -1px 1px 0 %1$s, -1px -1px 0 %1$s", C11478b.m20268a(c11343a.f37312f));
    }

    /* renamed from: a */
    private static String m20277a(C11356b c11356b) {
        if (c11356b.f37427q != BitmapDescriptorFactory.HUE_RED) {
            return C11599af.m19968a("%s(%.2fdeg)", (c11356b.f37426p == 2 || c11356b.f37426p == 1) ? "skewY" : "skewX", Float.valueOf(c11356b.f37427q));
        }
        return "";
    }

    /* JADX WARN: Code restructure failed: missing block: B:44:0x023d, code lost:
        if (r20 != false) goto L42;
     */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0188  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x01a4  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x01d5  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x01df  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0206  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0237  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m20282a() {
        /*
            Method dump skipped, instructions count: 1043
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.p346ui.WebViewSubtitleOutput.m20282a():void");
    }

    /* renamed from: b */
    private static int m20275b(int i) {
        if (i != 1) {
            return i != 2 ? 0 : -100;
        }
        return -50;
    }

    @Override // com.google.android.exoplayer2.p346ui.SubtitleView.AbstractC11470a
    /* renamed from: a */
    public final void mo20276a(List<C11356b> list, C11343a c11343a, float f, int i, float f2) {
        this.f38160d = c11343a;
        this.f38161e = f;
        this.f38162f = i;
        this.f38163g = f2;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (int i2 = 0; i2 < list.size(); i2++) {
            C11356b c11356b = list.get(i2);
            if (c11356b.f37414d != null) {
                arrayList.add(c11356b);
            } else {
                arrayList2.add(c11356b);
            }
        }
        if (!this.f38159c.isEmpty() || !arrayList2.isEmpty()) {
            this.f38159c = arrayList2;
            m20282a();
        }
        this.f38158b.mo20276a(arrayList, c11343a, f, i, f2);
        invalidate();
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (!z || this.f38159c.isEmpty()) {
            return;
        }
        m20282a();
    }
}
