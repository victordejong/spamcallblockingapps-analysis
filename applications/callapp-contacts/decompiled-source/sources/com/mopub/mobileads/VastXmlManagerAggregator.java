package com.mopub.mobileads;

import android.content.Context;
import android.graphics.Point;
import android.os.AsyncTask;
import android.text.TextUtils;
import android.view.Display;
import android.view.WindowManager;
import com.mopub.common.MoPubHttpUrlConnection;
import com.mopub.common.Preconditions;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.Dips;
import com.mopub.common.util.Streams;
import com.mopub.common.util.Strings;
import com.mopub.mobileads.VastResource;
import com.mopub.mobileads.VideoViewabilityTracker;
import com.mopub.mobileads.util.XmlUtils;
import com.mopub.network.Networking;
import com.mopub.network.TrackingRequest;
import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.StringReader;
import java.lang.ref.WeakReference;
import java.net.HttpURLConnection;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import javax.xml.parsers.DocumentBuilderFactory;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
import org.w3c.dom.Node;
import org.xml.sax.InputSource;
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/VastXmlManagerAggregator.class */
public class VastXmlManagerAggregator extends AsyncTask<String, Void, VastVideoConfig> {
    public static final String ADS_BY_AD_SLOT_ID = "adsBy";

    /* renamed from: a  reason: collision with root package name */
    private static final List<String> f34336a = Arrays.asList("video/mp4", "video/3gpp");

    /* renamed from: b  reason: collision with root package name */
    private final WeakReference<a> f34337b;

    /* renamed from: c  reason: collision with root package name */
    private final double f34338c;

    /* renamed from: d  reason: collision with root package name */
    private final Context f34339d;
    private final int e;
    private int f;

    /* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/VastXmlManagerAggregator$a.class */
    interface a {
        void onAggregationComplete(VastVideoConfig vastVideoConfig);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public VastXmlManagerAggregator(a aVar, double d2, int i, Context context) {
        Preconditions.checkNotNull(aVar);
        Preconditions.checkNotNull(context);
        this.f34337b = new WeakReference<>(aVar);
        this.f34338c = d2;
        this.e = i;
        this.f34339d = context.getApplicationContext();
    }

    private VastVideoConfig a(i iVar, List<VastTracker> list) {
        String str;
        j next;
        String a2;
        Preconditions.checkNotNull(iVar);
        Preconditions.checkNotNull(list);
        Iterator<j> it2 = iVar.c().iterator();
        do {
            str = null;
            if (!it2.hasNext()) {
                return null;
            }
            next = it2.next();
            ArrayList arrayList = new ArrayList();
            Node firstMatchingChildNode = XmlUtils.getFirstMatchingChildNode(next.f34407a, "MediaFiles");
            if (firstMatchingChildNode != null) {
                for (Node node : XmlUtils.getMatchingChildNodes(firstMatchingChildNode, "MediaFile")) {
                    arrayList.add(new l(node));
                }
            }
            a2 = a(arrayList);
        } while (a2 == null);
        VastVideoConfig vastVideoConfig = new VastVideoConfig();
        vastVideoConfig.addImpressionTrackers(iVar.a());
        a(next, vastVideoConfig);
        Node firstMatchingChildNode2 = XmlUtils.getFirstMatchingChildNode(next.f34407a, "VideoClicks");
        if (firstMatchingChildNode2 != null) {
            str = XmlUtils.getNodeValue(XmlUtils.getFirstMatchingChildNode(firstMatchingChildNode2, "ClickThrough"));
        }
        vastVideoConfig.setClickThroughUrl(str);
        vastVideoConfig.setNetworkMediaFileUrl(a2);
        vastVideoConfig.addVastCompanionAdConfigs(b(iVar.d()));
        list.addAll(iVar.b());
        vastVideoConfig.addErrorTrackers(list);
        a(iVar, vastVideoConfig);
        b(iVar, vastVideoConfig);
        a(iVar.f34404a, vastVideoConfig);
        return vastVideoConfig;
    }

