package com.amazon.device.ads;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
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
import com.amazon.device.ads.DTBAdMRAIDController;
import com.amazon.device.ads.DTBAdView;
import com.amazon.device.ads.SDKUtilities;
import com.huawei.hms.framework.common.ContainerUtils;
import com.mopub.volley.BuildConfig;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.StringConstant;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.Map;
import java.util.Objects;
import org.json.JSONException;
import org.json.JSONObject;
import p1727n3.p1734b.p1736b.p1737a.C25440a;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DTBAdMRAIDController.class */
public abstract class DTBAdMRAIDController implements DTBActivityListener {
    public static final String LOG_TAG = "DTBAdMRAIDController";
    public static final String MRAID_CLOSE = "window.mraid.close();";
    private static final String MRAID_READY = "window.mraidBridge.event.ready();";
    public DTBAdView adView;
    public LinearLayout closeIndicatorRegion;
    public DTBMRAIDCloseButtonListener customButtonListener;
    private Rect lastRect;
    private MraidExposure lastReportedExposure;
    private Boolean lastViewabilityState;
    private boolean loadReportSubmitted;
    public boolean pageLoaded = false;
    public boolean useCustomClose = false;
    private int lastReportedSizeChangeWidth = -1;
    private int lastReportedSizeChangeHeight = -1;
    public MraidStateType state = MraidStateType.LOADING;
    private boolean jsReady = false;
    private boolean isTwoPartExpand = false;

