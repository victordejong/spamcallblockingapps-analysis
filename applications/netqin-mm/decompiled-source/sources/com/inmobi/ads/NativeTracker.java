package com.inmobi.ads;

import com.inmobi.commons.core.p509a.C8328a;
import com.inmobi.commons.core.p513e.C8365a;
import com.inmobi.commons.core.utilities.C8407d;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/inmobi/ads/NativeTracker.class */
public final class NativeTracker {

    /* renamed from: e */
    public static final String f31405e = "NativeTracker";

    /* renamed from: a */
    public String f31406a;

    /* renamed from: b */
    public TrackerEventType f31407b;

    /* renamed from: c */
    public Map<String, String> f31408c;

    /* renamed from: d */
    public Map<String, Object> f31409d;

    /* renamed from: f */
    public String f31410f;

    /* renamed from: g */
    public int f31411g;

    /* renamed from: com.inmobi.ads.NativeTracker$1 */
    /* loaded from: classes2-dex2jar.jar:com/inmobi/ads/NativeTracker$1.class */
    public static final /* synthetic */ class C80321 {

        /* renamed from: a */
        public static final /* synthetic */ int[] f31412a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:49:0x0119 -> B:98:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:50:0x011d -> B:116:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:51:0x0121 -> B:110:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:52:0x0125 -> B:82:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:53:0x0129 -> B:76:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:54:0x012d -> B:92:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:55:0x0131 -> B:86:0x0058). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:56:0x0135 -> B:102:0x0064). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:57:0x0139 -> B:96:0x0070). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:58:0x013d -> B:114:0x007c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:59:0x0141 -> B:108:0x0088). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:60:0x0145 -> B:80:0x0094). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:61:0x0149 -> B:74:0x00a0). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:62:0x014d -> B:90:0x00ac). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:63:0x0151 -> B:84:0x00b8). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:64:0x0155 -> B:100:0x00c4). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:65:0x0159 -> B:94:0x00d0). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:66:0x015d -> B:112:0x00dc). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:67:0x0161 -> B:106:0x00e8). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:68:0x0165 -> B:78:0x00f4). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:69:0x0169 -> B:72:0x0100). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:70:0x016d -> B:88:0x010c). Please submit an issue!!! */
        static {
            int[] iArr = new int[TrackerEventType.values().length];
            f31412a = iArr;
            try {
                iArr[TrackerEventType.TRACKER_EVENT_TYPE_UNKNOWN.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f31412a[TrackerEventType.TRACKER_EVENT_TYPE_LOAD.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f31412a[TrackerEventType.TRACKER_EVENT_TYPE_CLIENT_FILL.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f31412a[TrackerEventType.TRACKER_EVENT_TYPE_RENDER.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f31412a[TrackerEventType.TRACKER_EVENT_TYPE_VIDEO_RENDER.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f31412a[TrackerEventType.TRACKER_EVENT_TYPE_PAGE_VIEW.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f31412a[TrackerEventType.TRACKER_EVENT_TYPE_CLICK.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f31412a[TrackerEventType.TRACKER_EVENT_TYPE_PLAY.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f31412a[TrackerEventType.TRACKER_EVENT_TYPE_Q1.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
            try {
                f31412a[TrackerEventType.TRACKER_EVENT_TYPE_Q2.ordinal()] = 10;
            } catch (NoSuchFieldError e10) {
            }
            try {
                f31412a[TrackerEventType.TRACKER_EVENT_TYPE_Q3.ordinal()] = 11;
            } catch (NoSuchFieldError e11) {
            }
            try {
                f31412a[TrackerEventType.TRACKER_EVENT_TYPE_Q4.ordinal()] = 12;
            } catch (NoSuchFieldError e12) {
            }
            try {
                f31412a[TrackerEventType.TRACKER_EVENT_TYPE_CREATIVE_VIEW.ordinal()] = 13;
            } catch (NoSuchFieldError e13) {
            }
            try {
                f31412a[TrackerEventType.TRACKER_EVENT_TYPE_FULLSCREEN.ordinal()] = 14;
            } catch (NoSuchFieldError e14) {
            }
            try {
                f31412a[TrackerEventType.TRACKER_EVENT_TYPE_EXIT_FULLSCREEN.ordinal()] = 15;
            } catch (NoSuchFieldError e15) {
            }
            try {
                f31412a[TrackerEventType.TRACKER_EVENT_TYPE_MUTE.ordinal()] = 16;
            } catch (NoSuchFieldError e16) {
            }
            try {
                f31412a[TrackerEventType.TRACKER_EVENT_TYPE_UNMUTE.ordinal()] = 17;
            } catch (NoSuchFieldError e17) {
            }
            try {
                f31412a[TrackerEventType.TRACKER_EVENT_TYPE_PAUSE.ordinal()] = 18;
            } catch (NoSuchFieldError e18) {
            }
            try {
                f31412a[TrackerEventType.TRACKER_EVENT_TYPE_RESUME.ordinal()] = 19;
            } catch (NoSuchFieldError e19) {
            }
            try {
                f31412a[TrackerEventType.TRACKER_EVENT_TYPE_ERROR.ordinal()] = 20;
            } catch (NoSuchFieldError e20) {
            }
            try {
                f31412a[TrackerEventType.TRACKER_EVENT_TYPE_IAS.ordinal()] = 21;
            } catch (NoSuchFieldError e21) {
            }
            try {
                f31412a[TrackerEventType.TRACKER_EVENT_TYPE_MOAT.ordinal()] = 22;
            } catch (NoSuchFieldError e22) {
            }
            try {
                f31412a[TrackerEventType.TRACKER_EVENT_TYPE_END_CARD_CLOSE.ordinal()] = 23;
            } catch (NoSuchFieldError e23) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/inmobi/ads/NativeTracker$TrackerEventType.class */
    public enum TrackerEventType {
        TRACKER_EVENT_TYPE_UNKNOWN,
        TRACKER_EVENT_TYPE_LOAD,
        TRACKER_EVENT_TYPE_CLIENT_FILL,
        TRACKER_EVENT_TYPE_RENDER,
        TRACKER_EVENT_TYPE_PAGE_VIEW,
        TRACKER_EVENT_TYPE_CLICK,
        TRACKER_EVENT_TYPE_VIDEO_RENDER,
        TRACKER_EVENT_TYPE_FALLBACK_URL,
        TRACKER_EVENT_TYPE_PLAY,
        TRACKER_EVENT_TYPE_Q1,
        TRACKER_EVENT_TYPE_Q2,
        TRACKER_EVENT_TYPE_Q3,
        TRACKER_EVENT_TYPE_Q4,
        TRACKER_EVENT_TYPE_CREATIVE_VIEW,
        TRACKER_EVENT_TYPE_FULLSCREEN,
        TRACKER_EVENT_TYPE_EXIT_FULLSCREEN,
        TRACKER_EVENT_TYPE_MUTE,
        TRACKER_EVENT_TYPE_UNMUTE,
        TRACKER_EVENT_TYPE_PAUSE,
        TRACKER_EVENT_TYPE_RESUME,
        TRACKER_EVENT_TYPE_ERROR,
        TRACKER_EVENT_TYPE_END_CARD_CLOSE,
        TRACKER_EVENT_TYPE_CUSTOM_EVENT_VIDEO,
        TRACKER_EVENT_TYPE_IAS,
        TRACKER_EVENT_TYPE_MOAT,
        TRACKER_EVENT_TYPE_DOWNLOADER_INIT,
        TRACKER_EVENT_TYPE_DOWNLOADER_DOWNLOADING,
        TRACKER_EVENT_TYPE_DOWNLOADER_DOWNLOADED,
        TRACKER_EVENT_TYPE_DOWNLOADER_ERROR
    }

    public NativeTracker(String str, int i, TrackerEventType trackerEventType, Map<String, String> map) {
        this("url_ping", str, i, trackerEventType, map);
    }

    public NativeTracker(String str, String str2, int i, TrackerEventType trackerEventType, Map<String, String> map) {
        this.f31410f = str;
        this.f31406a = str2.trim();
        this.f31411g = i;
        this.f31407b = trackerEventType;
        this.f31408c = map;
    }

    /* renamed from: a */
    public static TrackerEventType m6667a(String str) {
        if (str == null || str.length() == 0) {
            return TrackerEventType.TRACKER_EVENT_TYPE_UNKNOWN;
        }
        char c = 65535;
        switch (str.hashCode()) {
            case -1638835128:
                if (str.equals("midpoint")) {
                    c = '\n';
                    break;
                }
                break;
            case -1337830390:
                if (str.equals("thirdQuartile")) {
                    c = 11;
                    break;
                }
                break;
            case -934426579:
                if (str.equals("resume")) {
                    c = 19;
                    break;
                }
                break;
            case -840405966:
                if (str.equals("unmute")) {
                    c = 17;
                    break;
                }
                break;
            case -667101923:
                if (str.equals("zMoatVASTIDs")) {
                    c = 22;
                    break;
                }
                break;
            case -599445191:
                if (str.equals("complete")) {
                    c = '\f';
                    break;
                }
                break;
            case -284840886:
                if (str.equals("unknown")) {
                    c = 1;
                    break;
                }
                break;
            case -174104201:
                if (str.equals("client_fill")) {
                    c = 3;
                    break;
                }
                break;
            case -45894975:
                if (str.equals("IAS_VIEWABILITY")) {
                    c = 21;
                    break;
                }
                break;
            case 3327206:
                if (str.equals("load")) {
                    c = 2;
                    break;
                }
                break;
            case 3363353:
                if (str.equals("mute")) {
                    c = 16;
                    break;
                }
                break;
            case 94750088:
                if (str.equals("click")) {
                    c = 7;
                    break;
                }
                break;
            case 96784904:
                if (str.equals("error")) {
                    c = 20;
                    break;
                }
                break;
            case 106440182:
                if (str.equals("pause")) {
                    c = 18;
                    break;
                }
                break;
            case 109757538:
                if (str.equals("start")) {
                    c = '\b';
                    break;
                }
                break;
            case 110066619:
                if (str.equals("fullscreen")) {
                    c = 14;
                    break;
                }
                break;
            case 113951609:
                if (str.equals("exitFullscreen")) {
                    c = 15;
                    break;
                }
                break;
            case 354294980:
                if (str.equals("VideoImpression")) {
                    c = 5;
                    break;
                }
                break;
            case 560220243:
                if (str.equals("firstQuartile")) {
                    c = '\t';
                    break;
                }
                break;
            case 883937877:
                if (str.equals("page_view")) {
                    c = 6;
                    break;
                }
                break;
            case 1342121331:
                if (str.equals("closeEndCard")) {
                    c = 23;
                    break;
                }
                break;
            case 1778167540:
                if (str.equals("creativeView")) {
                    c = '\r';
                    break;
                }
                break;
            case 2114088489:
                if (str.equals("Impression")) {
                    c = 4;
                    break;
                }
                break;
        }
        switch (c) {
            case 2:
                return TrackerEventType.TRACKER_EVENT_TYPE_LOAD;
            case 3:
                return TrackerEventType.TRACKER_EVENT_TYPE_CLIENT_FILL;
            case 4:
                return TrackerEventType.TRACKER_EVENT_TYPE_RENDER;
            case 5:
                return TrackerEventType.TRACKER_EVENT_TYPE_VIDEO_RENDER;
            case 6:
                return TrackerEventType.TRACKER_EVENT_TYPE_PAGE_VIEW;
            case 7:
                return TrackerEventType.TRACKER_EVENT_TYPE_CLICK;
            case '\b':
                return TrackerEventType.TRACKER_EVENT_TYPE_PLAY;
            case '\t':
                return TrackerEventType.TRACKER_EVENT_TYPE_Q1;
            case '\n':
                return TrackerEventType.TRACKER_EVENT_TYPE_Q2;
            case 11:
                return TrackerEventType.TRACKER_EVENT_TYPE_Q3;
            case '\f':
                return TrackerEventType.TRACKER_EVENT_TYPE_Q4;
            case '\r':
                return TrackerEventType.TRACKER_EVENT_TYPE_CREATIVE_VIEW;
            case 14:
                return TrackerEventType.TRACKER_EVENT_TYPE_FULLSCREEN;
            case 15:
                return TrackerEventType.TRACKER_EVENT_TYPE_EXIT_FULLSCREEN;
            case 16:
                return TrackerEventType.TRACKER_EVENT_TYPE_MUTE;
            case 17:
                return TrackerEventType.TRACKER_EVENT_TYPE_UNMUTE;
            case 18:
                return TrackerEventType.TRACKER_EVENT_TYPE_PAUSE;
            case 19:
                return TrackerEventType.TRACKER_EVENT_TYPE_RESUME;
            case 20:
                return TrackerEventType.TRACKER_EVENT_TYPE_ERROR;
            case 21:
                return TrackerEventType.TRACKER_EVENT_TYPE_IAS;
            case 22:
                return TrackerEventType.TRACKER_EVENT_TYPE_MOAT;
            case 23:
                return TrackerEventType.TRACKER_EVENT_TYPE_END_CARD_CLOSE;
            default:
                return TrackerEventType.TRACKER_EVENT_TYPE_UNKNOWN;
        }
    }

    /* renamed from: a */
    public static NativeTracker m6666a(JSONObject jSONObject) {
        String str;
        try {
            String string = jSONObject.getString("type");
            if (!(string == null || string.length() == 0)) {
                String lowerCase = string.toLowerCase(Locale.US);
                switch (lowerCase.hashCode()) {
                    case -1918378017:
                        str = "html_script";
                        lowerCase.equals(str);
                        break;
                    case -970292670:
                        str = "url_ping";
                        lowerCase.equals(str);
                        break;
                    case -284840886:
                        str = "unknown";
                        lowerCase.equals(str);
                        break;
                    case 2015859192:
                        lowerCase.equals("webview_ping");
                        break;
                }
            }
            return new NativeTracker(jSONObject.getString("url"), jSONObject.optInt("eventId", -1), m6667a(jSONObject.getString("eventType")), new HashMap());
        } catch (JSONException e) {
            new StringBuilder("Error building tracker from JSONObject; ").append(e.getMessage());
            C8328a.m5878a().m5875a(new C8365a(e));
            return null;
        }
    }

    public final String toString() {
        String str;
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("type", this.f31410f);
            jSONObject.put("url", this.f31406a);
            switch (C80321.f31412a[this.f31407b.ordinal()]) {
                case 2:
                    str = "load";
                    break;
                case 3:
                    str = "client_fill";
                    break;
                case 4:
                    str = "Impression";
                    break;
                case 5:
                    str = "VideoImpression";
                    break;
                case 6:
                    str = "page_view";
                    break;
                case 7:
                    str = "click";
                    break;
                case 8:
                    str = "start";
                    break;
                case 9:
                    str = "firstQuartile";
                    break;
                case 10:
                    str = "midpoint";
                    break;
                case 11:
                    str = "thirdQuartile";
                    break;
                case 12:
                    str = "complete";
                    break;
                case 13:
                    str = "creativeView";
                    break;
                case 14:
                    str = "fullscreen";
                    break;
                case 15:
                    str = "exitFullscreen";
                    break;
                case 16:
                    str = "mute";
                    break;
                case 17:
                    str = "unmute";
                    break;
                case 18:
                    str = "pause";
                    break;
                case 19:
                    str = "resume";
                    break;
                case 20:
                    str = "error";
                    break;
                case 21:
                    str = "IAS_VIEWABILITY";
                    break;
                case 22:
                    str = "zMoatVASTIDs";
                    break;
                case 23:
                    str = "closeEndCard";
                    break;
                default:
                    str = "unknown";
                    break;
            }
            jSONObject.put("eventType", str);
            jSONObject.put("eventId", this.f31411g);
            jSONObject.put("extras", C8407d.m5644a(this.f31408c == null ? new HashMap() : this.f31408c, ","));
            return jSONObject.toString();
        } catch (JSONException e) {
            StringBuilder sb = new StringBuilder("Error serializing an ");
            sb.append(f31405e);
            sb.append(" instance (");
            sb.append(e.getMessage());
            C8328a.m5878a().m5875a(new C8365a(e));
            return "";
        }
    }
}
