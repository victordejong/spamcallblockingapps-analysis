package com.mopub.mobileads;

import android.content.Context;
import android.graphics.Point;
import android.os.AsyncTask;
import android.view.Display;
import android.view.WindowManager;
import com.amazon.device.ads.MraidCloseCommand;
import com.mopub.common.Preconditions;
import com.mopub.common.ViewabilityVendor;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.Dips;
import com.mopub.mobileads.VastResource;
import com.mopub.mobileads.VastTracker;
import com.mopub.mobileads.util.XmlUtils;
import com.mopub.network.Networking;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ContentFormat;
import e.n.b.a1;
import e.n.b.r0;
import e.n.b.s0;
import e.n.b.u0;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import org.w3c.dom.Node;
/* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/VastXmlManagerAggregator.class */
public class VastXmlManagerAggregator extends AsyncTask<String, Void, VastVideoConfig> {
    public static final String ADS_BY_AD_SLOT_ID = "adsBy";

    /* renamed from: f */
    public static final List<String> f8946f = Arrays.asList(ContentFormat.IMAGE_MP4, "video/3gpp");

    /* renamed from: a */
    public final WeakReference<AbstractC2674a> f8947a;

    /* renamed from: b */
    public final double f8948b;

    /* renamed from: c */
    public final Context f8949c;

    /* renamed from: d */
    public final int f8950d;

    /* renamed from: e */
    public int f8951e;

    /* renamed from: com.mopub.mobileads.VastXmlManagerAggregator$a */
    /* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/VastXmlManagerAggregator$a.class */
    public interface AbstractC2674a {
        void onAggregationComplete(VastVideoConfig vastVideoConfig);
    }