    private VastVideoConfig a(String str, List<VastTracker> list) {
        boolean z;
        VastVideoConfig a2;
        VastVideoConfig a3;
        Preconditions.checkNotNull(str, "vastXml cannot be null");
        Preconditions.checkNotNull(list, "errorTrackers cannot be null");
        n nVar = new n();
        try {
            Preconditions.checkNotNull(str, "xmlString cannot be null");
            String str2 = "<MPMoVideoXMLDocRoot>" + str.replaceFirst("<\\?.*\\?>", "") + "</MPMoVideoXMLDocRoot>";
            DocumentBuilderFactory newInstance = DocumentBuilderFactory.newInstance();
            newInstance.setCoalescing(true);
            newInstance.setExpandEntityReferences(false);
            nVar.f34409a = newInstance.newDocumentBuilder().parse(new InputSource(new StringReader(str2)));
            List<f> a4 = nVar.a();
            Context context = this.f34339d;
            if (!a4.isEmpty() || nVar.b() == null) {
                z = false;
            } else {
                TrackingRequest.makeVastTrackingHttpRequest(Collections.singletonList(nVar.b()), this.f > 0 ? VastErrorCode.NO_ADS_VAST_RESPONSE : VastErrorCode.UNDEFINED_ERROR, null, null, context);
                z = true;
            }
            if (z) {
                return null;
            }
            for (f fVar : a4) {
                if (a(XmlUtils.getAttributeValue(fVar.f34394a, "sequence"))) {
                    Node firstMatchingChildNode = XmlUtils.getFirstMatchingChildNode(fVar.f34394a, "InLine");
                    i iVar = firstMatchingChildNode != null ? new i(firstMatchingChildNode) : null;
                    if (iVar == null || (a3 = a(iVar, list)) == null) {
                        Node firstMatchingChildNode2 = XmlUtils.getFirstMatchingChildNode(fVar.f34394a, "Wrapper");
                        m mVar = firstMatchingChildNode2 != null ? new m(firstMatchingChildNode2) : null;
                        if (mVar != null) {
                            ArrayList arrayList = new ArrayList(list);
                            arrayList.addAll(mVar.b());
                            String a5 = a(mVar, arrayList);
                            if (!(a5 == null || (a2 = a(a5, arrayList)) == null)) {
                                a2.addImpressionTrackers(mVar.a());
                                for (j jVar : mVar.c()) {
                                    a(jVar, a2);
                                }
                                a(mVar, a2);
                                b(mVar, a2);
                                a(mVar.f34404a, a2);
                                List<h> d2 = mVar.d();
                                if (!a2.hasCompanionAd()) {
                                    a2.addVastCompanionAdConfigs(b(d2));
                                } else {
                                    for (VastCompanionAdConfig vastCompanionAdConfig : a2.getVastCompanionAdConfigs()) {
                                        for (h hVar : d2) {
                                            if (!(!TextUtils.isEmpty(hVar.f34406b.a()) || !TextUtils.isEmpty(hVar.f34406b.c()) || !TextUtils.isEmpty(hVar.f34406b.b()))) {
                                                vastCompanionAdConfig.addClickTrackers(hVar.a());
                                                vastCompanionAdConfig.addCreativeViewTrackers(hVar.b());
                                            }
                                        }
                                    }
                                }
                                a(nVar, a2);
                                return a2;
                            }
                        } else {
                            continue;
                        }
                    } else {
                        a(nVar, a3);
                        return a3;
                    }
                }
            }
            return null;
        } catch (Exception e) {
            MoPubLog.log(MoPubLog.SdkLogEvent.ERROR_WITH_THROWABLE, "Failed to parse VAST XML", e);
            TrackingRequest.makeVastTrackingHttpRequest(list, VastErrorCode.XML_PARSING_ERROR, null, null, this.f34339d);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public VastVideoConfig doInBackground(String... strArr) {
        if (strArr == null || strArr.length == 0 || strArr[0] == null) {
            return null;
        }
        try {
            return a(strArr[0], new ArrayList());
        } catch (Exception e) {
            MoPubLog.log(MoPubLog.SdkLogEvent.ERROR_WITH_THROWABLE, "Unable to generate VastVideoConfig.", e);
            return null;
        }
    }

    private String a(m mVar, List<VastTracker> list) {
        String str;
        String f = mVar.f();
        if (f == null) {
            return null;
        }
        try {
            str = b(f);
        } catch (Exception e) {
            MoPubLog.log(MoPubLog.SdkLogEvent.ERROR_WITH_THROWABLE, "Failed to follow VAST redirect", e);
            str = null;
            if (!list.isEmpty()) {
                TrackingRequest.makeVastTrackingHttpRequest(list, VastErrorCode.WRAPPER_TIMEOUT, null, null, this.f34339d);
                str = null;
            }
        }
        return str;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:55:0x01ba  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x01c0  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x01dd A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:77:0x001c A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v65, types: [double] */
    /* JADX WARN: Type inference failed for: r12v0 */
    /* JADX WARN: Type inference failed for: r12v1 */
    /* JADX WARN: Type inference failed for: r12v2 */
    /* JADX WARN: Type inference failed for: r12v3 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.String a(java.util.List<com.mopub.mobileads.l> r10) {
        /*
            Method dump skipped, instructions count: 499
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mopub.mobileads.VastXmlManagerAggregator.a(java.util.List):java.lang.String");
    }

    private static void a(g gVar, VastVideoConfig vastVideoConfig) {
        VastExtensionParentXmlManager e;
        VideoViewabilityTracker videoViewabilityTracker;
        Preconditions.checkNotNull(gVar);
        Preconditions.checkNotNull(vastVideoConfig);
        if (vastVideoConfig.getVideoViewabilityTracker() == null && (e = gVar.e()) != null) {
            for (VastExtensionXmlManager vastExtensionXmlManager : e.a()) {
                if (MoPubLog.LOGTAG.equals(XmlUtils.getAttributeValue(vastExtensionXmlManager.f34255a, "type"))) {
                    Node firstMatchingChildNode = XmlUtils.getFirstMatchingChildNode(vastExtensionXmlManager.f34255a, VastExtensionXmlManager.VIDEO_VIEWABILITY_TRACKER);
                    if (firstMatchingChildNode == null) {
                        videoViewabilityTracker = null;
                    } else {
                        VideoViewabilityTrackerXmlManager videoViewabilityTrackerXmlManager = new VideoViewabilityTrackerXmlManager(firstMatchingChildNode);
                        Integer a2 = videoViewabilityTrackerXmlManager.a();
                        Integer b2 = videoViewabilityTrackerXmlManager.b();
                        String nodeValue = XmlUtils.getNodeValue(videoViewabilityTrackerXmlManager.f34368a);
                        videoViewabilityTracker = null;
                        if (a2 != null) {
                            videoViewabilityTracker = null;
                            if (b2 != null) {
                                videoViewabilityTracker = TextUtils.isEmpty(nodeValue) ? null : new VideoViewabilityTracker.Builder(nodeValue, a2.intValue(), b2.intValue()).build();
                            }
                        }
                    }
                    vastVideoConfig.setVideoViewabilityTracker(videoViewabilityTracker);
                    return;
                }
            }
        }
    }

    private static void a(j jVar, VastVideoConfig vastVideoConfig) {
        Preconditions.checkNotNull(jVar, "linearXmlManager cannot be null");
        Preconditions.checkNotNull(vastVideoConfig, "vastVideoConfig cannot be null");
        vastVideoConfig.addAbsoluteTrackers(jVar.b());
        vastVideoConfig.addFractionalTrackers(jVar.a());
        vastVideoConfig.addPauseTrackers(jVar.c());
        vastVideoConfig.addResumeTrackers(jVar.d());
        vastVideoConfig.addCompleteTrackers(jVar.a(EventConstants.COMPLETE));
        vastVideoConfig.addCloseTrackers(jVar.e());
        vastVideoConfig.addSkipTrackers(jVar.a(EventConstants.SKIP));
        vastVideoConfig.addClickTrackers(jVar.f());
        if (vastVideoConfig.getSkipOffset() == null) {
            vastVideoConfig.setSkipOffset(jVar.g());
        }
        if (vastVideoConfig.getVastIconConfig() == null) {
            vastVideoConfig.setVastIconConfig(c(jVar.h()));
        }
    }

    private static void a(n nVar, VastVideoConfig vastVideoConfig) {
        Preconditions.checkNotNull(nVar, "xmlManager cannot be null");
        Preconditions.checkNotNull(vastVideoConfig, "vastVideoConfig cannot be null");
        vastVideoConfig.addImpressionTrackers(nVar.c());
        if (vastVideoConfig.getCustomCtaText() == null) {
            vastVideoConfig.setCustomCtaText(nVar.d());
        }
        if (vastVideoConfig.getCustomSkipText() == null) {
            vastVideoConfig.setCustomSkipText(nVar.e());
        }
        if (vastVideoConfig.getCustomCloseIconUrl() == null) {
            vastVideoConfig.setCustomCloseIconUrl(nVar.f());
        }
    }

    private static void a(Node node, VastVideoConfig vastVideoConfig) {
        vastVideoConfig.addViewabilityVendors(new e(node).f34393a);
    }

    private static boolean a(String str) {
        if (TextUtils.isEmpty(str)) {
            return true;
        }
        try {
            return Integer.parseInt(str) < 2;
        } catch (NumberFormatException e) {
            return true;
        }
    }

    private String b(String str) throws IOException {
        Throwable th;
        HttpURLConnection httpURLConnection;
        BufferedInputStream bufferedInputStream;
        Preconditions.checkNotNull(str);
        int i = this.f;
        if (i >= 10) {
            return null;
        }
        this.f = i + 1;
        try {
            httpURLConnection = MoPubHttpUrlConnection.getHttpUrlConnection(str);
            try {
                bufferedInputStream = new BufferedInputStream(httpURLConnection.getInputStream());
            } catch (Throwable th2) {
                th = th2;
                bufferedInputStream = null;
            }
        } catch (Throwable th3) {
            th = th3;
            bufferedInputStream = null;
            httpURLConnection = null;
        }
        try {
            String fromStream = Strings.fromStream(bufferedInputStream);
            Streams.closeStream(bufferedInputStream);
            if (httpURLConnection != null) {
                httpURLConnection.disconnect();
            }
            return fromStream;
        } catch (Throwable th4) {
            th = th4;
            Streams.closeStream(bufferedInputStream);
            if (httpURLConnection != null) {
                httpURLConnection.disconnect();
            }
            throw th;
        }
    }

    private Set<VastCompanionAdConfig> b(List<h> list) {
        VastResource.Type[] values;
        Point point;
        Preconditions.checkNotNull(list, "managers cannot be null");
        HashSet hashSet = new HashSet();
        ArrayList<h> arrayList = new ArrayList(list);
        for (VastResource.Type type : VastResource.Type.values()) {
            for (h hVar : arrayList) {
                Integer attributeValueAsInt = XmlUtils.getAttributeValueAsInt(hVar.f34405a, "width");
                Integer attributeValueAsInt2 = XmlUtils.getAttributeValueAsInt(hVar.f34405a, "height");
                if (attributeValueAsInt != null && attributeValueAsInt.intValue() >= 300 && attributeValueAsInt2 != null && attributeValueAsInt2.intValue() >= 250) {
                    int intValue = attributeValueAsInt.intValue();
                    int intValue2 = attributeValueAsInt2.intValue();
                    Point point2 = new Point(intValue, intValue2);
                    Display defaultDisplay = ((WindowManager) this.f34339d.getSystemService("window")).getDefaultDisplay();
                    int width = defaultDisplay.getWidth();
                    int height = defaultDisplay.getHeight();
                    int dipsToIntPixels = Dips.dipsToIntPixels(intValue, this.f34339d);
                    int dipsToIntPixels2 = Dips.dipsToIntPixels(intValue2, this.f34339d);
                    if (dipsToIntPixels > width - 16 || dipsToIntPixels2 > height - 16) {
                        Point point3 = new Point();
                        if (VastResource.Type.HTML_RESOURCE == type) {
                            point3.x = Math.min(width, dipsToIntPixels);
                            point3.y = Math.min(height, dipsToIntPixels2);
                        } else {
                            float f = dipsToIntPixels;
                            float f2 = f / width;
                            float f3 = dipsToIntPixels2;
                            float f4 = f3 / height;
                            if (f2 >= f4) {
                                point3.x = width;
                                point3.y = (int) (f3 / f2);
                            } else {
                                point3.x = (int) (f / f4);
                                point3.y = height;
                            }
                        }
                        point3.x -= 16;
                        point3.y -= 16;
                        point = point2;
                        if (point3.x >= 0) {
                            if (point3.y < 0) {
                                point = point2;
                            } else {
                                point3.x = Dips.pixelsToIntDips(point3.x, this.f34339d);
                                point3.y = Dips.pixelsToIntDips(point3.y, this.f34339d);
                                point = point3;
                            }
                        }
                    } else {
                        point = point2;
                    }
                    VastResource fromVastResourceXmlManager = VastResource.fromVastResourceXmlManager(hVar.f34406b, type, point.x, point.y);
                    if (fromVastResourceXmlManager != null) {
                        hashSet.add(new VastCompanionAdConfig(point.x, point.y, fromVastResourceXmlManager, XmlUtils.getNodeValue(XmlUtils.getFirstMatchingChildNode(hVar.f34405a, "CompanionClickThrough")), hVar.a(), hVar.b(), null));
                    }
                }
            }
        }
        return hashSet;
    }

    private static void b(g gVar, VastVideoConfig vastVideoConfig) {
        VastExtensionParentXmlManager e = gVar.e();
        if (e != null) {
            for (VastExtensionXmlManager vastExtensionXmlManager : e.a()) {
                if (vastExtensionXmlManager != null) {
                    a(vastExtensionXmlManager.f34255a, vastVideoConfig);
                }
            }
        }
    }

    private static VastIconConfig c(List<VastIconXmlManager> list) {
        VastResource.Type[] values;
        VastResource fromVastResourceXmlManager;
        Preconditions.checkNotNull(list, "managers cannot be null");
        ArrayList<VastIconXmlManager> arrayList = new ArrayList(list);
        for (VastResource.Type type : VastResource.Type.values()) {
            for (VastIconXmlManager vastIconXmlManager : arrayList) {
                Integer a2 = vastIconXmlManager.a();
                Integer b2 = vastIconXmlManager.b();
                if (a2 != null && a2.intValue() > 0 && a2.intValue() <= 300 && b2 != null && b2.intValue() > 0 && b2.intValue() <= 300 && (fromVastResourceXmlManager = VastResource.fromVastResourceXmlManager(vastIconXmlManager.f34268a, type, a2.intValue(), b2.intValue())) != null) {
                    return new VastIconConfig(vastIconXmlManager.a().intValue(), vastIconXmlManager.b().intValue(), vastIconXmlManager.c(), vastIconXmlManager.d(), fromVastResourceXmlManager, vastIconXmlManager.e(), vastIconXmlManager.f(), vastIconXmlManager.g());
                }
            }
        }
        return null;
    }

    @Override // android.os.AsyncTask
    protected void onCancelled() {
        a aVar = this.f34337b.get();
        if (aVar != null) {
            aVar.onAggregationComplete(null);
        }
    }

    @Override // android.os.AsyncTask
    protected /* synthetic */ void onPostExecute(VastVideoConfig vastVideoConfig) {
        VastVideoConfig vastVideoConfig2 = vastVideoConfig;
        a aVar = this.f34337b.get();
        if (aVar != null) {
            aVar.onAggregationComplete(vastVideoConfig2);
        }
    }

    @Override // android.os.AsyncTask
    protected void onPreExecute() {
        Networking.getUserAgent(this.f34339d);
    }
}
