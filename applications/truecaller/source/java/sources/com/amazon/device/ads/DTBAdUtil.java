package com.amazon.device.ads;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.RectShape;
import android.net.Uri;
import android.os.Bundle;
import android.os.Looper;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.WindowManager;
import com.amazon.device.ads.SDKUtilities;
import com.google.android.gms.ads.admanager.AdManagerAdRequest;
import com.tenor.android.core.constant.StringConstant;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import org.json.JSONException;
import org.json.JSONObject;
import p193e.p1425c.p1426a.p1427a.C22016a;
import p193e.p1425c.p1426a.p1427a.p1428b.EnumC22018b;
import p193e.p1425c.p1426a.p1427a.p1428b.EnumC22019c;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DTBAdUtil.class */
public class DTBAdUtil {
    public static final String ADMOB_HEIGHT_KEY = "amazon_custom_event_height";
    public static final String ADMOB_REQUEST_ID_KEY = "amazon_custom_event_request_id";
    public static final String ADMOB_SLOTGROUP_KEY = "amazon_custom_event_slot_group";
    public static final String ADMOB_SLOTUUID_KEY = "amazon_custom_event_slot_uuid";
    public static final String ADMOB_WIDTH_KEY = "amazon_custom_event_width";
    private static final String CUSTOM_EVENT = "amazon_custom_event";
    public static final DTBAdUtil INSTANCE = new DTBAdUtil();
    public static final String LOG_TAG = "DTBAdUtil";

    private DTBAdUtil() {
    }

    public static String buildMopubTargeting(String str, Map<String, String> map) {
        StringBuilder sb = new StringBuilder(str);
        if (map != null) {
            for (Map.Entry<String, String> entry : map.entrySet()) {
                sb.append(",");
                sb.append(entry.getKey());
                sb.append(':');
                sb.append(entry.getValue());
            }
        }
        String str2 = LOG_TAG;
        StringBuilder m8728C = C22128a.m8728C("Targeting String:");
        m8728C.append(sb.toString());
        DtbLog.debug(str2, m8728C.toString());
        return sb.toString();
    }

    public static boolean compareEncodedPrice(String str, String str2) {
        boolean z = false;
        if (!DtbCommonUtils.isNullOrEmpty(str)) {
            if (DtbCommonUtils.isNullOrEmpty(str2)) {
                z = false;
            } else if (str.length() >= 8 && str2.length() >= 8 && str.contains("_spp") && str2.contains("_spp")) {
                String replace = str.replace("_spp", "");
                String replace2 = str2.replace("_spp", "");
                String sb = new StringBuilder(replace).reverse().toString();
                String sb2 = new StringBuilder(replace2).reverse().toString();
                String clientConfigVal = DTBMetricsConfiguration.getClientConfigVal(DTBMetricsConfiguration.SPP_FLAG_DEFAULT_VALUE, DTBMetricsConfiguration.SPP_FLAG_KEY_NAME);
                if (!DtbCommonUtils.isNullOrEmpty(clientConfigVal)) {
                    if ("eq".equals(clientConfigVal)) {
                        boolean z2 = false;
                        if (sb2.compareTo(sb) == 0) {
                            z2 = true;
                        }
                        return z2;
                    } else if ("geq".equals(clientConfigVal)) {
                        boolean z3 = false;
                        if (sb2.compareTo(sb) >= 0) {
                            z3 = true;
                        }
                        return z3;
                    }
                }
                boolean z4 = false;
                if (sb2.compareTo(sb) <= 0) {
                    z4 = true;
                }
                return z4;
            } else {
                z = false;
                if (str.compareTo(str2) == 0) {
                    z = true;
                }
            }
        }
        return z;
    }

    public static Bundle createAdMobBannerRequestBundle(String str) {
        Bundle initializeEmptyBundle = DtbCommonUtils.initializeEmptyBundle();
        try {
            initializeEmptyBundle.putString(ADMOB_SLOTGROUP_KEY, str);
            initializeEmptyBundle.putString(ADMOB_REQUEST_ID_KEY, generateRequestId());
        } catch (RuntimeException e) {
            DtbLog.error(LOG_TAG, "Fail to execute createAdMobBannerRequestBundle method to create bundle for smart banner ads");
            C22016a.m8829a(EnumC22018b.FATAL, EnumC22019c.EXCEPTION, "Fail to execute createAdMobBannerRequestBundle method to create bundle for smart banner ads", e);
        }
        return initializeEmptyBundle;
    }

