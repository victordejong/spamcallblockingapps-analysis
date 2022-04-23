package com.google.android.exoplayer2.ui;

import android.content.Context;
import android.text.Layout;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.webkit.WebView;
import android.widget.FrameLayout;
import com.google.android.exoplayer2.text.a;
import com.google.android.exoplayer2.text.b;
import com.google.android.exoplayer2.ui.SubtitleView;
import com.google.android.exoplayer2.util.af;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/ui/WebViewSubtitleOutput.class */
final class WebViewSubtitleOutput extends FrameLayout implements SubtitleView.a {

    /* renamed from: a  reason: collision with root package name */
    final WebView f22023a;

    /* renamed from: b  reason: collision with root package name */
    private final CanvasSubtitleOutput f22024b;

    /* renamed from: c  reason: collision with root package name */
    private List<b> f22025c;

    /* renamed from: d  reason: collision with root package name */
    private a f22026d;
    private float e;
    private int f;
    private float g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.exoplayer2.ui.WebViewSubtitleOutput$2  reason: invalid class name */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/ui/WebViewSubtitleOutput$2.class */
    public static final /* synthetic */ class AnonymousClass2 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f22028a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[Layout.Alignment.values().length];
            f22028a = iArr;
            try {
                iArr[Layout.Alignment.ALIGN_NORMAL.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f22028a[Layout.Alignment.ALIGN_OPPOSITE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f22028a[Layout.Alignment.ALIGN_CENTER.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    public WebViewSubtitleOutput(Context context) {
        this(context, null);
    }

    public WebViewSubtitleOutput(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f22025c = Collections.emptyList();
        this.f22026d = a.f21697a;
        this.e = 0.0533f;
        this.f = 0;
        this.g = 0.08f;
        CanvasSubtitleOutput canvasSubtitleOutput = new CanvasSubtitleOutput(context, attributeSet);
        this.f22024b = canvasSubtitleOutput;
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
        this.f22023a = webView;
        webView.setBackgroundColor(0);
        addView(canvasSubtitleOutput);
        addView(webView);
    }

    private static String a(int i) {
        return i != 1 ? i != 2 ? "horizontal-tb" : "vertical-lr" : "vertical-rl";
    }

    private String a(int i, float f) {
        float a2 = g.a(i, f, getHeight(), (getHeight() - getPaddingTop()) - getPaddingBottom());
        return a2 == -3.4028235E38f ? "unset" : af.a("%.2fpx", Float.valueOf(a2 / getContext().getResources().getDisplayMetrics().density));
    }

    private static String a(Layout.Alignment alignment) {
        if (alignment == null) {
            return "center";
        }
        int i = AnonymousClass2.f22028a[alignment.ordinal()];
        return i != 1 ? i != 2 ? "center" : "end" : EventConstants.START;
    }

    private static String a(a aVar) {
        int i = aVar.e;
        return i != 1 ? i != 2 ? i != 3 ? i != 4 ? "unset" : af.a("-0.05em -0.05em 0.15em %s", b.a(aVar.f)) : af.a("0.06em 0.08em 0.15em %s", b.a(aVar.f)) : af.a("0.1em 0.12em 0.15em %s", b.a(aVar.f)) : af.a("1px 1px 0 %1$s, 1px -1px 0 %1$s, -1px 1px 0 %1$s, -1px -1px 0 %1$s", b.a(aVar.f));
    }

    private static String a(b bVar) {
        if (bVar.q == BitmapDescriptorFactory.HUE_RED) {
            return "";
        }
        return af.a("%s(%.2fdeg)", (bVar.p == 2 || bVar.p == 1) ? "skewY" : "skewX", Float.valueOf(bVar.q));
    }

    /* JADX WARN: Code restructure failed: missing block: B:44:0x023d, code lost:
        if (r20 != false) goto L_0x022c;
     */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0188  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x01a4  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x01d5  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x01df  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0206  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0237  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void a() {
        /*
            Method dump skipped, instructions count: 1043
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.ui.WebViewSubtitleOutput.a():void");
    }

    private static int b(int i) {
        if (i != 1) {
            return i != 2 ? 0 : -100;
        }
        return -50;
    }

    @Override // com.google.android.exoplayer2.ui.SubtitleView.a
    public final void a(List<b> list, a aVar, float f, int i, float f2) {
        this.f22026d = aVar;
        this.e = f;
        this.f = i;
        this.g = f2;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (int i2 = 0; i2 < list.size(); i2++) {
            b bVar = list.get(i2);
            if (bVar.f21736d != null) {
                arrayList.add(bVar);
            } else {
                arrayList2.add(bVar);
            }
        }
        if (!this.f22025c.isEmpty() || !arrayList2.isEmpty()) {
            this.f22025c = arrayList2;
            a();
        }
        this.f22024b.a(arrayList, aVar, f, i, f2);
        invalidate();
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (z && !this.f22025c.isEmpty()) {
            a();
        }
    }
}