    public VastXmlManagerAggregator(AbstractC2674a abstractC2674a, double d, int i, Context context) {
        Preconditions.checkNotNull(abstractC2674a);
        Preconditions.checkNotNull(context);
        this.f8947a = new WeakReference<>(abstractC2674a);
        this.f8948b = d;
        this.f8950d = i;
        this.f8949c = context.getApplicationContext();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:103:0x036a  */
    /* JADX WARN: Removed duplicated region for block: B:104:0x0370  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x0392  */
    /* JADX WARN: Removed duplicated region for block: B:154:0x054f A[Catch: Exception -> 0x0557, TRY_ENTER, TryCatch #4 {Exception -> 0x0557, blocks: (B:135:0x04ef, B:138:0x0501, B:146:0x0528, B:152:0x0545, B:154:0x054f, B:156:0x0556), top: B:206:0x04ef }] */
    /* JADX WARN: Removed duplicated region for block: B:211:0x00ff A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:217:0x00b4 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:224:0x03af A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v123 */
    /* JADX WARN: Type inference failed for: r0v15 */
    /* JADX WARN: Type inference failed for: r0v228 */
    /* JADX WARN: Type inference failed for: r0v230 */
    /* JADX WARN: Type inference failed for: r0v243 */
    /* JADX WARN: Type inference failed for: r0v274 */
    /* JADX WARN: Type inference failed for: r0v277, types: [double] */
    /* JADX WARN: Type inference failed for: r0v278 */
    /* JADX WARN: Type inference failed for: r0v300, types: [double] */
    /* JADX WARN: Type inference failed for: r0v34 */
    /* JADX WARN: Type inference failed for: r12v0 */
    /* JADX WARN: Type inference failed for: r12v11 */
    /* JADX WARN: Type inference failed for: r12v12 */
    /* JADX WARN: Type inference failed for: r12v13 */
    /* JADX WARN: Type inference failed for: r12v14 */
    /* JADX WARN: Type inference failed for: r12v18 */
    /* JADX WARN: Type inference failed for: r12v19 */
    /* JADX WARN: Type inference failed for: r12v2 */
    /* JADX WARN: Type inference failed for: r12v20 */
    /* JADX WARN: Type inference failed for: r12v3 */
    /* JADX WARN: Type inference failed for: r12v5 */
    /* JADX WARN: Type inference failed for: r12v6 */
    /* JADX WARN: Type inference failed for: r12v7 */
    /* JADX WARN: Type inference failed for: r19v0 */
    /* JADX WARN: Type inference failed for: r19v1 */
    /* JADX WARN: Type inference failed for: r19v2 */
    /* JADX WARN: Type inference failed for: r1v83 */
    /* JADX WARN: Type inference failed for: r1v84, types: [double] */
    /* JADX WARN: Type inference failed for: r27v0 */
    /* JADX WARN: Type inference failed for: r27v1 */
    /* JADX WARN: Type inference failed for: r27v2 */
    /* JADX WARN: Type inference failed for: r27v4 */
    /* JADX WARN: Type inference failed for: r27v5 */
    /* JADX WARN: Type inference failed for: r27v6 */
    /* JADX WARN: Type inference failed for: r27v7 */
    /* JADX WARN: Type inference failed for: r27v8 */
    /* JADX WARN: Type inference failed for: r2v26, types: [double] */
    /* JADX WARN: Type inference failed for: r33v0 */
    /* JADX WARN: Type inference failed for: r33v2 */
    /* JADX WARN: Type inference failed for: r33v3 */
    /* JADX WARN: Type inference failed for: r7v0, types: [com.mopub.mobileads.VastXmlManagerAggregator] */
    @com.mopub.common.VisibleForTesting
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.mopub.mobileads.VastVideoConfig m36222a(java.lang.String r8, java.util.List<com.mopub.mobileads.VastTracker> r9) {
        /*
            Method dump skipped, instructions count: 1783
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mopub.mobileads.VastXmlManagerAggregator.m36222a(java.lang.String, java.util.List):com.mopub.mobileads.VastVideoConfig");
    }

    @VisibleForTesting
    /* renamed from: b */
    public Set<VastCompanionAdConfig> m36221b(List<s0> list) {
        Point point;
        Preconditions.checkNotNull(list, "managers cannot be null");
        HashSet hashSet = new HashSet();
        ArrayList arrayList = new ArrayList(list);
        VastResource.Type[] values = VastResource.Type.values();
        for (int i = 0; i < 4; i++) {
            VastResource.Type type = values[i];
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                s0 s0Var = (s0) it.next();
                Integer attributeValueAsInt = XmlUtils.getAttributeValueAsInt(s0Var.a, "width");
                Integer attributeValueAsInt2 = XmlUtils.getAttributeValueAsInt(s0Var.a, "height");
                if (attributeValueAsInt != null && attributeValueAsInt.intValue() >= 300 && attributeValueAsInt2 != null && attributeValueAsInt2.intValue() >= 250) {
                    int intValue = attributeValueAsInt.intValue();
                    int intValue2 = attributeValueAsInt2.intValue();
                    Point point2 = new Point(intValue, intValue2);
                    Display defaultDisplay = ((WindowManager) this.f8949c.getSystemService("window")).getDefaultDisplay();
                    int width = defaultDisplay.getWidth();
                    int height = defaultDisplay.getHeight();
                    int dipsToIntPixels = Dips.dipsToIntPixels(intValue, this.f8949c);
                    int dipsToIntPixels2 = Dips.dipsToIntPixels(intValue2, this.f8949c);
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
                        int i2 = point3.x - 16;
                        point3.x = i2;
                        int i3 = point3.y - 16;
                        point3.y = i3;
                        point = point2;
                        if (i2 >= 0) {
                            if (i3 < 0) {
                                point = point2;
                            } else {
                                point3.x = Dips.pixelsToIntDips(i2, this.f8949c);
                                point3.y = Dips.pixelsToIntDips(point3.y, this.f8949c);
                                point = point3;
                            }
                        }
                    } else {
                        point = point2;
                    }
                    VastResource fromVastResourceXmlManager = VastResource.fromVastResourceXmlManager(s0Var.b, type, point.x, point.y);
                    if (fromVastResourceXmlManager != null) {
                        hashSet.add(new VastCompanionAdConfig(point.x, point.y, fromVastResourceXmlManager, XmlUtils.getNodeValue(XmlUtils.getFirstMatchingChildNode(s0Var.a, "CompanionClickThrough")), s0Var.a(), s0Var.b(), null));
                    }
                }
            }
        }
        return hashSet;
    }