    /* renamed from: com.amazon.device.ads.DTBAdMRAIDController$2 */
    /* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DTBAdMRAIDController$2.class */
    public static /* synthetic */ class C04442 {
        public static final /* synthetic */ int[] $SwitchMap$com$amazon$device$ads$MraidStateType;

        static {
            MraidStateType.values();
            int[] iArr = new int[5];
            $SwitchMap$com$amazon$device$ads$MraidStateType = iArr;
            try {
                MraidStateType mraidStateType = MraidStateType.LOADING;
                iArr[0] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                int[] iArr2 = $SwitchMap$com$amazon$device$ads$MraidStateType;
                MraidStateType mraidStateType2 = MraidStateType.DEFAULT;
                iArr2[1] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                int[] iArr3 = $SwitchMap$com$amazon$device$ads$MraidStateType;
                MraidStateType mraidStateType3 = MraidStateType.RESIZED;
                iArr3[3] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                int[] iArr4 = $SwitchMap$com$amazon$device$ads$MraidStateType;
                MraidStateType mraidStateType4 = MraidStateType.EXPANDED;
                iArr4[2] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                int[] iArr5 = $SwitchMap$com$amazon$device$ads$MraidStateType;
                MraidStateType mraidStateType5 = MraidStateType.HIDDEN;
                iArr5[4] = 5;
            } catch (NoSuchFieldError e5) {
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DTBAdMRAIDController$MraidExposure.class */
    public class MraidExposure {
        public int percent;
        public Rect rect;

        public MraidExposure(int i, Rect rect) {
            DTBAdMRAIDController.this = r6;
            this.percent = i;
            this.rect = new Rect(rect);
        }
    }

    static {
        MraidCommand.registerCommand(MraidOpenCommand.getMraidName(), MraidOpenCommand.class);
        MraidCommand.registerCommand(MraidCloseCommand.getMraidName(), MraidCloseCommand.class);
        MraidCommand.registerCommand(MraidUnloadCommand.getMraidName(), MraidUnloadCommand.class);
        MraidCommand.registerCommand(MraidResizeCommand.getMraidName(), MraidResizeCommand.class);
        MraidCommand.registerCommand(MraidExpandCommand.getMraidName(), MraidExpandCommand.class);
        MraidCommand.registerCommand(MraidUseCustomCloseCommand.getMraidName(), MraidUseCustomCloseCommand.class);
        MraidCommand.registerCommand(MraidJSReadyCommand.getMraidName(), MraidJSReadyCommand.class);
        MraidCommand.registerCommand(MraidFirePixelCommand.getMraidName(), MraidFirePixelCommand.class);
    }

    public DTBAdMRAIDController(DTBAdView dTBAdView) {
        this.adView = dTBAdView;
    }

    private void evaluateJavascriptMethod(String str, String str2) {
        evaluateJavascript(String.format(C22128a.m8543z2(str, "(%s);"), str2));
    }

    private void evaluateJavascriptMethod(String str, JSONObject jSONObject) {
        evaluateJavascript(String.format(C22128a.m8543z2(str, "(%s);"), jSONObject.toString()));
    }

    private void evaluateJavascriptProperty(String str, JSONObject jSONObject) {
        evaluateJavascript(String.format(C22128a.m8543z2(str, "= %s ;"), jSONObject.toString()));
    }

    private void fireEnforcedExposureChange(int i, Rect rect) {
        evaluateJavascript(String.format("window.mraidBridge.event.exposureChange(%d, { x:%d, y:%d, width:%d, height: %d}, null);", Integer.valueOf(i), Integer.valueOf(DTBAdUtil.pixelsToDeviceIndependenPixels(rect.left)), Integer.valueOf(DTBAdUtil.pixelsToDeviceIndependenPixels(rect.top)), Integer.valueOf(DTBAdUtil.pixelsToDeviceIndependenPixels(rect.right - rect.left)), Integer.valueOf(DTBAdUtil.pixelsToDeviceIndependenPixels(rect.bottom - rect.top))));
    }

    private void fireMaxSizeEvent() {
        SDKUtilities.SimpleSize maxSize = DTBAdUtil.getMaxSize(getAdView());
        evaluateJavascript(String.format("window.mraidBridge.property.setMaxSize({'width':%d, 'height':%d});", Integer.valueOf(maxSize.getWidth()), Integer.valueOf(maxSize.getHeight())));
    }

    private JSONObject formProperties(MraidProperty[] mraidPropertyArr) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        for (MraidProperty mraidProperty : mraidPropertyArr) {
            mraidProperty.formJSON(jSONObject);
        }
        return jSONObject;
    }

    private MraidProperty getCurrentStateProperty() {
        int ordinal = this.state.ordinal();
        return ordinal != 0 ? ordinal != 1 ? ordinal != 2 ? ordinal != 3 ? ordinal != 4 ? MraidProperty.STATE_DEFAULT_PROPERTY : MraidProperty.STATE_HIDDEN_PROPERTY : MraidProperty.STATE_RESIZED_PROPERTY : MraidProperty.STATE_EXPANDED_PROPERTY : MraidProperty.STATE_DEFAULT_PROPERTY : MraidProperty.STATE_LOADING_PROPERTY;
    }

    public void addCloseIndicator(int i, int i2) {
        removeCloseIndicator();
        addCloseIndicator(i, i2, false);
    }

    public void addCloseIndicator(int i, int i2, View.OnTouchListener onTouchListener, boolean z) {
        createContentIndicator();
        DTBAdUtil.getRootView(getAdView()).addView(this.closeIndicatorRegion, DTBAdUtil.sizeToDevicePixels(50), DTBAdUtil.sizeToDevicePixels(50));
        this.closeIndicatorRegion.setX(i - DTBAdUtil.sizeToDevicePixels(50));
        this.closeIndicatorRegion.setY(i2);
        setCloseIndicatorContent(onTouchListener);
    }

    public void addCloseIndicator(int i, int i2, boolean z) {
        removeCloseIndicator();
        addCloseIndicator(i, i2, null, z);
    }

    public void closeExpandedPartTwo() {
    }

    public void commandCompleted(String str) {
        evaluateJavascript(String.format("window.mraidBridge.service.acknowledgement('%s');", str));
    }

    public void createContentIndicator() {
        LinearLayout linearLayout = new LinearLayout(getAdView().getContext());
        this.closeIndicatorRegion = linearLayout;
        linearLayout.setVisibility(this.useCustomClose ? 4 : 0);
        this.closeIndicatorRegion.setOrientation(1);
    }

    public void createLoadReport() {
        String bidId = this.adView.getBidId();
        String hostname = this.adView.getHostname();
        if (bidId == null || this.loadReportSubmitted) {
            return;
        }
        DTBMetricsProcessor.getInstance().submitLatencyReportBidId(DTBMetricReport.addBid(bidId, hostname), DTBMetricsProcessor.REPORT_LOAD_LATENCY, (int) (C22128a.m8638c() - this.adView.getStartTime()));
        this.loadReportSubmitted = true;
    }

    public void evaluateJavascript(final String str) {
        String str2 = LOG_TAG;
        DtbLog.debug(str2, "MRAID Evaluate JSScript:" + str);
        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: e.c.b.a.q
            @Override // java.lang.Runnable
            public final void run() {
                final DTBAdMRAIDController dTBAdMRAIDController = DTBAdMRAIDController.this;
                final String str3 = str;
                if (dTBAdMRAIDController.getAdView() != null) {
                    dTBAdMRAIDController.getAdView().evaluateJavascript(str3, new ValueCallback<String>() { // from class: com.amazon.device.ads.DTBAdMRAIDController.1
                        public void onReceiveValue(String str4) {
                            if (str4 == null || AnalyticsConstants.NULL.equals(str4)) {
                                return;
                            }
                            String str5 = DTBAdMRAIDController.LOG_TAG;
                            StringBuilder m8692L = C22128a.m8692L("Value received:", str4, " for script ");
                            m8692L.append(str3);
                            DtbLog.debug(str5, m8692L.toString());
                        }
                    });
                }
            }
        });
    }

