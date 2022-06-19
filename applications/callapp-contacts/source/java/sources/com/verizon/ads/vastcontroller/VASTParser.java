package com.verizon.ads.vastcontroller;

import android.text.TextUtils;
import android.util.Xml;
import com.callapp.contacts.model.Constants;
import com.mopub.mobileads.C16872j;
import com.mopub.mobileads.VastIconXmlManager;
import com.mopub.mobileads.VastResourceXmlManager;
import com.verizon.ads.Logger;
import java.io.IOException;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* loaded from: classes4-dex2jar.jar:com/verizon/ads/vastcontroller/VASTParser.class */
public class VASTParser {

    /* renamed from: a */
    private static final Logger f61823a = Logger.getInstance(VASTParser.class);

    /* renamed from: com.verizon.ads.vastcontroller.VASTParser$Ad */
    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/vastcontroller/VASTParser$Ad.class */
    public static class C17472Ad {
        public AdVerifications adVerifications;
        public List<Creative> creatives;
        public String error;

        /* renamed from: id */
        public String f61824id;
        public final List<String> impressions = new ArrayList();
        public MMExtension mmExtension;
        public String title;

        C17472Ad() {
        }

        public String toString() {
            return ((((("Ad:[id:" + this.f61824id + ";") + "error:" + this.error + ";") + "impressions:" + this.impressions + ";") + "creatives:" + this.creatives + ";") + "mmExtension:" + this.mmExtension + ";") + "]";
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/vastcontroller/VASTParser$AdVerifications.class */
    public static class AdVerifications {
        public final List<Verification> verifications;

        AdVerifications(List<Verification> list) {
            this.verifications = list;
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/vastcontroller/VASTParser$Background.class */
    public static class Background {
        public final boolean hideButtons;
        public StaticResource staticResource;
        public WebResource webResource;

        Background(boolean z) {
            this.hideButtons = z;
        }

        public String toString() {
            return ((("Background:[hideButtons:" + this.hideButtons + ";") + "staticResource:" + this.staticResource + ";") + "webResource:" + this.webResource + ";") + "]";
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/vastcontroller/VASTParser$Button.class */
    public static class Button {
        public ButtonClicks buttonClicks;
        public final String name;
        public final String offset;
        public final int position;
        public StaticResource staticResource;

        public Button(String str, String str2, int i) {
            this.name = str;
            this.offset = str2;
            this.position = i;
        }

        public String toString() {
            return ((((("Button:[name:" + this.name + ";") + "offset:" + this.offset + ";") + "position:" + this.position + ";") + "staticResource:" + this.staticResource + ";") + "buttonClicks:" + this.buttonClicks + ";") + "]";
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/vastcontroller/VASTParser$ButtonClicks.class */
    public static class ButtonClicks {
        public String clickThrough;
        public final List<String> clickTrackingUrls;

        public ButtonClicks(List<String> list) {
            this.clickTrackingUrls = list;
        }

        public String toString() {
            return (("ButtonClicks:[clickThrough:" + this.clickThrough + ";") + "clickTrackingUrls:" + this.clickTrackingUrls + ";") + "]";
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/vastcontroller/VASTParser$CompanionAd.class */
    public static class CompanionAd {
        public final Integer assetHeight;
        public final Integer assetWidth;
        public String companionClickThrough;
        public List<String> companionClickTracking = new ArrayList();
        public final Integer height;
        public final boolean hideButtons;
        public WebResource htmlResource;

        /* renamed from: id */
        public final String f61825id;
        public WebResource iframeResource;
        public StaticResource staticResource;
        public Map<TrackableEvent, List<TrackingEvent>> trackingEvents;
        public final Integer width;

        CompanionAd(String str, Integer num, Integer num2, Integer num3, Integer num4, boolean z) {
            this.f61825id = str;
            this.width = num;
            this.height = num2;
            this.assetWidth = num3;
            this.assetHeight = num4;
            this.hideButtons = z;
        }

        public String toString() {
            return (((((((((((("CompanionAd:[id:" + this.f61825id + ";") + "width:" + this.width + ";") + "height:" + this.height + ";") + "assetWidth:" + this.assetWidth + ";") + "assetHeight:" + this.assetHeight + ";") + "hideButtons:" + this.hideButtons + ";") + "staticResource:" + this.staticResource + ";") + "htmlResource:" + this.htmlResource + ";") + "iframeResource:" + this.iframeResource + ";") + "companionClickThrough:" + this.companionClickThrough + ";") + "trackingEvents:" + this.trackingEvents + ";") + "companionClickTracking:" + this.companionClickTracking + ";") + "]";
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/vastcontroller/VASTParser$Creative.class */
    public static class Creative {
        public List<CompanionAd> companionAds;

        /* renamed from: id */
        public final String f61826id;
        public LinearAd linearAd;
        public final Integer sequence;

        Creative(String str, Integer num) {
            this.f61826id = str;
            this.sequence = num;
        }

        public String toString() {
            return (((("Creative:[id:" + this.f61826id + ";") + "sequence:" + this.sequence + ";") + "linearAd:" + this.linearAd + ";") + "companionAds:" + this.companionAds + ";") + "]";
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/vastcontroller/VASTParser$Icon.class */
    public static class Icon {
        public final String apiFramework;
        public final String duration;
        public final Integer height;
        public WebResource htmlResource;
        public IconClicks iconClicks;
        public List<String> iconViewTrackingUrls = new ArrayList();
        public WebResource iframeResource;
        public final String offset;
        public final String program;
        public StaticResource staticResource;
        public final Integer width;
        public final String xPosition;
        public final String yPosition;

        Icon(String str, Integer num, Integer num2, String str2, String str3, String str4, String str5, String str6) {
            this.program = str;
            this.width = num;
            this.height = num2;
            this.xPosition = str2;
            this.yPosition = str3;
            this.apiFramework = str4;
            this.offset = str5;
            this.duration = str6;
        }

        public String toString() {
            return ((((((((((((("Icon:[program:" + this.program + ";") + "width:" + this.width + ";") + "height:" + this.height + ";") + "xPosition:" + this.xPosition + ";") + "yPosition:" + this.yPosition + ";") + "apiFramework:" + this.apiFramework + ";") + "offset:" + this.offset + ";") + "duration:" + this.duration + ";") + "staticResource:" + this.staticResource + ";") + "htmlResource:" + this.htmlResource + ";") + "iframeResource:" + this.iframeResource + ";") + "iconClicks:" + this.iconClicks + ";") + "iconViewTrackingUrls:" + this.iconViewTrackingUrls + ";") + "]";
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/vastcontroller/VASTParser$IconClicks.class */
    public static class IconClicks {
        public String clickThrough;
        public final List<String> clickTrackingUrls = new ArrayList();

        IconClicks() {
        }

        public String toString() {
            return (("IconClicks:[clickThrough:" + this.clickThrough + ";") + "clickTrackingUrls:" + this.clickTrackingUrls + ";") + "]";
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/vastcontroller/VASTParser$InLineAd.class */
    public static class InLineAd extends C17472Ad {
    }

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/vastcontroller/VASTParser$JavaScriptResource.class */
    public static class JavaScriptResource {
        public final String apiFramework;
        public final boolean browserOptional;
        public final String uri;

        JavaScriptResource(String str, boolean z, String str2) {
            this.apiFramework = str;
            this.browserOptional = z;
            this.uri = str2;
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/vastcontroller/VASTParser$LinearAd.class */
    public static class LinearAd {
        public String duration;
        public List<Icon> icons;
        public List<MediaFile> mediaFiles;
        public final String skipOffset;
        public final Map<TrackableEvent, List<TrackingEvent>> trackingEvents = new HashMap();
        public VideoClicks videoClicks;

        LinearAd(String str) {
            this.skipOffset = str;
        }

        public String toString() {
            return ((((("LinearAd:[duration:" + this.duration + ";") + "skipOffset:" + this.skipOffset + ";") + "mediaFiles:" + this.mediaFiles + ";") + "trackingEvents:" + this.trackingEvents + ";") + "videoClicks:" + this.videoClicks + ";") + "]";
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/vastcontroller/VASTParser$MMExtension.class */
    public static class MMExtension {
        public final Background background;
        public final List<Button> buttons;
        public final Overlay overlay;

        MMExtension(Overlay overlay, Background background, List<Button> list) {
            this.overlay = overlay;
            this.background = background;
            this.buttons = list;
        }

        public String toString() {
            return ((("MMExtension:[overlay:" + this.overlay + ";") + "background:" + this.background + ";") + "buttons:" + this.buttons + ";") + "]";
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/vastcontroller/VASTParser$MediaFile.class */
    public static class MediaFile {
        public final String apiFramework;
        public final int bitrate;
        public final String contentType;
        public final String delivery;
        public final int height;
        public final boolean maintainAspectRatio;
        public final String url;
        public final int width;

        MediaFile(String str, String str2, String str3, String str4, int i, int i2, int i3, boolean z) {
            this.url = str;
            this.contentType = str2;
            this.delivery = str3;
            this.apiFramework = str4;
            this.width = i;
            this.height = i2;
            this.bitrate = i3;
            this.maintainAspectRatio = z;
        }

        public String toString() {
            return (((((((("MediaFile:[url:" + this.url + ";") + "contentType:" + this.contentType + ";") + "delivery:" + this.delivery + ";") + "apiFramework:" + this.apiFramework + ";") + "width:" + this.width + ";") + "height:" + this.height + ";") + "bitrate:" + this.bitrate + ";") + "maintainAspectRatio:" + this.maintainAspectRatio + ";") + "]";
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/vastcontroller/VASTParser$Overlay.class */
    public static class Overlay {
        public final boolean hideButtons;
        public final String uri;

        Overlay(String str, boolean z) {
            this.uri = str;
            this.hideButtons = z;
        }

        public String toString() {
            return (("Overlay:[uri:" + this.uri + ";") + "hideButtons:" + this.hideButtons + ";") + "]";
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/vastcontroller/VASTParser$ProgressEvent.class */
    public static class ProgressEvent extends TrackingEvent {
        public final String offset;

        ProgressEvent(String str, String str2) {
            super(TrackableEvent.progress, str);
            this.offset = str2;
        }

        @Override // com.verizon.ads.vastcontroller.VASTParser.TrackingEvent
        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ProgressEvent) || !super.equals(obj)) {
                return false;
            }
            return this.offset.equals(((ProgressEvent) obj).offset);
        }

        @Override // com.verizon.ads.vastcontroller.VASTParser.TrackingEvent
        public int hashCode() {
            return (super.hashCode() * 31) + this.offset.hashCode();
        }

        @Override // com.verizon.ads.vastcontroller.VASTParser.TrackingEvent
        public String toString() {
            return (("ProgressEvent:[" + super.toString() + ";") + "offset:" + this.offset) + "]";
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/vastcontroller/VASTParser$StaticResource.class */
    public static class StaticResource {
        public final String backgroundColor;
        public final String creativeType;
        public final String uri;

        StaticResource(String str, String str2, String str3) {
            this.backgroundColor = str2;
            this.creativeType = str;
            this.uri = str3;
        }

        public String toString() {
            return ((("StaticResource:[backgroundColor:" + this.backgroundColor + ";") + "creativeType:" + this.creativeType + ";") + "uri:" + this.uri + ";") + "]";
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/vastcontroller/VASTParser$TrackableEvent.class */
    public enum TrackableEvent {
        creativeView,
        start,
        firstQuartile,
        midpoint,
        thirdQuartile,
        complete,
        closeLinear,
        skip,
        progress,
        verificationNotExecuted
    }

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/vastcontroller/VASTParser$TrackingEvent.class */
    public static class TrackingEvent {
        public final TrackableEvent event;
        public final String url;

        TrackingEvent(TrackableEvent trackableEvent, String str) {
            this.event = trackableEvent;
            this.url = str;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof TrackingEvent)) {
                return false;
            }
            TrackingEvent trackingEvent = (TrackingEvent) obj;
            return this.event == trackingEvent.event && this.url.equals(trackingEvent.url);
        }

        public int hashCode() {
            return (this.url.hashCode() * 31) + this.event.hashCode();
        }

        public String toString() {
            return (("TrackingEvent:[event:" + this.event + ";") + "url:" + this.url + ";") + "]";
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/vastcontroller/VASTParser$Verification.class */
    public static class Verification {
        public JavaScriptResource javaScriptResource;
        public Map<TrackableEvent, List<TrackingEvent>> trackingEvents;
        public final String vendor;
        public String verificationParameters;

        Verification(String str) {
            this.vendor = str;
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/vastcontroller/VASTParser$VideoClicks.class */
    public static class VideoClicks {
        public String clickThrough;
        public final List<String> clickTrackingUrls;
        public final List<String> customClickUrls;

        VideoClicks(List<String> list, List<String> list2) {
            ArrayList arrayList = new ArrayList();
            this.clickTrackingUrls = arrayList;
            ArrayList arrayList2 = new ArrayList();
            this.customClickUrls = arrayList2;
            if (list != null) {
                arrayList.addAll(list);
            }
            if (list2 != null) {
                arrayList2.addAll(list2);
            }
        }

        public String toString() {
            return ((("VideoClicks:[clickThrough:" + this.clickThrough + ";") + "clickTrackingUrls:" + this.clickTrackingUrls + ";") + "customClickUrls:" + this.customClickUrls + ";") + "]";
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/vastcontroller/VASTParser$WebResource.class */
    public static class WebResource {
        public final String uri;

        WebResource(String str) {
            this.uri = str;
        }

        public String toString() {
            return "WebResource:[uri:" + this.uri + "]";
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/vastcontroller/VASTParser$WrapperAd.class */
    public static class WrapperAd extends C17472Ad {
        public String adTagURI;

        @Override // com.verizon.ads.vastcontroller.VASTParser.C17472Ad
        public String toString() {
            return (("WrapperAd:[" + super.toString()) + "adTagURI:" + this.adTagURI + ";") + "]";
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    private static C17472Ad m5274a(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        InLineAd inLineAd;
        xmlPullParser.require(2, null, Constants.f26733AD);
        String attributeValue = xmlPullParser.getAttributeValue(null, "id");
        while (true) {
            inLineAd = null;
            if (xmlPullParser.next() == 3) {
                break;
            } else if (xmlPullParser.getEventType() == 2) {
                if (xmlPullParser.getName().equals("InLine")) {
                    xmlPullParser.require(2, null, "InLine");
                    InLineAd inLineAd2 = new InLineAd();
                    while (true) {
                        inLineAd = inLineAd2;
                        if (xmlPullParser.next() == 3) {
                            break;
                        } else if (xmlPullParser.getEventType() == 2) {
                            if (xmlPullParser.getName().equals("Creatives")) {
                                inLineAd2.creatives = m5265h(xmlPullParser);
                            } else if (xmlPullParser.getName().equals("Impression")) {
                                String m5256q = m5256q(xmlPullParser);
                                if (!TextUtils.isEmpty(m5256q)) {
                                    inLineAd2.impressions.add(m5256q);
                                }
                            } else if (xmlPullParser.getName().equals("Extensions")) {
                                m5273a(xmlPullParser, inLineAd2);
                            } else if (xmlPullParser.getName().equals("Error")) {
                                String m5256q2 = m5256q(xmlPullParser);
                                if (!TextUtils.isEmpty(m5256q2)) {
                                    inLineAd2.error = m5256q2;
                                }
                            } else if (xmlPullParser.getName().equals("AdTitle")) {
                                String m5256q3 = m5256q(xmlPullParser);
                                if (!TextUtils.isEmpty(m5256q3)) {
                                    inLineAd2.title = m5256q3;
                                }
                            } else {
                                m5257p(xmlPullParser);
                            }
                        }
                    }
                } else if (xmlPullParser.getName().equals("Wrapper")) {
                    xmlPullParser.require(2, null, "Wrapper");
                    WrapperAd wrapperAd = new WrapperAd();
                    while (true) {
                        inLineAd = wrapperAd;
                        if (xmlPullParser.next() == 3) {
                            break;
                        } else if (xmlPullParser.getEventType() == 2) {
                            if (xmlPullParser.getName().equals("VASTAdTagURI")) {
                                wrapperAd.adTagURI = m5256q(xmlPullParser);
                            } else if (xmlPullParser.getName().equals("Creatives")) {
                                wrapperAd.creatives = m5265h(xmlPullParser);
                            } else if (xmlPullParser.getName().equals("Impression")) {
                                String m5256q4 = m5256q(xmlPullParser);
                                if (!TextUtils.isEmpty(m5256q4)) {
                                    wrapperAd.impressions.add(m5256q4);
                                }
                            } else if (xmlPullParser.getName().equals("Extensions")) {
                                m5273a(xmlPullParser, wrapperAd);
                            } else if (xmlPullParser.getName().equals("Error")) {
                                String m5256q5 = m5256q(xmlPullParser);
                                if (!TextUtils.isEmpty(m5256q5)) {
                                    wrapperAd.error = m5256q5;
                                }
                            } else {
                                m5257p(xmlPullParser);
                            }
                        }
                    }
                } else {
                    m5257p(xmlPullParser);
                }
            }
        }
        if (inLineAd != null) {
            inLineAd.f61824id = attributeValue;
        }
        return inLineAd;
    }

    /* renamed from: a */
    private static Integer m5276a(String str) {
        if (str == null || str.length() == 0) {
            return null;
        }
        return Integer.valueOf(str);
    }

    /* renamed from: a */
    private static void m5273a(XmlPullParser xmlPullParser, C17472Ad c17472Ad) throws XmlPullParserException, IOException {
        xmlPullParser.require(2, null, "Extensions");
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                if (xmlPullParser.getName().equals("Extension")) {
                    String attributeValue = xmlPullParser.getAttributeValue(null, "type");
                    if ("MMInteractiveVideo".equals(attributeValue)) {
                        c17472Ad.mmExtension = m5271b(xmlPullParser);
                    } else if ("AdVerifications".equals(attributeValue)) {
                        c17472Ad.adVerifications = m5270c(xmlPullParser);
                    } else {
                        m5257p(xmlPullParser);
                    }
                } else {
                    m5257p(xmlPullParser);
                }
            }
        }
    }

    /* renamed from: a */
    private static boolean m5275a(String str, boolean z) {
        return str == null ? z : Boolean.parseBoolean(str);
    }

    /* renamed from: b */
    private static int m5272b(String str) {
        if (TextUtils.isEmpty(str)) {
            return 0;
        }
        return Integer.parseInt(str);
    }

    /* renamed from: b */
    private static MMExtension m5271b(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        xmlPullParser.require(2, null, "Extension");
        Overlay overlay = null;
        Background background = null;
        List<Button> list = null;
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                if (xmlPullParser.getName().equals("Overlay")) {
                    overlay = new Overlay(m5256q(xmlPullParser), m5275a(xmlPullParser.getAttributeValue(null, "hideButtons"), true));
                } else if (xmlPullParser.getName().equals("Background")) {
                    background = m5268e(xmlPullParser);
                } else if (xmlPullParser.getName().equals("Buttons")) {
                    list = m5267f(xmlPullParser);
                } else {
                    m5257p(xmlPullParser);
                }
            }
        }
        return new MMExtension(overlay, background, list);
    }

    /* renamed from: c */
    private static AdVerifications m5270c(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        xmlPullParser.require(2, null, "Extension");
        ArrayList arrayList = new ArrayList();
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                if (xmlPullParser.getName().equals("AdVerifications")) {
                    while (xmlPullParser.next() != 3) {
                        if (xmlPullParser.getEventType() == 2) {
                            if (xmlPullParser.getName().equals("Verification")) {
                                arrayList.add(m5269d(xmlPullParser));
                            } else {
                                m5257p(xmlPullParser);
                            }
                        }
                    }
                } else {
                    m5257p(xmlPullParser);
                }
            }
        }
        return new AdVerifications(arrayList);
    }

    /* renamed from: d */
    private static Verification m5269d(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        xmlPullParser.require(2, null, "Verification");
        Verification verification = new Verification(xmlPullParser.getAttributeValue(null, "vendor"));
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                if (xmlPullParser.getName().equals("JavaScriptResource")) {
                    verification.javaScriptResource = new JavaScriptResource(xmlPullParser.getAttributeValue(null, "apiFramework"), m5275a(xmlPullParser.getAttributeValue(null, "browserOptional"), true), m5256q(xmlPullParser));
                } else if (xmlPullParser.getName().equals("TrackingEvents")) {
                    verification.trackingEvents = m5259n(xmlPullParser);
                } else if (xmlPullParser.getName().equals("VerificationParameters")) {
                    verification.verificationParameters = m5256q(xmlPullParser);
                } else {
                    m5257p(xmlPullParser);
                }
            }
        }
        return verification;
    }

    /* renamed from: e */
    private static Background m5268e(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        xmlPullParser.require(2, null, "Background");
        Background background = new Background(m5275a(xmlPullParser.getAttributeValue(null, "hideButtons"), false));
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                if (xmlPullParser.getName().equals(VastResourceXmlManager.STATIC_RESOURCE)) {
                    background.staticResource = new StaticResource(xmlPullParser.getAttributeValue(null, VastResourceXmlManager.CREATIVE_TYPE), xmlPullParser.getAttributeValue(null, "backgroundColor"), m5256q(xmlPullParser));
                } else if (xmlPullParser.getName().equals("WebResource")) {
                    background.webResource = new WebResource(m5256q(xmlPullParser));
                } else {
                    m5257p(xmlPullParser);
                }
            }
        }
        return background;
    }

    /* renamed from: f */
    private static List<Button> m5267f(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        xmlPullParser.require(2, null, "Buttons");
        ArrayList arrayList = new ArrayList();
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                if (xmlPullParser.getName().equals("Button")) {
                    arrayList.add(readButton(xmlPullParser));
                } else {
                    m5257p(xmlPullParser);
                }
            }
        }
        return arrayList;
    }

    /* renamed from: g */
    private static ButtonClicks m5266g(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        xmlPullParser.require(2, null, "ButtonClicks");
        ButtonClicks buttonClicks = new ButtonClicks(new ArrayList());
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                if (xmlPullParser.getName().equals("ButtonClickThrough")) {
                    buttonClicks.clickThrough = m5256q(xmlPullParser);
                } else if (xmlPullParser.getName().equals("ButtonClickTracking")) {
                    buttonClicks.clickTrackingUrls.add(m5256q(xmlPullParser));
                } else {
                    m5257p(xmlPullParser);
                }
            }
        }
        return buttonClicks;
    }

    /* renamed from: h */
    private static List<Creative> m5265h(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        xmlPullParser.require(2, null, "Creatives");
        ArrayList arrayList = new ArrayList();
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                if (xmlPullParser.getName().equals("Creative")) {
                    arrayList.add(m5264i(xmlPullParser));
                } else {
                    m5257p(xmlPullParser);
                }
            }
        }
        return arrayList;
    }

    /* renamed from: i */
    private static Creative m5264i(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        xmlPullParser.require(2, null, "Creative");
        String attributeValue = xmlPullParser.getAttributeValue(null, "AdID");
        String attributeValue2 = xmlPullParser.getAttributeValue(null, "sequence");
        Integer num = null;
        if (!TextUtils.isEmpty(attributeValue2)) {
            try {
                num = Integer.decode(attributeValue2);
            } catch (NumberFormatException e) {
                f61823a.m5559w("Invalid sequence number: " + attributeValue2 + " for Creative.");
                num = null;
            }
        }
        Creative creative = new Creative(attributeValue, num);
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                if (xmlPullParser.getName().equals("Linear")) {
                    creative.linearAd = m5261l(xmlPullParser);
                } else if (xmlPullParser.getName().equals("CompanionAds")) {
                    creative.companionAds = m5263j(xmlPullParser);
                } else {
                    m5257p(xmlPullParser);
                }
            }
        }
        return creative;
    }

    /* renamed from: j */
    private static List<CompanionAd> m5263j(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        xmlPullParser.require(2, null, "CompanionAds");
        ArrayList arrayList = new ArrayList();
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                if (xmlPullParser.getName().equals("Companion")) {
                    CompanionAd m5262k = m5262k(xmlPullParser);
                    if (m5262k != null) {
                        arrayList.add(m5262k);
                    }
                } else {
                    m5257p(xmlPullParser);
                }
            }
        }
        return arrayList;
    }

    /* renamed from: k */
    private static CompanionAd m5262k(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        CompanionAd companionAd;
        NumberFormatException e;
        CompanionAd companionAd2;
        xmlPullParser.require(2, null, "Companion");
        try {
            CompanionAd companionAd3 = new CompanionAd(xmlPullParser.getAttributeValue(null, "id"), m5276a(xmlPullParser.getAttributeValue(null, "width")), m5276a(xmlPullParser.getAttributeValue(null, "height")), m5276a(xmlPullParser.getAttributeValue(null, "assetWidth")), m5276a(xmlPullParser.getAttributeValue(null, "assetHeight")), m5275a(xmlPullParser.getAttributeValue(null, "hideButtons"), false));
            while (true) {
                companionAd = companionAd3;
                try {
                    if (xmlPullParser.next() == 3) {
                        break;
                    } else if (xmlPullParser.getEventType() == 2) {
                        if (xmlPullParser.getName().equals(VastResourceXmlManager.STATIC_RESOURCE)) {
                            companionAd3.staticResource = new StaticResource(xmlPullParser.getAttributeValue(null, VastResourceXmlManager.CREATIVE_TYPE), xmlPullParser.getAttributeValue(null, "backgroundColor"), m5256q(xmlPullParser));
                        } else if (xmlPullParser.getName().equals(VastResourceXmlManager.HTML_RESOURCE)) {
                            companionAd3.htmlResource = new WebResource(m5256q(xmlPullParser));
                        } else if (xmlPullParser.getName().equals(VastResourceXmlManager.IFRAME_RESOURCE)) {
                            companionAd3.iframeResource = new WebResource(m5256q(xmlPullParser));
                        } else if (xmlPullParser.getName().equals("TrackingEvents")) {
                            companionAd3.trackingEvents = m5259n(xmlPullParser);
                        } else if (xmlPullParser.getName().equals("CompanionClickTracking")) {
                            String m5256q = m5256q(xmlPullParser);
                            if (!TextUtils.isEmpty(m5256q)) {
                                companionAd3.companionClickTracking.add(m5256q);
                            }
                        } else if (xmlPullParser.getName().equals("CompanionClickThrough")) {
                            String m5256q2 = m5256q(xmlPullParser);
                            if (!TextUtils.isEmpty(m5256q2)) {
                                companionAd3.companionClickThrough = m5256q2;
                            }
                        } else {
                            m5257p(xmlPullParser);
                        }
                    }
                } catch (NumberFormatException e2) {
                    e = e2;
                    companionAd2 = companionAd3;
                    f61823a.m5564e("Syntax error in Companion element; skipping.", e);
                    companionAd = companionAd2;
                    return companionAd;
                }
            }
        } catch (NumberFormatException e3) {
            e = e3;
            companionAd2 = null;
        }
        return companionAd;
    }

    /* renamed from: l */
    private static LinearAd m5261l(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        xmlPullParser.require(2, null, "Linear");
        LinearAd linearAd = new LinearAd(xmlPullParser.getAttributeValue(null, "skipoffset"));
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                if (xmlPullParser.getName().equals("MediaFiles")) {
                    linearAd.mediaFiles = m5258o(xmlPullParser);
                } else if (xmlPullParser.getName().equals("TrackingEvents")) {
                    linearAd.trackingEvents.putAll(m5259n(xmlPullParser));
                } else if (xmlPullParser.getName().equals(C16872j.ICONS)) {
                    xmlPullParser.require(2, null, C16872j.ICONS);
                    ArrayList arrayList = new ArrayList();
                    while (xmlPullParser.next() != 3) {
                        if (xmlPullParser.getEventType() == 2) {
                            if (xmlPullParser.getName().equals(C16872j.ICON)) {
                                arrayList.add(readIcon(xmlPullParser));
                            } else {
                                m5257p(xmlPullParser);
                            }
                        }
                    }
                    linearAd.icons = arrayList;
                } else if (xmlPullParser.getName().equals("VideoClicks")) {
                    linearAd.videoClicks = m5260m(xmlPullParser);
                } else if (xmlPullParser.getName().equals("Duration")) {
                    linearAd.duration = m5256q(xmlPullParser);
                } else {
                    m5257p(xmlPullParser);
                }
            }
        }
        return linearAd;
    }

    /* renamed from: m */
    private static VideoClicks m5260m(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        xmlPullParser.require(2, null, "VideoClicks");
        VideoClicks videoClicks = new VideoClicks(new ArrayList(), new ArrayList());
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                if (xmlPullParser.getName().equals("ClickThrough")) {
                    videoClicks.clickThrough = m5256q(xmlPullParser);
                } else if (xmlPullParser.getName().equals("ClickTracking")) {
                    videoClicks.clickTrackingUrls.add(m5256q(xmlPullParser));
                } else if (xmlPullParser.getName().equals("CustomClick")) {
                    videoClicks.customClickUrls.add(m5256q(xmlPullParser));
                } else {
                    m5257p(xmlPullParser);
                }
            }
        }
        return videoClicks;
    }

    /* renamed from: n */
    private static Map<TrackableEvent, List<TrackingEvent>> m5259n(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        xmlPullParser.require(2, null, "TrackingEvents");
        HashMap hashMap = new HashMap();
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                if (xmlPullParser.getName().equals("Tracking")) {
                    String attributeValue = xmlPullParser.getAttributeValue(null, "event");
                    String attributeValue2 = xmlPullParser.getAttributeValue(null, VastIconXmlManager.OFFSET);
                    String m5256q = m5256q(xmlPullParser);
                    if (!TextUtils.isEmpty(attributeValue)) {
                        try {
                            TrackableEvent valueOf = TrackableEvent.valueOf(attributeValue.trim());
                            TrackingEvent progressEvent = TrackableEvent.progress.equals(valueOf) ? new ProgressEvent(m5256q, attributeValue2) : new TrackingEvent(valueOf, m5256q);
                            List list = (List) hashMap.get(valueOf);
                            List list2 = list;
                            if (list == null) {
                                list2 = new ArrayList();
                                hashMap.put(valueOf, list2);
                            }
                            list2.add(progressEvent);
                        } catch (IllegalArgumentException e) {
                            if (Logger.isLogLevelEnabled(3)) {
                                f61823a.m5567d("Unsupported VAST event type: ".concat(String.valueOf(attributeValue)));
                            }
                        }
                    }
                } else {
                    m5257p(xmlPullParser);
                }
            }
        }
        return hashMap;
    }

    /* renamed from: o */
    private static List<MediaFile> m5258o(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        xmlPullParser.require(2, null, "MediaFiles");
        ArrayList arrayList = new ArrayList();
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                if (xmlPullParser.getName().equals("MediaFile")) {
                    try {
                        arrayList.add(new MediaFile(m5256q(xmlPullParser), xmlPullParser.getAttributeValue(null, "type"), xmlPullParser.getAttributeValue(null, "delivery"), xmlPullParser.getAttributeValue(null, "apiFramework"), m5272b(xmlPullParser.getAttributeValue(null, "width")), m5272b(xmlPullParser.getAttributeValue(null, "height")), m5272b(xmlPullParser.getAttributeValue(null, "bitrate")), Boolean.parseBoolean(xmlPullParser.getAttributeValue(null, "maintainAspectRatio"))));
                    } catch (NumberFormatException e) {
                        f61823a.m5564e("Skipping malformed MediaFile element in VAST response.", e);
                    }
                } else {
                    m5257p(xmlPullParser);
                }
            }
        }
        return arrayList;
    }

    /* renamed from: p */
    private static void m5257p(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        if (xmlPullParser.getEventType() == 2) {
            int i = 1;
            while (i != 0) {
                int next = xmlPullParser.next();
                if (next == 2) {
                    i++;
                } else if (next == 3) {
                    i--;
                }
            }
            return;
        }
        throw new IllegalStateException();
    }

    public static C17472Ad parse(String str) throws XmlPullParserException, IOException {
        if (str == null) {
            f61823a.m5559w("Ad content was null.");
            return null;
        }
        XmlPullParser newPullParser = Xml.newPullParser();
        newPullParser.setFeature("http://xmlpull.org/v1/doc/features.html#process-namespaces", false);
        newPullParser.setInput(new StringReader(str));
        newPullParser.nextTag();
        C17472Ad c17472Ad = null;
        if (newPullParser.getName().equals("VAST")) {
            String attributeValue = newPullParser.getAttributeValue("", "version");
            if (!TextUtils.isEmpty(attributeValue)) {
                try {
                    StringBuilder sb = new StringBuilder();
                    sb.append(attributeValue.trim().charAt(0));
                    if (Integer.parseInt(sb.toString()) > 1) {
                        newPullParser.nextTag();
                        c17472Ad = m5274a(newPullParser);
                    } else {
                        f61823a.m5565e("Unsupported VAST version = ".concat(String.valueOf(attributeValue)));
                        c17472Ad = null;
                    }
                } catch (NumberFormatException e) {
                    f61823a.m5564e("Invalid version format for VAST tag with version = ".concat(String.valueOf(attributeValue)), e);
                    c17472Ad = null;
                }
            } else {
                f61823a.m5565e("VAST version not provided.");
                c17472Ad = null;
            }
        }
        return c17472Ad;
    }

    /* renamed from: q */
    private static String m5256q(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        String nextText = xmlPullParser.nextText();
        if (nextText != null) {
            return nextText.trim();
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0082  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.verizon.ads.vastcontroller.VASTParser.Button readButton(org.xmlpull.v1.XmlPullParser r8) throws org.xmlpull.v1.XmlPullParserException, java.io.IOException {
        /*
            r0 = r8
            r1 = 2
            r2 = 0
            java.lang.String r3 = "Button"
            r0.require(r1, r2, r3)
            r0 = r8
            r1 = 0
            java.lang.String r2 = "name"
            java.lang.String r0 = r0.getAttributeValue(r1, r2)
            r9 = r0
            r0 = r8
            r1 = 0
            java.lang.String r2 = "offset"
            java.lang.String r0 = r0.getAttributeValue(r1, r2)
            r10 = r0
            r0 = r8
            r1 = 0
            java.lang.String r2 = "position"
            java.lang.String r0 = r0.getAttributeValue(r1, r2)
            r11 = r0
            r0 = r11
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 != 0) goto L69
            r0 = r11
            int r0 = java.lang.Integer.parseInt(r0)     // Catch: java.lang.NumberFormatException -> L3c
            r12 = r0
            goto L6c
        L3c:
            r13 = move-exception
            com.verizon.ads.Logger r0 = com.verizon.ads.vastcontroller.VASTParser.f61823a
            r13 = r0
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            java.lang.String r2 = "Invalid position: "
            r1.<init>(r2)
            r14 = r0
            r0 = r14
            r1 = r11
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r14
            java.lang.String r1 = " for Button."
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r13
            r1 = r14
            java.lang.String r1 = r1.toString()
            r0.m5559w(r1)
        L69:
            r0 = 0
            r12 = r0
        L6c:
            com.verizon.ads.vastcontroller.VASTParser$Button r0 = new com.verizon.ads.vastcontroller.VASTParser$Button
            r1 = r0
            r2 = r9
            r3 = r10
            r4 = r12
            r1.<init>(r2, r3, r4)
            r11 = r0
        L78:
            r0 = r8
            int r0 = r0.next()
            r1 = 3
            if (r0 == r1) goto Le2
            r0 = r8
            int r0 = r0.getEventType()
            r1 = 2
            if (r0 != r1) goto L78
            r0 = r8
            java.lang.String r0 = r0.getName()
            java.lang.String r1 = "StaticResource"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto Lc1
            r0 = r11
            com.verizon.ads.vastcontroller.VASTParser$StaticResource r1 = new com.verizon.ads.vastcontroller.VASTParser$StaticResource
            r2 = r1
            r3 = r8
            r4 = 0
            java.lang.String r5 = "creativeType"
            java.lang.String r3 = r3.getAttributeValue(r4, r5)
            r4 = r8
            r5 = 0
            java.lang.String r6 = "backgroundColor"
            java.lang.String r4 = r4.getAttributeValue(r5, r6)
            r5 = r8
            java.lang.String r5 = m5256q(r5)
            r2.<init>(r3, r4, r5)
            r0.staticResource = r1
            goto L78
        Lc1:
            r0 = r8
            java.lang.String r0 = r0.getName()
            java.lang.String r1 = "ButtonClicks"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto Ldb
            r0 = r11
            r1 = r8
            com.verizon.ads.vastcontroller.VASTParser$ButtonClicks r1 = m5266g(r1)
            r0.buttonClicks = r1
            goto L78
        Ldb:
            r0 = r8
            m5257p(r0)
            goto L78
        Le2:
            r0 = r11
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.verizon.ads.vastcontroller.VASTParser.readButton(org.xmlpull.v1.XmlPullParser):com.verizon.ads.vastcontroller.VASTParser$Button");
    }

    public static Icon readIcon(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        xmlPullParser.require(2, null, C16872j.ICON);
        String attributeValue = xmlPullParser.getAttributeValue(null, "program");
        String attributeValue2 = xmlPullParser.getAttributeValue(null, "width");
        String attributeValue3 = xmlPullParser.getAttributeValue(null, "height");
        Icon icon = new Icon(attributeValue, m5276a(attributeValue2), m5276a(attributeValue3), xmlPullParser.getAttributeValue(null, "xPosition"), xmlPullParser.getAttributeValue(null, "yPosition"), xmlPullParser.getAttributeValue(null, "apiFramework"), xmlPullParser.getAttributeValue(null, VastIconXmlManager.OFFSET), xmlPullParser.getAttributeValue(null, VastIconXmlManager.DURATION));
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                if (xmlPullParser.getName().equals(VastResourceXmlManager.STATIC_RESOURCE)) {
                    icon.staticResource = new StaticResource(xmlPullParser.getAttributeValue(null, VastResourceXmlManager.CREATIVE_TYPE), xmlPullParser.getAttributeValue(null, "backgroundColor"), m5256q(xmlPullParser));
                } else if (xmlPullParser.getName().equals(VastResourceXmlManager.HTML_RESOURCE)) {
                    icon.htmlResource = new WebResource(m5256q(xmlPullParser));
                } else if (xmlPullParser.getName().equals(VastResourceXmlManager.IFRAME_RESOURCE)) {
                    icon.iframeResource = new WebResource(m5256q(xmlPullParser));
                } else if (xmlPullParser.getName().equals(VastIconXmlManager.ICON_CLICKS)) {
                    xmlPullParser.require(2, null, VastIconXmlManager.ICON_CLICKS);
                    IconClicks iconClicks = new IconClicks();
                    while (xmlPullParser.next() != 3) {
                        if (xmlPullParser.getEventType() == 2) {
                            if (xmlPullParser.getName().equals(VastIconXmlManager.ICON_CLICK_THROUGH)) {
                                String m5256q = m5256q(xmlPullParser);
                                if (!TextUtils.isEmpty(m5256q)) {
                                    iconClicks.clickThrough = m5256q;
                                }
                            } else if (xmlPullParser.getName().equals(VastIconXmlManager.ICON_CLICK_TRACKING)) {
                                String m5256q2 = m5256q(xmlPullParser);
                                if (!TextUtils.isEmpty(m5256q2)) {
                                    iconClicks.clickTrackingUrls.add(m5256q2);
                                }
                            } else {
                                m5257p(xmlPullParser);
                            }
                        }
                    }
                    icon.iconClicks = iconClicks;
                } else if (xmlPullParser.getName().equals(VastIconXmlManager.ICON_VIEW_TRACKING)) {
                    String m5256q3 = m5256q(xmlPullParser);
                    if (!TextUtils.isEmpty(m5256q3)) {
                        icon.iconViewTrackingUrls.add(m5256q3);
                    }
                } else {
                    m5257p(xmlPullParser);
                }
            }
        }
        return icon;
    }
}