    public static Bundle createAdMobBannerRequestBundle(String str, int i, int i2) {
        Bundle initializeEmptyBundle = DtbCommonUtils.initializeEmptyBundle();
        try {
            initializeEmptyBundle.putString(ADMOB_SLOTUUID_KEY, str);
            initializeEmptyBundle.putInt(ADMOB_WIDTH_KEY, i);
            initializeEmptyBundle.putInt(ADMOB_HEIGHT_KEY, i2);
            initializeEmptyBundle.putString(ADMOB_REQUEST_ID_KEY, generateRequestId());
        } catch (RuntimeException e) {
            DtbLog.error(LOG_TAG, "Fail to execute createAdMobBannerRequestBundle method to create bundle for non smart banner ads");
            C22016a.m8829a(EnumC22018b.FATAL, EnumC22019c.EXCEPTION, "Fail to execute createAdMobBannerRequestBundle method to create bundle for non smart banner ads", e);
        }
        return initializeEmptyBundle;
    }

    public static Bundle createAdMobInterstitialRequestBundle(String str) {
        Bundle initializeEmptyBundle = DtbCommonUtils.initializeEmptyBundle();
        try {
            initializeEmptyBundle.putString(ADMOB_SLOTUUID_KEY, str);
            initializeEmptyBundle.putString(ADMOB_REQUEST_ID_KEY, generateRequestId());
        } catch (RuntimeException e) {
            DtbLog.error(LOG_TAG, "Fail to execute createAdMobInterstitialRequestBundle method");
            C22016a.m8829a(EnumC22018b.FATAL, EnumC22019c.EXCEPTION, "Fail to execute createAdMobInterstitialRequestBundle method", e);
        }
        return initializeEmptyBundle;
    }

    public static void createDirIfDoesNotExist(String str) {
        Context context = AdRegistration.getContext();
        if (context != null) {
            File filesDir = context.getFilesDir();
            File file = new File(filesDir.getAbsolutePath() + StringConstant.SLASH + str);
            if (file.isDirectory() || file.exists()) {
                return;
            }
            file.mkdir();
        }
    }

    public static void directAppStoreLinkToBrowser(DTBAdMRAIDController dTBAdMRAIDController, Uri uri) throws ActivityNotFoundException, NullPointerException {
        String str;
        if (DTBAdViewSupportClient.AMAZON_SCHEME.equals(uri.getScheme())) {
            DtbLog.debug(LOG_TAG, "Amazon app store unavailable in the device");
            str = DTBAdViewSupportClient.AMAZON_APP_STORE_LINK + uri.getQuery();
        } else {
            DtbLog.debug(LOG_TAG, "App store unavailable in the device");
            str = DTBAdViewSupportClient.GOOGLE_PLAY_STORE_LINK + uri.getHost() + "?" + uri.getQuery();
        }
        Uri parse = Uri.parse(str);
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(parse);
        AdRegistration.getCurrentActivity().startActivity(intent);
        dTBAdMRAIDController.onAdLeftApplication();
    }

    public static View findAncestorOfType(View view, Class cls) {
        while (!cls.isInstance(view)) {
            ViewParent parent = view.getParent();
            if (parent == null || !(parent instanceof View)) {
                return null;
            }
            view = (View) parent;
        }
        return view;
    }

    public static List<View> findViewsOfType(ViewGroup viewGroup, Class cls) {
        ArrayList arrayList = new ArrayList();
        findViewsOfType(viewGroup, cls, arrayList);
        return arrayList;
    }

