package com.millennialmedia.internal.video;

import android.text.TextUtils;
import android.util.Xml;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.millennialmedia.MMLog;
import com.millennialmedia.internal.utils.Utils;
import com.mopub.mobileads.VastIconXmlManager;
import com.mopub.mobileads.VastResourceXmlManager;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.xmlpull.v1.XmlPullParser;
/* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/video/VASTParser.class */
public class VASTParser {
    private static final String MOAT_DEFAULT_EXTENSION_VALUE = "3pmoat";
    private static final String TAG = "VASTParser";

    /* renamed from: com.millennialmedia.internal.video.VASTParser$Ad */
    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/video/VASTParser$Ad.class */
    public static class C0962Ad {
        public List<Creative> creatives;
        public String error;

        /* renamed from: id */
        public String f4128id;
        public List<String> impressions = new ArrayList();
        public MMExtension mmExtension;
        public MoatExtension moatExtension;
        public String moatTrackingIds;
        public String title;

        public String toString() {
            return ((((((("Ad:[id:" + this.f4128id + ";") + "error:" + this.error + ";") + "impressions:" + this.impressions + ";") + "creatives:" + this.creatives + ";") + "mmExtension:" + this.mmExtension + ";") + "moatExtension:" + this.moatExtension + ";") + "moatTrackingIds:" + this.moatTrackingIds + ";") + "]";
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/video/VASTParser$AdSystem.class */
    public static class AdSystem {
        public String name;
        public String version;

        public AdSystem(String str, String str2) {
            this.name = str;
            this.version = str2;
        }

        public String toString() {
            return (("AdSystem:[name:" + this.name + ";") + "version:" + this.version + ";") + "]";
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/video/VASTParser$Background.class */
    public static class Background {
        public boolean hideButtons;
        public StaticResource staticResource;
        public WebResource webResource;

        public Background(boolean z) {
            this.hideButtons = z;
        }

        public String toString() {
            return ((("Background:[hideButtons:" + this.hideButtons + ";") + "staticResource:" + this.staticResource + ";") + "webResource:" + this.webResource + ";") + "]";
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/video/VASTParser$Button.class */
    public static class Button {
        public ButtonClicks buttonClicks;
        public String name;
        public String offset;
        public int position;
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

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/video/VASTParser$ButtonClicks.class */
    public static class ButtonClicks {
        public String clickThrough;
        public List<String> clickTrackingUrls;

        public ButtonClicks(String str, List<String> list) {
            this.clickThrough = str;
            this.clickTrackingUrls = list;
        }

        public String toString() {
            return (("ButtonClicks:[clickThrough:" + this.clickThrough + ";") + "clickTrackingUrls:" + this.clickTrackingUrls + ";") + "]";
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/video/VASTParser$CompanionAd.class */
    public static class CompanionAd {
        public Integer assetHeight;
        public Integer assetWidth;
        public String companionClickThrough;
        public List<String> companionClickTracking = new ArrayList();
        public Integer height;
        public boolean hideButtons;
        public WebResource htmlResource;

        /* renamed from: id */
        public String f4129id;
        public WebResource iframeResource;
        public StaticResource staticResource;
        public Map<TrackableEvent, List<TrackingEvent>> trackingEvents;
        public Integer width;

        public CompanionAd(String str, Integer num, Integer num2, Integer num3, Integer num4, boolean z) {
            this.f4129id = str;
            this.width = num;
            this.height = num2;
            this.assetWidth = num3;
            this.assetHeight = num4;
            this.hideButtons = z;
        }

        public String toString() {
            return (((((((((((("CompanionAd:[id:" + this.f4129id + ";") + "width:" + this.width + ";") + "height:" + this.height + ";") + "assetWidth:" + this.assetWidth + ";") + "assetHeight:" + this.assetHeight + ";") + "hideButtons:" + this.hideButtons + ";") + "staticResource:" + this.staticResource + ";") + "htmlResource:" + this.htmlResource + ";") + "iframeResource:" + this.iframeResource + ";") + "companionClickThrough:" + this.companionClickThrough + ";") + "trackingEvents:" + this.trackingEvents + ";") + "companionClickTracking:" + this.companionClickTracking + ";") + "]";
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/video/VASTParser$Creative.class */
    public static class Creative {
        public List<CompanionAd> companionAds;

        /* renamed from: id */
        public String f4130id;
        public LinearAd linearAd;
        public Integer sequence;

        public Creative(String str, Integer num) {
            this.f4130id = str;
            this.sequence = num;
        }

        public String toString() {
            return (((("Creative:[id:" + this.f4130id + ";") + "sequence:" + this.sequence + ";") + "linearAd:" + this.linearAd + ";") + "companionAds:" + this.companionAds + ";") + "]";
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/video/VASTParser$Icon.class */
    public static class Icon {
        public String apiFramework;
        public String duration;
        public Integer height;
        public WebResource htmlResource;
        public IconClicks iconClicks;
        public List<String> iconViewTrackingUrls = new ArrayList();
        public WebResource iframeResource;
        public String offset;
        public String program;
        public StaticResource staticResource;
        public Integer width;
        public String xPosition;
        public String yPosition;

        public Icon(String str, Integer num, Integer num2, String str2, String str3, String str4, String str5, String str6) {
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

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/video/VASTParser$IconClicks.class */
    public static class IconClicks {
        public String clickThrough;
        public List<String> clickTrackingUrls = new ArrayList();

        public String toString() {
            return (("IconClicks:[clickThrough:" + this.clickThrough + ";") + "clickTrackingUrls:" + this.clickTrackingUrls + ";") + "]";
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/video/VASTParser$InLineAd.class */
    public static class InLineAd extends C0962Ad {
    }

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/video/VASTParser$LinearAd.class */
    public static class LinearAd {
        public List<Icon> icons;
        public List<MediaFile> mediaFiles;
        public String skipOffset;
        public final Map<TrackableEvent, List<TrackingEvent>> trackingEvents = new HashMap();
        public VideoClicks videoClicks;

        public LinearAd(String str) {
            this.skipOffset = str;
        }

        public String toString() {
            return (((("LinearAd:[skipOffset:" + this.skipOffset + ";") + "mediaFiles:" + this.mediaFiles + ";") + "trackingEvents:" + this.trackingEvents + ";") + "videoClicks:" + this.videoClicks + ";") + "]";
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/video/VASTParser$MMExtension.class */
    public static class MMExtension {
        public Background background;
        public List<Button> buttons;
        public Overlay overlay;

        public MMExtension(Overlay overlay, Background background, List<Button> list) {
            this.overlay = overlay;
            this.background = background;
            this.buttons = list;
        }

        public String toString() {
            return ((("MMExtension:[overlay:" + this.overlay + ";") + "background:" + this.background + ";") + "buttons:" + this.buttons + ";") + "]";
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/video/VASTParser$MediaFile.class */
    public static class MediaFile {
        public String apiFramework;
        public int bitrate;
        public String contentType;
        public String delivery;
        public int height;
        public boolean maintainAspectRatio;
        public String url;
        public int width;

        public MediaFile(String str, String str2, String str3, String str4, int i, int i2, int i3, boolean z) {
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

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/video/VASTParser$MoatExtension.class */
    public static class MoatExtension {
        public String level1;
        public String level2;
        public String level3;
        public String level4;
        public String slicer1;
        public String slicer2;

        public String toString() {
            return (((((("MoatExtension:[level1:" + this.level1 + ";") + "level2:" + this.level2 + ";") + "level3:" + this.level3 + ";") + "level4:" + this.level4 + ";") + "slicer1:" + this.slicer1 + ";") + "slicer2:" + this.slicer2 + ";") + "]";
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/video/VASTParser$Overlay.class */
    public static class Overlay {
        public boolean hideButtons;
        public String uri;

        public Overlay(String str, boolean z) {
            this.uri = str;
            this.hideButtons = z;
        }

        public String toString() {
            return (("Overlay:[uri:" + this.uri + ";") + "hideButtons:" + this.hideButtons + ";") + "]";
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/video/VASTParser$ProgressEvent.class */
    public static class ProgressEvent extends TrackingEvent {
        public String offset;

        public ProgressEvent(String str, String str2) {
            super(TrackableEvent.progress, str);
            this.offset = str2;
        }

        @Override // com.millennialmedia.internal.video.VASTParser.TrackingEvent
        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ProgressEvent) && super.equals(obj) && this.offset.equals(((ProgressEvent) obj).offset);
        }

        @Override // com.millennialmedia.internal.video.VASTParser.TrackingEvent
        public int hashCode() {
            return (super.hashCode() * 31) + this.offset.hashCode();
        }

        @Override // com.millennialmedia.internal.video.VASTParser.TrackingEvent
        public String toString() {
            return (("ProgressEvent:[" + super.toString() + ";") + "offset:" + this.offset) + "]";
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/video/VASTParser$StaticResource.class */
    public static class StaticResource {
        public String backgroundColor;
        public String creativeType;
        public String uri;

        public StaticResource(String str, String str2, String str3) {
            this.backgroundColor = str2;
            this.creativeType = str;
            this.uri = str3;
        }

        public String toString() {
            return ((("StaticResource:[backgroundColor:" + this.backgroundColor + ";") + "creativeType:" + this.creativeType + ";") + "uri:" + this.uri + ";") + "]";
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/video/VASTParser$TrackableEvent.class */
    public enum TrackableEvent {
        creativeView,
        start,
        firstQuartile,
        midpoint,
        thirdQuartile,
        complete,
        closeLinear,
        skip,
        progress
    }

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/video/VASTParser$TrackingEvent.class */
    public static class TrackingEvent {
        public TrackableEvent event;
        public String url;

        public TrackingEvent(TrackableEvent trackableEvent, String str) {
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

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/video/VASTParser$VideoClicks.class */
    public static class VideoClicks {
        public String clickThrough;
        public final List<String> clickTrackingUrls;
        public final List<String> customClickUrls;

        public VideoClicks(String str, List<String> list, List<String> list2) {
            this.clickThrough = str;
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

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/video/VASTParser$WebResource.class */
    public static class WebResource {
        public String uri;

        public WebResource(String str) {
            this.uri = str;
        }

        public String toString() {
            return "WebResource:[uri:" + this.uri + "]";
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/video/VASTParser$WrapperAd.class */
    public static class WrapperAd extends C0962Ad {
        public String adTagURI;

        @Override // com.millennialmedia.internal.video.VASTParser.C0962Ad
        public String toString() {
            return (("WrapperAd:[" + super.toString()) + "adTagURI:" + this.adTagURI + ";") + "]";
        }
    }

    private static MoatExtension getDefaultMoatExtension() {
        MoatExtension moatExtension = new MoatExtension();
        moatExtension.level1 = MOAT_DEFAULT_EXTENSION_VALUE;
        moatExtension.level2 = MOAT_DEFAULT_EXTENSION_VALUE;
        moatExtension.level3 = MOAT_DEFAULT_EXTENSION_VALUE;
        moatExtension.level4 = MOAT_DEFAULT_EXTENSION_VALUE;
        moatExtension.slicer1 = MOAT_DEFAULT_EXTENSION_VALUE;
        moatExtension.slicer2 = MOAT_DEFAULT_EXTENSION_VALUE;
        return moatExtension;
    }

    private static String nextText(XmlPullParser xmlPullParser) {
        String nextText = xmlPullParser.nextText();
        String str = nextText;
        if (nextText != null) {
            str = nextText.trim();
        }
        return str;
    }

    public static C0962Ad parse(String str) {
        if (str == null) {
            MMLog.m4062w(TAG, "Ad content was null.");
            return null;
        }
        XmlPullParser newPullParser = Xml.newPullParser();
        newPullParser.setFeature("http://xmlpull.org/v1/doc/features.html#process-namespaces", false);
        newPullParser.setInput(new StringReader(str));
        newPullParser.nextTag();
        C0962Ad c0962Ad = null;
        if (newPullParser.getName().equals("VAST")) {
            String attributeValue = newPullParser.getAttributeValue("", "version");
            if (!Utils.isEmpty(attributeValue)) {
                try {
                    if (Integer.parseInt("" + attributeValue.trim().charAt(0)) > 1) {
                        newPullParser.nextTag();
                        c0962Ad = readAd(newPullParser);
                    } else {
                        MMLog.m4068e(TAG, "Unsupported VAST version = " + attributeValue);
                        c0962Ad = null;
                    }
                } catch (NumberFormatException e) {
                    MMLog.m4067e(TAG, "Invalid version format for VAST tag with version = " + attributeValue, e);
                    c0962Ad = null;
                }
            } else {
                MMLog.m4068e(TAG, "VAST version not provided.");
                c0962Ad = null;
            }
        }
        return c0962Ad;
    }

    private static C0962Ad readAd(XmlPullParser xmlPullParser) {
        WrapperAd wrapperAd;
        xmlPullParser.require(2, null, "Ad");
        String attributeValue = xmlPullParser.getAttributeValue(null, "id");
        while (true) {
            wrapperAd = null;
            if (xmlPullParser.next() == 3) {
                break;
            } else if (xmlPullParser.getEventType() == 2) {
                if (xmlPullParser.getName().equals("InLine")) {
                    wrapperAd = readInLine(xmlPullParser);
                    break;
                } else if (xmlPullParser.getName().equals("Wrapper")) {
                    wrapperAd = readWrapper(xmlPullParser);
                    break;
                } else {
                    skip(xmlPullParser);
                }
            }
        }
        if (wrapperAd != null) {
            wrapperAd.f4128id = attributeValue;
        }
        return wrapperAd;
    }

    private static String readAdVerifications(XmlPullParser xmlPullParser) {
        xmlPullParser.require(2, null, "AdVerifications");
        StringBuilder sb = new StringBuilder(100);
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                if (!xmlPullParser.getName().equals("Verification") || !"moat".equalsIgnoreCase(xmlPullParser.getAttributeValue(null, "vendor"))) {
                    skip(xmlPullParser);
                } else {
                    while (xmlPullParser.next() != 3) {
                        if (xmlPullParser.getEventType() == 2) {
                            if ("ViewableImpression".equals(xmlPullParser.getName())) {
                                if (sb.length() > 0) {
                                    sb.append(';');
                                }
                                sb.append(String.format("<ViewableImpression id=\"%s\">", xmlPullParser.getAttributeValue(null, "id")));
                                String replaceAll = xmlPullParser.nextText().replaceAll("\\s", "");
                                if (!Utils.isEmpty(replaceAll)) {
                                    sb.append(String.format("<![CDATA[%s]]>", replaceAll));
                                }
                                sb.append("</ViewableImpression>");
                            } else {
                                skip(xmlPullParser);
                            }
                        }
                    }
                }
            }
        }
        return sb.toString();
    }

    private static Background readBackground(XmlPullParser xmlPullParser) {
        xmlPullParser.require(2, null, "Background");
        Background background = new Background(toBoolean(xmlPullParser.getAttributeValue(null, "hideButtons"), false));
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                if (xmlPullParser.getName().equals(VastResourceXmlManager.STATIC_RESOURCE)) {
                    background.staticResource = new StaticResource(xmlPullParser.getAttributeValue(null, VastResourceXmlManager.CREATIVE_TYPE), xmlPullParser.getAttributeValue(null, TtmlNode.ATTR_TTS_BACKGROUND_COLOR), nextText(xmlPullParser));
                } else if (xmlPullParser.getName().equals("WebResource")) {
                    background.webResource = new WebResource(nextText(xmlPullParser));
                } else {
                    skip(xmlPullParser);
                }
            }
        }
        return background;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0088  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.millennialmedia.internal.video.VASTParser.Button readButton(org.xmlpull.v1.XmlPullParser r8) {
        /*
            Method dump skipped, instructions count: 237
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.millennialmedia.internal.video.VASTParser.readButton(org.xmlpull.v1.XmlPullParser):com.millennialmedia.internal.video.VASTParser$Button");
    }

    private static ButtonClicks readButtonClicks(XmlPullParser xmlPullParser) {
        xmlPullParser.require(2, null, "ButtonClicks");
        ButtonClicks buttonClicks = new ButtonClicks(null, new ArrayList());
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                if (xmlPullParser.getName().equals("ButtonClickThrough")) {
                    buttonClicks.clickThrough = nextText(xmlPullParser);
                } else if (xmlPullParser.getName().equals("ButtonClickTracking")) {
                    buttonClicks.clickTrackingUrls.add(nextText(xmlPullParser));
                } else {
                    skip(xmlPullParser);
                }
            }
        }
        return buttonClicks;
    }

    private static List<Button> readButtons(XmlPullParser xmlPullParser) {
        xmlPullParser.require(2, null, "Buttons");
        ArrayList arrayList = new ArrayList();
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                if (xmlPullParser.getName().equals("Button")) {
                    arrayList.add(readButton(xmlPullParser));
                } else {
                    skip(xmlPullParser);
                }
            }
        }
        return arrayList;
    }

    private static CompanionAd readCompanionAd(XmlPullParser xmlPullParser) {
        CompanionAd companionAd;
        NumberFormatException e;
        CompanionAd companionAd2;
        xmlPullParser.require(2, null, "Companion");
        try {
            CompanionAd companionAd3 = new CompanionAd(xmlPullParser.getAttributeValue(null, "id"), toInteger(xmlPullParser.getAttributeValue(null, "width")), toInteger(xmlPullParser.getAttributeValue(null, "height")), toInteger(xmlPullParser.getAttributeValue(null, "assetWidth")), toInteger(xmlPullParser.getAttributeValue(null, "assetHeight")), toBoolean(xmlPullParser.getAttributeValue(null, "hideButtons"), false));
            while (true) {
                companionAd = companionAd3;
                try {
                    if (xmlPullParser.next() == 3) {
                        break;
                    } else if (xmlPullParser.getEventType() == 2) {
                        if (xmlPullParser.getName().equals(VastResourceXmlManager.STATIC_RESOURCE)) {
                            companionAd3.staticResource = new StaticResource(xmlPullParser.getAttributeValue(null, VastResourceXmlManager.CREATIVE_TYPE), xmlPullParser.getAttributeValue(null, TtmlNode.ATTR_TTS_BACKGROUND_COLOR), nextText(xmlPullParser));
                        } else if (xmlPullParser.getName().equals(VastResourceXmlManager.HTML_RESOURCE)) {
                            companionAd3.htmlResource = new WebResource(nextText(xmlPullParser));
                        } else if (xmlPullParser.getName().equals(VastResourceXmlManager.IFRAME_RESOURCE)) {
                            companionAd3.iframeResource = new WebResource(nextText(xmlPullParser));
                        } else if (xmlPullParser.getName().equals("TrackingEvents")) {
                            companionAd3.trackingEvents = readTrackingEvents(xmlPullParser);
                        } else if (xmlPullParser.getName().equals("CompanionClickTracking")) {
                            String nextText = nextText(xmlPullParser);
                            if (!Utils.isEmpty(nextText)) {
                                companionAd3.companionClickTracking.add(nextText);
                            }
                        } else if (xmlPullParser.getName().equals("CompanionClickThrough")) {
                            String nextText2 = nextText(xmlPullParser);
                            if (!Utils.isEmpty(nextText2)) {
                                companionAd3.companionClickThrough = nextText2;
                            }
                        } else {
                            skip(xmlPullParser);
                        }
                    }
                } catch (NumberFormatException e2) {
                    e = e2;
                    companionAd2 = companionAd3;
                    MMLog.m4067e(TAG, "Syntax error in Companion element; skipping.", e);
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

    private static List<CompanionAd> readCompanionAds(XmlPullParser xmlPullParser) {
        xmlPullParser.require(2, null, "CompanionAds");
        ArrayList arrayList = new ArrayList();
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                if (xmlPullParser.getName().equals("Companion")) {
                    CompanionAd readCompanionAd = readCompanionAd(xmlPullParser);
                    if (readCompanionAd != null) {
                        arrayList.add(readCompanionAd);
                    }
                } else {
                    skip(xmlPullParser);
                }
            }
        }
        return arrayList;
    }

    private static Creative readCreative(XmlPullParser xmlPullParser) {
        xmlPullParser.require(2, null, "Creative");
        String attributeValue = xmlPullParser.getAttributeValue(null, "AdID");
        String attributeValue2 = xmlPullParser.getAttributeValue(null, "sequence");
        Integer num = null;
        if (!Utils.isEmpty(attributeValue2)) {
            try {
                num = Integer.decode(attributeValue2);
            } catch (NumberFormatException e) {
                MMLog.m4062w(TAG, "Invalid sequence number: " + attributeValue2 + " for Creative.");
                num = null;
            }
        }
        Creative creative = new Creative(attributeValue, num);
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                if (xmlPullParser.getName().equals("Linear")) {
                    creative.linearAd = readLinear(xmlPullParser);
                } else if (xmlPullParser.getName().equals("CompanionAds")) {
                    creative.companionAds = readCompanionAds(xmlPullParser);
                } else {
                    skip(xmlPullParser);
                }
            }
        }
        return creative;
    }

    private static List<Creative> readCreatives(XmlPullParser xmlPullParser) {
        xmlPullParser.require(2, null, "Creatives");
        ArrayList arrayList = new ArrayList();
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                if (xmlPullParser.getName().equals("Creative")) {
                    arrayList.add(readCreative(xmlPullParser));
                } else {
                    skip(xmlPullParser);
                }
            }
        }
        return arrayList;
    }

    private static void readExtensions(XmlPullParser xmlPullParser, C0962Ad c0962Ad) {
        xmlPullParser.require(2, null, "Extensions");
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                if (xmlPullParser.getName().equals("Extension")) {
                    String attributeValue = xmlPullParser.getAttributeValue(null, "type");
                    if ("MMInteractiveVideo".equals(attributeValue)) {
                        c0962Ad.mmExtension = readMMExtension(xmlPullParser);
                    } else if ("AOLMoat".equals(attributeValue)) {
                        c0962Ad.moatExtension = readMoatExtension(xmlPullParser);
                    } else {
                        readUntypedExtension(xmlPullParser, c0962Ad);
                    }
                } else {
                    skip(xmlPullParser);
                }
            }
        }
        if (c0962Ad.moatExtension != null || Utils.isEmpty(c0962Ad.moatTrackingIds)) {
            return;
        }
        c0962Ad.moatExtension = getDefaultMoatExtension();
    }

    public static Icon readIcon(XmlPullParser xmlPullParser) {
        xmlPullParser.require(2, null, mh1.ICON);
        String attributeValue = xmlPullParser.getAttributeValue(null, "program");
        String attributeValue2 = xmlPullParser.getAttributeValue(null, "width");
        String attributeValue3 = xmlPullParser.getAttributeValue(null, "height");
        Icon icon = new Icon(attributeValue, toInteger(attributeValue2), toInteger(attributeValue3), xmlPullParser.getAttributeValue(null, "xPosition"), xmlPullParser.getAttributeValue(null, "yPosition"), xmlPullParser.getAttributeValue(null, "apiFramework"), xmlPullParser.getAttributeValue(null, VastIconXmlManager.OFFSET), xmlPullParser.getAttributeValue(null, VastIconXmlManager.DURATION));
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                if (xmlPullParser.getName().equals(VastResourceXmlManager.STATIC_RESOURCE)) {
                    icon.staticResource = new StaticResource(xmlPullParser.getAttributeValue(null, VastResourceXmlManager.CREATIVE_TYPE), xmlPullParser.getAttributeValue(null, TtmlNode.ATTR_TTS_BACKGROUND_COLOR), nextText(xmlPullParser));
                } else if (xmlPullParser.getName().equals(VastResourceXmlManager.HTML_RESOURCE)) {
                    icon.htmlResource = new WebResource(nextText(xmlPullParser));
                } else if (xmlPullParser.getName().equals(VastResourceXmlManager.IFRAME_RESOURCE)) {
                    icon.iframeResource = new WebResource(nextText(xmlPullParser));
                } else if (xmlPullParser.getName().equals(VastIconXmlManager.ICON_CLICKS)) {
                    icon.iconClicks = readIconClicks(xmlPullParser);
                } else if (xmlPullParser.getName().equals(VastIconXmlManager.ICON_VIEW_TRACKING)) {
                    String nextText = nextText(xmlPullParser);
                    if (!Utils.isEmpty(nextText)) {
                        icon.iconViewTrackingUrls.add(nextText);
                    }
                } else {
                    skip(xmlPullParser);
                }
            }
        }
        return icon;
    }

    private static IconClicks readIconClicks(XmlPullParser xmlPullParser) {
        xmlPullParser.require(2, null, VastIconXmlManager.ICON_CLICKS);
        IconClicks iconClicks = new IconClicks();
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                if (xmlPullParser.getName().equals(VastIconXmlManager.ICON_CLICK_THROUGH)) {
                    String nextText = nextText(xmlPullParser);
                    if (!Utils.isEmpty(nextText)) {
                        iconClicks.clickThrough = nextText;
                    }
                } else if (xmlPullParser.getName().equals(VastIconXmlManager.ICON_CLICK_TRACKING)) {
                    String nextText2 = nextText(xmlPullParser);
                    if (!Utils.isEmpty(nextText2)) {
                        iconClicks.clickTrackingUrls.add(nextText2);
                    }
                } else {
                    skip(xmlPullParser);
                }
            }
        }
        return iconClicks;
    }

    private static List<Icon> readIcons(XmlPullParser xmlPullParser) {
        xmlPullParser.require(2, null, mh1.ICONS);
        ArrayList arrayList = new ArrayList();
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                if (xmlPullParser.getName().equals(mh1.ICON)) {
                    arrayList.add(readIcon(xmlPullParser));
                } else {
                    skip(xmlPullParser);
                }
            }
        }
        return arrayList;
    }

    private static InLineAd readInLine(XmlPullParser xmlPullParser) {
        xmlPullParser.require(2, null, "InLine");
        InLineAd inLineAd = new InLineAd();
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                if (xmlPullParser.getName().equals("Creatives")) {
                    inLineAd.creatives = readCreatives(xmlPullParser);
                } else if (xmlPullParser.getName().equals("Impression")) {
                    String nextText = nextText(xmlPullParser);
                    if (!Utils.isEmpty(nextText)) {
                        inLineAd.impressions.add(nextText);
                    }
                } else if (xmlPullParser.getName().equals("Extensions")) {
                    readExtensions(xmlPullParser, inLineAd);
                } else if (xmlPullParser.getName().equals("Error")) {
                    String nextText2 = nextText(xmlPullParser);
                    if (!Utils.isEmpty(nextText2)) {
                        inLineAd.error = nextText2;
                    }
                } else if (xmlPullParser.getName().equals("AdTitle")) {
                    String nextText3 = nextText(xmlPullParser);
                    if (!TextUtils.isEmpty(nextText3)) {
                        inLineAd.title = nextText3;
                    }
                } else {
                    skip(xmlPullParser);
                }
            }
        }
        return inLineAd;
    }

    private static LinearAd readLinear(XmlPullParser xmlPullParser) {
        xmlPullParser.require(2, null, "Linear");
        LinearAd linearAd = new LinearAd(xmlPullParser.getAttributeValue(null, "skipoffset"));
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                if (xmlPullParser.getName().equals("MediaFiles")) {
                    linearAd.mediaFiles = readMediaFiles(xmlPullParser);
                } else if (xmlPullParser.getName().equals("TrackingEvents")) {
                    linearAd.trackingEvents.putAll(readTrackingEvents(xmlPullParser));
                } else if (xmlPullParser.getName().equals(mh1.ICONS)) {
                    linearAd.icons = readIcons(xmlPullParser);
                } else if (xmlPullParser.getName().equals("VideoClicks")) {
                    linearAd.videoClicks = readVideoClicks(xmlPullParser);
                } else {
                    skip(xmlPullParser);
                }
            }
        }
        return linearAd;
    }

    private static MMExtension readMMExtension(XmlPullParser xmlPullParser) {
        xmlPullParser.require(2, null, "Extension");
        Overlay overlay = null;
        Background background = null;
        List<Button> list = null;
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                if (xmlPullParser.getName().equals("Overlay")) {
                    overlay = new Overlay(nextText(xmlPullParser), toBoolean(xmlPullParser.getAttributeValue(null, "hideButtons"), true));
                } else if (xmlPullParser.getName().equals("Background")) {
                    background = readBackground(xmlPullParser);
                } else if (xmlPullParser.getName().equals("Buttons")) {
                    list = readButtons(xmlPullParser);
                } else {
                    skip(xmlPullParser);
                }
            }
        }
        return new MMExtension(overlay, background, list);
    }

    private static List<MediaFile> readMediaFiles(XmlPullParser xmlPullParser) {
        xmlPullParser.require(2, null, "MediaFiles");
        ArrayList arrayList = new ArrayList();
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                if (xmlPullParser.getName().equals("MediaFile")) {
                    try {
                        arrayList.add(new MediaFile(nextText(xmlPullParser), xmlPullParser.getAttributeValue(null, "type"), xmlPullParser.getAttributeValue(null, "delivery"), xmlPullParser.getAttributeValue(null, "apiFramework"), toInt(xmlPullParser.getAttributeValue(null, "width"), 0), toInt(xmlPullParser.getAttributeValue(null, "height"), 0), toInt(xmlPullParser.getAttributeValue(null, "bitrate"), 0), Boolean.parseBoolean(xmlPullParser.getAttributeValue(null, "maintainAspectRatio"))));
                    } catch (NumberFormatException e) {
                        MMLog.m4067e(TAG, "Skipping malformed MediaFile element in VAST response.", e);
                    }
                } else {
                    skip(xmlPullParser);
                }
            }
        }
        return arrayList;
    }

    private static MoatExtension readMoatExtension(XmlPullParser xmlPullParser) {
        MoatExtension moatExtension = null;
        xmlPullParser.require(2, null, "Extension");
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2 && xmlPullParser.getName().equals("Moat")) {
                MoatExtension moatExtension2 = new MoatExtension();
                while (true) {
                    moatExtension = moatExtension2;
                    if (xmlPullParser.next() != 3) {
                        if (xmlPullParser.getEventType() == 2) {
                            if (xmlPullParser.getName().equals("Level1")) {
                                moatExtension2.level1 = nextText(xmlPullParser);
                            } else if (xmlPullParser.getName().equals("Level2")) {
                                moatExtension2.level2 = nextText(xmlPullParser);
                            } else if (xmlPullParser.getName().equals("Level3")) {
                                moatExtension2.level3 = nextText(xmlPullParser);
                            } else if (xmlPullParser.getName().equals("Level4")) {
                                moatExtension2.level4 = nextText(xmlPullParser);
                            } else if (xmlPullParser.getName().equals("Slicer1")) {
                                moatExtension2.slicer1 = nextText(xmlPullParser);
                            } else if (xmlPullParser.getName().equals("Slicer2")) {
                                moatExtension2.slicer2 = nextText(xmlPullParser);
                            } else {
                                skip(xmlPullParser);
                            }
                        }
                    }
                }
            }
        }
        return moatExtension;
    }

    private static Map<TrackableEvent, List<TrackingEvent>> readTrackingEvents(XmlPullParser xmlPullParser) {
        xmlPullParser.require(2, null, "TrackingEvents");
        HashMap hashMap = new HashMap();
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                if (xmlPullParser.getName().equals("Tracking")) {
                    String attributeValue = xmlPullParser.getAttributeValue(null, "event");
                    String attributeValue2 = xmlPullParser.getAttributeValue(null, VastIconXmlManager.OFFSET);
                    String nextText = nextText(xmlPullParser);
                    if (!Utils.isEmpty(attributeValue)) {
                        try {
                            TrackableEvent valueOf = TrackableEvent.valueOf(attributeValue.trim());
                            TrackingEvent progressEvent = TrackableEvent.progress.equals(valueOf) ? new ProgressEvent(nextText, attributeValue2) : new TrackingEvent(valueOf, nextText);
                            List list = (List) hashMap.get(valueOf);
                            List list2 = list;
                            if (list == null) {
                                list2 = new ArrayList();
                                hashMap.put(valueOf, list2);
                            }
                            list2.add(progressEvent);
                        } catch (IllegalArgumentException e) {
                            if (MMLog.isDebugEnabled()) {
                                String str = TAG;
                                MMLog.m4070d(str, "Unsupported VAST event type: " + attributeValue);
                            }
                        }
                    }
                } else {
                    skip(xmlPullParser);
                }
            }
        }
        return hashMap;
    }

    private static void readUntypedExtension(XmlPullParser xmlPullParser, C0962Ad c0962Ad) {
        xmlPullParser.require(2, null, "Extension");
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                if ("AdVerifications".equals(xmlPullParser.getName())) {
                    c0962Ad.moatTrackingIds = readAdVerifications(xmlPullParser);
                } else {
                    skip(xmlPullParser);
                }
            }
        }
    }

    private static VideoClicks readVideoClicks(XmlPullParser xmlPullParser) {
        List<String> list;
        xmlPullParser.require(2, null, "VideoClicks");
        VideoClicks videoClicks = new VideoClicks(null, new ArrayList(), new ArrayList());
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                if (xmlPullParser.getName().equals("ClickThrough")) {
                    videoClicks.clickThrough = nextText(xmlPullParser);
                } else {
                    if (xmlPullParser.getName().equals("ClickTracking")) {
                        list = videoClicks.clickTrackingUrls;
                    } else if (xmlPullParser.getName().equals("CustomClick")) {
                        list = videoClicks.customClickUrls;
                    } else {
                        skip(xmlPullParser);
                    }
                    list.add(nextText(xmlPullParser));
                }
            }
        }
        return videoClicks;
    }

    private static WrapperAd readWrapper(XmlPullParser xmlPullParser) {
        xmlPullParser.require(2, null, "Wrapper");
        WrapperAd wrapperAd = new WrapperAd();
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                if (xmlPullParser.getName().equals("VASTAdTagURI")) {
                    wrapperAd.adTagURI = nextText(xmlPullParser);
                } else if (xmlPullParser.getName().equals("Creatives")) {
                    wrapperAd.creatives = readCreatives(xmlPullParser);
                } else if (xmlPullParser.getName().equals("Impression")) {
                    String nextText = nextText(xmlPullParser);
                    if (!Utils.isEmpty(nextText)) {
                        wrapperAd.impressions.add(nextText);
                    }
                } else if (xmlPullParser.getName().equals("Extensions")) {
                    readExtensions(xmlPullParser, wrapperAd);
                } else if (xmlPullParser.getName().equals("Error")) {
                    String nextText2 = nextText(xmlPullParser);
                    if (!Utils.isEmpty(nextText2)) {
                        wrapperAd.error = nextText2;
                    }
                } else {
                    skip(xmlPullParser);
                }
            }
        }
        return wrapperAd;
    }

    private static void skip(XmlPullParser xmlPullParser) {
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

    private static boolean toBoolean(String str, boolean z) {
        return str == null ? z : Boolean.parseBoolean(str);
    }

    private static int toInt(String str, int i) {
        return TextUtils.isEmpty(str) ? i : Integer.parseInt(str);
    }

    private static Integer toInteger(String str) {
        if (str == null || str.length() == 0) {
            return null;
        }
        return Integer.valueOf(str);
    }
}
