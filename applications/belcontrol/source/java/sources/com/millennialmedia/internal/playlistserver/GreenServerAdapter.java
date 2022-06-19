package com.millennialmedia.internal.playlistserver;

import android.text.TextUtils;
import android.webkit.URLUtil;
import com.google.android.exoplayer2.C0515C;
import com.millennialmedia.MMLog;
import com.millennialmedia.internal.AdMetadata;
import com.millennialmedia.internal.Handshake;
import com.millennialmedia.internal.PlayList;
import com.millennialmedia.internal.adwrapper.ContentAdWrapperType;
import com.millennialmedia.internal.playlistserver.PlayListServerAdapter;
import com.millennialmedia.internal.utils.HttpUtils;
import com.millennialmedia.internal.utils.ThreadUtils;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/playlistserver/GreenServerAdapter.class */
public class GreenServerAdapter extends PlayListServerAdapter {
    private static final String FALSE = "false";
    private static final String TAG = "GreenServerAdapter";
    private static final String TRUE = "true";

    private static void addParameter(StringBuilder sb, String str, Object obj) {
        String obj2 = obj != null ? obj.toString() : null;
        if (obj != null && !TextUtils.isEmpty(obj2)) {
            try {
                String format = String.format("%s=%s", str, URLEncoder.encode(obj2, C0515C.UTF8_NAME));
                if (sb.length() > 0) {
                    sb.append('&');
                }
                sb.append(format);
            } catch (UnsupportedEncodingException e) {
                if (!MMLog.isDebugEnabled()) {
                    return;
                }
                MMLog.m4069d(TAG, "Error occurred when trying to inject ad url request parameter", e);
            }
        } else if (!MMLog.isDebugEnabled()) {
        } else {
            String str2 = TAG;
            MMLog.m4070d(str2, "Unable to add parameter due to empty value for key <" + str + "> and value <" + obj + ">");
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x010b  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0178  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x018e  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x01b1  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x028d  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x02b4  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0373  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x038f  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0447  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x046d  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x047c  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0493  */
    @android.annotation.SuppressLint({"SimpleDateFormat"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String buildAdRequestParameters(java.util.Map<java.lang.String, java.lang.Object> r7, boolean r8) {
        /*
            Method dump skipped, instructions count: 1175
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.millennialmedia.internal.playlistserver.GreenServerAdapter.buildAdRequestParameters(java.util.Map, boolean):java.lang.String");
    }

    public static PlayList parsePlayListResponse(String str, AdMetadata adMetadata) {
        String l = Long.toString(System.currentTimeMillis() / 1000);
        PlayList playList = new PlayList();
        playList.playListVersion = PlayList.VERSION;
        playList.handshakeConfig = "handshakeId_" + l;
        playList.responseId = "response_" + l;
        playList.placementId = "placementId_" + l;
        playList.placementName = "placementName_" + l;
        playList.siteId = "siteId_" + l;
        ContentAdWrapperType.ContentAdWrapper contentAdWrapper = new ContentAdWrapperType.ContentAdWrapper("itemId", str, adMetadata);
        if (adMetadata != null) {
            contentAdWrapper.creativeId = adMetadata.get("X-MM-Acid");
        }
        contentAdWrapper.adnet = "mydas";
        playList.addItem(contentAdWrapper);
        return playList;
    }

    @Override // com.millennialmedia.internal.playlistserver.PlayListServerAdapter
    public void loadPlayList(final Map<String, Object> map, final PlayListServerAdapter.AdapterLoadListener adapterLoadListener, final int i) {
        ThreadUtils.runOnWorkerThread(new Runnable() { // from class: com.millennialmedia.internal.playlistserver.GreenServerAdapter.1
            @Override // java.lang.Runnable
            public void run() {
                PlayListServerAdapter.AdapterLoadListener adapterLoadListener2;
                RuntimeException runtimeException;
                String activePlaylistServerBaseUrl = Handshake.getActivePlaylistServerBaseUrl();
                if (activePlaylistServerBaseUrl == null) {
                    adapterLoadListener2 = adapterLoadListener;
                    runtimeException = new RuntimeException("Unable to determine base url for request");
                } else {
                    String buildAdRequestParameters = GreenServerAdapter.buildAdRequestParameters(map, URLUtil.isHttpsUrl(activePlaylistServerBaseUrl));
                    if (buildAdRequestParameters == null) {
                        adapterLoadListener2 = adapterLoadListener;
                        runtimeException = new RuntimeException("Unable to create request parameters");
                    } else {
                        String str = activePlaylistServerBaseUrl + buildAdRequestParameters;
                        if (MMLog.isDebugEnabled()) {
                            MMLog.m4070d(GreenServerAdapter.TAG, "Ad request url: " + str);
                        }
                        HttpUtils.Response contentFromGetRequest = HttpUtils.getContentFromGetRequest(str, i);
                        if (contentFromGetRequest.code == 200 && !TextUtils.isEmpty(contentFromGetRequest.content)) {
                            if (MMLog.isDebugEnabled()) {
                                MMLog.m4070d(GreenServerAdapter.TAG, "Ad response content: " + contentFromGetRequest.content);
                            }
                            PlayList parsePlayListResponse = GreenServerAdapter.parsePlayListResponse(contentFromGetRequest.content, contentFromGetRequest.adMetadata);
                            if (parsePlayListResponse == null) {
                                adapterLoadListener.loadFailed(new RuntimeException("Unable to get valid playlist"));
                                return;
                            } else {
                                adapterLoadListener.loadSucceeded(parsePlayListResponse);
                                return;
                            }
                        }
                        adapterLoadListener2 = adapterLoadListener;
                        runtimeException = new RuntimeException("Get request failed to get ad");
                    }
                }
                adapterLoadListener2.loadFailed(runtimeException);
            }
        });
    }
}
