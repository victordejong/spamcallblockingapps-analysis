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
import androidx.appcompat.p017a.p018a.C0153a;
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
/* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DTBAdMRAIDController.class */
public abstract class DTBAdMRAIDController implements DTBActivityListener {

    /* renamed from: b */
    static final String f11715b = "DTBAdMRAIDController";

    /* renamed from: a */
    private Rect f11716a;

    /* renamed from: d */
    LinearLayout f11718d;

    /* renamed from: f */
    DTBMRAIDCloseButtonListener f11720f;

    /* renamed from: i */
    DTBAdView f11723i;

    /* renamed from: l */
    private boolean f11726l;

    /* renamed from: m */
    private Boolean f11727m;

    /* renamed from: n */
    private MraidExposure f11728n;

    /* renamed from: c */
    boolean f11717c = false;

    /* renamed from: e */
    protected boolean f11719e = false;

    /* renamed from: j */
    private int f11724j = -1;

    /* renamed from: k */
    private int f11725k = -1;

    /* renamed from: g */
    protected MraidStateType f11721g = MraidStateType.LOADING;

    /* renamed from: o */
    private boolean f11729o = false;

    /* renamed from: h */
    boolean f11722h = false;

    /* renamed from: com.amazon.device.ads.DTBAdMRAIDController$2 */
    /* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DTBAdMRAIDController$2.class */
    public static /* synthetic */ class C32592 {

        /* renamed from: a */
        static final /* synthetic */ int[] f11732a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0041 -> B:22:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0045 -> B:20:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x0049 -> B:18:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x004d -> B:24:0x0035). Please submit an issue!!! */
        static {
            int[] iArr = new int[MraidStateType.values().length];
            f11732a = iArr;
            try {
                iArr[MraidStateType.LOADING.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f11732a[MraidStateType.DEFAULT.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f11732a[MraidStateType.RESIZED.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f11732a[MraidStateType.EXPANDED.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f11732a[MraidStateType.HIDDEN.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DTBAdMRAIDController$MraidExposure.class */
    public class MraidExposure {

        /* renamed from: a */
        int f11733a;

        /* renamed from: b */
        Rect f11734b;

        MraidExposure(int i, Rect rect) {
            DTBAdMRAIDController.this = r6;
            this.f11733a = i;
            this.f11734b = new Rect(rect);
        }
    }

    static {
        MraidCommand.m38756a(MraidOpenCommand.m38752b(), MraidOpenCommand.class);
        MraidCommand.m38756a(MraidCloseCommand.m38758b(), MraidCloseCommand.class);
        MraidCommand.m38756a(MraidUnloadCommand.m38749b(), MraidUnloadCommand.class);
        MraidCommand.m38756a(MraidResizeCommand.m38751b(), MraidResizeCommand.class);
        MraidCommand.m38756a(MraidExpandCommand.m38755b(), MraidExpandCommand.class);
        MraidCommand.m38756a(MraidUseCustomCloseCommand.m38746b(), MraidUseCustomCloseCommand.class);
        MraidCommand.m38756a(MraidJSReadyCommand.m38753b(), MraidJSReadyCommand.class);
        MraidCommand.m38756a(MraidFirePixelCommand.m38754b(), MraidFirePixelCommand.class);
    }

    public DTBAdMRAIDController(DTBAdView dTBAdView) {
        this.f11723i = dTBAdView;
    }

    /* renamed from: a */
    private void m39036a(int i, int i2, float f, float f2) {
        if (!this.f11717c) {
            return;
        }
        m39021c(String.format("window.mraidBridge.property.setCurrentPosition({'xPos':%.1f, 'yPos':%.1f, 'width': %.1f, 'height': %.1f});", Float.valueOf(DTBAdUtil.m38955b(i)), Float.valueOf(DTBAdUtil.m38955b(i2)), Float.valueOf(DTBAdUtil.m38955b((int) f)), Float.valueOf(DTBAdUtil.m38955b((int) f2))));
    }

    /* renamed from: a */
    private void m39028a(String str, JSONObject jSONObject) {
        m39021c(String.format(str + "(%s);", jSONObject.toString()));
    }

    /* renamed from: a */
    public /* synthetic */ boolean m39032a(View view, MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            m39021c("window.mraid.close();");
            ((ViewGroup) view.getParent()).removeView(view);
            this.f11718d = null;
            return true;
        }
        return true;
    }

    /* renamed from: b */
    private void m39025b(int i, Rect rect) {
        m39021c(String.format("window.mraidBridge.event.exposureChange(%d, { x:%d, y:%d, width:%d, height: %d}, null);", Integer.valueOf(i), Integer.valueOf(DTBAdUtil.m38955b(rect.left)), Integer.valueOf(DTBAdUtil.m38955b(rect.top)), Integer.valueOf(DTBAdUtil.m38955b(rect.right - rect.left)), Integer.valueOf(DTBAdUtil.m38955b(rect.bottom - rect.top))));
    }

    /* renamed from: c */
    private void m39021c(final String str) {
        DtbLog.m38820c(f11715b, "MRAID Evaluate JSScript:".concat(String.valueOf(str)));
        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.amazon.device.ads._$$Lambda$DTBAdMRAIDController$K1e_LnqXM3JRb9UwNInpoKp5zxY
            @Override // java.lang.Runnable
            public final void run() {
                DTBAdMRAIDController.this.m39018d(str);
            }
        });
    }

    /* renamed from: d */
    private void m39019d(int i, int i2) {
        m39021c(String.format("window.mraidBridge.event.sizeChange(%d, %d);", Integer.valueOf(i), Integer.valueOf(i2)));
    }

    /* renamed from: d */
    public /* synthetic */ void m39018d(final String str) {
        DTBAdView dTBAdView = this.f11723i;
        if (dTBAdView != null) {
            dTBAdView.evaluateJavascript(str, new ValueCallback<String>() { // from class: com.amazon.device.ads.DTBAdMRAIDController.1
                @Override // android.webkit.ValueCallback
                public /* synthetic */ void onReceiveValue(String str2) {
                    String str3 = str2;
                    if (str3 == null || JsonReaderKt.NULL.equals(str3)) {
                        return;
                    }
                    String str4 = DTBAdMRAIDController.f11715b;
                    DtbLog.m38820c(str4, "Value received:" + str3 + " for script " + str);
                }
            });
        }
    }

    /* renamed from: d */
    private void m39017d(boolean z) {
        m39021c(String.format("window.mraidBridge.event.viewableChange(%s);", z ? "true" : "false"));
    }

    /* renamed from: e */
    private void m39016e(int i, int i2) {
        m39008s();
        DTBAdUtil.m38954b(this.f11723i).addView(this.f11718d, DTBAdUtil.m38961a(50), DTBAdUtil.m38961a(50));
        this.f11718d.setX(i - DTBAdUtil.m38961a(50));
        this.f11718d.setY(i2);
        m39033a((View.OnTouchListener) null);
    }

    /* renamed from: h */
    private void m39015h() {
        try {
            int i = C32592.f11732a[this.f11721g.ordinal()];
            StateProperty stateProperty = i != 1 ? i != 2 ? i != 3 ? i != 4 ? i != 5 ? MraidProperty.f11922c : MraidProperty.f11923d : MraidProperty.f11925f : MraidProperty.f11924e : MraidProperty.f11922c : MraidProperty.f11921b;
            JSONObject jSONObject = new JSONObject();
            for (int i2 = 0; i2 <= 0; i2++) {
                new MraidProperty[]{stateProperty}[0].mo38750a(jSONObject);
            }
            DtbLog.m38820c(f11715b, "State was changed to " + jSONObject.toString() + " for controller " + this);
            m39021c(String.format("window.mraidBridge.event.stateChange(%s);", jSONObject.toString()));
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }

    /* renamed from: u */
    public /* synthetic */ void m39006u() {
        this.f11723i.loadUrl("about:blank");
    }

    /* renamed from: v */
    public /* synthetic */ void m39005v() {
        this.f11723i.setVisibility(8);
    }

    @Override // com.amazon.device.ads.DTBActivityListener
    /* renamed from: a */
    public void mo39000a() {
    }

    /* renamed from: a */
    public final void m39038a(float f, float f2) {
        if (!this.f11717c) {
            return;
        }
        int[] iArr = new int[2];
        this.f11723i.getLocationOnScreen(iArr);
        m39036a(iArr[0], iArr[1], f, f2);
    }

    /* renamed from: a */
    public final void m39037a(int i, int i2) {
        if (this.f11724j == i && this.f11725k == i2) {
            return;
        }
        this.f11724j = i;
        this.f11725k = i2;
        if (!this.f11729o) {
            return;
        }
        m39019d(i, i2);
    }

    /* renamed from: a */
    public final void m39035a(int i, Rect rect) {
        int i2 = rect.right;
        int i3 = rect.left;
        int i4 = rect.bottom;
        int i5 = rect.top;
        if (this.f11729o) {
            m39025b(i, rect);
        } else {
            this.f11728n = new MraidExposure(i, rect);
        }
    }

    /* renamed from: a */
    public final void m39034a(Rect rect) {
        Rect rect2 = this.f11716a;
        if (rect2 == null || !rect2.equals(rect)) {
            int i = rect.right - rect.left;
            int i2 = rect.bottom - rect.top;
            Rect rect3 = this.f11716a;
            boolean z = true;
            if (rect3 != null) {
                int i3 = rect3.right;
                int i4 = this.f11716a.left;
                int i5 = this.f11716a.bottom;
                int i6 = this.f11716a.top;
                z = true;
                if (Math.abs((i3 - i4) - i) <= 1) {
                    z = Math.abs((i5 - i6) - i2) > 1;
                }
            }
            m39010q();
            if (z) {
                m39037a(DTBAdUtil.m38955b(i), DTBAdUtil.m38955b(i2));
            }
            this.f11716a = rect;
        }
    }

    /* renamed from: a */
    public final void m39033a(View.OnTouchListener onTouchListener) {
        this.f11718d.setBackgroundColor(0);
        this.f11718d.setId(C3270R.C3272id.mraid_close_indicator);
        ImageView imageView = new ImageView(this.f11723i.getContext());
        imageView.setId(C3270R.C3272id.mraid_close_indicator);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(DTBAdUtil.m38961a(24), DTBAdUtil.m38961a(24));
        layoutParams.setMargins(DTBAdUtil.m38961a(14), DTBAdUtil.m38961a(14), 0, 0);
        this.f11718d.addView(imageView, layoutParams);
        imageView.setImageDrawable(C0153a.m46374b(this.f11723i.getContext(), C3270R.C3271drawable.mraid_close));
        if (onTouchListener != null) {
            this.f11718d.setOnTouchListener(onTouchListener);
        } else {
            this.f11718d.setOnTouchListener(new View.OnTouchListener() { // from class: com.amazon.device.ads._$$Lambda$DTBAdMRAIDController$YBWqDY3uPvwbGQllGWNfip05Sek
                @Override // android.view.View.OnTouchListener
                public final boolean onTouch(View view, MotionEvent motionEvent) {
                    boolean m39032a;
                    m39032a = DTBAdMRAIDController.this.m39032a(view, motionEvent);
                    return m39032a;
                }
            });
        }
    }

    /* renamed from: a */
    public final void m39031a(MraidStateType mraidStateType) {
        this.f11721g = mraidStateType;
        if (mraidStateType == MraidStateType.HIDDEN) {
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.amazon.device.ads._$$Lambda$DTBAdMRAIDController$fua9WpRRvzD_MvsLHDJEw8zrZR4
                @Override // java.lang.Runnable
                public final void run() {
                    DTBAdMRAIDController.this.m39005v();
                }
            });
        }
        m39015h();
    }

    /* renamed from: a */
    public final void m39030a(String str) {
        m39021c(String.format("window.mraidBridge.service.acknowledgement('%s');", str));
    }

    /* renamed from: a */
    public final void m39029a(String str, String str2) {
        m39021c(String.format("window.mraidBridge.event.error('%s','%s');", str2, str));
    }

    /* renamed from: a */
    public abstract void mo38998a(Map<String, Object> map);

    /* renamed from: a */
    public final void m39027a(boolean z) {
        "Set useCustomClose to ".concat(String.valueOf(z));
        DtbLog.m38825b();
        this.f11719e = z;
        m39030a("useCustomClose");
        DTBMRAIDCloseButtonListener dTBMRAIDCloseButtonListener = this.f11720f;
        if (dTBMRAIDCloseButtonListener != null) {
            dTBMRAIDCloseButtonListener.mo38926h();
        }
    }

    @Override // com.amazon.device.ads.DTBActivityListener
    /* renamed from: b */
    public void mo38997b() {
    }

    /* renamed from: b */
    public final void m39026b(int i, int i2) {
        m39009r();
        m39022c(i, i2);
    }

    /* renamed from: b */
    public final void m39024b(String str) {
        int indexOf;
        PackageManager packageManager = this.f11723i.getContext().getPackageManager();
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
                            String str6 = str3;
                            String decode = URLDecoder.decode(str3, "UTF-8");
                            this.f11723i.getContext().startActivity(new Intent("android.intent.action.VIEW", Uri.parse(decode)));
                            str4 = decode;
                            str5 = decode;
                            mo38989j();
                            break;
                        } catch (ActivityNotFoundException e) {
                            StringBuilder sb = new StringBuilder("Intent:");
                            sb.append(str5);
                            sb.append(" not found.");
                            DtbLog.m38825b();
                            m39029a("open", "requested activity not found");
                        } catch (UnsupportedEncodingException e2) {
                            DtbLog.m38825b();
                        }
                    }
                }
            } else if ("com.amazon.mobile.shopping".equals(parse.getScheme())) {
                try {
                    if (packageManager.getLaunchIntentForPackage("com.amazon.mShop.android.shopping") != null) {
                        Intent intent = new Intent("android.intent.action.VIEW");
                        intent.setData(parse);
                        AdRegistration.m39078a().startActivity(intent);
                    } else {
                        Intent intent2 = new Intent("android.intent.action.VIEW");
                        intent2.setData(parse);
                        if (str.indexOf("products/") > 0) {
                            intent2.setData(Uri.parse("https://www.amazon.com/dp/" + str.substring(indexOf + 9)));
                            AdRegistration.m39078a().startActivity(intent2);
                        }
                    }
                    mo38989j();
                } catch (ActivityNotFoundException e3) {
                    DtbLog.m38820c(f11715b, "Activity not found com.amazon.mobile.shopping");
                    m39029a("open", "mshop activity not found");
                }
            } else if ("market".equals(parse.getScheme()) || "amzn".equals(parse.getScheme())) {
                try {
                    Intent intent3 = new Intent("android.intent.action.VIEW");
                    intent3.setData(parse);
                    AdRegistration.m39078a().startActivity(intent3);
                    mo38989j();
                } catch (ActivityNotFoundException e4) {
                    try {
                        DTBAdUtil.m38959a(this, parse);
                    } catch (ActivityNotFoundException e5) {
                        DtbLog.m38820c(f11715b, "App stores and browsers not found");
                        m39029a("open", "app stores and browsers not found");
                    }
                }
            } else {
                Uri uri = parse;
                if (parse.getScheme() == null) {
                    uri = Uri.parse("https:".concat(String.valueOf(str)));
                }
                try {
                    this.f11723i.getContext().startActivity(new Intent("android.intent.action.VIEW", uri));
                    mo38989j();
                } catch (Exception e6) {
                    DtbLog.m38818d(f11715b, e6.getMessage());
                    m39029a("open", "invalid url ".concat(String.valueOf(str)));
                }
            }
            m39030a("open");
        } catch (Exception e7) {
            m39029a("open", "invalid url ".concat(String.valueOf(str)));
            m39030a("open");
        }
    }

    /* renamed from: b */
    public abstract void mo38996b(Map<String, Object> map);

    /* renamed from: b */
    public final void m39023b(boolean z) {
        Boolean bool = this.f11727m;
        if (bool == null || bool.booleanValue() != z) {
            if (this.f11729o) {
                m39017d(z);
            }
            this.f11727m = Boolean.valueOf(z);
        }
    }

    /* renamed from: c */
    public abstract void mo38995c();

    /* renamed from: c */
    public final void m39022c(int i, int i2) {
        m39009r();
        m39016e(i, i2);
    }

    /* renamed from: c */
    public final void m39020c(boolean z) {
        "SET MRAID Visible ".concat(String.valueOf(z));
        DtbLog.m38825b();
        m39023b(z);
    }

    /* renamed from: d */
    protected String mo38993d() {
        return "";
    }

    /* renamed from: e */
    public abstract void mo38992e();

    /* renamed from: f */
    public void mo38991f() {
        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.amazon.device.ads._$$Lambda$DTBAdMRAIDController$Y21uLHl4QzKC_tLmWrzol7mvBCA
            @Override // java.lang.Runnable
            public final void run() {
                DTBAdMRAIDController.this.m39006u();
            }
        });
    }

    /* renamed from: g */
    public void mo39003g() {
    }

    /* renamed from: i */
    public void mo38990i() {
    }

    /* renamed from: j */
    public abstract void mo38989j();

    /* renamed from: k */
    public void mo38988k() {
        m39030a(MraidFirePixelCommand.m38754b());
    }

    /* renamed from: l */
    public final void m39014l() {
        m39013m();
    }

    /* renamed from: m */
    public final void m39013m() {
        String str = this.f11723i.f11784f;
        String str2 = this.f11723i.f11785g;
        if (str != null) {
            DTBMetricsProcessor.m38916a().m38915a(DTBMetricReport.m38921a(str, str2), DTBMetricsProcessor.f11827d);
        }
    }

    /* renamed from: n */
    public final void m39012n() {
        String str = this.f11723i.f11784f;
        String str2 = this.f11723i.f11785g;
        if (str == null || this.f11726l) {
            return;
        }
        int time = (int) (new Date().getTime() - this.f11723i.f11783e);
        DTBMetricsProcessor m38916a = DTBMetricsProcessor.m38916a();
        m38916a.m38914a(DTBMetricReport.m38923a(DTBMetricReport.m38921a(str, str2), DTBMetricsProcessor.f11826c, time));
        m38916a.m38913b();
        this.f11726l = true;
    }

    /* renamed from: o */
    public final void m39011o() throws JSONException {
        m39012n();
        this.f11717c = true;
        SDKUtilities.SimpleSize m38952c = DTBAdUtil.m38952c(this.f11723i);
        m39021c(String.format("window.mraidBridge.property.setMaxSize({'width':%d, 'height':%d});", Integer.valueOf(m38952c.f11932a), Integer.valueOf(m38952c.f11933b)));
        SDKUtilities.SimpleSize m38951d = DTBAdUtil.m38951d(this.f11723i);
        m39021c(String.format("window.mraidBridge.property.setScreenSize({'width':%d, 'height':%d});", Integer.valueOf(m38951d.f11932a), Integer.valueOf(m38951d.f11933b)));
        if (this.f11723i.f11782d) {
            m39010q();
        }
        m39028a("window.mraidBridge.property.setSupports", MraidProperty.f11926g.f11920a);
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("type", mo38993d());
        m39028a("window.mraidBridge.property.setPlacementType", jSONObject);
        int m38903a = DisplayUtils.m38903a();
        Object obj = m38903a != 1 ? m38903a != 2 ? BuildConfig.VERSION_NAME : EnvironmentInfo.DeviceInfo.ORIENTATION_LANDSCAPE : EnvironmentInfo.DeviceInfo.ORIENTATION_PORTRAIT;
        boolean m38902b = DisplayUtils.m38902b();
        JSONObject jSONObject2 = new JSONObject();
        jSONObject2.put("orientation", obj);
        jSONObject2.put("locked", m38902b);
        m39028a("window.mraidBridge.property.setCurrentAppOrientation", jSONObject2);
        m39031a(mo39001p());
        m39021c("window.mraidBridge.event.ready();");
        if (AdRegistration.m39068g()) {
            m39021c("window.mraidBridge.service.debug('enable');");
        }
    }

    /* renamed from: p */
    protected MraidStateType mo39001p() {
        return MraidStateType.DEFAULT;
    }

    /* renamed from: q */
    public final void m39010q() {
        if (!this.f11717c) {
            return;
        }
        int[] iArr = new int[2];
        this.f11723i.getLocationOnScreen(iArr);
        m39036a(iArr[0], iArr[1], this.f11723i.getWidth(), this.f11723i.getHeight());
    }

    /* renamed from: r */
    public final void m39009r() {
        ViewGroup viewGroup;
        LinearLayout linearLayout = this.f11718d;
        if (linearLayout == null || (viewGroup = (ViewGroup) linearLayout.getParent()) == null) {
            return;
        }
        viewGroup.removeView(this.f11718d);
    }

    /* renamed from: s */
    public final void m39008s() {
        LinearLayout linearLayout = new LinearLayout(this.f11723i.getContext());
        this.f11718d = linearLayout;
        linearLayout.setVisibility(this.f11719e ? 4 : 0);
        this.f11718d.setOrientation(1);
    }

    /* renamed from: t */
    public final void m39007t() {
        int i;
        m39030a("jsready");
        this.f11729o = true;
        Boolean bool = this.f11727m;
        if (bool != null) {
            m39017d(bool.booleanValue());
        }
        MraidExposure mraidExposure = this.f11728n;
        if (mraidExposure != null) {
            m39025b(mraidExposure.f11733a, this.f11728n.f11734b);
        }
        int i2 = this.f11724j;
        if (i2 <= 0 || (i = this.f11725k) <= 0) {
            return;
        }
        m39019d(i2, i);
    }
}