    /* renamed from: c */
    public final void m36220c(Node node, VastVideoConfig vastVideoConfig) {
        List<Node> matchingChildNodes;
        HashSet hashSet = new HashSet();
        if (node != null && (matchingChildNodes = XmlUtils.getMatchingChildNodes(XmlUtils.getFirstMatchingChildNode(node, "AdVerifications"), "Verification")) != null && !matchingChildNodes.isEmpty()) {
            for (Node node2 : matchingChildNodes) {
                Node firstMatchingChildNode = XmlUtils.getFirstMatchingChildNode(node2, "JavaScriptResource", "apiFramework", Collections.singletonList("omid"));
                if (firstMatchingChildNode != null) {
                    Node firstMatchingChildNode2 = XmlUtils.getFirstMatchingChildNode(XmlUtils.getFirstMatchingChildNode(node2, "TrackingEvents"), "Tracking", "event", Collections.singletonList("verificationNotExecuted"));
                    Node firstMatchingChildNode3 = XmlUtils.getFirstMatchingChildNode(node2, "VerificationParameters");
                    ViewabilityVendor.Builder builder = new ViewabilityVendor.Builder(XmlUtils.getNodeValue(firstMatchingChildNode));
                    builder.withApiFramework("omid").withVendorKey(XmlUtils.getAttributeValue(node2, "vendor")).withVerificationParameters(XmlUtils.getNodeValue(firstMatchingChildNode3)).withVerificationNotExecuted(XmlUtils.getNodeValue(firstMatchingChildNode2));
                    ViewabilityVendor build = builder.build();
                    if (build != null) {
                        hashSet.add(build);
                    }
                }
            }
        }
        vastVideoConfig.addViewabilityVendors(hashSet);
    }

