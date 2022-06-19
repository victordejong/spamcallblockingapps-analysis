package com.razorpay;

import android.net.Uri;
import android.text.TextUtils;
import com.amazon.device.ads.DtbConstants;
import com.appsflyer.AppsFlyerProperties;
import com.huawei.hms.framework.common.ContainerUtils;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.mopub.network.ImpressionData;
import com.tenor.android.core.constant.StringConstant;
import java.io.UnsupportedEncodingException;
import java.math.BigDecimal;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLDecoder;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/razorpay/RzpGpayUtilMerged.class */
public class RzpGpayUtilMerged {
    private static final String GOOGLE_PAY = "GOOGLE_PAY";
    private static final String GPAY_INAPP = "gpay_inapp";
    private static final String GPAY_MERGED = "gpay_merged";

    private static JSONArray getAllowedCardNetworks() {
        return new JSONArray().put("MASTERCARD").put("VISA");
    }

    private static JSONObject getBaseCardPaymentMethod() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("type", "CARD");
            jSONObject.put("parameters", new JSONObject().put("allowedCardNetworks", getAllowedCardNetworks()));
            return jSONObject;
        } catch (JSONException e) {
            AnalyticsUtil.reportError(e, AnalyticsConstants.ERROR_EXCEPTION, e.getLocalizedMessage());
            e.printStackTrace();
            return null;
        }
    }

    private static JSONObject getBaseRequest() {
        try {
            return new JSONObject().put("apiVersion", 2).put("apiVersionMinor", 0);
        } catch (JSONException e) {
            AnalyticsUtil.reportError(e, AnalyticsConstants.ERROR_EXCEPTION, e.getMessage());
            e.printStackTrace();
            return null;
        }
    }

    private static JSONObject getBaseUPIPaymentMethod() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("type", "UPI");
            return jSONObject;
        } catch (JSONException e) {
            AnalyticsUtil.reportError(e, AnalyticsConstants.ERROR_EXCEPTION, e.getMessage());
            e.printStackTrace();
            return null;
        }
    }

    public static JSONObject getCardsIsReadyToPayRequest() {
        try {
            JSONObject baseRequest = getBaseRequest();
            baseRequest.put("allowedPaymentMethods", new JSONArray().put(getBaseCardPaymentMethod()));
            return baseRequest;
        } catch (JSONException e) {
            e.printStackTrace();
            AnalyticsUtil.reportError(e, AnalyticsConstants.ERROR_EXCEPTION, e.getMessage());
            return null;
        }
    }

    public static JSONObject getIsReadyToPayRequest() {
        try {
            JSONObject baseRequest = getBaseRequest();
            baseRequest.put("allowedPaymentMethods", new JSONArray().put(getBaseUPIPaymentMethod()));
            return baseRequest;
        } catch (JSONException e) {
            e.printStackTrace();
            AnalyticsUtil.reportError(e, AnalyticsConstants.ERROR_EXCEPTION, e.getMessage());
            return null;
        }
    }

    public static String getPaymentRequestData(String str, JSONObject jSONObject) {
        try {
            JSONObject upiData = getUpiData(str);
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("apiVersion", 2);
            jSONObject2.put("apiVersionMinor", 0);
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put("totalPriceStatus", "FINAL");
            jSONObject3.put("totalPrice", new BigDecimal(String.valueOf(jSONObject.getLong(AnalyticsConstants.AMOUNT))).divide(new BigDecimal(100)).toPlainString());
            jSONObject3.put(AppsFlyerProperties.CURRENCY_CODE, jSONObject.getString(ImpressionData.CURRENCY));
            jSONObject3.put("transactionNote", upiData.get("description"));
            jSONObject2.put("transactionInfo", jSONObject3);
            JSONArray jSONArray = new JSONArray();
            JSONObject jSONObject4 = new JSONObject();
            jSONObject4.put("type", "UPI");
            JSONObject jSONObject5 = new JSONObject();
            jSONObject5.put("payeeVpa", upiData.get("address"));
            jSONObject5.put("payeeName", upiData.get(AnalyticsConstants.NAME));
            jSONObject5.put("mcc", upiData.get("mc"));
            jSONObject5.put("transactionReferenceId", upiData.get("transactionRefId"));
            jSONObject4.put("parameters", jSONObject5);
            JSONObject jSONObject6 = new JSONObject();
            jSONObject6.put("type", "DIRECT");
            jSONObject4.put("tokenizationSpecification", jSONObject6);
            jSONArray.put(jSONObject4);
            jSONObject2.put("allowedPaymentMethods", jSONArray);
            return jSONObject2.toString();
        } catch (JSONException e) {
            AnalyticsUtil.reportError(e, AnalyticsConstants.ERROR_EXCEPTION, e.getMessage());
            e.printStackTrace();
            return null;
        }
    }

    public static JSONObject getUpiData(String str) {
        JSONObject jSONObject = new JSONObject();
        try {
            if (!str.startsWith("upi://")) {
                str = new JSONObject(new JSONObject(str).getString(RemoteMessageConst.DATA)).getString("intent_url");
            }
            if (str.contains("//")) {
                try {
                    Map<String, String> splitQuery = splitQuery(new URL(str.replaceFirst("upi://", DtbConstants.HTTP)));
                    if (!TextUtils.isEmpty(splitQuery.get("pa"))) {
                        jSONObject.put("address", splitQuery.get("pa"));
                    }
                    if (!TextUtils.isEmpty(splitQuery.get("pn"))) {
                        jSONObject.put(AnalyticsConstants.NAME, splitQuery.get("pn"));
                    }
                    if (!TextUtils.isEmpty(splitQuery.get("am"))) {
                        jSONObject.put(AnalyticsConstants.AMOUNT, splitQuery.get("am"));
                    }
                    if (!TextUtils.isEmpty(splitQuery.get("tn"))) {
                        jSONObject.put("description", splitQuery.get("tn"));
                    }
                    if (!TextUtils.isEmpty(splitQuery.get("tr"))) {
                        jSONObject.put("transactionRefId", splitQuery.get("tr"));
                    }
                    if (!TextUtils.isEmpty(splitQuery.get("mc"))) {
                        jSONObject.put("mc", splitQuery.get("mc"));
                    }
                } catch (UnsupportedEncodingException e) {
                    AnalyticsUtil.reportError(e, AnalyticsConstants.CRITICAL, e.getLocalizedMessage());
                    e.printStackTrace();
                } catch (MalformedURLException e2) {
                    AnalyticsUtil.reportError(e2, AnalyticsConstants.WARNING, e2.getLocalizedMessage());
                    e2.printStackTrace();
                }
            }
        } catch (JSONException e3) {
            AnalyticsUtil.reportError(e3, AnalyticsConstants.ERROR_EXCEPTION, e3.getMessage());
            e3.printStackTrace();
        }
        return jSONObject;
    }

    public static String makeApiPayload(JSONObject jSONObject) {
        StringBuilder sb = new StringBuilder();
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            sb.append(String.format("%s=%s&", next, Uri.encode(jSONObject.getString(next))));
        }
        return sb.deleteCharAt(sb.length() - 1).toString();
    }

    public static String makeErrorPayload(String str, String str2) {
        try {
            JSONObject jSONObject = new JSONObject();
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("code", str);
            jSONObject2.put("description", str2);
            jSONObject.put("error", jSONObject2);
            return jSONObject.toString();
        } catch (JSONException e) {
            AnalyticsUtil.reportError(e, AnalyticsConstants.ERROR_EXCEPTION, e.getMessage());
            e.printStackTrace();
            return "{\"error\":{\"code\": \"BAD_REQUEST_ERROR\", \"description\": \"An unknown error occurred.\"}}";
        }
    }

    public static String makeExceptionErrorPayload(boolean z) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("provider", GOOGLE_PAY);
            jSONObject.put("resultCode", "1");
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("type", GPAY_MERGED);
            jSONObject2.put("description", "Something went wrong please try again.");
            jSONObject.put(RemoteMessageConst.DATA, jSONObject2);
            return jSONObject.toString();
        } catch (JSONException e) {
            e.printStackTrace();
            return "{\"provider\":\"GOOGLE_PAY\",\"resultCode\":\"1\",\"data\":{\"apiResponse\":{\"type\":\"gpay_merged\",\"description\":\"Something went wrong. Please try again\"}}}";
        }
    }

    public static String makeExternalSDKPayload(JSONObject jSONObject) {
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject.put("type", GPAY_INAPP);
            jSONObject2.put("apiResponse", jSONObject);
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put("provider", GOOGLE_PAY);
            jSONObject3.put(RemoteMessageConst.DATA, jSONObject2);
            return jSONObject3.toString();
        } catch (JSONException e) {
            AnalyticsUtil.reportError(e, AnalyticsConstants.ERROR_EXCEPTION, e.getMessage());
            e.printStackTrace();
            return "";
        }
    }

    public static String makeMergedExternalSDKErrorPayload(JSONObject jSONObject, int i, String str) {
        JSONObject jSONObject2 = new JSONObject();
        JSONObject jSONObject3 = new JSONObject();
        try {
            jSONObject3.put("type", GPAY_MERGED);
            jSONObject3.put("description", str);
            jSONObject2.put("apiResponse", jSONObject3);
            JSONObject jSONObject4 = new JSONObject();
            jSONObject4.put("provider", GOOGLE_PAY);
            jSONObject4.put("resultCode", i);
            jSONObject4.put(RemoteMessageConst.DATA, jSONObject2);
            return jSONObject4.toString();
        } catch (JSONException e) {
            AnalyticsUtil.reportError(e, AnalyticsConstants.ERROR_EXCEPTION, e.getMessage());
            return makeExceptionErrorPayload(jSONObject.has("bundle"));
        }
    }

    public static String makeMergedExternalSDKPayload(JSONObject jSONObject) {
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject.put("type", GPAY_MERGED);
            jSONObject2.put("apiResponse", jSONObject);
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put("provider", GOOGLE_PAY);
            jSONObject3.put(RemoteMessageConst.DATA, jSONObject2);
            return jSONObject3.toString();
        } catch (JSONException e) {
            AnalyticsUtil.reportError(e, AnalyticsConstants.ERROR_EXCEPTION, e.getMessage());
            e.printStackTrace();
            return "";
        }
    }

    private static Map<String, String> splitQuery(URL url) {
        String[] split;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (String str : url.getQuery().split(ContainerUtils.FIELD_DELIMITER)) {
            int indexOf = str.indexOf(ContainerUtils.KEY_VALUE_DELIMITER);
            linkedHashMap.put(URLDecoder.decode(str.substring(0, indexOf), StringConstant.UTF8), URLDecoder.decode(str.substring(indexOf + 1), StringConstant.UTF8));
        }
        return linkedHashMap;
    }
}