    public void evaluateJavascript(final String str, final ValueCallback<String> valueCallback) {
        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: e.c.b.a.s
            @Override // java.lang.Runnable
            public final void run() {
                DTBAdMRAIDController dTBAdMRAIDController = DTBAdMRAIDController.this;
                dTBAdMRAIDController.getAdView().evaluateJavascript(str, valueCallback);
            }
        });
    }

    public abstract void expand(Map<String, Object> map);

    public void fireEnforcedSizeChange(int i, int i2) {
        evaluateJavascript(String.format("window.mraidBridge.event.sizeChange(%d, %d);", Integer.valueOf(i), Integer.valueOf(i2)));
    }

    public void fireEnforcedViewableChange(boolean z) {
        evaluateJavascript(String.format("window.mraidBridge.event.viewableChange(%s);", z ? "true" : "false"));
    }

    public void fireErrorEvent(String str, String str2) {
        evaluateJavascript(String.format("window.mraidBridge.event.error('%s','%s');", str2, str));
    }

    public void fireExposureChange(int i, Rect rect) {
        int i2 = rect.right;
        if (this.jsReady) {
            fireEnforcedExposureChange(i, rect);
        } else {
            this.lastReportedExposure = new MraidExposure(i, rect);
        }
    }

    public void fireMRAIDReadyEvent() {
        evaluateJavascript(MRAID_READY);
    }

    public void fireMRAIDSupports() {
        evaluateJavascriptMethod("window.mraidBridge.property.setSupports", MraidProperty.SUPPORTS_PROPERTY.getData());
    }

    public void firePlacementType() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("type", getPlacementType());
        evaluateJavascriptMethod("window.mraidBridge.property.setPlacementType", jSONObject);
    }

    public void fireScreenSizeEvent() {
        SDKUtilities.SimpleSize screenSize = DTBAdUtil.getScreenSize(getAdView());
        evaluateJavascript(String.format("window.mraidBridge.property.setScreenSize({'width':%d, 'height':%d});", Integer.valueOf(screenSize.getWidth()), Integer.valueOf(screenSize.getHeight())));
    }

    public void fireSizeChange(int i, int i2) {
        if (this.lastReportedSizeChangeWidth == i && this.lastReportedSizeChangeHeight == i2) {
            return;
        }
        this.lastReportedSizeChangeWidth = i;
        this.lastReportedSizeChangeHeight = i2;
        if (!this.jsReady) {
            return;
        }
        fireEnforcedSizeChange(i, i2);
    }

    public void fireStateChangeEvent() {
        try {
            JSONObject formProperties = formProperties(new MraidProperty[]{getCurrentStateProperty()});
            String str = LOG_TAG;
            DtbLog.debug(str, "State was changed to " + formProperties.toString() + " for controller " + this);
            evaluateJavascript(String.format("window.mraidBridge.event.stateChange(%s);", formProperties.toString()));
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }

    public void fireViewableChange(boolean z) {
        Boolean bool = this.lastViewabilityState;
        if (bool == null || bool.booleanValue() != z) {
            if (this.jsReady) {
                fireEnforcedViewableChange(z);
            }
            this.lastViewabilityState = Boolean.valueOf(z);
        }
    }

    public DTBAdView getAdView() {
        return this.adView;
    }

    public Context getContext() {
        return getAdView().getContext();
    }

    public MraidStateType getInitialStateType() {
        return MraidStateType.DEFAULT;
    }

    public String getPlacementType() {
        return "";
    }

    public void impressionFired() {
        commandCompleted(MraidFirePixelCommand.getMraidName());
    }

    public boolean isTwoPartExpand() {
        return this.isTwoPartExpand;
    }

    public void jsReady() {
        int i;
        commandCompleted(MraidJSReadyCommand.NAME);
        this.jsReady = true;
        Boolean bool = this.lastViewabilityState;
        if (bool != null) {
            fireEnforcedViewableChange(bool.booleanValue());
        }
        MraidExposure mraidExposure = this.lastReportedExposure;
        if (mraidExposure != null) {
            fireEnforcedExposureChange(mraidExposure.percent, mraidExposure.rect);
        }
        int i2 = this.lastReportedSizeChangeWidth;
        if (i2 <= 0 || (i = this.lastReportedSizeChangeHeight) <= 0) {
            return;
        }
        fireEnforcedSizeChange(i2, i);
    }

    @Override // com.amazon.device.ads.DTBActivityListener
    public void onActivityDestroyed(Activity activity) {
    }

    @Override // com.amazon.device.ads.DTBActivityListener
    public void onActivityPaused(Activity activity) {
    }

    @Override // com.amazon.device.ads.DTBActivityListener
    public void onActivityResumed(Activity activity) {
    }

    @Override // com.amazon.device.ads.DTBActivityListener
    public void onActivityStopped(Activity activity) {
    }

    public void onAdClicked() {
    }

    public abstract void onAdLeftApplication();

    public void onAdOpened(DTBAdView dTBAdView) {
    }

    public void onAdRemoved() {
    }

    public void onLoadError() {
        String bidId = this.adView.getBidId();
        String hostname = this.adView.getHostname();
        if (bidId != null) {
            DTBMetricsProcessor.getInstance().submitSimpleReportBidId(DTBMetricReport.addBid(bidId, hostname), DTBMetricsProcessor.REPORT_LOAD_FAILURE);
        }
        passLoadError();
    }

    public void onLoadError(String str, int i) {
        onLoadError();
    }

    public abstract void onMRAIDClose();

    public void onMRAIDUnload() {
        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: e.c.b.a.t
            @Override // java.lang.Runnable
            public final void run() {
                DTBAdMRAIDController.this.getAdView().loadUrl("about:blank");
            }
        });
    }

    public abstract void onPageLoad();

    public void onPositionChanged(Rect rect) {
        Rect rect2 = this.lastRect;
        if (rect2 == null || !rect2.equals(rect)) {
            int i = rect.right - rect.left;
            int i2 = rect.bottom - rect.top;
            Rect rect3 = this.lastRect;
            boolean z = true;
            if (rect3 != null) {
                int i3 = rect3.right;
                int i4 = rect3.left;
                int i5 = rect3.bottom;
                int i6 = rect3.top;
                z = true;
                if (Math.abs((i3 - i4) - i) <= 1) {
                    z = Math.abs((i5 - i6) - i2) > 1;
                }
            }
            setCurrentPositionProperty();
            if (z) {
                fireSizeChange(DTBAdUtil.pixelsToDeviceIndependenPixels(i), DTBAdUtil.pixelsToDeviceIndependenPixels(i2));
            }
            this.lastRect = rect;
        }
    }

    public abstract void onResize(Map<String, Object> map);

    public void onViewabilityChanged(boolean z) {
        DtbLog.debug("SET MRAID Visible " + z);
        fireViewableChange(z);
    }

    public void openUrl(String str) {
        int indexOf;
        PackageManager packageManager = this.adView.getContext().getPackageManager();
        try {
            Uri parse = Uri.parse(str);
            if (DtbConstants.AMAZON_MOBILE.equals(parse.getScheme()) && parse.getHost().equals("intent")) {
                String[] split = str.split("intent=");
                if (split.length > 1) {
                    for (int i = 1; i < split.length; i++) {
                        String str2 = split[i];
                        String str3 = str2;
                        String str4 = str2;
                        String str5 = str2;
                        try {
                            if (str2.lastIndexOf(ContainerUtils.FIELD_DELIMITER) == str2.length() - 1) {
                                str3 = str2.substring(0, str2.length() - 1);
                            }
                            String str6 = str3;
                            String decode = URLDecoder.decode(str3, StringConstant.UTF8);
                            getContext().startActivity(new Intent("android.intent.action.VIEW", Uri.parse(decode)));
                            str4 = decode;
                            str5 = decode;
                            onAdLeftApplication();
                            break;
                        } catch (ActivityNotFoundException e) {
                            DtbLog.debug("Intent:" + str5 + " not found.");
                            fireErrorEvent(MraidOpenCommand.NAME, "requested activity not found");
                        } catch (UnsupportedEncodingException e2) {
                            DtbLog.debug("Unsupported encoding");
                        }
                    }
                }
            } else if (DTBAdViewSupportClient.MOBILE_SHOPPING_SCHEME.equals(parse.getScheme())) {
                try {
                    if (packageManager.getLaunchIntentForPackage("com.amazon.mShop.android.shopping") != null) {
                        Intent intent = new Intent("android.intent.action.VIEW");
                        intent.setData(parse);
                        AdRegistration.getCurrentActivity().startActivity(intent);
                    } else {
                        Intent intent2 = new Intent("android.intent.action.VIEW");
                        intent2.setData(parse);
                        if (str.indexOf("products/") > 0) {
                            intent2.setData(Uri.parse("https://www.amazon.com/dp/" + str.substring(indexOf + 9)));
                            AdRegistration.getCurrentActivity().startActivity(intent2);
                        }
                    }
                    onAdLeftApplication();
                } catch (ActivityNotFoundException e3) {
                    DtbLog.debug(LOG_TAG, "Activity not found com.amazon.mobile.shopping");
                    fireErrorEvent(MraidOpenCommand.NAME, "mshop activity not found");
                } catch (NullPointerException e4) {
                    DtbLog.debug(LOG_TAG, "Current activity from AdRegistration not found");
                    fireErrorEvent(MraidOpenCommand.NAME, "current activity from AdRegistration not found");
                }
            } else if (DTBAdViewSupportClient.MARKET_SCHEME.equals(parse.getScheme()) || DTBAdViewSupportClient.AMAZON_SCHEME.equals(parse.getScheme())) {
                try {
                    Intent intent3 = new Intent("android.intent.action.VIEW");
                    intent3.setData(parse);
                    AdRegistration.getCurrentActivity().startActivity(intent3);
                    onAdLeftApplication();
                } catch (ActivityNotFoundException e5) {
                    try {
                        DTBAdUtil.directAppStoreLinkToBrowser(this, parse);
                    } catch (ActivityNotFoundException e6) {
                        DtbLog.debug(LOG_TAG, "App stores and browsers not found");
                        fireErrorEvent(MraidOpenCommand.NAME, "app stores and browsers not found");
                    } catch (NullPointerException e7) {
                        DtbLog.debug(LOG_TAG, "Current activity from AdRegistration not found");
                        fireErrorEvent(MraidOpenCommand.NAME, "current activity from AdRegistration not found");
                    }
                } catch (NullPointerException e8) {
                    DtbLog.debug(LOG_TAG, "Current activity from AdRegistration not found");
                    fireErrorEvent(MraidOpenCommand.NAME, "current activity from AdRegistration not found");
                }
            } else {
                Uri uri = parse;
                if (parse.getScheme() == null) {
                    uri = Uri.parse("https:" + str);
                }
                Intent intent4 = new Intent("android.intent.action.VIEW", uri);
                try {
                    intent4.addFlags(268435456);
                    getContext().startActivity(intent4);
                    onAdLeftApplication();
                } catch (Exception e9) {
                    DtbLog.error(LOG_TAG, e9.getMessage());
                    fireErrorEvent(MraidOpenCommand.NAME, "invalid url " + str);
                }
            }
            commandCompleted(MraidOpenCommand.NAME);
        } catch (Exception e10) {
            fireErrorEvent(MraidOpenCommand.NAME, "invalid url " + str);
            commandCompleted(MraidOpenCommand.NAME);
        }
    }

    public void passLoadError() {
    }

    public void prepareMraid() throws JSONException {
        createLoadReport();
        this.pageLoaded = true;
        fireMaxSizeEvent();
        fireScreenSizeEvent();
        if (getAdView().isVisible()) {
            setCurrentPositionProperty();
        }
        fireMRAIDSupports();
        firePlacementType();
        setCurrentAppOrientation();
        setState(getInitialStateType());
        fireMRAIDReadyEvent();
        if (AdRegistration.isTestMode()) {
            evaluateJavascript("window.mraidBridge.service.debug('enable');");
        }
    }

    public void removeCloseIndicator() {
        ViewGroup viewGroup;
        LinearLayout linearLayout = this.closeIndicatorRegion;
        if (linearLayout == null || (viewGroup = (ViewGroup) linearLayout.getParent()) == null) {
            return;
        }
        viewGroup.removeView(this.closeIndicatorRegion);
    }

    public void setCloseIndicatorContent(View.OnTouchListener onTouchListener) {
        this.closeIndicatorRegion.setBackgroundColor(0);
        LinearLayout linearLayout = this.closeIndicatorRegion;
        int i = C0458R.C0460id.mraid_close_indicator;
        linearLayout.setId(i);
        ImageView imageView = new ImageView(getAdView().getContext());
        imageView.setId(i);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(DTBAdUtil.sizeToDevicePixels(24), DTBAdUtil.sizeToDevicePixels(24));
        layoutParams.setMargins(DTBAdUtil.sizeToDevicePixels(14), DTBAdUtil.sizeToDevicePixels(14), 0, 0);
        this.closeIndicatorRegion.addView(imageView, layoutParams);
        imageView.setImageDrawable(C25440a.m3540a(getAdView().getContext(), C0458R.C0459drawable.mraid_close));
        if (onTouchListener != null) {
            this.closeIndicatorRegion.setOnTouchListener(onTouchListener);
        } else {
            this.closeIndicatorRegion.setOnTouchListener(new View.OnTouchListener() { // from class: e.c.b.a.u
                @Override // android.view.View.OnTouchListener
                public final boolean onTouch(View view, MotionEvent motionEvent) {
                    DTBAdMRAIDController dTBAdMRAIDController = DTBAdMRAIDController.this;
                    Objects.requireNonNull(dTBAdMRAIDController);
                    if (motionEvent.getAction() == 0) {
                        dTBAdMRAIDController.evaluateJavascript(DTBAdMRAIDController.MRAID_CLOSE);
                        ((ViewGroup) view.getParent()).removeView(view);
                        dTBAdMRAIDController.closeIndicatorRegion = null;
                        return true;
                    }
                    return true;
                }
            });
        }
    }

    public void setCurrentAppOrientation() throws JSONException {
        int determineSimpleOrientation = DisplayUtils.determineSimpleOrientation();
        String str = determineSimpleOrientation != 1 ? determineSimpleOrientation != 2 ? BuildConfig.VERSION_NAME : "landscape" : "portrait";
        boolean isRotationLocked = DisplayUtils.isRotationLocked();
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("orientation", str);
        jSONObject.put("locked", isRotationLocked);
        evaluateJavascriptMethod("window.mraidBridge.property.setCurrentAppOrientation", jSONObject);
    }

    public void setCurrentPositionProperty() {
        if (!this.pageLoaded) {
            return;
        }
        int[] iArr = new int[2];
        getAdView().getLocationOnScreen(iArr);
        setCurrentPositionProperty(iArr[0], iArr[1], getAdView().getWidth(), getAdView().getHeight());
    }

    public void setCurrentPositionProperty(float f, float f2) {
        if (!this.pageLoaded) {
            return;
        }
        int[] iArr = new int[2];
        getAdView().getLocationOnScreen(iArr);
        setCurrentPositionProperty(iArr[0], iArr[1], f, f2);
    }

    public void setCurrentPositionProperty(int i, int i2, float f, float f2) {
        if (!this.pageLoaded) {
            return;
        }
        evaluateJavascript(String.format("window.mraidBridge.property.setCurrentPosition({'xPos':%.1f, 'yPos':%.1f, 'width': %.1f, 'height': %.1f});", Float.valueOf(DTBAdUtil.pixelsToDeviceIndependenPixels(i)), Float.valueOf(DTBAdUtil.pixelsToDeviceIndependenPixels(i2)), Float.valueOf(DTBAdUtil.pixelsToDeviceIndependenPixels((int) f)), Float.valueOf(DTBAdUtil.pixelsToDeviceIndependenPixels((int) f2))));
    }

    public void setCustomButtonListener(DTBMRAIDCloseButtonListener dTBMRAIDCloseButtonListener) {
        this.customButtonListener = dTBMRAIDCloseButtonListener;
    }

    public void setState(MraidStateType mraidStateType) {
        this.state = mraidStateType;
        if (mraidStateType == MraidStateType.HIDDEN) {
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: e.c.b.a.r
                @Override // java.lang.Runnable
                public final void run() {
                    DTBAdView adView = DTBAdMRAIDController.this.getAdView();
                    if (adView != null) {
                        adView.setVisibility(8);
                    }
                }
            });
        }
        fireStateChangeEvent();
    }

    public void setTwoPartExpand(boolean z) {
        this.isTwoPartExpand = z;
    }

    public void setUseCustomClose(boolean z) {
        DtbLog.debug("Set useCustomClose to " + z);
        this.useCustomClose = z;
        commandCompleted(MraidUseCustomCloseCommand.NAME);
        DTBMRAIDCloseButtonListener dTBMRAIDCloseButtonListener = this.customButtonListener;
        if (dTBMRAIDCloseButtonListener != null) {
            dTBMRAIDCloseButtonListener.useCustomButtonUpdated();
        }
    }
}
