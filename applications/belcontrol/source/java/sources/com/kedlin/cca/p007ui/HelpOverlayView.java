package com.kedlin.cca.p007ui;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;
import android.os.Build;
import android.os.Handler;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.drawerlayout.widget.DrawerLayout;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.EnumSet;
import java.util.Iterator;
import java.util.Locale;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import org.bouncycastle.asn1.x509.DisplayText;
/* renamed from: com.kedlin.cca.ui.HelpOverlayView */
/* loaded from: classes3-dex2jar.jar:com/kedlin/cca/ui/HelpOverlayView.class */
public class HelpOverlayView extends RelativeLayout {

    /* renamed from: r */
    public static final int f3983r = oe1.m1093c(16);

    /* renamed from: s */
    public static final int f3984s = oe1.m1093c(16);

    /* renamed from: t */
    public static boolean f3985t = false;

    /* renamed from: u */
    public static final int f3986u = oe1.m1093c(8);

    /* renamed from: v */
    public static float f3987v = 16.0f;

    /* renamed from: w */
    public static int f3988w = 3;

    /* renamed from: d */
    public WebView f3992d;

    /* renamed from: f */
    public Bitmap f3993f;

    /* renamed from: g */
    public Paint f3994g;

    /* renamed from: h */
    public int f3995h;

    /* renamed from: j */
    public int f3996j;

    /* renamed from: k */
    public View f3997k;

    /* renamed from: m */
    public ArrayList<ViewTreeObserver$OnGlobalLayoutListenerC0690i> f3999m;

    /* renamed from: n */
    public ArrayList<Rect> f4000n;

    /* renamed from: o */
    public HelpOverlayViewContainer f4001o;

    /* renamed from: q */
    public ScheduledFuture<?> f4003q;

    /* renamed from: a */
    public Runnable f3989a = null;

    /* renamed from: b */
    public Runnable f3990b = null;

    /* renamed from: c */
    public final Handler f3991c = new Handler();

    /* renamed from: l */
    public Handler f3998l = new Handler();

    /* renamed from: p */
    public ScheduledExecutorService f4002p = Executors.newSingleThreadScheduledExecutor();

    /* renamed from: com.kedlin.cca.ui.HelpOverlayView$DirectionPoint */
    /* loaded from: classes3-dex2jar.jar:com/kedlin/cca/ui/HelpOverlayView$DirectionPoint.class */
    public static class DirectionPoint extends Point {
        public static final Parcelable.Creator<DirectionPoint> CREATOR = new C0680a();

        /* renamed from: a */
        public EnumC0689h f4004a;

        /* renamed from: com.kedlin.cca.ui.HelpOverlayView$DirectionPoint$a */
        /* loaded from: classes3-dex2jar.jar:com/kedlin/cca/ui/HelpOverlayView$DirectionPoint$a.class */
        public static final class C0680a implements Parcelable.Creator<DirectionPoint> {
            /* renamed from: a */
            public DirectionPoint createFromParcel(Parcel parcel) {
                return new DirectionPoint(parcel);
            }

            /* renamed from: b */
            public DirectionPoint[] newArray(int i) {
                return new DirectionPoint[i];
            }
        }

        public DirectionPoint() {
        }

        public DirectionPoint(Parcel parcel) {
            ((Point) this).x = parcel.readInt();
            ((Point) this).y = parcel.readInt();
            this.f4004a = EnumC0689h.values()[parcel.readInt()];
        }

        public DirectionPoint(DirectionPoint directionPoint) {
            super(directionPoint);
            this.f4004a = directionPoint.f4004a;
        }

