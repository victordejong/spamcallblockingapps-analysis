package com.verizon.ads.vastcontroller;

import android.text.TextUtils;
import android.util.Xml;
import com.callapp.contacts.model.Constants;
import com.mopub.mobileads.VastIconXmlManager;
import com.mopub.mobileads.VastResourceXmlManager;
import com.mopub.mobileads.j;
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

    /* renamed from: a  reason: collision with root package name */
    private static final Logger f35705a = Logger.getInstance(VASTParser.class);

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/vastcontroller/VASTParser$Ad.class */
    public static class Ad {
        public AdVerifications adVerifications;
        public List<Creative> creatives;
        public String error;
        public String id;
        public final List<String> impressions = new ArrayList();
        public MMExtension mmExtension;
        public String title;

        Ad() {
        }

        public String toString() {
            return ((((("Ad:[id:" + this.id + ";") + "error:" + this.error + ";") + "impressions:" + this.impressions + ";") + "creatives:" + this.creatives + ";") + "mmExtension:" + this.mmExtension + ";") + "]";
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
        public final String id;
        public WebResource iframeResource;
        public StaticResource staticResource;
        public Map<TrackableEvent, List<TrackingEvent>> trackingEvents;
        public final Integer width;

        CompanionAd(String str, Integer num, Integer num2, Integer num3, Integer num4, boolean z) {
            this.id = str;
            this.width = num;
            this.height = num2;
            this.assetWidth = num3;
            this.assetHeight = num4;
            this.hideButtons = z;
        }

        public String toString() {
            return (((((((((((("CompanionAd:[id:" + this.id + ";") + "width:" + this.width + ";") + "height:" + this.height + ";") + "assetWidth:" + this.assetWidth + ";") + "assetHeight:" + this.assetHeight + ";") + "hideButtons:" + this.hideButtons + ";") + "staticResource:" + this.staticResource + ";") + "htmlResource:" + this.htmlResource + ";") + "iframeResource:" + this.iframeResource + ";") + "companionClickThrough:" + this.companionClickThrough + ";") + "trackingEvents:" + this.trackingEvents + ";") + "companionClickTracking:" + this.companionClickTracking + ";") + "]";
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/vastcontroller/VASTParser$Creative.class */
    public static class Creative {
        public List<CompanionAd> companionAds;
        public final String id;
        public LinearAd linearAd;
        public final Integer sequence;

        Creative(String str, Integer num) {
            this.id = str;
            this.sequence = num;
        }

        public String toString() {
            return (((("Creative:[id:" + this.id + ";") + "sequence:" + this.sequence + ";") + "linearAd:" + this.linearAd + ";") + "companionAds:" + this.companionAds + ";") + "]";
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
    public static class InLineAd extends Ad {
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
            if ((obj instanceof ProgressEvent) && super.equals(obj)) {
                return this.offset.equals(((ProgressEvent) obj).offset);
            }
            return false;
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
    public static class WrapperAd extends Ad {
        public String adTagURI;

        @Override // com.verizon.ads.vastcontroller.VASTParser.Ad
        public String toString() {
            return (("WrapperAd:[" + super.toString()) + "adTagURI:" + this.adTagURI + ";") + "]";
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static Ad a(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        InLineAd inLineAd = null;
        xmlPullParser.require(2, null, Constants.AD);
        String attributeValue = xmlPullParser.getAttributeValue(null, "id");
        while (true) {
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
                                inLineAd2.creatives = h(xmlPullParser);
                            } else if (xmlPullParser.getName().equals("Impression")) {
                                String q = q(xmlPullParser);
                                if (!TextUtils.isEmpty(q)) {
                                    inLineAd2.impressions.add(q);
                                }
                            } else if (xmlPullParser.getName().equals("Extensions")) {
                                a(xmlPullParser, inLineAd2);
                            } else if (xmlPullParser.getName().equals("Error")) {
                                String q2 = q(xmlPullParser);
                                if (!TextUtils.isEmpty(q2)) {
                                    inLineAd2.error = q2;
                                }
                            } else if (xmlPullParser.getName().equals("AdTitle")) {
                                String q3 = q(xmlPullParser);
                                if (!TextUtils.isEmpty(q3)) {
                                    inLineAd2.title = q3;
                                }
                            } else {
                                p(xmlPullParser);
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
                                wrapperAd.adTagURI = q(xmlPullParser);
                            } else if (xmlPullParser.getName().equals("Creatives")) {
                                wrapperAd.creatives = h(xmlPullParser);
                            } else if (xmlPullParser.getName().equals("Impression")) {
                                String q4 = q(xmlPullParser);
                                if (!TextUtils.isEmpty(q4)) {
                                    wrapperAd.impressions.add(q4);
                                }
                            } else if (xmlPullParser.getName().equals("Extensions")) {
                                a(xmlPullParser, wrapperAd);
                            } else if (xmlPullParser.getName().equals("Error")) {
                                String q5 = q(xmlPullParser);
                                if (!TextUtils.isEmpty(q5)) {
                                    wrapperAd.error = q5;
                                }
                            } else {
                                p(xmlPullParser);
                            }
                        }
                    }
                } else {
                    p(xmlPullParser);
                }
            }
        }
        if (inLineAd != null) {
            inLineAd.id = attributeValue;
        }
        return inLineAd;
    }

    private static Integer a(String str) {
        if (str == null || str.length() == 0) {
            return null;
        }
        return Integer.valueOf(str);
    }

    private static void a(XmlPullParser xmlPullParser, Ad ad) throws XmlPullParserException, IOException {
        xmlPullParser.require(2, null, "Extensions");
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                if (xmlPullParser.getName().equals("Extension")) {
                    String attributeValue = xmlPullParser.getAttributeValue(null, "type");
                    if ("MMInteractiveVideo".equals(attributeValue)) {
                        ad.mmExtension = b(xmlPullParser);
                    } else if ("AdVerifications".equals(attributeValue)) {
                        ad.adVerifications = c(xmlPullParser);
                    } else {
                        p(xmlPullParser);
                    }
                } else {
                    p(xmlPullParser);
                }
            }
        }
    }

    private static boolean a(String str, boolean z) {
        return str == null ? z : Boolean.parseBoolean(str);
    }

    private static int b(String str) {
        if (TextUtils.isEmpty(str)) {
            return 0;
        }
        return Integer.parseInt(str);
    }

    private static MMExtension b(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        xmlPullParser.require(2, null, "Extension");
        Overlay overlay = null;
        Background background = null;
        List<Button> list = null;
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                if (xmlPullParser.getName().equals("Overlay")) {
                    overlay = new Overlay(q(xmlPullParser), a(xmlPullParser.getAttributeValue(null, "hideButtons"), true));
                } else if (xmlPullParser.getName().equals("Background")) {
                    background = e(xmlPullParser);
                } else if (xmlPullParser.getName().equals("Buttons")) {
                    list = f(xmlPullParser);
                } else {
                    p(xmlPullParser);
                }
            }
        }
        return new MMExtension(overlay, background, list);
    }

    private static AdVerifications c(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        xmlPullParser.require(2, null, "Extension");
        ArrayList arrayList = new ArrayList();
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                if (xmlPullParser.getName().equals("AdVerifications")) {
                    while (xmlPullParser.next() != 3) {
                        if (xmlPullParser.getEventType() == 2) {
                            if (xmlPullParser.getName().equals("Verification")) {
                                arrayList.add(d(xmlPullParser));
                            } else {
                                p(xmlPullParser);
                            }
                        }
                    }
                } else {
                    p(xmlPullParser);
                }
            }
        }
        return new AdVerifications(arrayList);
    }

    private static Verification d(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        xmlPullParser.require(2, null, "Verification");
        Verification verification = new Verification(xmlPullParser.getAttributeValue(null, "vendor"));
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                if (xmlPullParser.getName().equals("JavaScriptResource")) {
                    verification.javaScriptResource = new JavaScriptResource(xmlPullParser.getAttributeValue(null, "apiFramework"), a(xmlPullParser.getAttributeValue(null, "browserOptional"), true), q(xmlPullParser));
                } else if (xmlPullParser.getName().equals("TrackingEvents")) {
                    verification.trackingEvents = n(xmlPullParser);
                } else if (xmlPullParser.getName().equals("VerificationParameters")) {
                    verification.verificationParameters = q(xmlPullParser);
                } else {
                    p(xmlPullParser);
                }
            }
        }
        return verification;
    }

    private static Background e(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        xmlPullParser.require(2, null, "Background");
        Background background = new Background(a(xmlPullParser.getAttributeValue(null, "hideButtons"), false));
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                if (xmlPullParser.getName().equals(VastResourceXmlManager.STATIC_RESOURCE)) {
                    background.staticResource = new StaticResource(xmlPullParser.getAttributeValue(null, VastResourceXmlManager.CREATIVE_TYPE), xmlPullParser.getAttributeValue(null, "backgroundColor"), q(xmlPullParser));
                } else if (xmlPullParser.getName().equals("WebResource")) {
                    background.webResource = new WebResource(q(xmlPullParser));
                } else {
                    p(xmlPullParser);
                }
            }
        }
        return background;
    }

    private static List<Button> f(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        xmlPullParser.require(2, null, "Buttons");
        ArrayList arrayList = new ArrayList();
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                if (xmlPullParser.getName().equals("Button")) {
                    arrayList.add(readButton(xmlPullParser));
                } else {
                    p(xmlPullParser);
                }
            }
        }
        return arrayList;
    }

    private static ButtonClicks g(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        xmlPullParser.require(2, null, "ButtonClicks");
        ButtonClicks buttonClicks = new ButtonClicks(new ArrayList());
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                if (xmlPullParser.getName().equals("ButtonClickThrough")) {
                    buttonClicks.clickThrough = q(xmlPullParser);
                } else if (xmlPullParser.getName().equals("ButtonClickTracking")) {
                    buttonClicks.clickTrackingUrls.add(q(xmlPullParser));
                } else {
                    p(xmlPullParser);
                }
            }
        }
        return buttonClicks;
    }

    private static List<Creative> h(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        xmlPullParser.require(2, null, "Creatives");
        ArrayList arrayList = new ArrayList();
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                if (xmlPullParser.getName().equals("Creative")) {
                    arrayList.add(i(xmlPullParser));
                } else {
                    p(xmlPullParser);
                }
            }
        }
        return arrayList;
    }

    private static Creative i(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        xmlPullParser.require(2, null, "Creative");
        String attributeValue = xmlPullParser.getAttributeValue(null, "AdID");
        String attributeValue2 = xmlPullParser.getAttributeValue(null, "sequence");
        Integer num = null;
        if (!TextUtils.isEmpty(attributeValue2)) {
            try {
                num = Integer.decode(attributeValue2);
            } catch (NumberFormatException e) {
                f35705a.w("Invalid sequence number: " + attributeValue2 + " for Creative.");
                num = null;
            }
        }
        Creative creative = new Creative(attributeValue, num);
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                if (xmlPullParser.getName().equals("Linear")) {
                    creative.linearAd = l(xmlPullParser);
                } else if (xmlPullParser.getName().equals("CompanionAds")) {
                    creative.companionAds = j(xmlPullParser);
                } else {
                    p(xmlPullParser);
                }
            }
        }
        return creative;
    }

    private static List<CompanionAd> j(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        xmlPullParser.require(2, null, "CompanionAds");
        ArrayList arrayList = new ArrayList();
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                if (xmlPullParser.getName().equals("Companion")) {
                    CompanionAd k = k(xmlPullParser);
                    if (k != null) {
                        arrayList.add(k);
                    }
                } else {
                    p(xmlPullParser);
                }
            }
        }
        return arrayList;
    }

    private static CompanionAd k(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        NumberFormatException e;
        CompanionAd companionAd = null;
        xmlPullParser.require(2, null, "Companion");
        try {
            CompanionAd companionAd2 = new CompanionAd(xmlPullParser.getAttributeValue(null, "id"), a(xmlPullParser.getAttributeValue(null, "width")), a(xmlPullParser.getAttributeValue(null, "height")), a(xmlPullParser.getAttributeValue(null, "assetWidth")), a(xmlPullParser.getAttributeValue(null, "assetHeight")), a(xmlPullParser.getAttributeValue(null, "hideButtons"), false));
            while (true) {
                companionAd = companionAd2;
                try {
                    if (xmlPullParser.next() == 3) {
                        break;
                    } else if (xmlPullParser.getEventType() == 2) {
                        if (xmlPullParser.getName().equals(VastResourceXmlManager.STATIC_RESOURCE)) {
                            companionAd2.staticResource = new StaticResource(xmlPullParser.getAttributeValue(null, VastResourceXmlManager.CREATIVE_TYPE), xmlPullParser.getAttributeValue(null, "backgroundColor"), q(xmlPullParser));
                        } else if (xmlPullParser.getName().equals(VastResourceXmlManager.HTML_RESOURCE)) {
                            companionAd2.htmlResource = new WebResource(q(xmlPullParser));
                        } else if (xmlPullParser.getName().equals(VastResourceXmlManager.IFRAME_RESOURCE)) {
                            companionAd2.iframeResource = new WebResource(q(xmlPullParser));
                        } else if (xmlPullParser.getName().equals("TrackingEvents")) {
                            companionAd2.trackingEvents = n(xmlPullParser);
                        } else if (xmlPullParser.getName().equals("CompanionClickTracking")) {
                            String q = q(xmlPullParser);
                            if (!TextUtils.isEmpty(q)) {
                                companionAd2.companionClickTracking.add(q);
                            }
                        } else if (xmlPullParser.getName().equals("CompanionClickThrough")) {
                            String q2 = q(xmlPullParser);
                            if (!TextUtils.isEmpty(q2)) {
                                companionAd2.companionClickThrough = q2;
                            }
                        } else {
                            p(xmlPullParser);
                        }
                    }
                } catch (NumberFormatException e2) {
                    e = e2;
                    companionAd = companionAd2;
                    f35705a.e("Syntax error in Companion element; skipping.", e);
                    return companionAd;
                }
            }
        } catch (NumberFormatException e3) {
            e = e3;
        }
        return companionAd;
    }

    private static LinearAd l(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        xmlPullParser.require(2, null, "Linear");
        LinearAd linearAd = new LinearAd(xmlPullParser.getAttributeValue(null, "skipoffset"));
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                if (xmlPullParser.getName().equals("MediaFiles")) {
                    linearAd.mediaFiles = o(xmlPullParser);
                } else if (xmlPullParser.getName().equals("TrackingEvents")) {
                    linearAd.trackingEvents.putAll(n(xmlPullParser));
                } else if (xmlPullParser.getName().equals(j.ICONS)) {
                    xmlPullParser.require(2, null, j.ICONS);
                    ArrayList arrayList = new ArrayList();
                    while (xmlPullParser.next() != 3) {
                        if (xmlPullParser.getEventType() == 2) {
                            if (xmlPullParser.getName().equals(j.ICON)) {
                                arrayList.add(readIcon(xmlPullParser));
                            } else {
                                p(xmlPullParser);
                            }
                        }
                    }
                    linearAd.icons = arrayList;
                } else if (xmlPullParser.getName().equals("VideoClicks")) {
                    linearAd.videoClicks = m(xmlPullParser);
                } else if (xmlPullParser.getName().equals("Duration")) {
                    linearAd.duration = q(xmlPullParser);
                } else {
                    p(xmlPullParser);
                }
            }
        }
        return linearAd;
    }

    private static VideoClicks m(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        xmlPullParser.require(2, null, "VideoClicks");
        VideoClicks videoClicks = new VideoClicks(new ArrayList(), new ArrayList());
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                if (xmlPullParser.getName().equals("ClickThrough")) {
                    videoClicks.clickThrough = q(xmlPullParser);
                } else if (xmlPullParser.getName().equals("ClickTracking")) {
                    videoClicks.clickTrackingUrls.add(q(xmlPullParser));
                } else if (xmlPullParser.getName().equals("CustomClick")) {
                    videoClicks.customClickUrls.add(q(xmlPullParser));
                } else {
                    p(xmlPullParser);
                }
            }
        }
        return videoClicks;
    }

    private static Map<TrackableEvent, List<TrackingEvent>> n(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        xmlPullParser.require(2, null, "TrackingEvents");
        HashMap hashMap = new HashMap();
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                if (xmlPullParser.getName().equals("Tracking")) {
                    String attributeValue = xmlPullParser.getAttributeValue(null, "event");
                    String attributeValue2 = xmlPullParser.getAttributeValue(null, VastIconXmlManager.OFFSET);
                    String q = q(xmlPullParser);
                    if (!TextUtils.isEmpty(attributeValue)) {
                        try {
                            TrackableEvent valueOf = TrackableEvent.valueOf(attributeValue.trim());
                            Object progressEvent = TrackableEvent.progress.equals(valueOf) ? new ProgressEvent(q, attributeValue2) : new TrackingEvent(valueOf, q);
                            List list = (List) hashMap.get(valueOf);
                            List list2 = list;
                            if (list == null) {
                                list2 = new ArrayList();
                                hashMap.put(valueOf, list2);
                            }
                            list2.add(progressEvent);
                        } catch (IllegalArgumentException e) {
                            if (Logger.isLogLevelEnabled(3)) {
                                f35705a.d("Unsupported VAST event type: ".concat(String.valueOf(attributeValue)));
                            }
                        }
                    }
                } else {
                    p(xmlPullParser);
                }
            }
        }
        return hashMap;
    }

    private static List<MediaFile> o(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        xmlPullParser.require(2, null, "MediaFiles");
        ArrayList arrayList = new ArrayList();
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                if (xmlPullParser.getName().equals("MediaFile")) {
                    try {
                        arrayList.add(new MediaFile(q(xmlPullParser), xmlPullParser.getAttributeValue(null, "type"), xmlPullParser.getAttributeValue(null, "delivery"), xmlPullParser.getAttributeValue(null, "apiFramework"), b(xmlPullParser.getAttributeValue(null, "width")), b(xmlPullParser.getAttributeValue(null, "height")), b(xmlPullParser.getAttributeValue(null, "bitrate")), Boolean.parseBoolean(xmlPullParser.getAttributeValue(null, "maintainAspectRatio"))));
                    } catch (NumberFormatException e) {
                        f35705a.e("Skipping malformed MediaFile element in VAST response.", e);
                    }
                } else {
                    p(xmlPullParser);
                }
            }
        }
        return arrayList;
    }

    private static void p(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
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

    public static Ad parse(String str) throws XmlPullParserException, IOException {
        if (str == null) {
            f35705a.w("Ad content was null.");
            return null;
        }
        XmlPullParser newPullParser = Xml.newPullParser();
        newPullParser.setFeature("http://xmlpull.org/v1/doc/features.html#process-namespaces", false);
        newPullParser.setInput(new StringReader(str));
        newPullParser.nextTag();
        Ad ad = null;
        if (newPullParser.getName().equals("VAST")) {
            String attributeValue = newPullParser.getAttributeValue("", "version");
            if (!TextUtils.isEmpty(attributeValue)) {
                try {
                    StringBuilder sb = new StringBuilder();
                    sb.append(attributeValue.trim().charAt(0));
                    if (Integer.parseInt(sb.toString()) > 1) {
                        newPullParser.nextTag();
                        ad = a(newPullParser);
                    } else {
                        f35705a.e("Unsupported VAST version = ".concat(String.valueOf(attributeValue)));
                        ad = null;
                    }
                } catch (NumberFormatException e) {
                    f35705a.e("Invalid version format for VAST tag with version = ".concat(String.valueOf(attributeValue)), e);
                    ad = null;
                }
            } else {
                f35705a.e("VAST version not provided.");
                ad = null;
            }
        }
        return ad;
    }

    private static String q(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
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
            if (r0 != 0) goto L_0x0069
            r0 = r11
            int r0 = java.lang.Integer.parseInt(r0)     // Catch: NumberFormatException -> 0x003c
            r12 = r0
            goto L_0x006c
        L_0x003c:
            r13 = move-exception
            com.verizon.ads.Logger r0 = com.verizon.ads.vastcontroller.VASTParser.f35705a
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
            r0.w(r1)
        L_0x0069:
            r0 = 0
            r12 = r0
        L_0x006c:
            com.verizon.ads.vastcontroller.VASTParser$Button r0 = new com.verizon.ads.vastcontroller.VASTParser$Button
            r1 = r0
            r2 = r9
            r3 = r10
            r4 = r12
            r1.<init>(r2, r3, r4)
            r11 = r0
        L_0x0078:
            r0 = r8
            int r0 = r0.next()
            r1 = 3
            if (r0 == r1) goto L_0x00e2
            r0 = r8
            int r0 = r0.getEventType()
            r1 = 2
            if (r0 != r1) goto L_0x0078
            r0 = r8
            java.lang.String r0 = r0.getName()
            java.lang.String r1 = "StaticResource"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x00c1
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
            java.lang.String r5 = q(r5)
            r2.<init>(r3, r4, r5)
            r0.staticResource = r1
            goto L_0x0078
        L_0x00c1:
            r0 = r8
            java.lang.String r0 = r0.getName()
            java.lang.String r1 = "ButtonClicks"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x00db
            r0 = r11
            r1 = r8
            com.verizon.ads.vastcontroller.VASTParser$ButtonClicks r1 = g(r1)
            r0.buttonClicks = r1
            goto L_0x0078
        L_0x00db:
            r0 = r8
            p(r0)
            goto L_0x0078
        L_0x00e2:
            r0 = r11
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.verizon.ads.vastcontroller.VASTParser.readButton(org.xmlpull.v1.XmlPullParser):com.verizon.ads.vastcontroller.VASTParser$Button");
    }

    public static Icon readIcon(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        xmlPullParser.require(2, null, j.ICON);
        String attributeValue = xmlPullParser.getAttributeValue(null, "program");
        String attributeValue2 = xmlPullParser.getAttributeValue(null, "width");
        String attributeValue3 = xmlPullParser.getAttributeValue(null, "height");
        Icon icon = new Icon(attributeValue, a(attributeValue2), a(attributeValue3), xmlPullParser.getAttributeValue(null, "xPosition"), xmlPullParser.getAttributeValue(null, "yPosition"), xmlPullParser.getAttributeValue(null, "apiFramework"), xmlPullParser.getAttributeValue(null, VastIconXmlManager.OFFSET), xmlPullParser.getAttributeValue(null, VastIconXmlManager.DURATION));
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                if (xmlPullParser.getName().equals(VastResourceXmlManager.STATIC_RESOURCE)) {
                    icon.staticResource = new StaticResource(xmlPullParser.getAttributeValue(null, VastResourceXmlManager.CREATIVE_TYPE), xmlPullParser.getAttributeValue(null, "backgroundColor"), q(xmlPullParser));
                } else if (xmlPullParser.getName().equals(VastResourceXmlManager.HTML_RESOURCE)) {
                    icon.htmlResource = new WebResource(q(xmlPullParser));
                } else if (xmlPullParser.getName().equals(VastResourceXmlManager.IFRAME_RESOURCE)) {
                    icon.iframeResource = new WebResource(q(xmlPullParser));
                } else if (xmlPullParser.getName().equals(VastIconXmlManager.ICON_CLICKS)) {
                    xmlPullParser.require(2, null, VastIconXmlManager.ICON_CLICKS);
                    IconClicks iconClicks = new IconClicks();
                    while (xmlPullParser.next() != 3) {
                        if (xmlPullParser.getEventType() == 2) {
                            if (xmlPullParser.getName().equals(VastIconXmlManager.ICON_CLICK_THROUGH)) {
                                String q = q(xmlPullParser);
                                if (!TextUtils.isEmpty(q)) {
                                    iconClicks.clickThrough = q;
                                }
                            } else if (xmlPullParser.getName().equals(VastIconXmlManager.ICON_CLICK_TRACKING)) {
                                String q2 = q(xmlPullParser);
                                if (!TextUtils.isEmpty(q2)) {
                                    iconClicks.clickTrackingUrls.add(q2);
                                }
                            } else {
                                p(xmlPullParser);
                            }
                        }
                    }
                    icon.iconClicks = iconClicks;
                } else if (xmlPullParser.getName().equals(VastIconXmlManager.ICON_VIEW_TRACKING)) {
                    String q3 = q(xmlPullParser);
                    if (!TextUtils.isEmpty(q3)) {
                        icon.iconViewTrackingUrls.add(q3);
                    }
                } else {
                    p(xmlPullParser);
                }
            }
        }
        return icon;
    }
}