    /* renamed from: d */
    public final void m36219d(u0 u0Var, VastVideoConfig vastVideoConfig) {
        VastIconConfig vastIconConfig;
        VastResource fromVastResourceXmlManager;
        Integer num;
        Integer num2;
        Preconditions.checkNotNull(u0Var, "linearXmlManager cannot be null");
        Preconditions.checkNotNull(vastVideoConfig, "vastVideoConfig cannot be null");
        Objects.requireNonNull(u0Var);
        ArrayList arrayList = new ArrayList();
        Iterator it = ((ArrayList) u0Var.b(AnalyticsConstants.START)).iterator();
        while (it.hasNext()) {
            arrayList.add(new VastAbsoluteProgressTracker$Builder((String) it.next(), 0).build());
        }
        Node firstMatchingChildNode = XmlUtils.getFirstMatchingChildNode(u0Var.a, "TrackingEvents");
        if (firstMatchingChildNode != null) {
            for (Node node : XmlUtils.getMatchingChildNodes(firstMatchingChildNode, "Tracking", "event", Collections.singletonList("progress"))) {
                String attributeValue = XmlUtils.getAttributeValue(node, VastIconXmlManager.OFFSET);
                if (attributeValue != null) {
                    String trim = attributeValue.trim();
                    VastAbsoluteProgressTracker$Companion vastAbsoluteProgressTracker$Companion = VastAbsoluteProgressTracker.Companion;
                    if (vastAbsoluteProgressTracker$Companion.isAbsoluteTracker(trim)) {
                        String nodeValue = XmlUtils.getNodeValue(node);
                        try {
                            Integer parseAbsoluteOffset = vastAbsoluteProgressTracker$Companion.parseAbsoluteOffset(trim);
                            if (parseAbsoluteOffset != null && parseAbsoluteOffset.intValue() >= 0) {
                                arrayList.add(new VastAbsoluteProgressTracker$Builder(nodeValue, parseAbsoluteOffset.intValue()).build());
                            }
                        } catch (NumberFormatException e) {
                            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, String.format("Failed to parse VAST progress tracker %s", trim));
                        }
                    }
                }
            }
            for (Node node2 : XmlUtils.getMatchingChildNodes(firstMatchingChildNode, "Tracking", "event", Collections.singletonList("creativeView"))) {
                String nodeValue2 = XmlUtils.getNodeValue(node2);
                if (nodeValue2 != null) {
                    arrayList.add(new VastAbsoluteProgressTracker$Builder(nodeValue2, 0).build());
                }
            }
        }
        Collections.sort(arrayList);
        vastVideoConfig.addAbsoluteTrackers(arrayList);
        ArrayList arrayList2 = new ArrayList();
        u0Var.a(arrayList2, u0Var.b("firstQuartile"), 0.25f);
        u0Var.a(arrayList2, u0Var.b("midpoint"), 0.5f);
        u0Var.a(arrayList2, u0Var.b("thirdQuartile"), 0.75f);
        Node firstMatchingChildNode2 = XmlUtils.getFirstMatchingChildNode(u0Var.a, "TrackingEvents");
        if (firstMatchingChildNode2 != null) {
            for (Node node3 : XmlUtils.getMatchingChildNodes(firstMatchingChildNode2, "Tracking", "event", Collections.singletonList("progress"))) {
                String attributeValue2 = XmlUtils.getAttributeValue(node3, VastIconXmlManager.OFFSET);
                if (attributeValue2 != null) {
                    String trim2 = attributeValue2.trim();
                    if (VastFractionalProgressTracker.Companion.isPercentageTracker(trim2)) {
                        String nodeValue3 = XmlUtils.getNodeValue(node3);
                        try {
                            float parseFloat = Float.parseFloat(trim2.replace("%", "")) / 100.0f;
                            if (parseFloat >= 0.0f) {
                                arrayList2.add(new VastFractionalProgressTracker$Builder(nodeValue3, parseFloat).build());
                            }
                        } catch (NumberFormatException e2) {
                            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, String.format("Failed to parse VAST progress tracker %s", trim2));
                        }
                    }
                }
            }
        }
        Collections.sort(arrayList2);
        vastVideoConfig.addFractionalTrackers(arrayList2);
        List b = u0Var.b("pause");
        ArrayList arrayList3 = new ArrayList();
        Iterator it2 = ((ArrayList) b).iterator();
        while (it2.hasNext()) {
            arrayList3.add(new VastTracker.Builder((String) it2.next()).isRepeatable(true).build());
        }
        vastVideoConfig.addPauseTrackers(arrayList3);
        List b2 = u0Var.b("resume");
        ArrayList arrayList4 = new ArrayList();
        Iterator it3 = ((ArrayList) b2).iterator();
        while (it3.hasNext()) {
            arrayList4.add(new VastTracker.Builder((String) it3.next()).isRepeatable(true).build());
        }
        vastVideoConfig.addResumeTrackers(arrayList4);
        vastVideoConfig.addCompleteTrackers(u0Var.c(AnalyticsConstants.COMPLETE));
        List<? extends VastTracker> c = u0Var.c(MraidCloseCommand.NAME);
        ((ArrayList) c).addAll(u0Var.c("closeLinear"));
        vastVideoConfig.addCloseTrackers(c);
        vastVideoConfig.addSkipTrackers(u0Var.c("skip"));
        ArrayList arrayList5 = new ArrayList();
        Node firstMatchingChildNode3 = XmlUtils.getFirstMatchingChildNode(u0Var.a, "VideoClicks");
        if (firstMatchingChildNode3 != null) {
            for (Node node4 : XmlUtils.getMatchingChildNodes(firstMatchingChildNode3, "ClickTracking")) {
                String nodeValue4 = XmlUtils.getNodeValue(node4);
                if (nodeValue4 != null) {
                    arrayList5.add(new VastTracker.Builder(nodeValue4).build());
                }
            }
        }
        vastVideoConfig.addClickTrackers(arrayList5);
        String str = null;
        if (vastVideoConfig.getSkipOffset() == null) {
            String attributeValue3 = XmlUtils.getAttributeValue(u0Var.a, "skipoffset");
            vastVideoConfig.setSkipOffset((attributeValue3 != null && !attributeValue3.trim().isEmpty()) ? attributeValue3.trim() : null);
        }
        if (vastVideoConfig.getVastIconConfig() == null) {
            ArrayList arrayList6 = new ArrayList();
            Node firstMatchingChildNode4 = XmlUtils.getFirstMatchingChildNode(u0Var.a, "Icons");
            if (firstMatchingChildNode4 != null) {
                for (Node node5 : XmlUtils.getMatchingChildNodes(firstMatchingChildNode4, "Icon")) {
                    arrayList6.add(new VastIconXmlManager(node5));
                }
            }
            Preconditions.checkNotNull(arrayList6, "managers cannot be null");
            ArrayList arrayList7 = new ArrayList(arrayList6);
            VastResource.Type[] values = VastResource.Type.values();
            int i = 0;
            while (true) {
                vastIconConfig = null;
                if (i >= 4) {
                    break;
                }
                VastResource.Type type = values[i];
                Iterator it4 = arrayList7.iterator();
                while (it4.hasNext()) {
                    VastIconXmlManager vastIconXmlManager = (VastIconXmlManager) it4.next();
                    Integer attributeValueAsInt = XmlUtils.getAttributeValueAsInt(vastIconXmlManager.f8873a, "width");
                    Integer attributeValueAsInt2 = XmlUtils.getAttributeValueAsInt(vastIconXmlManager.f8873a, "height");
                    if (attributeValueAsInt != null && attributeValueAsInt.intValue() > 0 && attributeValueAsInt.intValue() <= 300 && attributeValueAsInt2 != null && attributeValueAsInt2.intValue() > 0 && attributeValueAsInt2.intValue() <= 300 && (fromVastResourceXmlManager = VastResource.fromVastResourceXmlManager(vastIconXmlManager.f8874b, type, attributeValueAsInt.intValue(), attributeValueAsInt2.intValue())) != null) {
                        int intValue = XmlUtils.getAttributeValueAsInt(vastIconXmlManager.f8873a, "width").intValue();
                        int intValue2 = XmlUtils.getAttributeValueAsInt(vastIconXmlManager.f8873a, "height").intValue();
                        String attributeValue4 = XmlUtils.getAttributeValue(vastIconXmlManager.f8873a, VastIconXmlManager.OFFSET);
                        try {
                            num = VastAbsoluteProgressTracker.Companion.parseAbsoluteOffset(attributeValue4);
                        } catch (NumberFormatException e3) {
                            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, String.format("Invalid VAST icon offset format: %s:", attributeValue4));
                            num = null;
                        }
                        String attributeValue5 = XmlUtils.getAttributeValue(vastIconXmlManager.f8873a, VastIconXmlManager.DURATION);
                        try {
                            num2 = VastAbsoluteProgressTracker.Companion.parseAbsoluteOffset(attributeValue5);
                        } catch (NumberFormatException e4) {
                            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, String.format("Invalid VAST icon duration format: %s:", attributeValue5));
                            num2 = null;
                        }
                        Node firstMatchingChildNode5 = XmlUtils.getFirstMatchingChildNode(vastIconXmlManager.f8873a, VastIconXmlManager.ICON_CLICKS);
                        ArrayList arrayList8 = new ArrayList();
                        if (firstMatchingChildNode5 != null) {
                            for (Node node6 : XmlUtils.getMatchingChildNodes(firstMatchingChildNode5, VastIconXmlManager.ICON_CLICK_TRACKING)) {
                                String nodeValue5 = XmlUtils.getNodeValue(node6);
                                if (nodeValue5 != null) {
                                    arrayList8.add(new VastTracker.Builder(nodeValue5).build());
                                }
                            }
                        }
                        Node firstMatchingChildNode6 = XmlUtils.getFirstMatchingChildNode(vastIconXmlManager.f8873a, VastIconXmlManager.ICON_CLICKS);
                        if (firstMatchingChildNode6 != null) {
                            str = XmlUtils.getNodeValue(XmlUtils.getFirstMatchingChildNode(firstMatchingChildNode6, VastIconXmlManager.ICON_CLICK_THROUGH));
                        }
                        List<Node> matchingChildNodes = XmlUtils.getMatchingChildNodes(vastIconXmlManager.f8873a, VastIconXmlManager.ICON_VIEW_TRACKING);
                        ArrayList arrayList9 = new ArrayList();
                        for (Node node7 : matchingChildNodes) {
                            String nodeValue6 = XmlUtils.getNodeValue(node7);
                            if (nodeValue6 != null) {
                                arrayList9.add(new VastTracker.Builder(nodeValue6).build());
                            }
                        }
                        vastIconConfig = new VastIconConfig(intValue, intValue2, num, num2, fromVastResourceXmlManager, arrayList8, str, arrayList9);
                    }
                }
                i++;
            }
            vastVideoConfig.setVastIconConfig(vastIconConfig);
        }
    }

    @Override // android.os.AsyncTask
    public VastVideoConfig doInBackground(String[] strArr) {
        String[] strArr2 = strArr;
        VastVideoConfig vastVideoConfig = null;
        if (strArr2 != null) {
            vastVideoConfig = null;
            if (strArr2.length != 0) {
                if (strArr2[0] == null) {
                    vastVideoConfig = null;
                } else {
                    try {
                        vastVideoConfig = m36222a(strArr2[0], new ArrayList());
                    } catch (Exception e) {
                        MoPubLog.log(MoPubLog.SdkLogEvent.ERROR_WITH_THROWABLE, "Unable to generate VastVideoConfig.", e);
                        vastVideoConfig = null;
                    }
                }
            }
        }
        return vastVideoConfig;
    }

    /* renamed from: e */
    public final void m36218e(a1 a1Var, VastVideoConfig vastVideoConfig) {
        Preconditions.checkNotNull(a1Var, "xmlManager cannot be null");
        Preconditions.checkNotNull(vastVideoConfig, "vastVideoConfig cannot be null");
        List<String> stringDataAsList = XmlUtils.getStringDataAsList(a1Var.a, "MP_TRACKING_URL");
        ArrayList arrayList = new ArrayList(stringDataAsList.size());
        for (String str : stringDataAsList) {
            arrayList.add(new VastTracker.Builder(str).build());
        }
        vastVideoConfig.addImpressionTrackers(arrayList);
        if (vastVideoConfig.getCustomCtaText() == null) {
            String firstMatchingStringData = XmlUtils.getFirstMatchingStringData(a1Var.a, "MoPubCtaText");
            if (firstMatchingStringData == null || firstMatchingStringData.length() > 15) {
                firstMatchingStringData = null;
            }
            vastVideoConfig.setCustomCtaText(firstMatchingStringData);
        }
        if (vastVideoConfig.getCustomSkipText() == null) {
            String firstMatchingStringData2 = XmlUtils.getFirstMatchingStringData(a1Var.a, "MoPubSkipText");
            String str2 = null;
            if (firstMatchingStringData2 != null) {
                str2 = null;
                if (firstMatchingStringData2.length() <= 8) {
                    str2 = firstMatchingStringData2;
                }
            }
            vastVideoConfig.setCustomSkipText(str2);
        }
        if (vastVideoConfig.getCustomCloseIconUrl() == null) {
            vastVideoConfig.setCustomCloseIconUrl(XmlUtils.getFirstMatchingStringData(a1Var.a, "MoPubCloseIcon"));
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x010b, code lost:
        if (r11.intValue() < 0) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x016f, code lost:
        if (r11.intValue() > 100) goto L46;
     */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0104  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0186  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0126 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m36217f(e.n.b.r0 r11, com.mopub.mobileads.VastVideoConfig r12) {
        /*
            Method dump skipped, instructions count: 439
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mopub.mobileads.VastXmlManagerAggregator.m36217f(e.n.b.r0, com.mopub.mobileads.VastVideoConfig):void");
    }

    /* renamed from: g */
    public final void m36216g(r0 r0Var, VastVideoConfig vastVideoConfig) {
        Node firstMatchingChildNode = XmlUtils.getFirstMatchingChildNode(r0Var.a, "Extensions");
        VastExtensionParentXmlManager vastExtensionParentXmlManager = firstMatchingChildNode == null ? null : new VastExtensionParentXmlManager(firstMatchingChildNode);
        if (vastExtensionParentXmlManager != null) {
            Iterator it = ((ArrayList) vastExtensionParentXmlManager.m36226a()).iterator();
            while (it.hasNext()) {
                VastExtensionXmlManager vastExtensionXmlManager = (VastExtensionXmlManager) it.next();
                if (vastExtensionXmlManager != null) {
                    m36220c(vastExtensionXmlManager.f8860a, vastVideoConfig);
                }
            }
        }
    }

    @Override // android.os.AsyncTask
    public void onCancelled() {
        AbstractC2674a abstractC2674a = this.f8947a.get();
        if (abstractC2674a != null) {
            abstractC2674a.onAggregationComplete(null);
        }
    }

    @Override // android.os.AsyncTask
    public void onPostExecute(VastVideoConfig vastVideoConfig) {
        VastVideoConfig vastVideoConfig2 = vastVideoConfig;
        AbstractC2674a abstractC2674a = this.f8947a.get();
        if (abstractC2674a != null) {
            abstractC2674a.onAggregationComplete(vastVideoConfig2);
        }
    }

    @Override // android.os.AsyncTask
    public void onPreExecute() {
        Networking.getUserAgent(this.f8949c);
    }
}
