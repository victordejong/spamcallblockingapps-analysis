package com.mopub.mobileads;

import com.mopub.common.Constants;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import p131c.p161d.p354f.p355s.AbstractC6132a;
import p131c.p161d.p354f.p355s.AbstractC6134c;
import p573f.p577r.C9977m;
import p573f.p577r.C9978n;
import p573f.p577r.C9986v;
import p573f.p590w.p592c.C10057o;
import p573f.p590w.p592c.C10059q;
@Mockable
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastResourceTwo.class */
public class VastResourceTwo implements Serializable {
    public static final long serialVersionUID = 1;
    @AbstractC6134c(Constants.VAST_CREATIVE_TYPE)
    @AbstractC6132a
    public final CreativeType creativeType;
    @AbstractC6134c("height")
    @AbstractC6132a
    public final int height;
    @AbstractC6134c(Constants.VAST_RESOURCE)
    @AbstractC6132a
    public final String resource;
    @AbstractC6134c("type")
    @AbstractC6132a
    public final Type type;
    @AbstractC6134c("width")
    @AbstractC6132a
    public final int width;
    public static final Companion Companion = new Companion(null);
    public static final List<String> VALID_IMAGE_TYPES = C9978n.m1707a((Object[]) new String[]{"image/jpeg", "image/png", "image/bmp", "image/gif"});
    public static final List<String> VALID_APPLICATION_TYPES = C9977m.m1710a("application/x-javascript");

    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastResourceTwo$Companion.class */
    public static final class Companion {

        /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastResourceTwo$Companion$WhenMappings.class */
        public final /* synthetic */ class WhenMappings {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[Type.values().length];
                $EnumSwitchMapping$0 = iArr;
                iArr[Type.STATIC_RESOURCE.ordinal()] = 1;
                $EnumSwitchMapping$0[Type.HTML_RESOURCE.ordinal()] = 2;
                $EnumSwitchMapping$0[Type.IFRAME_RESOURCE.ordinal()] = 3;
            }
        }

        public Companion() {
        }

        public /* synthetic */ Companion(C10057o oVar) {
            this();
        }

        public final VastResourceTwo fromVastResourceXmlManager(VastResourceXmlManager vastResourceXmlManager, int i, int i2) {
            C10059q.m1637b(vastResourceXmlManager, "resourceXmlManager");
            Type[] values = Type.values();
            ArrayList arrayList = new ArrayList();
            for (Type type : values) {
                VastResourceTwo fromVastResourceXmlManager = VastResourceTwo.Companion.fromVastResourceXmlManager(vastResourceXmlManager, type, i, i2);
                if (fromVastResourceXmlManager != null) {
                    arrayList.add(fromVastResourceXmlManager);
                }
            }
            return (VastResourceTwo) C9986v.m1694b((List<? extends Object>) arrayList);
        }

        /* JADX WARN: Removed duplicated region for block: B:29:0x00c3  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final com.mopub.mobileads.VastResourceTwo fromVastResourceXmlManager(com.mopub.mobileads.VastResourceXmlManager r9, com.mopub.mobileads.VastResourceTwo.Type r10, int r11, int r12) {
            /*
                Method dump skipped, instructions count: 214
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.mopub.mobileads.VastResourceTwo.Companion.fromVastResourceXmlManager(com.mopub.mobileads.VastResourceXmlManager, com.mopub.mobileads.VastResourceTwo$Type, int, int):com.mopub.mobileads.VastResourceTwo");
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastResourceTwo$CreativeType.class */
    public enum CreativeType {
        NONE,
        IMAGE,
        JAVASCRIPT
    }

    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastResourceTwo$Type.class */
    public enum Type {
        STATIC_RESOURCE,
        HTML_RESOURCE,
        IFRAME_RESOURCE
    }

    public VastResourceTwo(String str, Type type, CreativeType creativeType, int i, int i2) {
        C10059q.m1637b(str, Constants.VAST_RESOURCE);
        C10059q.m1637b(type, "type");
        C10059q.m1637b(creativeType, VastResourceXmlManager.CREATIVE_TYPE);
        this.resource = str;
        this.type = type;
        this.creativeType = creativeType;
        this.width = i;
        this.height = i2;
    }

    public static final VastResourceTwo fromVastResourceXmlManager(VastResourceXmlManager vastResourceXmlManager, int i, int i2) {
        return Companion.fromVastResourceXmlManager(vastResourceXmlManager, i, i2);
    }

    public static final VastResourceTwo fromVastResourceXmlManager(VastResourceXmlManager vastResourceXmlManager, Type type, int i, int i2) {
        return Companion.fromVastResourceXmlManager(vastResourceXmlManager, type, i, i2);
    }

    public String getCorrectClickThroughUrl(String str, String str2) {
        if (!(getType() == Type.HTML_RESOURCE || getType() == Type.IFRAME_RESOURCE)) {
            if (!(getType() == Type.STATIC_RESOURCE && getCreativeType() == CreativeType.IMAGE)) {
                if (!(getType() == Type.STATIC_RESOURCE && getCreativeType() == CreativeType.JAVASCRIPT)) {
                    str = null;
                }
            }
            return str;
        }
        str = str2;
        return str;
    }

    public CreativeType getCreativeType() {
        return this.creativeType;
    }

    public int getHeight() {
        return this.height;
    }

    public String getResource() {
        return this.resource;
    }

    public Type getType() {
        return this.type;
    }

    public int getWidth() {
        return this.width;
    }

    public void initializeWebView(VastWebView vastWebView) {
        String str;
        C10059q.m1637b(vastWebView, "webView");
        if (getType() == Type.HTML_RESOURCE) {
            str = getResource();
        } else if (getType() == Type.IFRAME_RESOURCE) {
            str = "<iframe frameborder=\"0\" scrolling=\"no\" marginheight=\"0\" marginwidth=\"0\" style=\"border: 0px; margin: 0px;\" width=\"" + getWidth() + "\" height=\"" + getHeight() + "\" src=\"" + getResource() + "\"></iframe>";
        } else if (getType() == Type.STATIC_RESOURCE && getCreativeType() == CreativeType.IMAGE) {
            str = "<html><head></head><body style=\"margin:0;padding:0\"><img src=\"" + getResource() + "\" width=\"100%\" style=\"max-width:100%;max-height:100%;\" /></body></html>";
        } else if (getType() == Type.STATIC_RESOURCE && getCreativeType() == CreativeType.JAVASCRIPT) {
            str = "<script src=\"" + getResource() + "\"></script>";
        } else {
            str = null;
        }
        if (str != null) {
            vastWebView.m4190a(str);
        }
    }
}