    public static void findViewsOfType(ViewGroup viewGroup, Class cls, List<View> list) {
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = viewGroup.getChildAt(i);
            if (cls.isInstance(childAt)) {
                list.add(childAt);
            }
            if (childAt instanceof ViewGroup) {
                findViewsOfType((ViewGroup) childAt, cls, list);
            }
        }
    }

    public static String generateRequestId() {
        String str = UUID.randomUUID().toString() + StringConstant.DASH + new Date().getTime();
        if (AdRegistration.getAdMobCache(str) != null) {
            C22016a.m8829a(EnumC22018b.FATAL, EnumC22019c.LOG, "Generate a conflict request id which already in request id map", null);
            AdRegistration.removeAdMobCache(str);
        }
        return str;
    }

    public static Activity getActivity(View view) {
        Context context = view.getContext();
        while (true) {
            Context context2 = context;
            if (context2 instanceof ContextWrapper) {
                if (context2 instanceof Activity) {
                    return (Activity) context2;
                }
                context = ((ContextWrapper) context2).getBaseContext();
            } else {
                return null;
            }
        }
    }

    public static ViewGroup getAdViewWrapper(View view, int i, int i2, int i3, int i4) {
        AdContainer adContainer = new AdContainer(view.getContext());
        if (i4 == 0 || i3 == 0) {
            adContainer.addView(view, sizeToDevicePixels(i), sizeToDevicePixels(i2));
        } else {
            adContainer.addView(view, sizeToDevicePixels(i3), sizeToDevicePixels(i4));
        }
        adContainer.setAdView(view);
        return adContainer;
    }

    public static Bundle getBidFromFetchManager(Bundle bundle) {
        DTBFetchManager fetchManager;
        if (bundle == null) {
            return null;
        }
        boolean z = bundle.getBoolean(DTBAdView.SMARTBANNER_STATE, false);
        String string = bundle.getString(DTBAdView.REQUEST_QUEUE, null);
        if (!DtbCommonUtils.isNullOrEmpty(string) && (fetchManager = DTBFetchFactory.getInstance().getFetchManager(string)) != null) {
            DtbLog.debug("RELOAD CUSTOM EVENT", "QUEUE:" + string);
            DTBAdResponse peek = fetchManager.peek();
            if (peek != null) {
                StringBuilder m8728C = C22128a.m8728C("RELOAD CUSTOM EVENT: ");
                m8728C.append(peek.getRenderingBundle().getString(DTBAdView.AMAZON_AD_INFO));
                DtbLog.debug(m8728C.toString());
                return peek.getRenderingBundle(z);
            }
        }
        DtbLog.debug("RELOAD CUSTOM EVENT", "NO QUEUE");
        return bundle;
    }

    public static SDKUtilities.SimpleSize getMaxSize(View view) {
        ViewGroup rootView = getRootView(view);
        return rootView == null ? getScreenSize() : new SDKUtilities.SimpleSize(pixelsToDeviceIndependenPixels(rootView.getWidth()), pixelsToDeviceIndependenPixels(rootView.getHeight()));
    }

    public static ViewGroup getRootView(View view) {
        Activity activity = getActivity(view);
        if (activity == null) {
            return null;
        }
        return (ViewGroup) activity.findViewById(16908290);
    }

    public static SDKUtilities.SimpleSize getScreenSize() {
        return getScreenSize(null);
    }

    public static SDKUtilities.SimpleSize getScreenSize(View view) {
        int i;
        int i2;
        int i3 = AdRegistration.getContext().getResources().getConfiguration().orientation;
        Activity activity = view != null ? getActivity(view) : null;
        if (activity != null) {
            Point point = new Point();
            activity.getWindowManager().getDefaultDisplay().getRealSize(point);
            i2 = point.x;
            i = point.y;
        } else {
            DisplayMetrics displayMetrics = new DisplayMetrics();
            ((WindowManager) AdRegistration.getContext().getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
            i2 = displayMetrics.widthPixels;
            i = displayMetrics.heightPixels;
        }
        int pixelsToDeviceIndependenPixels = pixelsToDeviceIndependenPixels(i2);
        int pixelsToDeviceIndependenPixels2 = pixelsToDeviceIndependenPixels(i);
        return i3 == 1 ? new SDKUtilities.SimpleSize(pixelsToDeviceIndependenPixels, pixelsToDeviceIndependenPixels2) : new SDKUtilities.SimpleSize(pixelsToDeviceIndependenPixels2, pixelsToDeviceIndependenPixels);
    }

    public static boolean isInstalledFromAppStore(Context context) {
        String installerPackageName = context.getPackageManager().getInstallerPackageName(context.getPackageName());
        return installerPackageName != null && installerPackageName.length() > 0;
    }

    public static boolean isMainThread() {
        return Looper.myLooper() == Looper.getMainLooper();
    }

    private void loadDTBParameters(DTBAdResponse dTBAdResponse, AdManagerAdRequest.Builder builder) {
        for (Map.Entry<String, List<String>> entry : dTBAdResponse.getDefaultDisplayAdsRequestCustomParams().entrySet()) {
            builder.addCustomTargeting(entry.getKey(), entry.getValue());
        }
    }

    public static String loadFile(String str, String str2) throws IOException {
        synchronized (DTBAdUtil.class) {
            try {
                Context context = AdRegistration.getContext();
                if (context == null) {
                    return null;
                }
                File filesDir = context.getFilesDir();
                File file = new File(filesDir.getAbsolutePath() + StringConstant.SLASH + str2 + StringConstant.SLASH + str);
                if (!file.exists()) {
                    return null;
                }
                FileInputStream fileInputStream = new FileInputStream(file);
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(fileInputStream));
                StringBuilder sb = new StringBuilder();
                while (true) {
                    String readLine = bufferedReader.readLine();
                    if (readLine == null) {
                        bufferedReader.close();
                        fileInputStream.close();
                        return sb.toString();
                    }
                    sb.append(readLine.trim());
                    sb.append(StringConstant.NEW_LINE);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static String loadFromAssets(String str) throws IOException {
        StringBuilder sb = new StringBuilder();
        if (AdRegistration.getContext() != null && AdRegistration.getContext().getAssets() != null) {
            InputStream open = AdRegistration.getContext().getAssets().open(str);
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(open));
            while (true) {
                String readLine = bufferedReader.readLine();
                if (readLine == null) {
                    break;
                }
                sb.append(readLine.trim());
                sb.append(StringConstant.NEW_LINE);
            }
            bufferedReader.close();
            open.close();
        }
        return sb.toString();
    }

    public static JSONObject loadJsonFromAsset(String str) {
        try {
            return new JSONObject(loadFromAssets(str));
        } catch (IOException e) {
            DtbLog.debug("Fail to load " + str + "from asset folder");
            return null;
        } catch (JSONException e2) {
            DtbLog.debug("Fail to parse " + str + " to JSON from asset folder");
            return null;
        }
    }

    public static int pixelsToDeviceIndependenPixels(int i) {
        return (int) ((i / AdRegistration.getContext().getResources().getDisplayMetrics().density) + 0.5f);
    }

    public static void setRectShape(View view) {
        setRectShape(view, -16711936, 3.0f);
    }

    public static void setRectShape(View view, int i, float f) {
        ShapeDrawable shapeDrawable = new ShapeDrawable();
        shapeDrawable.setShape(new RectShape());
        shapeDrawable.getPaint().setColor(i);
        shapeDrawable.getPaint().setStrokeWidth(f);
        shapeDrawable.getPaint().setStyle(Paint.Style.STROKE);
        view.setBackground(shapeDrawable);
    }

    public static int sizeToDevicePixels(int i) {
        return (int) ((i * AdRegistration.getContext().getResources().getDisplayMetrics().density) + 0.5f);
    }

    public static int sizeToDevicePixels(Context context, int i) {
        return (int) ((i * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    public static boolean validateAdMobCustomEvent(String str, Bundle bundle) {
        DtbLog.debug(CUSTOM_EVENT, "AdMob Server Price Point is checked in:" + str + "in AdMob Single Price Custom Event Class");
        return validateAdMobCustomEvent(str, bundle, false);
    }

    private static boolean validateAdMobCustomEvent(String str, Bundle bundle, boolean z) {
        String str2 = z ? "Amazon Single Price Custom Event" : "Amazon Custom Event";
        if (bundle != null) {
            String string = bundle.getString(DTBAdView.EVENT_SERVER_PARAMETER, "Unknown");
            String string2 = bundle.getString(DTBAdView.BID_HTML, null);
            if (string != null && str != null && string2 != null) {
                if (z ? compareEncodedPrice(string, str) : str.equals(string)) {
                    String string3 = bundle.getString(DTBAdView.BID_IDENTIFIER, null);
                    String string4 = bundle.getString(DTBAdView.HOSTNAME_IDENTIFIER, null);
                    if (string3 == null || !DTBBidInspector.getInstance().wasUsed(string3)) {
                        long j = bundle.getLong(DTBAdView.START_LOAD_TIME);
                        if (j > 0) {
                            DTBMetricsProcessor.getInstance().submitLatencyReportBidId(DTBMetricReport.addBid(string3, string4), DTBMetricsProcessor.REPORT_MEDIATION_LATENCY, (int) (new Date().getTime() - j));
                        }
                        DtbLog.debug(CUSTOM_EVENT, str2 + " Completed/Accepted");
                        return true;
                    }
                    DtbLog.debug(CUSTOM_EVENT, str2 + " ignored (attempt to reuse bidId)");
                } else {
                    StringBuilder m8688M = C22128a.m8688M(str2, " ignored (server ", str, " is not matched with expected parameter ", string);
                    m8688M.append(")");
                    DtbLog.debug(CUSTOM_EVENT, m8688M.toString());
                }
            }
            if (string == null) {
                DtbLog.debug(CUSTOM_EVENT, str2 + " ignored (expected server parameter is null");
            }
            if (str == null) {
                DtbLog.debug(CUSTOM_EVENT, str2 + " ignored (server parameter is null");
            }
            if (string2 == null) {
                DtbLog.debug(CUSTOM_EVENT, str2 + " ignored (payload is not defined)");
            }
        }
        DtbLog.debug(CUSTOM_EVENT, str2 + " Completed/Ignored ");
        return false;
    }

    public static boolean validateMopubCustomEvent(Map<String, Object> map, Map<String, String> map2) {
        DtbLog.debug(CUSTOM_EVENT, "Amazon Banner Custom Event was hit");
        String str = (String) map.get(DTBAdView.EVENT_SERVER_PARAMETER);
        if (str == null) {
            DtbLog.debug(CUSTOM_EVENT, "Amazon Banner Custom ignored ( localExtras does not have expected key event_server_parameter)");
        } else if (map2.get(str) != null) {
            String str2 = (String) map.get(DTBAdView.BID_IDENTIFIER);
            String str3 = (String) map.get(DTBAdView.BID_HTML);
            String str4 = (String) map.get(DTBAdView.HOSTNAME_IDENTIFIER);
            if (str3 != null) {
                if (str2 != null && DTBBidInspector.getInstance().wasUsed(str2)) {
                    DtbLog.debug(CUSTOM_EVENT, "Amazon Banner Custom ignored (attempt to reuse bidId)");
                    return false;
                }
                Object obj = map.get(DTBAdView.START_LOAD_TIME);
                if (obj instanceof Long) {
                    Long l = (Long) obj;
                    if (l.longValue() > 0) {
                        DTBMetricsProcessor.getInstance().submitLatencyReportBidId(DTBMetricReport.addBid(str2, str4), DTBMetricsProcessor.REPORT_MEDIATION_LATENCY, (int) (C22128a.m8638c() - l.longValue()));
                    }
                }
                DtbLog.debug(CUSTOM_EVENT, "Amazon Banner Custom Completed/Accepted");
                return true;
            }
            DtbLog.debug(CUSTOM_EVENT, "Amazon Banner Custom ignored ( payload is not defined ");
        } else {
            DtbLog.debug(CUSTOM_EVENT, "Amazon Banner Custom ignored ( serverExtras does not have expected key event_server_parameter)");
        }
        DtbLog.debug(CUSTOM_EVENT, "Amazon Banner Custom Completed/Ignored");
        return false;
    }

    public static boolean validateSinglePriceAdMobCustomEvent(String str, Bundle bundle) {
        DtbLog.debug(CUSTOM_EVENT, "AdMob Server Price Point is checked in:" + str + "in AdMob Custom Event Class");
        return validateAdMobCustomEvent(str, bundle, true);
    }

    public AdManagerAdRequest.Builder createAdManagerAdRequestBuilder(DTBAdResponse dTBAdResponse) {
        AdManagerAdRequest.Builder builder = new AdManagerAdRequest.Builder();
        if (dTBAdResponse.getAdCount() > 0) {
            loadDTBParameters(dTBAdResponse, builder);
        }
        return builder;
    }

    public AdManagerAdRequest loadDTBParams(AdManagerAdRequest adManagerAdRequest, DTBAdResponse dTBAdResponse) {
        if (dTBAdResponse.getAdCount() == 0) {
            return adManagerAdRequest;
        }
        AdManagerAdRequest.Builder builder = new AdManagerAdRequest.Builder();
        builder.setContentUrl(adManagerAdRequest.getContentUrl());
        builder.setLocation(adManagerAdRequest.getLocation());
        builder.setPublisherProvidedId(adManagerAdRequest.getPublisherProvidedId());
        loadDTBParameters(dTBAdResponse, builder);
        return builder.build();
    }

    public void loadDTBParams(AdManagerAdRequest.Builder builder, DTBAdResponse dTBAdResponse) {
        if (dTBAdResponse.getAdCount() > 0) {
            loadDTBParameters(dTBAdResponse, builder);
        }
    }
}
