package com.pubmatic.sdk.video.vastmodels;

import com.pubmatic.sdk.common.viewability.POBVideoMeasurementProvider;
import com.pubmatic.sdk.video.vastmodels.POBVastCreative;
import com.pubmatic.sdk.video.xmlserialiser.POBXMLNodeListener;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/video/vastmodels/POBVastAd.class */
public class POBVastAd implements POBXMLNodeListener {

    /* renamed from: a */
    private POBVastAdType f1052a = POBVastAdType.NO_ADS;

    /* renamed from: b */
    private String f1053b;

    /* renamed from: c */
    private String f1054c;

    /* renamed from: d */
    private String f1055d;

    /* renamed from: e */
    private String f1056e;

    /* renamed from: f */
    private String f1057f;

    /* renamed from: g */
    private int f1058g;

    /* renamed from: h */
    private List<String> f1059h;

    /* renamed from: i */
    private String f1060i;

    /* renamed from: j */
    private List<String> f1061j;

    /* renamed from: k */
    private List<String> f1062k;

    /* renamed from: l */
    private List<String> f1063l;

    /* renamed from: m */
    private List<String> f1064m;

    /* renamed from: n */
    private POBVastCreative f1065n;

    /* renamed from: o */
    private List<POBCompanion> f1066o;

    /* renamed from: p */
    private POBVastAd f1067p;

    /* renamed from: q */
    private List<POBAdVerification> f1068q;

    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/video/vastmodels/POBVastAd$POBVastAdParameter.class */
    public enum POBVastAdParameter {
        IMPRESSIONS,
        ERRORS,
        VIEWABLE_IMPRESSIONS,
        NOT_VIEWABLE_IMPRESSIONS,
        VIEW_UNDETERMINED_IMPRESSIONS,
        CLICKTRACKING,
        PROGRESS_TRACKING_EVENT,
        COMPANIONS
    }

    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/video/vastmodels/POBVastAd$POBVastAdType.class */
    public enum POBVastAdType {
        INLINE,
        WRAPPER,
        NO_ADS
    }