        @Override // android.graphics.Point, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f4004a.ordinal());
        }
    }

    /* renamed from: com.kedlin.cca.ui.HelpOverlayView$a */
    /* loaded from: classes3-dex2jar.jar:com/kedlin/cca/ui/HelpOverlayView$a.class */
    public class View$OnClickListenerC0681a implements View.OnClickListener {
        public View$OnClickListenerC0681a() {
            HelpOverlayView.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (HelpOverlayView.this.f4001o != null) {
                HelpOverlayView.this.f4001o.m4151a0(HelpOverlayView.this);
            } else {
                HelpOverlayView.this.setVisibility(8);
            }
        }
    }

    /* renamed from: com.kedlin.cca.ui.HelpOverlayView$b */
    /* loaded from: classes3-dex2jar.jar:com/kedlin/cca/ui/HelpOverlayView$b.class */
    public class C0682b extends WebViewClient {
        public C0682b() {
            HelpOverlayView.this = r4;
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView webView, int i, String str, String str2) {
            String replace = str2.replace("/" + Locale.getDefault().getLanguage() + "/", "/en/");
            if (replace.equals(str2)) {
                String str3 = "Give up on " + str2;
                webView.setVisibility(8);
                boolean unused = HelpOverlayView.f3985t = false;
                return;
            }
            j91.m1517G(this, str2 + " failed. Using " + replace + " instead");
            HelpOverlayView.this.f3992d.loadUrl(replace);
        }
    }

    /* renamed from: com.kedlin.cca.ui.HelpOverlayView$c */
    /* loaded from: classes3-dex2jar.jar:com/kedlin/cca/ui/HelpOverlayView$c.class */
    public class View$OnTouchListenerC0683c implements View.OnTouchListener {

        /* renamed from: a */
        public float f4007a = 0.0f;

        public View$OnTouchListenerC0683c() {
            HelpOverlayView.this = r4;
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            int action = motionEvent.getAction();
            if (action == 0) {
                this.f4007a = motionEvent.getX() + motionEvent.getY();
            }
            if (action == 1) {
                if (Math.abs(this.f4007a - (motionEvent.getX() + motionEvent.getY())) > 5.0f) {
                    return true;
                }
                HelpOverlayView.this.performClick();
                return true;
            }
            return true;
        }
    }

    /* renamed from: com.kedlin.cca.ui.HelpOverlayView$d */
    /* loaded from: classes3-dex2jar.jar:com/kedlin/cca/ui/HelpOverlayView$d.class */
    public class RunnableC0684d implements Runnable {

        /* renamed from: com.kedlin.cca.ui.HelpOverlayView$d$a */
        /* loaded from: classes3-dex2jar.jar:com/kedlin/cca/ui/HelpOverlayView$d$a.class */
        public class RunnableC0685a implements Runnable {
            public RunnableC0685a() {
                RunnableC0684d.this = r4;
            }

            @Override // java.lang.Runnable
            public void run() {
                HelpOverlayView.this.m4170r();
                try {
                    HelpOverlayView.this.m4163y();
                } catch (OutOfMemoryError e) {
                }
            }
        }

        public RunnableC0684d() {
            HelpOverlayView.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            HelpOverlayView.this.f3998l.post(new RunnableC0685a());
        }
    }

    /* renamed from: com.kedlin.cca.ui.HelpOverlayView$e */
    /* loaded from: classes3-dex2jar.jar:com/kedlin/cca/ui/HelpOverlayView$e.class */
    public class RunnableC0686e implements Runnable {
        public RunnableC0686e() {
            HelpOverlayView.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            DrawerLayout drawerLayout = (DrawerLayout) HelpOverlayView.this.f3997k.getRootView().findViewById(2131362410);
            LinearLayout linearLayout = (LinearLayout) HelpOverlayView.this.f3997k.getRootView().findViewById(2131362706);
            if (drawerLayout == null || linearLayout == null) {
                return;
            }
            drawerLayout.m6766H(linearLayout);
            HelpOverlayView.this.f3991c.postDelayed(HelpOverlayView.this.m4168t(), 1000L);
        }
    }

    /* renamed from: com.kedlin.cca.ui.HelpOverlayView$f */
    /* loaded from: classes3-dex2jar.jar:com/kedlin/cca/ui/HelpOverlayView$f.class */
    public class RunnableC0687f implements Runnable {
        public RunnableC0687f() {
            HelpOverlayView.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            DrawerLayout drawerLayout = (DrawerLayout) HelpOverlayView.this.f3997k.getRootView().findViewById(2131362410);
            LinearLayout linearLayout = (LinearLayout) HelpOverlayView.this.f3997k.getRootView().findViewById(2131362706);
            if (drawerLayout == null || linearLayout == null || !drawerLayout.m6772B(linearLayout)) {
                return;
            }
            drawerLayout.m6754e(linearLayout);
        }
    }

    /* renamed from: com.kedlin.cca.ui.HelpOverlayView$g */
    /* loaded from: classes3-dex2jar.jar:com/kedlin/cca/ui/HelpOverlayView$g.class */
    public static /* synthetic */ class C0688g {

        /* renamed from: a */
        public static final /* synthetic */ int[] f4013a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0065 -> B:33:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0069 -> B:29:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x006d -> B:41:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x0071 -> B:35:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x0075 -> B:31:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x0079 -> B:27:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x007d -> B:39:0x0058). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC0689h.values().length];
            f4013a = iArr;
            try {
                iArr[EnumC0689h.NORTH.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f4013a[EnumC0689h.NORTH_EAST.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f4013a[EnumC0689h.EAST.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f4013a[EnumC0689h.SOUTH_EAST.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f4013a[EnumC0689h.SOUTH.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f4013a[EnumC0689h.SOUTH_WEST.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f4013a[EnumC0689h.WEST.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f4013a[EnumC0689h.NORTH_WEST.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
        }
    }

    /* renamed from: com.kedlin.cca.ui.HelpOverlayView$h */
    /* loaded from: classes3-dex2jar.jar:com/kedlin/cca/ui/HelpOverlayView$h.class */
    public enum EnumC0689h {
        NORTH,
        EAST,
        SOUTH,
        WEST,
        NORTH_EAST,
        NORTH_WEST,
        SOUTH_EAST,
        SOUTH_WEST
    }

    /* renamed from: com.kedlin.cca.ui.HelpOverlayView$i */
    /* loaded from: classes3-dex2jar.jar:com/kedlin/cca/ui/HelpOverlayView$i.class */
    public class ViewTreeObserver$OnGlobalLayoutListenerC0690i implements ViewTreeObserver.OnGlobalLayoutListener {

        /* renamed from: a */
        public View f4023a;

        /* renamed from: b */
        public ViewGroup f4024b;

        /* renamed from: c */
        public String f4025c;

        /* renamed from: d */
        public Boolean f4026d;

        /* renamed from: f */
        public int f4027f;

        /* renamed from: g */
        public int f4028g;

        /* renamed from: h */
        public EnumC0689h f4029h;

        /* renamed from: j */
        public int f4030j;

        /* renamed from: k */
        public int f4031k;

        /* renamed from: l */
        public int f4032l;

        /* renamed from: m */
        public int f4033m;

        /* renamed from: n */
        public boolean f4034n;

        /* renamed from: o */
        public int[] f4035o;

        public ViewTreeObserver$OnGlobalLayoutListenerC0690i(View view, String str, ViewGroup viewGroup, EnumC0689h enumC0689h, int i, int i2, Boolean bool, int i3) {
            HelpOverlayView.this = r4;
            this.f4026d = null;
            int[] iArr = new int[2];
            this.f4035o = iArr;
            this.f4023a = view;
            this.f4025c = str;
            this.f4024b = viewGroup;
            this.f4029h = enumC0689h;
            this.f4027f = i;
            this.f4028g = i2;
            this.f4026d = bool;
            this.f4033m = i3;
            view.getLocationInWindow(iArr);
            ViewTreeObserver viewTreeObserver = viewGroup.getViewTreeObserver();
            if (viewTreeObserver != null) {
                viewTreeObserver.addOnGlobalLayoutListener(this);
            }
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            int[] iArr = new int[2];
            this.f4023a.getLocationInWindow(iArr);
            int i = iArr[0];
            int[] iArr2 = this.f4035o;
            if (i == iArr2[0] && iArr[1] == iArr2[1]) {
                return;
            }
            this.f4035o = iArr;
            HelpOverlayView.this.m4162z();
        }
    }

    static {
        oe1.m1093c(30);
        oe1.m1093c(90);
    }

    public HelpOverlayView(Context context, HelpOverlayViewContainer helpOverlayViewContainer) {
        super(context);
        m4167u(context);
        this.f4001o = helpOverlayViewContainer;
    }

    /* renamed from: A */
    public Runnable m4189A() {
        return new RunnableC0686e();
    }

    /* renamed from: B */
    public void m4188B() {
        ScheduledFuture<?> scheduledFuture = this.f4003q;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(true);
        }
        m4170r();
        WebView webView = this.f3992d;
        if (webView != null) {
            webView.removeAllViews();
            this.f3992d.destroy();
        }
    }

    /* renamed from: j */
    public void m4178j(View view, String str, ViewGroup viewGroup, EnumC0689h enumC0689h, int i, int i2) {
        m4174n(view, str, viewGroup, enumC0689h, i, i2, Boolean.TRUE, -1);
    }

    /* renamed from: k */
    public void m4177k(View view, String str, ViewGroup viewGroup, EnumC0689h enumC0689h, int i, int i2, int i3) {
        m4174n(view, str, viewGroup, enumC0689h, i, i2, Boolean.TRUE, i3);
    }

    /* renamed from: l */
    public void m4176l(String str) {
        f3985t = true;
        String str2 = "file:///android_asset/" + Locale.getDefault().getLanguage() + "/" + str;
        if (this.f3992d == null) {
            WebView webView = new WebView(fa1.m1839k());
            this.f3992d = webView;
            addView(webView);
            this.f3992d.setWebViewClient(new C0682b());
            this.f3992d.setOnTouchListener(new View$OnTouchListenerC0683c());
            this.f3992d.setVerticalScrollBarEnabled(false);
            this.f3992d.setHorizontalScrollBarEnabled(false);
            this.f3992d.setBackgroundColor(0);
            this.f3992d.getSettings().setLayoutAlgorithm(WebSettings.LayoutAlgorithm.NORMAL);
            if (Build.VERSION.SDK_INT >= 11) {
                this.f3992d.setLayerType(1, null);
            }
        }
        this.f3992d.setVisibility(8);
        this.f3992d.loadUrl(str2);
    }

    /* renamed from: m */
    public void m4175m(View view, String str, ViewGroup viewGroup, EnumC0689h enumC0689h, int i, int i2) {
        m4174n(view, str, viewGroup, enumC0689h, i, i2, null, -1);
    }

    /* renamed from: n */
    public final void m4174n(View view, String str, ViewGroup viewGroup, EnumC0689h enumC0689h, int i, int i2, Boolean bool, int i3) {
        if (view == null || view.getVisibility() != 0 || !view.isShown()) {
            return;
        }
        this.f3999m.add(new ViewTreeObserver$OnGlobalLayoutListenerC0690i(view, str, viewGroup, enumC0689h, oe1.m1093c(i), oe1.m1093c(i2), bool, oe1.m1093c(i3)));
    }

    /* renamed from: o */
    public void m4173o(View view, String str, ViewGroup viewGroup, EnumC0689h enumC0689h, int i, int i2) {
        m4174n(view, str, viewGroup, enumC0689h, i, i2, Boolean.FALSE, -1);
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.f3995h = i;
        this.f3996j = i2;
        m4162z();
    }

    /* renamed from: p */
    public final boolean m4172p(Canvas canvas, int i, int i2, int i3, DirectionPoint directionPoint, Rect rect) {
        int i4;
        if (directionPoint == null || directionPoint.f4004a == null) {
            return false;
        }
        RectF rectF = new RectF();
        Rect rect2 = new Rect();
        float f = 180.0f;
        float f2 = -90.0f;
        switch (C0688g.f4013a[directionPoint.f4004a.ordinal()]) {
            case 1:
                return m4171q(canvas, i, i2, i3, directionPoint, rect);
            case 2:
                rectF.set((i - (((Point) directionPoint).x - i)) - (rect.width() / 2), (i2 - ((i2 - ((Point) directionPoint).y) * 2)) - rect.height(), ((Point) directionPoint).x + (rect.width() / 2), i2);
                rect2.set(i + i3, ((Point) directionPoint).y + f3986u, ((Point) directionPoint).x + (rect.width() / 2), i2);
                f = 0.0f;
                f2 = 90.0f;
                break;
            case 3:
                return m4171q(canvas, i, i2, i3, directionPoint, rect);
            case 4:
                rectF.set((i - (((Point) directionPoint).x - i)) - (rect.width() / 2), i2, ((Point) directionPoint).x + (rect.width() / 2), (((((Point) directionPoint).y - i2) * 2) + i2) - rect.height());
                rect2.set(i + i3, i2, ((Point) directionPoint).x + (rect.width() / 2), (((Point) directionPoint).y - rect.height()) - f3986u);
                f = 0.0f;
                break;
            case 5:
                return m4171q(canvas, i, i2, i3, directionPoint, rect);
            case 6:
                rectF.set(((Point) directionPoint).x + (rect.width() / 2), i2, (i + (i - ((Point) directionPoint).x)) - (rect.width() / 2), (((((Point) directionPoint).y - i2) * 2) + i2) - rect.height());
                rect2.set(((Point) directionPoint).x + (rect.width() / 2), i2, i - i3, (((Point) directionPoint).y - rect.height()) - f3986u);
                f2 = 90.0f;
                break;
            case 7:
                return m4171q(canvas, i, i2, i3, directionPoint, rect);
            case 8:
                rectF.set(((Point) directionPoint).x + (rect.width() / 2), (i2 - ((i2 - ((Point) directionPoint).y) * 2)) - rect.height(), (i + (i - ((Point) directionPoint).x)) - (rect.width() / 2), i2);
                rect2.set(((Point) directionPoint).x + (rect.width() / 2), ((Point) directionPoint).y + f3986u, i - i3, i2);
                break;
            default:
                f = 0.0f;
                f2 = 0.0f;
                break;
        }
        if (m4165w(rect2)) {
            Iterator it = EnumSet.of(EnumC0689h.NORTH, EnumC0689h.EAST, EnumC0689h.SOUTH, EnumC0689h.WEST).iterator();
            while (it.hasNext()) {
                EnumC0689h enumC0689h = (EnumC0689h) it.next();
                DirectionPoint directionPoint2 = new DirectionPoint(directionPoint);
                directionPoint2.f4004a = enumC0689h;
                if (m4171q(canvas, i, i2, i3, directionPoint2, rect)) {
                    return true;
                }
            }
            return false;
        }
        this.f4000n.add(rect2);
        float atan = ((float) ((Math.atan(rect.height() / (Math.abs(i - ((Point) directionPoint).x) + (rect.width() / 2))) * 180.0d) / 3.141592653589793d)) / ((rectF.bottom - rectF.top) / (rectF.right - rectF.left));
        if (f2 < 0.0f) {
            i4 = -1;
            atan *= 1.5f;
        } else {
            i4 = 1;
        }
        float f3 = i4 * atan;
        canvas.drawArc(rectF, f + f3, f2 - f3, false, this.f3994g);
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x0337 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0339  */
    /* renamed from: q */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m4171q(android.graphics.Canvas r11, int r12, int r13, int r14, com.kedlin.cca.p007ui.HelpOverlayView.DirectionPoint r15, android.graphics.Rect r16) {
        /*
            Method dump skipped, instructions count: 847
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.kedlin.cca.p007ui.HelpOverlayView.m4171q(android.graphics.Canvas, int, int, int, com.kedlin.cca.ui.HelpOverlayView$DirectionPoint, android.graphics.Rect):boolean");
    }

    /* renamed from: r */
    public final void m4170r() {
        Bitmap bitmap = this.f3993f;
        if (bitmap != null) {
            bitmap.recycle();
            this.f3993f = null;
        }
    }

    /* renamed from: s */
    public final Rect m4169s(Canvas canvas) {
        ArrayList arrayList = new ArrayList();
        Rect rect = new Rect();
        ArrayList arrayList2 = new ArrayList();
        Iterator<Rect> it = this.f4000n.iterator();
        while (it.hasNext()) {
            Rect next = it.next();
            if (next.height() >= 10 && next.width() >= 10) {
                arrayList2.add(next);
            }
        }
        String str = "Count " + this.f4000n.size() + " vs " + arrayList2.size();
        arrayList2.add(new Rect(0, 0, 0, 0));
        int i = this.f3995h;
        int i2 = this.f3996j;
        arrayList2.add(new Rect(i, i2, i, i2));
        int[] iArr = new int[(arrayList2.size() * 2) + 2];
        int size = (arrayList2.size() * 2) + 2;
        int[] iArr2 = new int[size];
        iArr2[0] = 0;
        iArr[0] = 0;
        Iterator it2 = arrayList2.iterator();
        int i3 = 1;
        int i4 = 1;
        while (it2.hasNext()) {
            Rect rect2 = (Rect) it2.next();
            int i5 = i3 + 1;
            iArr[i3] = rect2.top;
            i3 = i5 + 1;
            iArr[i5] = rect2.bottom;
            int i6 = i4 + 1;
            iArr2[i4] = rect2.left;
            i4 = i6 + 1;
            iArr2[i6] = rect2.right;
        }
        iArr[i3] = this.f3996j;
        iArr2[i4] = this.f3995h;
        Arrays.sort(iArr);
        Arrays.sort(iArr2);
        for (int i7 = 0; i7 < size; i7++) {
            for (int i8 = 0; i8 < size; i8++) {
                Iterator it3 = arrayList2.iterator();
                while (it3.hasNext()) {
                    Rect rect3 = (Rect) it3.next();
                    Rect rect4 = new Rect(Math.min(iArr2[i7], rect3.left), Math.min(iArr[i8], rect3.top), Math.max(iArr2[i7], rect3.left), Math.max(iArr[i8], rect3.top));
                    if (!m4166v(rect4)) {
                        arrayList.add(rect4);
                    }
                }
            }
        }
        String str2 = "Count candidate for webview: " + arrayList.size();
        Iterator it4 = arrayList.iterator();
        while (it4.hasNext()) {
            Rect rect5 = (Rect) it4.next();
            if (rect5.width() * rect5.height() > rect.height() * rect.width()) {
                rect = rect5;
            }
        }
        int max = Math.max(rect.left, 0);
        int i9 = f3983r;
        int max2 = Math.max(rect.top, 0);
        int i10 = f3984s;
        return new Rect(max + i9, max2 + i10, Math.min(rect.right, this.f3995h) - i9, Math.min(rect.bottom, this.f3996j) - i10);
    }

    public void setContainer(HelpOverlayViewContainer helpOverlayViewContainer) {
        this.f4001o = helpOverlayViewContainer;
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        if (i == 0) {
            try {
                m4163y();
            } catch (OutOfMemoryError e) {
            }
        }
        super.setVisibility(i);
    }

    /* renamed from: t */
    public Runnable m4168t() {
        return new RunnableC0687f();
    }

    /* renamed from: u */
    public final void m4167u(Context context) {
        this.f3999m = new ArrayList<>();
        this.f4000n = new ArrayList<>();
        View rootView = getRootView();
        this.f3997k = rootView;
        if (rootView == null) {
            j91.m1505k(this, "Cannot get root view");
            this.f3997k = this;
        }
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        float f = getResources().getDisplayMetrics().density;
        float f2 = displayMetrics.heightPixels / f;
        float f3 = displayMetrics.widthPixels / f;
        f3987v = (int) TypedValue.applyDimension(2, 13.0f, getResources().getDisplayMetrics());
        int i = (int) ((f3 * f2) / 29000.0f);
        f3988w = i;
        if (i > 8) {
            f3988w = 8;
        }
        Paint paint = new Paint(1);
        this.f3994g = paint;
        paint.setStyle(Paint.Style.STROKE);
        this.f3994g.setStrokeWidth(f3988w);
        this.f3994g.setColor(-1);
        setClickable(true);
        setOnClickListener(new View$OnClickListenerC0681a());
    }

    /* renamed from: v */
    public final boolean m4166v(Rect rect) {
        Iterator<Rect> it = this.f4000n.iterator();
        while (it.hasNext()) {
            if (rect.intersect(it.next())) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: w */
    public final boolean m4165w(Rect rect) {
        Iterator<Rect> it = this.f4000n.iterator();
        while (it.hasNext()) {
            if (Rect.intersects(it.next(), rect)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: x */
    public final DirectionPoint m4164x(int i, int i2, int i3, Rect rect, EnumC0689h enumC0689h, int i4, int i5) {
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        DirectionPoint directionPoint = new DirectionPoint();
        switch (C0688g.f4013a[enumC0689h.ordinal()]) {
            case 1:
                i8 = i - (rect.width() / 2);
                i7 = i8 + i4;
                ((Point) directionPoint).x = i7;
                i6 = (i2 - i3) - i5;
                ((Point) directionPoint).y = i6;
                directionPoint.f4004a = enumC0689h;
                int i12 = ((Point) directionPoint).x;
                int i13 = f3986u;
                this.f4000n.add(new Rect(i12 - i13, (((Point) directionPoint).y - rect.height()) - i13, ((Point) directionPoint).x + rect.width() + i13, ((Point) directionPoint).y + i13));
                return directionPoint;
            case 2:
                i8 = i + i3;
                i7 = i8 + i4;
                ((Point) directionPoint).x = i7;
                i6 = (i2 - i3) - i5;
                ((Point) directionPoint).y = i6;
                directionPoint.f4004a = enumC0689h;
                int i122 = ((Point) directionPoint).x;
                int i132 = f3986u;
                this.f4000n.add(new Rect(i122 - i132, (((Point) directionPoint).y - rect.height()) - i132, ((Point) directionPoint).x + rect.width() + i132, ((Point) directionPoint).y + i132));
                return directionPoint;
            case 3:
                i10 = i + i3 + i4;
                ((Point) directionPoint).x = i10;
                i9 = rect.height() / 2;
                i6 = i2 + i9 + i5;
                ((Point) directionPoint).y = i6;
                directionPoint.f4004a = enumC0689h;
                int i1222 = ((Point) directionPoint).x;
                int i1322 = f3986u;
                this.f4000n.add(new Rect(i1222 - i1322, (((Point) directionPoint).y - rect.height()) - i1322, ((Point) directionPoint).x + rect.width() + i1322, ((Point) directionPoint).y + i1322));
                return directionPoint;
            case 4:
                i11 = i + i3 + i4;
                ((Point) directionPoint).x = i11;
                i2 += i3;
                i9 = rect.height();
                i6 = i2 + i9 + i5;
                ((Point) directionPoint).y = i6;
                directionPoint.f4004a = enumC0689h;
                int i12222 = ((Point) directionPoint).x;
                int i13222 = f3986u;
                this.f4000n.add(new Rect(i12222 - i13222, (((Point) directionPoint).y - rect.height()) - i13222, ((Point) directionPoint).x + rect.width() + i13222, ((Point) directionPoint).y + i13222));
                return directionPoint;
            case 5:
                ((Point) directionPoint).x = (i - (rect.width() / 2)) + i4;
                i6 = i2 + i3 + i5 + rect.height();
                ((Point) directionPoint).y = i6;
                directionPoint.f4004a = enumC0689h;
                int i122222 = ((Point) directionPoint).x;
                int i132222 = f3986u;
                this.f4000n.add(new Rect(i122222 - i132222, (((Point) directionPoint).y - rect.height()) - i132222, ((Point) directionPoint).x + rect.width() + i132222, ((Point) directionPoint).y + i132222));
                return directionPoint;
            case 6:
                i11 = ((i - i3) - i4) - rect.width();
                ((Point) directionPoint).x = i11;
                i2 += i3;
                i9 = rect.height();
                i6 = i2 + i9 + i5;
                ((Point) directionPoint).y = i6;
                directionPoint.f4004a = enumC0689h;
                int i1222222 = ((Point) directionPoint).x;
                int i1322222 = f3986u;
                this.f4000n.add(new Rect(i1222222 - i1322222, (((Point) directionPoint).y - rect.height()) - i1322222, ((Point) directionPoint).x + rect.width() + i1322222, ((Point) directionPoint).y + i1322222));
                return directionPoint;
            case 7:
                i10 = ((i - i3) - i4) - rect.width();
                ((Point) directionPoint).x = i10;
                i9 = rect.height() / 2;
                i6 = i2 + i9 + i5;
                ((Point) directionPoint).y = i6;
                directionPoint.f4004a = enumC0689h;
                int i12222222 = ((Point) directionPoint).x;
                int i13222222 = f3986u;
                this.f4000n.add(new Rect(i12222222 - i13222222, (((Point) directionPoint).y - rect.height()) - i13222222, ((Point) directionPoint).x + rect.width() + i13222222, ((Point) directionPoint).y + i13222222));
                return directionPoint;
            case 8:
                i7 = ((i - i3) - i4) - rect.width();
                ((Point) directionPoint).x = i7;
                i6 = (i2 - i3) - i5;
                ((Point) directionPoint).y = i6;
                directionPoint.f4004a = enumC0689h;
                int i122222222 = ((Point) directionPoint).x;
                int i132222222 = f3986u;
                this.f4000n.add(new Rect(i122222222 - i132222222, (((Point) directionPoint).y - rect.height()) - i132222222, ((Point) directionPoint).x + rect.width() + i132222222, ((Point) directionPoint).y + i132222222));
                return directionPoint;
            default:
                directionPoint.f4004a = enumC0689h;
                int i1222222222 = ((Point) directionPoint).x;
                int i1322222222 = f3986u;
                this.f4000n.add(new Rect(i1222222222 - i1322222222, (((Point) directionPoint).y - rect.height()) - i1322222222, ((Point) directionPoint).x + rect.width() + i1322222222, ((Point) directionPoint).y + i1322222222));
                return directionPoint;
        }
    }

    /* renamed from: y */
    public final void m4163y() {
        if (this.f3995h == 0 || this.f3996j == 0 || this.f3993f != null) {
            return;
        }
        if (getRootView() == null) {
            j91.m1505k(this, "Cannot get root view");
            return;
        }
        this.f4000n.clear();
        Bitmap bitmap = this.f3993f;
        if (bitmap != null) {
            bitmap.recycle();
        }
        Paint paint = new Paint(1);
        paint.setColor(-16777216);
        paint.setAlpha(180);
        this.f3993f = Bitmap.createBitmap(this.f3995h, this.f3996j, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(this.f3993f);
        this.f3993f.eraseColor(0);
        canvas.drawPaint(paint);
        Paint paint2 = new Paint(1);
        paint2.setStyle(Paint.Style.FILL);
        paint2.setColor(0);
        paint2.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
        Paint paint3 = new Paint(1);
        paint3.setStyle(Paint.Style.FILL);
        paint3.setColor(-1);
        paint3.setTextSize(f3987v);
        Rect rect = new Rect();
        int[] iArr = new int[2];
        int[] iArr2 = new int[2];
        int[] iArr3 = new int[2];
        if (getRootView().findViewById(2131362505) != null) {
            getRootView().findViewById(2131362505).getLocationInWindow(iArr3);
        }
        Rect rect2 = new Rect(iArr3[0], iArr3[1], iArr3[0] + this.f3995h, iArr3[0] + this.f3996j);
        Iterator<ViewTreeObserver$OnGlobalLayoutListenerC0690i> it = this.f3999m.iterator();
        while (it.hasNext()) {
            ViewTreeObserver$OnGlobalLayoutListenerC0690i next = it.next();
            next.f4023a.getLocationInWindow(iArr);
            Rect rect3 = new Rect(iArr[0], iArr[1] - iArr3[1], iArr[0] + next.f4023a.getMeasuredWidth(), (iArr[1] - iArr3[1]) + next.f4023a.getMeasuredHeight());
            next.f4024b.getLocationInWindow(iArr2);
            iArr2[1] = Math.abs(iArr2[1]);
            rect2.set(iArr2[0], iArr2[1] - iArr3[1], iArr2[0] + next.f4024b.getMeasuredWidth(), (iArr2[1] - iArr3[1]) + next.f4024b.getMeasuredHeight());
            int height = (rect3.height() * 10) / DisplayText.DISPLAY_TEXT_MAXIMUM_SIZE;
            int width = (rect3.width() * 10) / DisplayText.DISPLAY_TEXT_MAXIMUM_SIZE;
            if (!rect2.contains(new Rect(rect3.left + width, rect3.top + height, rect3.right - (width * 2), rect3.bottom - (height * 2)))) {
                next.f4034n = false;
            } else {
                next.f4034n = true;
                next.f4030j = rect3.centerX();
                next.f4031k = rect3.centerY();
                int min = Math.min(rect3.width() / 2, rect3.height() / 2);
                next.f4032l = min;
                int i = next.f4033m;
                if (i > 0) {
                    next.f4032l = Math.min(min, i);
                }
                this.f4000n.add(rect3);
            }
        }
        Iterator<ViewTreeObserver$OnGlobalLayoutListenerC0690i> it2 = this.f3999m.iterator();
        while (it2.hasNext()) {
            ViewTreeObserver$OnGlobalLayoutListenerC0690i next2 = it2.next();
            if (next2.f4034n) {
                String str = next2.f4025c;
                paint3.getTextBounds(str, 0, str.length(), rect);
                DirectionPoint m4164x = m4164x(next2.f4030j, next2.f4031k, next2.f4032l, rect, next2.f4029h, next2.f4027f, next2.f4028g);
                canvas.drawText(next2.f4025c, ((Point) m4164x).x, ((Point) m4164x).y, paint3);
                m4172p(canvas, next2.f4030j, next2.f4031k, next2.f4032l, m4164x, rect);
            }
        }
        Iterator<ViewTreeObserver$OnGlobalLayoutListenerC0690i> it3 = this.f3999m.iterator();
        while (it3.hasNext()) {
            ViewTreeObserver$OnGlobalLayoutListenerC0690i next3 = it3.next();
            if (next3.f4034n) {
                float measuredWidth = next3.f4023a.getMeasuredWidth() / next3.f4023a.getMeasuredHeight();
                Boolean bool = next3.f4026d;
                if (bool != null ? bool.booleanValue() : measuredWidth < 2.0f && ((double) measuredWidth) > 0.5d) {
                    canvas.drawCircle(next3.f4030j, next3.f4031k, next3.f4032l, this.f3994g);
                    canvas.drawCircle(next3.f4030j, next3.f4031k, next3.f4032l, paint2);
                } else {
                    RectF rectF = new RectF(next3.f4030j - (next3.f4023a.getMeasuredWidth() / 2), next3.f4031k - (next3.f4023a.getMeasuredHeight() / 2), next3.f4030j + (next3.f4023a.getMeasuredWidth() / 2), next3.f4031k + (next3.f4023a.getMeasuredHeight() / 2));
                    int i2 = f3986u;
                    canvas.drawRoundRect(rectF, i2, i2, this.f3994g);
                    canvas.drawRoundRect(rectF, i2, i2, paint2);
                }
            }
        }
        if (Build.VERSION.SDK_INT >= 16) {
            setBackground(new BitmapDrawable(getResources(), this.f3993f));
        } else {
            setBackgroundDrawable(new BitmapDrawable(getResources(), this.f3993f));
        }
        if (!f3985t || this.f3992d == null) {
            return;
        }
        j91.m1521C("FreeRegion");
        Rect m4169s = m4169s(canvas);
        j91.m1519E("FreeRegion");
        if (m4169s.width() <= 0 || m4169s.height() <= 0) {
            this.f3992d.setVisibility(8);
            return;
        }
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(m4169s.width(), m4169s.height());
        layoutParams.addRule(9);
        layoutParams.addRule(10);
        layoutParams.setMargins(m4169s.left, m4169s.top, 0, 0);
        this.f3992d.setLayoutParams(layoutParams);
        this.f3992d.setVisibility(0);
    }

    /* renamed from: z */
    public final void m4162z() {
        ScheduledFuture<?> scheduledFuture = this.f4003q;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(true);
        }
        this.f4003q = this.f4002p.schedule(new RunnableC0684d(), 100L, TimeUnit.MILLISECONDS);
    }
}
