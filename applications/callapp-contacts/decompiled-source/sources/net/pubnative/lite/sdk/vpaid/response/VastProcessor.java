package net.pubnative.lite.sdk.vpaid.response;

import android.content.Context;
import android.text.TextUtils;
import com.iab.omid.library.pubnativenet.adsession.j;
import java.net.URL;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import net.pubnative.lite.sdk.network.PNHttpClient;
import net.pubnative.lite.sdk.utils.Logger;
import net.pubnative.lite.sdk.vpaid.PlayerInfo;
import net.pubnative.lite.sdk.vpaid.enums.VastError;
import net.pubnative.lite.sdk.vpaid.helpers.ErrorLog;
import net.pubnative.lite.sdk.vpaid.models.vast.AdVerifications;
import net.pubnative.lite.sdk.vpaid.models.vast.ClickThrough;
import net.pubnative.lite.sdk.vpaid.models.vast.ClickTracking;
import net.pubnative.lite.sdk.vpaid.models.vast.Companion;
import net.pubnative.lite.sdk.vpaid.models.vast.CompanionClickThrough;
import net.pubnative.lite.sdk.vpaid.models.vast.CompanionClickTracking;
import net.pubnative.lite.sdk.vpaid.models.vast.Creative;
import net.pubnative.lite.sdk.vpaid.models.vast.Extension;
import net.pubnative.lite.sdk.vpaid.models.vast.Impression;
import net.pubnative.lite.sdk.vpaid.models.vast.Linear;
import net.pubnative.lite.sdk.vpaid.models.vast.MediaFile;
import net.pubnative.lite.sdk.vpaid.models.vast.Tracking;
import net.pubnative.lite.sdk.vpaid.models.vast.Vast;
import net.pubnative.lite.sdk.vpaid.models.vast.VastAdSource;
import net.pubnative.lite.sdk.vpaid.models.vast.Verification;
import net.pubnative.lite.sdk.vpaid.models.vast.Wrapper;
import net.pubnative.lite.sdk.vpaid.models.vpaid.AdSpotDimensions;
import net.pubnative.lite.sdk.vpaid.utils.Utils;
import net.pubnative.lite.sdk.vpaid.xml.XmlParser;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/vpaid/response/VastProcessor.class */
public class VastProcessor {
    private static final String EXTENSION_TYPE_AD_VERIFICATION = "AdVerifications";
    private static final String LOG_TAG = "VastProcessor";
    private static final int UNWRAP_DEPTH = 5;
    private final Context mContext;
    private final AdSpotDimensions mParseParams;
    private final AdParams adParams = new AdParams();
    private int unwrapAttempt = 0;

    /* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/vpaid/response/VastProcessor$Listener.class */
    public interface Listener {
        void onParseError(PlayerInfo playerInfo);

        void onParseSuccess(AdParams adParams, String str);
    }

    public VastProcessor(Context context, AdSpotDimensions adSpotDimensions) {
        this.mContext = context;
        this.mParseParams = adSpotDimensions;
    }

    private Comparator<MediaFile> createComparator(final AdSpotDimensions adSpotDimensions) {
        return new Comparator<MediaFile>() { // from class: net.pubnative.lite.sdk.vpaid.response.VastProcessor.2
            public int compare(MediaFile mediaFile, MediaFile mediaFile2) {
                int abs = Math.abs(adSpotDimensions.getWidth() - mediaFile.getWidth()) + Math.abs(adSpotDimensions.getHeight() - mediaFile.getHeight());
                int abs2 = Math.abs(adSpotDimensions.getWidth() - mediaFile2.getWidth()) + Math.abs(adSpotDimensions.getHeight() - mediaFile2.getHeight());
                if (abs < abs2) {
                    return -1;
                }
                return abs == abs2 ? 0 : 1;
            }
        };
    }