    /* renamed from: com.pubmatic.sdk.video.vastmodels.POBVastAd$a */
    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/video/vastmodels/POBVastAd$a.class */
    public static /* synthetic */ class C2002a {

        /* renamed from: a */
        static final /* synthetic */ int[] f1071a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0065 -> B:33:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0069 -> B:29:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x006d -> B:41:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x0071 -> B:35:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x0075 -> B:31:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x0079 -> B:27:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x007d -> B:39:0x0058). Please submit an issue!!! */
        static {
            int[] iArr = new int[POBVastAdParameter.values().length];
            f1071a = iArr;
            try {
                iArr[POBVastAdParameter.IMPRESSIONS.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f1071a[POBVastAdParameter.ERRORS.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f1071a[POBVastAdParameter.VIEWABLE_IMPRESSIONS.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f1071a[POBVastAdParameter.NOT_VIEWABLE_IMPRESSIONS.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f1071a[POBVastAdParameter.VIEW_UNDETERMINED_IMPRESSIONS.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f1071a[POBVastAdParameter.CLICKTRACKING.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f1071a[POBVastAdParameter.PROGRESS_TRACKING_EVENT.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f1071a[POBVastAdParameter.COMPANIONS.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
        }
    }

    /* renamed from: a */
    private List<String> m600a(POBVastAd pOBVastAd, POBVastAdParameter pOBVastAdParameter) {
        switch (C2002a.f1071a[pOBVastAdParameter.ordinal()]) {
            case 1:
                return pOBVastAd.getImpressions();
            case 2:
                return pOBVastAd.getErrorURLs();
            case 3:
                return pOBVastAd.getViewableImpressions();
            case 4:
                return pOBVastAd.getNotViewableImpressions();
            case 5:
                return pOBVastAd.getViewUndeterminedImpressions();
            case 6:
                ArrayList arrayList = new ArrayList();
                POBVastCreative creative = pOBVastAd.getCreative();
                if (creative != null && creative.getClickTrackers() != null) {
                    arrayList.addAll(pOBVastAd.getCreative().getClickTrackers());
                }
                return arrayList;
            default:
                return null;
        }
    }

    /* renamed from: b */
    private List<? extends POBXMLNodeListener> m599b(POBVastAd pOBVastAd, POBVastAdParameter pOBVastAdParameter) {
        int i = C2002a.f1071a[pOBVastAdParameter.ordinal()];
        if (i != 7) {
            if (i == 8) {
                return pOBVastAd.getCompanions();
            }
            return null;
        } else if (pOBVastAd.getCreative() == null) {
            return null;
        } else {
            return pOBVastAd.getCreative().getTrackingEvents(POBVastCreative.POBEventTypes.PROGRESS);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x00bb  */
    @Override // com.pubmatic.sdk.video.xmlserialiser.POBXMLNodeListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void build(com.pubmatic.sdk.video.xmlserialiser.POBNodeBuilder r6) {
        /*
            Method dump skipped, instructions count: 254
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.pubmatic.sdk.video.vastmodels.POBVastAd.build(com.pubmatic.sdk.video.xmlserialiser.POBNodeBuilder):void");
    }

    public String getAdServingId() {
        return this.f1055d;
    }

    public String getAdSystem() {
        return this.f1053b;
    }

    public String getAdTitle() {
        return this.f1054c;
    }

    public POBVastAdType getAdType() {
        return this.f1052a;
    }

    public List<POBAdVerification> getAdVerification() {
        return this.f1068q;
    }

    public POBIcon getClosestIcon() {
        List<POBIcon> iconList;
        POBVastAd pOBVastAd = this;
        while (true) {
            POBVastAd pOBVastAd2 = pOBVastAd;
            if (pOBVastAd2 != null) {
                POBVastCreative creative = pOBVastAd2.getCreative();
                if (creative != null && creative.getVastCreativeType() == POBVastCreative.CreativeType.LINEAR && (iconList = ((POBLinear) creative).getIconList()) != null && iconList.size() > 0) {
                    return iconList.get(0);
                }
                pOBVastAd = pOBVastAd2.getWrapper();
            } else {
                return null;
            }
        }
    }

    public List<POBCompanion> getCombinedCompanions() {
        ArrayList arrayList = new ArrayList(getCompanions());
        POBVastAd wrapper = getWrapper();
        while (true) {
            POBVastAd pOBVastAd = wrapper;
            if (pOBVastAd != null) {
                arrayList.addAll(0, pOBVastAd.getCompanions());
                wrapper = pOBVastAd.getWrapper();
            } else {
                return arrayList;
            }
        }
    }

    public List<String> getCombinedList(POBVastAdParameter pOBVastAdParameter) {
        ArrayList arrayList = new ArrayList(m600a(this, pOBVastAdParameter));
        POBVastAd wrapper = getWrapper();
        while (true) {
            POBVastAd pOBVastAd = wrapper;
            if (pOBVastAd != null) {
                arrayList.addAll(0, m600a(pOBVastAd, pOBVastAdParameter));
                wrapper = pOBVastAd.getWrapper();
            } else {
                return arrayList;
            }
        }
    }

    public List<POBXMLNodeListener> getCombinedObjectList(POBVastAdParameter pOBVastAdParameter) {
        ArrayList arrayList = new ArrayList();
        List<? extends POBXMLNodeListener> m599b = m599b(this, pOBVastAdParameter);
        if (m599b != null) {
            arrayList.addAll(m599b);
        }
        POBVastAd wrapper = getWrapper();
        while (true) {
            POBVastAd pOBVastAd = wrapper;
            if (pOBVastAd != null) {
                List<? extends POBXMLNodeListener> m599b2 = m599b(pOBVastAd, pOBVastAdParameter);
                if (m599b2 != null) {
                    arrayList.addAll(0, m599b2);
                }
                wrapper = pOBVastAd.getWrapper();
            } else {
                return arrayList;
            }
        }
    }

    public List<String> getCombinedTrackingEventList(POBVastCreative.POBEventTypes pOBEventTypes) {
        ArrayList arrayList = new ArrayList();
        if (getCreative() != null) {
            arrayList.addAll(getCreative().getTrackingEventUrls(pOBEventTypes));
        }
        POBVastAd pOBVastAd = this;
        while (true) {
            POBVastAd wrapper = pOBVastAd.getWrapper();
            if (wrapper != null) {
                POBVastCreative creative = wrapper.getCreative();
                pOBVastAd = wrapper;
                if (creative != null) {
                    arrayList.addAll(creative.getTrackingEventUrls(pOBEventTypes));
                    pOBVastAd = wrapper;
                }
            } else {
                return arrayList;
            }
        }
    }

    public List<POBVideoMeasurementProvider.POBVerificationScriptResource> getCombinedVerificationList() {
        ArrayList arrayList = new ArrayList();
        List<POBAdVerification> adVerification = getAdVerification();
        if (adVerification != null) {
            arrayList.addAll(adVerification);
        }
        POBVastAd pOBVastAd = this;
        while (true) {
            POBVastAd wrapper = pOBVastAd.getWrapper();
            if (wrapper != null) {
                List<POBAdVerification> adVerification2 = wrapper.getAdVerification();
                pOBVastAd = wrapper;
                if (adVerification2 != null) {
                    arrayList.addAll(0, adVerification2);
                    pOBVastAd = wrapper;
                }
            } else {
                return arrayList;
            }
        }
    }

    public List<POBCompanion> getCompanions() {
        return this.f1066o;
    }

    public POBVastCreative getCreative() {
        return this.f1065n;
    }

    public String getDescription() {
        return this.f1056e;
    }

    public List<String> getErrorURLs() {
        return this.f1059h;
    }

    public int getExpires() {
        return this.f1058g;
    }

    public List<String> getImpressions() {
        return this.f1061j;
    }

    public List<String> getNotViewableImpressions() {
        return this.f1063l;
    }

    public String getPricing() {
        return this.f1057f;
    }

    public String getVASTAdTagURI() {
        return this.f1060i;
    }

    public List<String> getViewUndeterminedImpressions() {
        return this.f1064m;
    }

    public List<String> getViewableImpressions() {
        return this.f1062k;
    }

    public POBVastAd getWrapper() {
        return this.f1067p;
    }

    public void setWrapper(POBVastAd pOBVastAd) {
        this.f1067p = pOBVastAd;
    }
}
