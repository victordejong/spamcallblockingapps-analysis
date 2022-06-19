package com.pubmatic.sdk.video.vastparser;

import android.os.Handler;
import android.os.Looper;
import com.pubmatic.sdk.common.POBError;
import com.pubmatic.sdk.common.network.POBHttpRequest;
import com.pubmatic.sdk.common.network.POBNetworkHandler;
import com.pubmatic.sdk.common.utility.POBUtils;
import com.pubmatic.sdk.video.POBLogConstants;
import com.pubmatic.sdk.video.POBVastError;
import com.pubmatic.sdk.video.vastmodels.POBVast;
import com.pubmatic.sdk.video.vastmodels.POBVastAd;
import com.pubmatic.sdk.video.xmlserialiser.POBXMLParser;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/video/vastparser/POBVastParser.class */
public class POBVastParser {

    /* renamed from: a */
    private POBVastParserListener f1075a;

    /* renamed from: b */
    private int f1076b;

    /* renamed from: d */
    private POBNetworkHandler f1078d;

    /* renamed from: e */
    private int f1079e = 5000;

    /* renamed from: c */
    private Handler f1077c = new Handler(Looper.getMainLooper());

    /* renamed from: com.pubmatic.sdk.video.vastparser.POBVastParser$a */
    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/video/vastparser/POBVastParser$a.class */
    public class RunnableC2003a implements Runnable {

        /* renamed from: a */
        final /* synthetic */ String f1080a;

        RunnableC2003a(String str) {
            POBVastParser.this = r4;
            this.f1080a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            POBVastParser pOBVastParser = POBVastParser.this;
            pOBVastParser.m590a(this.f1080a, pOBVastParser.f1076b, (POBVastAd) null);
        }
    }

    /* renamed from: com.pubmatic.sdk.video.vastparser.POBVastParser$b */
    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/video/vastparser/POBVastParser$b.class */
    public class C2004b implements POBNetworkHandler.POBNetworkListener<String> {

        /* renamed from: a */
        final /* synthetic */ int f1082a;

        /* renamed from: b */
        final /* synthetic */ POBVast f1083b;

        C2004b(int i, POBVast pOBVast) {
            POBVastParser.this = r4;
            this.f1082a = i;
            this.f1083b = pOBVast;
        }

        /* renamed from: a */
        public void onSuccess(String str) {
            if (POBVastParser.this.m590a(str, this.f1082a - 1, this.f1083b.getAds().get(0)) == null) {
                POBVastParser.this.m596a(this.f1083b, 100, POBLogConstants.MSG_XML_PARSING_ERROR);
            }
        }

        @Override // com.pubmatic.sdk.common.network.POBNetworkHandler.POBNetworkListener
        public void onFailure(POBError pOBError) {
            POBVastParser pOBVastParser = POBVastParser.this;
            pOBVastParser.m596a(this.f1083b, pOBVastParser.m598a(pOBError), pOBError.getErrorMessage());
        }
    }

    /* renamed from: com.pubmatic.sdk.video.vastparser.POBVastParser$c */
    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/video/vastparser/POBVastParser$c.class */
    public class RunnableC2005c implements Runnable {

        /* renamed from: a */
        final /* synthetic */ POBVast f1085a;

        /* renamed from: b */
        final /* synthetic */ int f1086b;

        /* renamed from: c */
        final /* synthetic */ String f1087c;

        RunnableC2005c(POBVast pOBVast, int i, String str) {
            POBVastParser.this = r4;
            this.f1085a = pOBVast;
            this.f1086b = i;
            this.f1087c = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            POBVastParser.this.f1075a.onFailure(this.f1085a, new POBVastError(this.f1086b, this.f1087c));
        }
    }

    /* renamed from: com.pubmatic.sdk.video.vastparser.POBVastParser$d */
    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/video/vastparser/POBVastParser$d.class */
    public class RunnableC2006d implements Runnable {

        /* renamed from: a */
        final /* synthetic */ POBVast f1089a;

        RunnableC2006d(POBVast pOBVast) {
            POBVastParser.this = r4;
            this.f1089a = pOBVast;
        }