    private void fillAdParams(Context context, VastAdSource vastAdSource, AdParams adParams, AdSpotDimensions adSpotDimensions) {
        AdVerifications adVerifications;
        if (!(vastAdSource.getError() == null || vastAdSource.getError().getText() == null)) {
            ErrorLog.initErrorLog(vastAdSource.getError().getText().trim());
        }
        ArrayList arrayList = new ArrayList();
        if (vastAdSource.getImpressionList() != null) {
            for (Impression impression : vastAdSource.getImpressionList()) {
                arrayList.add(impression.getText());
            }
        }
        adParams.setImpressions(arrayList);
        if (!(vastAdSource.getCreatives() == null || vastAdSource.getCreatives().getCreativeList() == null)) {
            List<Creative> creativeList = vastAdSource.getCreatives().getCreativeList();
            Linear linear = null;
            Iterator<Creative> it2 = creativeList.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                Creative next = it2.next();
                if (next.getLinear() != null) {
                    linear = next.getLinear();
                    break;
                }
            }
            adParams.setSkipTime(linear.getSkipoffset());
            if (linear.getTrackingEvents() != null) {
                adParams.addEvents(linear.getTrackingEvents().getTrackingList());
            }
            adParams.setDuration(Utils.parseDuration(linear.getDuration() != null ? linear.getDuration().getText() : "00:00:10"));
            adParams.setAdParams(parseAdParameters(linear));
            if (linear.getVideoClicks() != null) {
                ClickThrough clickThrough = linear.getVideoClicks().getClickThrough();
                if (clickThrough != null) {
                    adParams.setVideoRedirectUrl(clickThrough.getText());
                }
                List<ClickTracking> clickTrackingList = linear.getVideoClicks().getClickTrackingList();
                ArrayList arrayList2 = new ArrayList();
                if (clickTrackingList != null) {
                    for (ClickTracking clickTracking : clickTrackingList) {
                        arrayList2.add(clickTracking.getText());
                    }
                }
                adParams.setVideoClicks(arrayList2);
            }
            if (linear.getMediaFiles() != null) {
                List<MediaFile> mediaFileList = linear.getMediaFiles().getMediaFileList();
                String vpaidJsUrl = getVpaidJsUrl(mediaFileList);
                if (!TextUtils.isEmpty(vpaidJsUrl)) {
                    adParams.setVpaid();
                    adParams.setVpaidJsUrl(vpaidJsUrl);
                } else {
                    List<MediaFile> sortedMediaFiles = sortedMediaFiles(mediaFileList, adSpotDimensions);
                    ArrayList arrayList3 = new ArrayList();
                    for (MediaFile mediaFile : sortedMediaFiles) {
                        if (mediaFile.getText() != null) {
                            arrayList3.add(mediaFile.getText().trim());
                        }
                    }
                    adParams.setVideoFileUrlsList(arrayList3);
                    if (arrayList3.isEmpty()) {
                        ErrorLog.postError(context, VastError.MEDIA_FILE_NO_SUPPORTED_TYPE);
                    }
                }
                try {
                    List<Companion> sortedCompanions = getSortedCompanions(creativeList);
                    ArrayList arrayList4 = new ArrayList();
                    for (Companion companion : sortedCompanions) {
                        if (!(companion.getStaticResource() == null || companion.getStaticResource().getText() == null || TextUtils.isEmpty(companion.getStaticResource().getText()))) {
                            arrayList4.add(companion.getStaticResource().getText().trim());
                        }
                    }
                    adParams.setEndCardUrlList(arrayList4);
                    if (!sortedCompanions.isEmpty()) {
                        Companion companion2 = sortedCompanions.get(0);
                        CompanionClickThrough companionClickThrough = companion2.getCompanionClickThrough();
                        if (!(companionClickThrough == null || companionClickThrough.getText() == null)) {
                            adParams.setEndCardRedirectUrl(companionClickThrough.getText().trim());
                        }
                        if (companion2.getCompanionClickTracking() != null) {
                            ArrayList arrayList5 = new ArrayList();
                            for (CompanionClickTracking companionClickTracking : companion2.getCompanionClickTracking()) {
                                arrayList5.add(companionClickTracking.getText());
                            }
                            adParams.setEndCardClicks(arrayList5);
                        }
                        if (companion2.getTrackingEvents() != null) {
                            ArrayList arrayList6 = new ArrayList();
                            for (Tracking tracking : companion2.getTrackingEvents().getTrackingList()) {
                                arrayList6.add(tracking.getText());
                            }
                            adParams.setCompanionCreativeViewEvents(arrayList6);
                        }
                    }
                } catch (Exception e) {
                    Logger.e(LOG_TAG, e.getMessage());
                }
            }
        }
        ArrayList arrayList7 = new ArrayList();
        adParams.setVerificationScriptResources(arrayList7);
        if (vastAdSource.getExtensions() != null) {
            for (Extension extension : vastAdSource.getExtensions()) {
                if (!TextUtils.isEmpty(extension.getType()) && extension.getType().equals(EXTENSION_TYPE_AD_VERIFICATION) && (adVerifications = extension.getAdVerifications()) != null) {
                    for (Verification verification : adVerifications.getVerificationList()) {
                        try {
                            arrayList7.add(j.a(verification.getVendor(), new URL(verification.getJavaScriptResource().getText()), verification.getVerificationParameters().getText()));
                        } catch (Exception e2) {
                            Logger.e(LOG_TAG, e2.getMessage());
                        }
                    }
                }
            }
        }
    }

    private static List<Companion> getSortedCompanions(List<Creative> list) {
        for (Creative creative : list) {
            if (!(creative.getCompanionAds() == null || creative.getCompanionAds().getCompanionList() == null)) {
                return creative.getCompanionAds().getCompanionList();
            }
        }
        return new ArrayList();
    }

    private String getVpaidJsUrl(List<MediaFile> list) {
        for (MediaFile mediaFile : list) {
            if (!(mediaFile.getText() == null || mediaFile.getApiFramework() == null || !mediaFile.getApiFramework().equalsIgnoreCase("VPAID"))) {
                return mediaFile.getText().trim();
            }
        }
        return null;
    }

    private String parseAdParameters(Linear linear) {
        try {
            return linear.getAdParameters().getText().trim();
        } catch (Exception e) {
            return null;
        }
    }

    private List<MediaFile> sortedMediaFiles(List<MediaFile> list, AdSpotDimensions adSpotDimensions) {
        ArrayList arrayList = new ArrayList();
        for (MediaFile mediaFile : list) {
            if (mediaFile.getType().equalsIgnoreCase("video/mp4") || mediaFile.getType().equalsIgnoreCase("video/webm")) {
                arrayList.add(mediaFile);
            }
        }
        if (arrayList.size() > 1) {
            Collections.sort(arrayList, createComparator(adSpotDimensions));
        }
        return arrayList;
    }

    public void parseResponse(String str, final Listener listener) {
        try {
            Vast vast = (Vast) XmlParser.parse(str, Vast.class);
            if ((vast.getStatus() == null || vast.getStatus().getText().equalsIgnoreCase("NO_AD")) && vast.getAd() == null) {
                PlayerInfo playerInfo = new PlayerInfo("No ads found");
                playerInfo.setNoAdsFound();
                listener.onParseError(playerInfo);
                return;
            }
            this.adParams.setId(vast.getAd().getId());
            VastAdSource inLine = vast.getAd().getInLine();
            Wrapper wrapper = vast.getAd().getWrapper();
            if (inLine != null) {
                fillAdParams(this.mContext, inLine, this.adParams, this.mParseParams);
                listener.onParseSuccess(this.adParams, str);
            } else if (wrapper != null) {
                fillAdParams(this.mContext, wrapper, this.adParams, this.mParseParams);
                if (this.unwrapAttempt < 5) {
                    PNHttpClient.makeRequest(this.mContext, wrapper.getVastAdTagURI().getText(), null, null, new PNHttpClient.Listener() { // from class: net.pubnative.lite.sdk.vpaid.response.VastProcessor.1
                        @Override // net.pubnative.lite.sdk.network.PNHttpClient.Listener
                        public void onFailure(Throwable th) {
                            ErrorLog.postError(VastProcessor.this.mContext, VastError.XML_PARSING);
                            Logger.e(VastProcessor.LOG_TAG, "Parse VAST failed: ", th);
                            listener.onParseError(new PlayerInfo("Parse VAST response failed " + th.getMessage()));
                        }

                        @Override // net.pubnative.lite.sdk.network.PNHttpClient.Listener
                        public void onSuccess(String str2) {
                            VastProcessor.this.parseResponse(str2, listener);
                        }
                    });
                    this.unwrapAttempt++;
                    return;
                }
                listener.onParseError(new PlayerInfo("Vast processor reached wrapper limit (5)"));
            }
        } catch (Exception e) {
            ErrorLog.postError(this.mContext, VastError.XML_PARSING);
            Logger.e(LOG_TAG, "Parse VAST failed: ", e);
            listener.onParseError(new PlayerInfo("Parse VAST response failed" + e.getMessage()));
        }
    }
}
