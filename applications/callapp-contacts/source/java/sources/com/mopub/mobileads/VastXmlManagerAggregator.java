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

    /* renamed from: a */
    private static final List<String> f59609a = Arrays.asList("video/mp4", "video/3gpp");

    /* renamed from: b */
    private final WeakReference<AbstractC16831a> f59610b;

    /* renamed from: c */
    private final double f59611c;

    /* renamed from: d */
    private final Context f59612d;

    /* renamed from: e */
    private final int f59613e;

    /* renamed from: f */
    private int f59614f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mopub.mobileads.VastXmlManagerAggregator$a */
    /* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/VastXmlManagerAggregator$a.class */
    public interface AbstractC16831a {
        void onAggregationComplete(VastVideoConfig vastVideoConfig);
    }

    public VastXmlManagerAggregator(AbstractC16831a abstractC16831a, double d, int i, Context context) {
        Preconditions.checkNotNull(abstractC16831a);
        Preconditions.checkNotNull(context);
        this.f59610b = new WeakReference<>(abstractC16831a);
        this.f59611c = d;
        this.f59613e = i;
        this.f59612d = context.getApplicationContext();
    }

    /* renamed from: a */
    private VastVideoConfig m6384a(C16867i c16867i, List<VastTracker> list) {
        String str;
        C16872j next;
        String m6378a;
        Preconditions.checkNotNull(c16867i);
        Preconditions.checkNotNull(list);
        Iterator<C16872j> it2 = c16867i.m6338c().iterator();
        do {
            str = null;
            if (!it2.hasNext()) {
                return null;
            }
            next = it2.next();
            ArrayList arrayList = new ArrayList();
            Node firstMatchingChildNode = XmlUtils.getFirstMatchingChildNode(next.f59707a, "MediaFiles");
            if (firstMatchingChildNode != null) {
                for (Node node : XmlUtils.getMatchingChildNodes(firstMatchingChildNode, "MediaFile")) {
                    arrayList.add(new C16874l(node));
                }
            }
            m6378a = m6378a(arrayList);
        } while (m6378a == null);
        VastVideoConfig vastVideoConfig = new VastVideoConfig();
        vastVideoConfig.addImpressionTrackers(c16867i.m6340a());
        m6383a(next, vastVideoConfig);
        Node firstMatchingChildNode2 = XmlUtils.getFirstMatchingChildNode(next.f59707a, "VideoClicks");
        if (firstMatchingChildNode2 != null) {
            str = XmlUtils.getNodeValue(XmlUtils.getFirstMatchingChildNode(firstMatchingChildNode2, "ClickThrough"));
        }
        vastVideoConfig.setClickThroughUrl(str);
        vastVideoConfig.setNetworkMediaFileUrl(m6378a);
        vastVideoConfig.addVastCompanionAdConfigs(m6373b(c16867i.m6337d()));
        list.addAll(c16867i.m6339b());
        vastVideoConfig.addErrorTrackers(list);
        m6385a(c16867i, vastVideoConfig);
        m6375b(c16867i, vastVideoConfig);
        m6377a(c16867i.f59702a, vastVideoConfig);
        return vastVideoConfig;
    }

    /* renamed from: a */
    private VastVideoConfig m6379a(String str, List<VastTracker> list) {
        boolean z;
        VastVideoConfig m6379a;
        VastVideoConfig m6384a;
        Preconditions.checkNotNull(str, "vastXml cannot be null");
        Preconditions.checkNotNull(list, "errorTrackers cannot be null");
        C16876n c16876n = new C16876n();
        try {
            Preconditions.checkNotNull(str, "xmlString cannot be null");
            String str2 = "<MPMoVideoXMLDocRoot>" + str.replaceFirst("<\\?.*\\?>", "") + "</MPMoVideoXMLDocRoot>";
            DocumentBuilderFactory newInstance = DocumentBuilderFactory.newInstance();
            newInstance.setCoalescing(true);
            newInstance.setExpandEntityReferences(false);
            c16876n.f59709a = newInstance.newDocumentBuilder().parse(new InputSource(new StringReader(str2)));
            List<C16864f> m6321a = c16876n.m6321a();
            Context context = this.f59612d;
            if (!m6321a.isEmpty() || c16876n.m6320b() == null) {
                z = false;
            } else {
                TrackingRequest.makeVastTrackingHttpRequest(Collections.singletonList(c16876n.m6320b()), this.f59614f > 0 ? VastErrorCode.NO_ADS_VAST_RESPONSE : VastErrorCode.UNDEFINED_ERROR, null, null, context);
                z = true;
            }
            if (z) {
                return null;
            }
            for (C16864f c16864f : m6321a) {
                if (m6380a(XmlUtils.getAttributeValue(c16864f.f59692a, "sequence"))) {
                    Node firstMatchingChildNode = XmlUtils.getFirstMatchingChildNode(c16864f.f59692a, "InLine");
                    C16867i c16867i = firstMatchingChildNode != null ? new C16867i(firstMatchingChildNode) : null;
                    if (c16867i != null && (m6384a = m6384a(c16867i, list)) != null) {
                        m6381a(c16876n, m6384a);
                        return m6384a;
                    }
                    Node firstMatchingChildNode2 = XmlUtils.getFirstMatchingChildNode(c16864f.f59692a, "Wrapper");
                    C16875m c16875m = firstMatchingChildNode2 != null ? new C16875m(firstMatchingChildNode2) : null;
                    if (c16875m != null) {
                        ArrayList arrayList = new ArrayList(list);
                        arrayList.addAll(c16875m.m6339b());
                        String m6382a = m6382a(c16875m, arrayList);
                        if (m6382a != null && (m6379a = m6379a(m6382a, arrayList)) != null) {
                            m6379a.addImpressionTrackers(c16875m.m6340a());
                            for (C16872j c16872j : c16875m.m6338c()) {
                                m6383a(c16872j, m6379a);
                            }
                            m6385a(c16875m, m6379a);
                            m6375b(c16875m, m6379a);
                            m6377a(c16875m.f59702a, m6379a);
                            List<C16866h> d = c16875m.m6337d();
                            if (!m6379a.hasCompanionAd()) {
                                m6379a.addVastCompanionAdConfigs(m6373b(d));
                            } else {
                                for (VastCompanionAdConfig vastCompanionAdConfig : m6379a.getVastCompanionAdConfigs()) {
                                    for (C16866h c16866h : d) {
                                        if (!(!TextUtils.isEmpty(c16866h.f59704b.m6410a()) || !TextUtils.isEmpty(c16866h.f59704b.m6408c()) || !TextUtils.isEmpty(c16866h.f59704b.m6409b()))) {
                                            vastCompanionAdConfig.addClickTrackers(c16866h.m6335a());
                                            vastCompanionAdConfig.addCreativeViewTrackers(c16866h.m6334b());
                                        }
                                    }
                                }
                            }
                            m6381a(c16876n, m6379a);
                            return m6379a;
                        }
                    } else {
                        continue;
                    }
                }
            }
            return null;
        } catch (Exception e) {
            MoPubLog.log(MoPubLog.SdkLogEvent.ERROR_WITH_THROWABLE, "Failed to parse VAST XML", e);
            TrackingRequest.makeVastTrackingHttpRequest(list, VastErrorCode.XML_PARSING_ERROR, null, null, this.f59612d);
            return null;
        }
    }

    /* renamed from: a */
    public VastVideoConfig doInBackground(String... strArr) {
        if (strArr == null || strArr.length == 0 || strArr[0] == null) {
            return null;
        }
        try {
            return m6379a(strArr[0], new ArrayList());
        } catch (Exception e) {
            MoPubLog.log(MoPubLog.SdkLogEvent.ERROR_WITH_THROWABLE, "Unable to generate VastVideoConfig.", e);
            return null;
        }
    }

    /* renamed from: a */
    private String m6382a(C16875m c16875m, List<VastTracker> list) {
        String str;
        String m6322f = c16875m.m6322f();
        if (m6322f == null) {
            return null;
        }
        try {
            str = m6374b(m6322f);
        } catch (Exception e) {
            MoPubLog.log(MoPubLog.SdkLogEvent.ERROR_WITH_THROWABLE, "Failed to follow VAST redirect", e);
            str = null;
            if (!list.isEmpty()) {
                TrackingRequest.makeVastTrackingHttpRequest(list, VastErrorCode.WRAPPER_TIMEOUT, null, null, this.f59612d);
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
    /* JADX WARN: Type inference failed for: r0v63 */
    /* JADX WARN: Type inference failed for: r0v64 */
    /* JADX WARN: Type inference failed for: r0v65, types: [double] */
    /* JADX WARN: Type inference failed for: r0v87, types: [double] */
    /* JADX WARN: Type inference failed for: r12v0 */
    /* JADX WARN: Type inference failed for: r12v1 */
    /* JADX WARN: Type inference failed for: r12v2 */
    /* JADX WARN: Type inference failed for: r12v3 */
    /* JADX WARN: Type inference failed for: r1v16, types: [double] */
    /* JADX WARN: Type inference failed for: r20v3 */
    /* JADX WARN: Type inference failed for: r20v4 */
    /* JADX WARN: Type inference failed for: r20v5 */
    /* JADX WARN: Type inference failed for: r20v6 */
    /* JADX WARN: Type inference failed for: r22v1 */
    /* JADX WARN: Type inference failed for: r22v3 */
    /* JADX WARN: Type inference failed for: r22v4 */
    /* JADX WARN: Type inference failed for: r28v0 */
    /* JADX WARN: Type inference failed for: r28v1 */
    /* JADX WARN: Type inference failed for: r28v2 */
    /* JADX WARN: Type inference failed for: r3v2, types: [double] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.String m6378a(java.util.List<com.mopub.mobileads.C16874l> r10) {
        /*
            Method dump skipped, instructions count: 499
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mopub.mobileads.VastXmlManagerAggregator.m6378a(java.util.List):java.lang.String");
    }

    /* renamed from: a */
    private static void m6385a(AbstractC16865g abstractC16865g, VastVideoConfig vastVideoConfig) {
        VastExtensionParentXmlManager m6336e;
        VideoViewabilityTracker videoViewabilityTracker;
        Preconditions.checkNotNull(abstractC16865g);
        Preconditions.checkNotNull(vastVideoConfig);
        if (vastVideoConfig.getVideoViewabilityTracker() == null && (m6336e = abstractC16865g.m6336e()) != null) {
            for (VastExtensionXmlManager vastExtensionXmlManager : m6336e.m6421a()) {
                if (MoPubLog.LOGTAG.equals(XmlUtils.getAttributeValue(vastExtensionXmlManager.f59468a, "type"))) {
                    Node firstMatchingChildNode = XmlUtils.getFirstMatchingChildNode(vastExtensionXmlManager.f59468a, VastExtensionXmlManager.VIDEO_VIEWABILITY_TRACKER);
                    if (firstMatchingChildNode == null) {
                        videoViewabilityTracker = null;
                    } else {
                        VideoViewabilityTrackerXmlManager videoViewabilityTrackerXmlManager = new VideoViewabilityTrackerXmlManager(firstMatchingChildNode);
                        Integer m6355a = videoViewabilityTrackerXmlManager.m6355a();
                        Integer m6354b = videoViewabilityTrackerXmlManager.m6354b();
                        String nodeValue = XmlUtils.getNodeValue(videoViewabilityTrackerXmlManager.f59652a);
                        videoViewabilityTracker = null;
                        if (m6355a != null) {
                            videoViewabilityTracker = null;
                            if (m6354b != null) {
                                videoViewabilityTracker = TextUtils.isEmpty(nodeValue) ? null : new VideoViewabilityTracker.Builder(nodeValue, m6355a.intValue(), m6354b.intValue()).build();
                            }
                        }
                    }
                    vastVideoConfig.setVideoViewabilityTracker(videoViewabilityTracker);
                    return;
                }
            }
        }
    }

    /* renamed from: a */
    private static void m6383a(C16872j c16872j, VastVideoConfig vastVideoConfig) {
        Preconditions.checkNotNull(c16872j, "linearXmlManager cannot be null");
        Preconditions.checkNotNull(vastVideoConfig, "vastVideoConfig cannot be null");
        vastVideoConfig.addAbsoluteTrackers(c16872j.m6330b());
        vastVideoConfig.addFractionalTrackers(c16872j.m6333a());
        vastVideoConfig.addPauseTrackers(c16872j.m6328c());
        vastVideoConfig.addResumeTrackers(c16872j.m6327d());
        vastVideoConfig.addCompleteTrackers(c16872j.m6332a(EventConstants.COMPLETE));
        vastVideoConfig.addCloseTrackers(c16872j.m6326e());
        vastVideoConfig.addSkipTrackers(c16872j.m6332a(EventConstants.SKIP));
        vastVideoConfig.addClickTrackers(c16872j.m6325f());
        if (vastVideoConfig.getSkipOffset() == null) {
            vastVideoConfig.setSkipOffset(c16872j.m6324g());
        }
        if (vastVideoConfig.getVastIconConfig() == null) {
            vastVideoConfig.setVastIconConfig(m6372c(c16872j.m6323h()));
        }
    }

    /* renamed from: a */
    private static void m6381a(C16876n c16876n, VastVideoConfig vastVideoConfig) {
        Preconditions.checkNotNull(c16876n, "xmlManager cannot be null");
        Preconditions.checkNotNull(vastVideoConfig, "vastVideoConfig cannot be null");
        vastVideoConfig.addImpressionTrackers(c16876n.m6319c());
        if (vastVideoConfig.getCustomCtaText() == null) {
            vastVideoConfig.setCustomCtaText(c16876n.m6318d());
        }
        if (vastVideoConfig.getCustomSkipText() == null) {
            vastVideoConfig.setCustomSkipText(c16876n.m6317e());
        }
        if (vastVideoConfig.getCustomCloseIconUrl() == null) {
            vastVideoConfig.setCustomCloseIconUrl(c16876n.m6316f());
        }
    }

    /* renamed from: a */
    private static void m6377a(Node node, VastVideoConfig vastVideoConfig) {
        vastVideoConfig.addViewabilityVendors(new C16863e(node).f59691a);
    }

    /* renamed from: a */
    private static boolean m6380a(String str) {
        if (TextUtils.isEmpty(str)) {
            return true;
        }
        try {
            return Integer.parseInt(str) < 2;
        } catch (NumberFormatException e) {
            return true;
        }
    }

    /* renamed from: b */
    private String m6374b(String str) throws IOException {
        Throwable th;
        HttpURLConnection httpURLConnection;
        BufferedInputStream bufferedInputStream;
        Preconditions.checkNotNull(str);
        int i = this.f59614f;
        if (i < 10) {
            this.f59614f = i + 1;
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
        return null;
    }

    /* renamed from: b */
    private Set<VastCompanionAdConfig> m6373b(List<C16866h> list) {
        VastResource.Type[] values;
        Point point;
        Preconditions.checkNotNull(list, "managers cannot be null");
        HashSet hashSet = new HashSet();
        ArrayList<C16866h> arrayList = new ArrayList(list);
        for (VastResource.Type type : VastResource.Type.values()) {
            for (C16866h c16866h : arrayList) {
                Integer attributeValueAsInt = XmlUtils.getAttributeValueAsInt(c16866h.f59703a, "width");
                Integer attributeValueAsInt2 = XmlUtils.getAttributeValueAsInt(c16866h.f59703a, "height");
                if (attributeValueAsInt != null && attributeValueAsInt.intValue() >= 300 && attributeValueAsInt2 != null && attributeValueAsInt2.intValue() >= 250) {
                    int intValue = attributeValueAsInt.intValue();
                    int intValue2 = attributeValueAsInt2.intValue();
                    Point point2 = new Point(intValue, intValue2);
                    Display defaultDisplay = ((WindowManager) this.f59612d.getSystemService("window")).getDefaultDisplay();
                    int width = defaultDisplay.getWidth();
                    int height = defaultDisplay.getHeight();
                    int dipsToIntPixels = Dips.dipsToIntPixels(intValue, this.f59612d);
                    int dipsToIntPixels2 = Dips.dipsToIntPixels(intValue2, this.f59612d);
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
                                point3.x = Dips.pixelsToIntDips(point3.x, this.f59612d);
                                point3.y = Dips.pixelsToIntDips(point3.y, this.f59612d);
                                point = point3;
                            }
                        }
                    } else {
                        point = point2;
                    }
                    VastResource fromVastResourceXmlManager = VastResource.fromVastResourceXmlManager(c16866h.f59704b, type, point.x, point.y);
                    if (fromVastResourceXmlManager != null) {
                        hashSet.add(new VastCompanionAdConfig(point.x, point.y, fromVastResourceXmlManager, XmlUtils.getNodeValue(XmlUtils.getFirstMatchingChildNode(c16866h.f59703a, "CompanionClickThrough")), c16866h.m6335a(), c16866h.m6334b(), null));
                    }
                }
            }
        }
        return hashSet;
    }

    /* renamed from: b */
    private static void m6375b(AbstractC16865g abstractC16865g, VastVideoConfig vastVideoConfig) {
        VastExtensionParentXmlManager m6336e = abstractC16865g.m6336e();
        if (m6336e != null) {
            for (VastExtensionXmlManager vastExtensionXmlManager : m6336e.m6421a()) {
                if (vastExtensionXmlManager != null) {
                    m6377a(vastExtensionXmlManager.f59468a, vastVideoConfig);
                }
            }
        }
    }

    /* renamed from: c */
    private static VastIconConfig m6372c(List<VastIconXmlManager> list) {
        VastResource.Type[] values;
        VastResource fromVastResourceXmlManager;
        Preconditions.checkNotNull(list, "managers cannot be null");
        ArrayList<VastIconXmlManager> arrayList = new ArrayList(list);
        for (VastResource.Type type : VastResource.Type.values()) {
            for (VastIconXmlManager vastIconXmlManager : arrayList) {
                Integer m6420a = vastIconXmlManager.m6420a();
                Integer m6419b = vastIconXmlManager.m6419b();
                if (m6420a != null && m6420a.intValue() > 0 && m6420a.intValue() <= 300 && m6419b != null && m6419b.intValue() > 0 && m6419b.intValue() <= 300 && (fromVastResourceXmlManager = VastResource.fromVastResourceXmlManager(vastIconXmlManager.f59485a, type, m6420a.intValue(), m6419b.intValue())) != null) {
                    return new VastIconConfig(vastIconXmlManager.m6420a().intValue(), vastIconXmlManager.m6419b().intValue(), vastIconXmlManager.m6418c(), vastIconXmlManager.m6417d(), fromVastResourceXmlManager, vastIconXmlManager.m6416e(), vastIconXmlManager.m6415f(), vastIconXmlManager.m6414g());
                }
            }
        }
        return null;
    }

    @Override // android.os.AsyncTask
    protected void onCancelled() {
        AbstractC16831a abstractC16831a = this.f59610b.get();
        if (abstractC16831a != null) {
            abstractC16831a.onAggregationComplete(null);
        }
    }

    @Override // android.os.AsyncTask
    protected /* synthetic */ void onPostExecute(VastVideoConfig vastVideoConfig) {
        VastVideoConfig vastVideoConfig2 = vastVideoConfig;
        AbstractC16831a abstractC16831a = this.f59610b.get();
        if (abstractC16831a != null) {
            abstractC16831a.onAggregationComplete(vastVideoConfig2);
        }
    }

    @Override // android.os.AsyncTask
    protected void onPreExecute() {
        Networking.getUserAgent(this.f59612d);
    }
}
