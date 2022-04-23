package com.amazon.device.ads;

import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.ValueCallback;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.appcompat.a.a.a;
import com.amazon.device.ads.SDKUtilities;
import com.mopub.common.Constants;
import com.mopub.volley.BuildConfig;
import com.verizon.ads.EnvironmentInfo;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.Date;
import java.util.Map;
import kotlinx.serialization.json.internal.JsonReaderKt;
import org.json.JSONException;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DTBAdMRAIDController.class */
public abstract class DTBAdMRAIDController implements DTBActivityListener {

    /* renamed from: b  reason: collision with root package name */
    static final String f6386b = "DTBAdMRAIDController";

    /* renamed from: a  reason: collision with root package name */
    private Rect f6387a;

    /* renamed from: d  reason: collision with root package name */
    LinearLayout f6389d;
    DTBMRAIDCloseButtonListener f;
    DTBAdView i;
    private boolean l;
    private Boolean m;
    private MraidExposure n;

    /* renamed from: c  reason: collision with root package name */
    boolean f6388c = false;
    protected boolean e = false;
    private int j = -1;
    private int k = -1;
    protected MraidStateType g = MraidStateType.LOADING;
    private boolean o = false;
    boolean h = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.amazon.device.ads.DTBAdMRAIDController$2  reason: invalid class name */
    /* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DTBAdMRAIDController$2.class */
    public static /* synthetic */ class AnonymousClass2 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f6392a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0041 -> B:22:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0045 -> B:20:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x0049 -> B:18:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x004d -> B:24:0x0035). Please submit an issue!!! */
        static {
            int[] iArr = new int[MraidStateType.values().length];
            f6392a = iArr;
            try {
                iArr[MraidStateType.LOADING.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f6392a[MraidStateType.DEFAULT.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f6392a[MraidStateType.RESIZED.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f6392a[MraidStateType.EXPANDED.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f6392a[MraidStateType.HIDDEN.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DTBAdMRAIDController$MraidExposure.class */
    class MraidExposure {

        /* renamed from: a  reason: collision with root package name */
        int f6393a;

        /* renamed from: b  reason: collision with root package name */
        Rect f6394b;

        MraidExposure(int i, Rect rect) {
            this.f6393a = i;
            this.f6394b = new Rect(rect);
        }
    }

    static {
        MraidCommand.a(MraidOpenCommand.b(), MraidOpenCommand.class);
        MraidCommand.a(MraidCloseCommand.b(), MraidCloseCommand.class);
        MraidCommand.a(MraidUnloadCommand.b(), MraidUnloadCommand.class);
        MraidCommand.a(MraidResizeCommand.b(), MraidResizeCommand.class);
        MraidCommand.a(MraidExpandCommand.b(), MraidExpandCommand.class);
        MraidCommand.a(MraidUseCustomCloseCommand.b(), MraidUseCustomCloseCommand.class);
        MraidCommand.a(MraidJSReadyCommand.b(), MraidJSReadyCommand.class);
        MraidCommand.a(MraidFirePixelCommand.b(), MraidFirePixelCommand.class);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public DTBAdMRAIDController(DTBAdView dTBAdView) {
        this.i = dTBAdView;
    }

    private void a(int i, int i2, float f, float f2) {
        if (this.f6388c) {
            c(String.format("window.mraidBridge.property.setCurrentPosition({'xPos':%.1f, 'yPos':%.1f, 'width': %.1f, 'height': %.1f});", Float.valueOf(DTBAdUtil.b(i)), Float.valueOf(DTBAdUtil.b(i2)), Float.valueOf(DTBAdUtil.b((int) f)), Float.valueOf(DTBAdUtil.b((int) f2))));
        }
    }

    private void a(String str, JSONObject jSONObject) {
        c(String.format(str + "(%s);", jSONObject.toString()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean a(View view, MotionEvent motionEvent) {
        if (motionEvent.getAction() != 0) {
            return true;
        }
        c("window.mraid.close();");
        ((ViewGroup) view.getParent()).removeView(view);
        this.f6389d = null;
        return true;
    }

    private void b(int i, Rect rect) {
        c(String.format("window.mraidBridge.event.exposureChange(%d, { x:%d, y:%d, width:%d, height: %d}, null);", Integer.valueOf(i), Integer.valueOf(DTBAdUtil.b(rect.left)), Integer.valueOf(DTBAdUtil.b(rect.top)), Integer.valueOf(DTBAdUtil.b(rect.right - rect.left)), Integer.valueOf(DTBAdUtil.b(rect.bottom - rect.top))));
    }

    private void c(final String str) {
        DtbLog.c(f6386b, "MRAID Evaluate JSScript:".concat(String.valueOf(str)));
        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.amazon.device.ads._$$Lambda$DTBAdMRAIDController$K1e_LnqXM3JRb9UwNInpoKp5zxY
            @Override // java.lang.Runnable
            public final void run() {
                DTBAdMRAIDController.this.d(str);
            }
        });
    }

    private void d(int i, int i2) {
        c(String.format("window.mraidBridge.event.sizeChange(%d, %d);", Integer.valueOf(i), Integer.valueOf(i2)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d(final String str) {
        DTBAdView dTBAdView = this.i;
        if (dTBAdView != null) {
            dTBAdView.evaluateJavascript(str, new ValueCallback<String>() { // from class: com.amazon.device.ads.DTBAdMRAIDController.1
                @Override // android.webkit.ValueCallback
                public /* synthetic */ void onReceiveValue(String str2) {
                    String str3 = str2;
                    if (str3 != null && !JsonReaderKt.NULL.equals(str3)) {
                        String str4 = DTBAdMRAIDController.f6386b;
                        DtbLog.c(str4, "Value received:" + str3 + " for script " + str);
                    }
                }
            });
        }
    }

    private void d(boolean z) {
        c(String.format("window.mraidBridge.event.viewableChange(%s);", z ? "true" : "false"));
    }

    private void e(int i, int i2) {
        s();
        DTBAdUtil.b(this.i).addView(this.f6389d, DTBAdUtil.a(50), DTBAdUtil.a(50));
        this.f6389d.setX(i - DTBAdUtil.a(50));
        this.f6389d.setY(i2);
        a((View.OnTouchListener) null);
    }

    private void h() {
        try {
            int i = AnonymousClass2.f6392a[this.g.ordinal()];
            StateProperty stateProperty = i != 1 ? i != 2 ? i != 3 ? i != 4 ? i != 5 ? MraidProperty.f6520c : MraidProperty.f6521d : MraidProperty.f : MraidProperty.e : MraidProperty.f6520c : MraidProperty.f6519b;
            JSONObject jSONObject = new JSONObject();
            for (int i2 = 0; i2 <= 0; i2++) {
                new MraidProperty[]{stateProperty}[0].a(jSONObject);
            }
            String str = f6386b;
            DtbLog.c(str, "State was changed to " + jSONObject.toString() + " for controller " + this);
            c(String.format("window.mraidBridge.event.stateChange(%s);", jSONObject.toString()));
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void u() {
        this.i.loadUrl("about:blank");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void v() {
        this.i.setVisibility(8);
    }

    @Override // com.amazon.device.ads.DTBActivityListener
    public void a() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(float f, float f2) {
        if (this.f6388c) {
            int[] iArr = new int[2];
            this.i.getLocationOnScreen(iArr);
            a(iArr[0], iArr[1], f, f2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(int i, int i2) {
        if (this.j != i || this.k != i2) {
            this.j = i;
            this.k = i2;
            if (this.o) {
                d(i, i2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(int i, Rect rect) {
        int i2 = rect.right;
        int i3 = rect.left;
        int i4 = rect.bottom;
        int i5 = rect.top;
        if (this.o) {
            b(i, rect);
        } else {
            this.n = new MraidExposure(i, rect);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(Rect rect) {
        Rect rect2 = this.f6387a;
        if (rect2 == null || !rect2.equals(rect)) {
            int i = rect.right - rect.left;
            int i2 = rect.bottom - rect.top;
            Rect rect3 = this.f6387a;
            boolean z = true;
            if (rect3 != null) {
                int i3 = rect3.right;
                int i4 = this.f6387a.left;
                int i5 = this.f6387a.bottom;
                int i6 = this.f6387a.top;
                z = true;
                if (Math.abs((i3 - i4) - i) <= 1) {
                    z = Math.abs((i5 - i6) - i2) > 1;
                }
            }
            q();
            if (z) {
                a(DTBAdUtil.b(i), DTBAdUtil.b(i2));
            }
            this.f6387a = rect;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void a(View.OnTouchListener onTouchListener) {
        this.f6389d.setBackgroundColor(0);
        this.f6389d.setId(R.id.mraid_close_indicator);
        ImageView imageView = new ImageView(this.i.getContext());
        imageView.setId(R.id.mraid_close_indicator);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(DTBAdUtil.a(24), DTBAdUtil.a(24));
        layoutParams.setMargins(DTBAdUtil.a(14), DTBAdUtil.a(14), 0, 0);
        this.f6389d.addView(imageView, layoutParams);
        imageView.setImageDrawable(a.b(this.i.getContext(), R.drawable.mraid_close));
        if (onTouchListener != null) {
            this.f6389d.setOnTouchListener(onTouchListener);
        } else {
            this.f6389d.setOnTouchListener(new View.OnTouchListener() { // from class: com.amazon.device.ads._$$Lambda$DTBAdMRAIDController$YBWqDY3uPvwbGQllGWNfip05Sek
                @Override // android.view.View.OnTouchListener
                public final boolean onTouch(View view, MotionEvent motionEvent) {
                    boolean a2;
                    a2 = DTBAdMRAIDController.this.a(view, motionEvent);
                    return a2;
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(MraidStateType mraidStateType) {
        this.g = mraidStateType;
        if (mraidStateType == MraidStateType.HIDDEN) {
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.amazon.device.ads._$$Lambda$DTBAdMRAIDController$fua9WpRRvzD_MvsLHDJEw8zrZR4
                @Override // java.lang.Runnable
                public final void run() {
                    DTBAdMRAIDController.this.v();
                }
            });
        }
        h();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(String str) {
        c(String.format("window.mraidBridge.service.acknowledgement('%s');", str));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(String str, String str2) {
        c(String.format("window.mraidBridge.event.error('%s','%s');", str2, str));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void a(Map<String, Object> map);

    public final void a(boolean z) {
        "Set useCustomClose to ".concat(String.valueOf(z));
        DtbLog.b();
        this.e = z;
        a("useCustomClose");
        DTBMRAIDCloseButtonListener dTBMRAIDCloseButtonListener = this.f;
        if (dTBMRAIDCloseButtonListener != null) {
            dTBMRAIDCloseButtonListener.h();
        }
    }

    @Override // com.amazon.device.ads.DTBActivityListener
    public void b() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b(int i, int i2) {
        r();
        c(i, i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b(String str) {
        PackageManager packageManager = this.i.getContext().getPackageManager();
        try {
            Uri parse = Uri.parse(str);
            if ("amazonmobile".equals(parse.getScheme()) && parse.getHost().equals(Constants.INTENT_SCHEME)) {
                String[] split = str.split("intent=");
                if (split.length > 1) {
                    for (int i = 1; i < split.length; i++) {
                        String str2 = split[i];
                        String str3 = str2;
                        String str4 = str2;
                        String str5 = str2;
                        try {
                            if (str2.lastIndexOf("&") == str2.length() - 1) {
                                str3 = str2.substring(0, str2.length() - 1);
                            }
                            String decode = URLDecoder.decode(str3, "UTF-8");
                            this.i.getContext().startActivity(new Intent("android.intent.action.VIEW", Uri.parse(decode)));
                            str4 = decode;
                            str5 = decode;
                            j();
                            break;
                        } catch (ActivityNotFoundException e) {
                            StringBuilder sb = new StringBuilder("Intent:");
                            sb.append(str5);
                            sb.append(" not found.");
                            DtbLog.b();
                            a("open", "requested activity not found");
                        } catch (UnsupportedEncodingException e2) {
                            DtbLog.b();
                        }
                    }
                }
            } else if ("com.amazon.mobile.shopping".equals(parse.getScheme())) {
                try {
                    if (packageManager.getLaunchIntentForPackage("com.amazon.mShop.android.shopping") != null) {
                        Intent intent = new Intent("android.intent.action.VIEW");
                        intent.setData(parse);
                        AdRegistration.a().startActivity(intent);
                    } else {
                        Intent intent2 = new Intent("android.intent.action.VIEW");
                        intent2.setData(parse);
                        int indexOf = str.indexOf("products/");
                        if (indexOf > 0) {
                            intent2.setData(Uri.parse("https://www.amazon.com/dp/" + str.substring(indexOf + 9)));
                            AdRegistration.a().startActivity(intent2);
                        }
                    }
                    j();
                } catch (ActivityNotFoundException e3) {
                    DtbLog.c(f6386b, "Activity not found com.amazon.mobile.shopping");
                    a("open", "mshop activity not found");
                }
            } else if ("market".equals(parse.getScheme()) || "amzn".equals(parse.getScheme())) {
                try {
                    Intent intent3 = new Intent("android.intent.action.VIEW");
                    intent3.setData(parse);
                    AdRegistration.a().startActivity(intent3);
                    j();
                } catch (ActivityNotFoundException e4) {
                    try {
                        DTBAdUtil.a(this, parse);
                    } catch (ActivityNotFoundException e5) {
                        DtbLog.c(f6386b, "App stores and browsers not found");
                        a("open", "app stores and browsers not found");
                    }
                }
            } else {
                Uri uri = parse;
                if (parse.getScheme() == null) {
                    uri = Uri.parse("https:".concat(String.valueOf(str)));
                }
                try {
                    this.i.getContext().startActivity(new Intent("android.intent.action.VIEW", uri));
                    j();
                } catch (Exception e6) {
                    DtbLog.d(f6386b, e6.getMessage());
                    a("open", "invalid url ".concat(String.valueOf(str)));
                }
            }
            a("open");
        } catch (Exception e7) {
            a("open", "invalid url ".concat(String.valueOf(str)));
            a("open");
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void b(Map<String, Object> map);

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b(boolean z) {
        Boolean bool = this.m;
        if (bool == null || bool.booleanValue() != z) {
            if (this.o) {
                d(z);
            }
            this.m = Boolean.valueOf(z);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void c();

    /* JADX INFO: Access modifiers changed from: protected */
    public final void c(int i, int i2) {
        r();
        e(i, i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void c(boolean z) {
        "SET MRAID Visible ".concat(String.valueOf(z));
        DtbLog.b();
        b(z);
    }

    protected String d() {
        return "";
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void e();

    /* JADX INFO: Access modifiers changed from: protected */
    public void f() {
        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.amazon.device.ads._$$Lambda$DTBAdMRAIDController$Y21uLHl4QzKC_tLmWrzol7mvBCA
            @Override // java.lang.Runnable
            public final void run() {
                DTBAdMRAIDController.this.u();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void g() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void i() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void j();

    /* JADX INFO: Access modifiers changed from: protected */
    public void k() {
        a(MraidFirePixelCommand.b());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void l() {
        m();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void m() {
        String str = this.i.f;
        String str2 = this.i.g;
        if (str != null) {
            DTBMetricsProcessor.a().a(DTBMetricReport.a(str, str2), DTBMetricsProcessor.f6449d);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void n() {
        String str = this.i.f;
        String str2 = this.i.g;
        if (str != null && !this.l) {
            int time = (int) (new Date().getTime() - this.i.e);
            DTBMetricsProcessor a2 = DTBMetricsProcessor.a();
            a2.a(DTBMetricReport.a(DTBMetricReport.a(str, str2), DTBMetricsProcessor.f6448c, time));
            a2.b();
            this.l = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void o() throws JSONException {
        n();
        this.f6388c = true;
        SDKUtilities.SimpleSize c2 = DTBAdUtil.c(this.i);
        c(String.format("window.mraidBridge.property.setMaxSize({'width':%d, 'height':%d});", Integer.valueOf(c2.f6525a), Integer.valueOf(c2.f6526b)));
        SDKUtilities.SimpleSize d2 = DTBAdUtil.d(this.i);
        c(String.format("window.mraidBridge.property.setScreenSize({'width':%d, 'height':%d});", Integer.valueOf(d2.f6525a), Integer.valueOf(d2.f6526b)));
        if (this.i.f6419d) {
            q();
        }
        a("window.mraidBridge.property.setSupports", MraidProperty.g.f6518a);
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("type", d());
        a("window.mraidBridge.property.setPlacementType", jSONObject);
        int a2 = DisplayUtils.a();
        String str = a2 != 1 ? a2 != 2 ? BuildConfig.VERSION_NAME : EnvironmentInfo.DeviceInfo.ORIENTATION_LANDSCAPE : EnvironmentInfo.DeviceInfo.ORIENTATION_PORTRAIT;
        boolean b2 = DisplayUtils.b();
        JSONObject jSONObject2 = new JSONObject();
        jSONObject2.put("orientation", str);
        jSONObject2.put("locked", b2);
        a("window.mraidBridge.property.setCurrentAppOrientation", jSONObject2);
        a(p());
        c("window.mraidBridge.event.ready();");
        if (AdRegistration.g()) {
            c("window.mraidBridge.service.debug('enable');");
        }
    }

    protected MraidStateType p() {
        return MraidStateType.DEFAULT;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void q() {
        if (this.f6388c) {
            int[] iArr = new int[2];
            this.i.getLocationOnScreen(iArr);
            a(iArr[0], iArr[1], this.i.getWidth(), this.i.getHeight());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void r() {
        ViewGroup viewGroup;
        LinearLayout linearLayout = this.f6389d;
        if (linearLayout != null && (viewGroup = (ViewGroup) linearLayout.getParent()) != null) {
            viewGroup.removeView(this.f6389d);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void s() {
        LinearLayout linearLayout = new LinearLayout(this.i.getContext());
        this.f6389d = linearLayout;
        linearLayout.setVisibility(this.e ? 4 : 0);
        this.f6389d.setOrientation(1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void t() {
        int i;
        a("jsready");
        this.o = true;
        Boolean bool = this.m;
        if (bool != null) {
            d(bool.booleanValue());
        }
        MraidExposure mraidExposure = this.n;
        if (mraidExposure != null) {
            b(mraidExposure.f6393a, this.n.f6394b);
        }
        int i2 = this.j;
        if (i2 > 0 && (i = this.k) > 0) {
            d(i2, i);
        }
    }
}
