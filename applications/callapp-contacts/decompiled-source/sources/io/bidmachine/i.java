package io.bidmachine;

import android.text.TextUtils;
import com.sinch.verification.core.verification.VerificationLanguage;
import io.bidmachine.ApiRequest;
import io.bidmachine.core.Logger;
import io.bidmachine.core.NetworkRequest;
import io.bidmachine.utils.BMError;
import java.net.URLConnection;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5-dex2jar.jar:io/bidmachine/i.class */
public abstract class i {
    static final /* synthetic */ boolean $assertionsDisabled = false;

    private static List<String> collectTrackingUrls(TrackingObject trackingObject, TrackEventType trackEventType) {
        List<String> trackingUrls = d.get().getTrackingUrls(trackEventType);
        ArrayList arrayList = trackingUrls != null ? new ArrayList(trackingUrls) : null;
        List<String> trackingUrls2 = trackingObject.getTrackingUrls(trackEventType);
        ArrayList arrayList2 = arrayList;
        if (trackingUrls2 != null) {
            if (arrayList == null) {
                arrayList2 = new ArrayList(trackingUrls2);
            } else {
                arrayList.addAll(trackingUrls2);
                arrayList2 = arrayList;
            }
        }
        return arrayList2;
    }

    private static void executeNotify(String str, NetworkRequest.Callback<String, BMError> callback) {
        if (!TextUtils.isEmpty(str)) {
            new ApiRequest.Builder().url(str).setMethod(NetworkRequest.Method.Get).setDataBinder(new ApiRequest.ApiDataBinder<Object, String>() { // from class: io.bidmachine.i.3
                @Override // io.bidmachine.core.NetworkRequest.RequestDataBinder
                protected final String createSuccessResult(NetworkRequest<Object, String, BMError> networkRequest, URLConnection uRLConnection, byte[] bArr) throws Exception {
                    return null;
                }

                @Override // io.bidmachine.core.NetworkRequest.RequestDataBinder
                public final byte[] obtainData(NetworkRequest<Object, String, BMError> networkRequest, URLConnection uRLConnection, Object obj) throws Exception {
                    return null;
                }

                @Override // io.bidmachine.core.NetworkRequest.RequestDataBinder
                public final void prepareHeaders(NetworkRequest<Object, String, BMError> networkRequest, URLConnection uRLConnection) {
                    uRLConnection.addRequestProperty("Accept", "application/json");
                    uRLConnection.addRequestProperty("Content-Type", "application/json");
                }
            }).setCallback(callback).request();
        }
    }

    private static void notifyError(List<String> list, final List<String> list2, final TrackEventInfo trackEventInfo, int i, BMError bMError) {
        if (!(list == null || bMError.getCode() == -1)) {
            Logger.log("dispatching error event to server: (" + i + VerificationLanguage.REGION_PREFIX + bMError.getCode() + ") - " + bMError.getMessage());
            for (String str : list) {
                executeNotify(replaceMacros(str, trackEventInfo, i, bMError.getCode()), new NetworkRequest.Callback<String, BMError>() { // from class: io.bidmachine.i.2
                    public final void onFail(BMError bMError2) {
                        BMError bMError3 = bMError2;
                        if (bMError2 == null) {
                            bMError3 = BMError.Internal;
                        }
                        i.notifyTrackingError(list2, trackEventInfo, TrackEventType.Error.getOrtbActionValue(), bMError3);
                    }

                    public final void onSuccess(String str2) {
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void notifyTrack(TrackingObject trackingObject, TrackEventType trackEventType, TrackEventInfo trackEventInfo, BMError bMError) {
        if (bMError == null) {
            notifyTrack(collectTrackingUrls(trackingObject, trackEventType), collectTrackingUrls(trackingObject, TrackEventType.TrackingError), trackEventInfo, trackEventType);
        } else if (bMError.isTrackError()) {
            notifyError(collectTrackingUrls(trackingObject, TrackEventType.Error), collectTrackingUrls(trackingObject, TrackEventType.TrackingError), trackEventInfo, trackEventType.getOrtbActionValue(), bMError);
        }
    }

    private static void notifyTrack(List<String> list, final List<String> list2, final TrackEventInfo trackEventInfo, final TrackEventType trackEventType) {
        if (list != null) {
            Logger.log("dispatching event to server: ".concat(String.valueOf(trackEventType)));
            for (String str : list) {
                executeNotify(replaceMacros(str, trackEventInfo, trackEventType.getOrtbActionValue(), -1), new NetworkRequest.Callback<String, BMError>() { // from class: io.bidmachine.i.1
                    public final void onFail(BMError bMError) {
                        BMError bMError2 = bMError;
                        if (bMError == null) {
                            bMError2 = BMError.Internal;
                        }
                        i.notifyTrackingError(list2, trackEventInfo, trackEventType.getOrtbActionValue(), bMError2);
                    }

                    public final void onSuccess(String str2) {
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void notifyTrackingError(List<String> list, TrackEventInfo trackEventInfo, int i, BMError bMError) {
        if (!(list == null || bMError.getCode() == -1)) {
            Logger.log("dispatching tracking fail to server: (" + bMError.getCode() + ")" + bMError.getMessage());
            for (String str : list) {
                executeNotify(replaceMacros(str, trackEventInfo, i, bMError.getCode()), null);
            }
        }
    }

    static String replaceMacros(String str, TrackEventInfo trackEventInfo, int i, int i2) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        String replaceMacros = replaceMacros(replaceMacros(replaceMacros(str, "BM_EVENT_CODE", Integer.valueOf(i)), "BM_ACTION_CODE", Integer.valueOf(i)), "BM_ERROR_REASON", Integer.valueOf(i2));
        String str2 = replaceMacros;
        if (trackEventInfo != null) {
            String replaceMacros2 = replaceMacros(replaceMacros(replaceMacros, "BM_ACTION_START", Long.valueOf(trackEventInfo.startTimeMs)), "BM_ACTION_FINISH", Long.valueOf(trackEventInfo.finishTimeMs));
            Map<String, Object> eventParameters = trackEventInfo.getEventParameters();
            str2 = replaceMacros2;
            if (eventParameters != null) {
                Iterator<Map.Entry<String, Object>> it2 = eventParameters.entrySet().iterator();
                String str3 = replaceMacros2;
                while (true) {
                    str2 = str3;
                    if (!it2.hasNext()) {
                        break;
                    }
                    Map.Entry<String, Object> next = it2.next();
                    str3 = replaceMacros(str3, next.getKey(), next.getValue());
                }
            }
        }
        return str2;
    }

    private static String replaceMacros(String str, String str2, Object obj) {
        String replace = str.replace("${" + str2 + "}", String.valueOf(obj));
        return replace.replace("%24%7B" + str2 + "%7D", String.valueOf(obj));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void clearTrackers(TrackingObject trackingObject);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void clearTrackingEvent(TrackingObject trackingObject, TrackEventType trackEventType);

    abstract int getEventCount(AdsType adsType, TrackEventType trackEventType);

    abstract int getTotalEventCount(TrackEventType trackEventType);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void trackEventFinish(TrackingObject trackingObject, TrackEventType trackEventType, AdsType adsType, BMError bMError);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void trackEventStart(TrackingObject trackingObject, TrackEventType trackEventType, TrackEventInfo trackEventInfo, AdsType adsType);
}