        @Override // java.lang.Runnable
        public void run() {
            POBVastParser.this.f1075a.onSuccess(this.f1089a);
        }
    }

    public POBVastParser(POBNetworkHandler pOBNetworkHandler, int i, POBVastParserListener pOBVastParserListener) {
        this.f1078d = pOBNetworkHandler;
        this.f1075a = pOBVastParserListener;
        this.f1076b = i;
    }

    /* renamed from: a */
    public int m598a(POBError pOBError) {
        if (pOBError == null || pOBError.getErrorCode() != 1005) {
            return 300;
        }
        return POBVastError.WRAPPER_TIMEOUT;
    }

    /* renamed from: a */
    public POBVast m590a(String str, int i, POBVastAd pOBVastAd) {
        int i2;
        String str2;
        POBVast pOBVast = (POBVast) POBXMLParser.parse(str, POBVast.class);
        if (pOBVast != null) {
            if (pOBVast.getAds() != null && !pOBVast.getAds().isEmpty()) {
                pOBVast.getAds().get(0).setWrapper(pOBVastAd);
            }
            if (pOBVast.getVersion() != null && !m591a(pOBVast.getVersion())) {
                m596a(pOBVast, 102, POBLogConstants.MSG_UNSUPPORTED_VAST_VERSION);
                return pOBVast;
            } else if (m589b(pOBVast)) {
                m597a(pOBVast);
            } else {
                if (i == 0) {
                    i2 = 302;
                    str2 = POBLogConstants.MSG_WRAPPER_THRESHOLD;
                } else {
                    List<POBVastAd> ads = pOBVast.getAds();
                    if (ads == null || ads.isEmpty() || ads.get(0).getAdType() == POBVastAd.POBVastAdType.NO_ADS) {
                        i2 = 303;
                        str2 = POBLogConstants.MSG_NO_VAST_RESPONSE;
                    } else {
                        String vASTAdTagURI = ads.get(0).getVASTAdTagURI();
                        if (vASTAdTagURI == null || vASTAdTagURI.isEmpty()) {
                            i2 = 101;
                            str2 = POBLogConstants.MSG_SCHEMA_VALIDATION_ERROR;
                        } else {
                            POBHttpRequest pOBHttpRequest = new POBHttpRequest();
                            pOBHttpRequest.setUrl(vASTAdTagURI);
                            pOBHttpRequest.setRequestTag("POBVastParser");
                            pOBHttpRequest.setTimeout(this.f1079e);
                            this.f1078d.sendRequest(pOBHttpRequest, new C2004b(i, pOBVast));
                        }
                    }
                }
                m596a(pOBVast, i2, str2);
            }
        } else if (i == this.f1076b) {
            m596a((POBVast) null, 100, POBLogConstants.MSG_XML_PARSING_ERROR);
        }
        return pOBVast;
    }

    /* renamed from: a */
    private void m597a(POBVast pOBVast) {
        if (this.f1075a != null) {
            this.f1077c.post(new RunnableC2006d(pOBVast));
        }
    }

    /* renamed from: a */
    public void m596a(POBVast pOBVast, int i, String str) {
        if (this.f1075a != null) {
            this.f1077c.post(new RunnableC2005c(pOBVast, i, str));
        }
    }

    /* renamed from: a */
    private boolean m591a(String str) {
        boolean z = false;
        if (str != null) {
            try {
                z = false;
                if (Integer.parseInt(str.split("\\.")[0]) >= 2) {
                    z = true;
                }
            } catch (Exception e) {
                z = false;
            }
        }
        return z;
    }

    /* renamed from: b */
    private boolean m589b(POBVast pOBVast) {
        boolean z = false;
        if (pOBVast != null) {
            z = false;
            if (pOBVast.getAds() != null) {
                z = false;
                if (!pOBVast.getAds().isEmpty()) {
                    z = false;
                    if (pOBVast.getAds().get(0).getAdType() == POBVastAd.POBVastAdType.INLINE) {
                        z = true;
                    }
                }
            }
        }
        return z;
    }

    public void parse(String str) {
        POBUtils.runOnBackgroundThread(new RunnableC2003a(str));
    }

    public void setWrapperTimeout(int i) {
        this.f1079e = i;
    }
}
