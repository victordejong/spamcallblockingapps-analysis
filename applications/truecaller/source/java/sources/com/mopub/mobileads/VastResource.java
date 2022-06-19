package com.mopub.mobileads;

import com.huawei.hms.opendevice.AbstractC2405c;
import com.mopub.common.Constants;
import com.mopub.mobileads.util.XmlUtils;
import com.mopub.network.Networking;
import com.tenor.android.core.constant.ContentFormat;
import com.tenor.android.core.constant.StringConstant;
import e.m.e.d0.b;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1432d.p1443e.p1444x.AbstractC22212i;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import s1.u.i;
import s1.z.c.f;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010��\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0012\b\u0017\u0018�� 02\u00020\u0001:\u0003012B/\u0012\u0006\u0010\u001a\u001a\u00020\u0007\u0012\u0006\u0010&\u001a\u00020!\u0012\u0006\u0010 \u001a\u00020\u001b\u0012\u0006\u0010*\u001a\u00020\u0013\u0012\u0006\u0010-\u001a\u00020\u0013¢\u0006\u0004\b.\u0010/J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J\u0011\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0016¢\u0006\u0004\b\b\u0010\tJ%\u0010\f\u001a\u0004\u0018\u00010\u00072\b\u0010\n\u001a\u0004\u0018\u00010\u00072\b\u0010\u000b\u001a\u0004\u0018\u00010\u0007H\u0016¢\u0006\u0004\b\f\u0010\rJ\u001a\u0010\u0011\u001a\u00020\u00102\b\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0096\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0014\u001a\u00020\u0013H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u0016\u0010\tR\u001c\u0010\u001a\u001a\u00020\u00078\u0016@\u0017X\u0097\u0004¢\u0006\f\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\tR\u001c\u0010 \u001a\u00020\u001b8\u0016@\u0017X\u0097\u0004¢\u0006\f\n\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u001e\u0010\u001fR\u001c\u0010&\u001a\u00020!8\u0016@\u0017X\u0097\u0004¢\u0006\f\n\u0004\b\"\u0010#\u001a\u0004\b$\u0010%R\u001c\u0010*\u001a\u00020\u00138\u0016@\u0017X\u0097\u0004¢\u0006\f\n\u0004\b'\u0010(\u001a\u0004\b)\u0010\u0015R\u001c\u0010-\u001a\u00020\u00138\u0016@\u0017X\u0097\u0004¢\u0006\f\n\u0004\b+\u0010(\u001a\u0004\b,\u0010\u0015¨\u00063"}, d2 = {"Lcom/mopub/mobileads/VastResource;", "Ljava/io/Serializable;", "Lcom/mopub/mobileads/VastWebView;", "webView", "Ls1/s;", "initializeWebView", "(Lcom/mopub/mobileads/VastWebView;)V", "", "getHtmlResourceValue", "()Ljava/lang/String;", "vastClickThroughUrl", "webViewClickThroughUrl", "getCorrectClickThroughUrl", "(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "", "hashCode", "()I", "toString", "a", "Ljava/lang/String;", "getResource", Constants.VAST_RESOURCE, "Lcom/mopub/mobileads/VastResource$CreativeType;", AbstractC2405c.f7629a, "Lcom/mopub/mobileads/VastResource$CreativeType;", "getCreativeType", "()Lcom/mopub/mobileads/VastResource$CreativeType;", VastResourceXmlManager.CREATIVE_TYPE, "Lcom/mopub/mobileads/VastResource$Type;", C22021b.f61237c, "Lcom/mopub/mobileads/VastResource$Type;", "getType", "()Lcom/mopub/mobileads/VastResource$Type;", "type", "d", "I", "getWidth", "width", "e", "getHeight", "height", "<init>", "(Ljava/lang/String;Lcom/mopub/mobileads/VastResource$Type;Lcom/mopub/mobileads/VastResource$CreativeType;II)V", "Companion", "CreativeType", "Type", "mopub-sdk-base_release"}, k = 1, mv = {1, 4, 0})
@Mockable
/* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/VastResource.class */
public class VastResource implements Serializable {
    public static final Companion Companion = new Companion(null);

    /* renamed from: f */
    public static final List<String> f8877f = i.T(new String[]{ContentFormat.IMAGE_JPEG, ContentFormat.IMAGE_PNG, "image/bmp", ContentFormat.IMAGE_GIF, "image/jpg"});

    /* renamed from: g */
    public static final List<String> f8878g = C25225a.m3962T1("application/x-javascript");
    @b(Constants.VAST_RESOURCE)

    /* renamed from: a */
    private final String f8879a;
    @b("type")

    /* renamed from: b */
    private final Type f8880b;
    @b(Constants.VAST_CREATIVE_TYPE)

    /* renamed from: c */
    private final CreativeType f8881c;
    @b("width")

    /* renamed from: d */
    private final int f8882d;
    @b("height")

    /* renamed from: e */
    private final int f8883e;

    @Metadata(bv = {1, 0, 3}, d1 = {"��:\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0005\b\u0086\u0003\u0018��2\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0015\u0010\u0016J)\u0010\b\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\b\u0010\tJ1\u0010\b\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\b\u0010\fR\u001c\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u000e0\r8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010R\u001c\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u000e0\r8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0010R\u0016\u0010\u0013\u001a\u00020\u00128\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014¨\u0006\u0017"}, d2 = {"Lcom/mopub/mobileads/VastResource$Companion;", "", "Lcom/mopub/mobileads/VastResourceXmlManager;", "resourceXmlManager", "", "width", "height", "Lcom/mopub/mobileads/VastResource;", "fromVastResourceXmlManager", "(Lcom/mopub/mobileads/VastResourceXmlManager;II)Lcom/mopub/mobileads/VastResource;", "Lcom/mopub/mobileads/VastResource$Type;", "type", "(Lcom/mopub/mobileads/VastResourceXmlManager;Lcom/mopub/mobileads/VastResource$Type;II)Lcom/mopub/mobileads/VastResource;", "", "", "VALID_APPLICATION_TYPES", "Ljava/util/List;", "VALID_IMAGE_TYPES", "", "serialVersionUID", "J", "<init>", "()V", "mopub-sdk-base_release"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/VastResource$Companion.class */
    public static final class Companion {

        @Metadata(bv = {1, 0, 3}, d1 = {}, d2 = {}, k = 3, mv = {1, 4, 0})
        /* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/VastResource$Companion$WhenMappings.class */
        public final /* synthetic */ class WhenMappings {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                Type.values();
                $EnumSwitchMapping$0 = r0;
                int[] iArr = {2, 1, 3};
            }
        }

        private Companion() {
        }

        public /* synthetic */ Companion(f fVar) {
            this();
        }

        public final VastResource fromVastResourceXmlManager(VastResourceXmlManager vastResourceXmlManager, int i, int i2) {
            l.f(vastResourceXmlManager, "resourceXmlManager");
            Type[] values = Type.values();
            ArrayList arrayList = new ArrayList();
            for (int i3 = 0; i3 < 4; i3++) {
                VastResource fromVastResourceXmlManager = VastResource.Companion.fromVastResourceXmlManager(vastResourceXmlManager, values[i3], i, i2);
                if (fromVastResourceXmlManager != null) {
                    arrayList.add(fromVastResourceXmlManager);
                }
            }
            return (VastResource) i.D(arrayList);
        }

        public final VastResource fromVastResourceXmlManager(VastResourceXmlManager vastResourceXmlManager, Type type, int i, int i2) {
            String str;
            CreativeType creativeType;
            l.f(vastResourceXmlManager, "resourceXmlManager");
            l.f(type, "type");
            String attributeValue = XmlUtils.getAttributeValue(XmlUtils.getFirstMatchingChildNode(vastResourceXmlManager.f8886a, VastResourceXmlManager.STATIC_RESOURCE), VastResourceXmlManager.CREATIVE_TYPE);
            String lowerCase = attributeValue != null ? attributeValue.toLowerCase() : null;
            CreativeType creativeType2 = CreativeType.NONE;
            int ordinal = type.ordinal();
            if (ordinal == 0) {
                str = XmlUtils.getNodeValue(XmlUtils.getFirstMatchingChildNode(vastResourceXmlManager.f8886a, VastResourceXmlManager.HTML_RESOURCE));
                creativeType = creativeType2;
            } else if (ordinal == 1) {
                str = XmlUtils.getNodeValue(XmlUtils.getFirstMatchingChildNode(vastResourceXmlManager.f8886a, VastResourceXmlManager.STATIC_RESOURCE));
                boolean z = true;
                if (!i.l(VastResource.f8877f, lowerCase)) {
                    z = i.l(VastResource.f8878g, lowerCase);
                }
                if (!z) {
                    str = null;
                }
                creativeType = CreativeType.IMAGE;
                if (!i.l(VastResource.f8877f, lowerCase)) {
                    creativeType = null;
                }
                if (creativeType == null) {
                    creativeType = CreativeType.JAVASCRIPT;
                }
            } else if (ordinal != 2) {
                str = null;
                creativeType = creativeType2;
            } else {
                str = XmlUtils.getNodeValue(XmlUtils.getFirstMatchingChildNode(vastResourceXmlManager.f8886a, VastResourceXmlManager.IFRAME_RESOURCE));
                creativeType = creativeType2;
            }
            VastResource vastResource = null;
            if (str != null) {
                vastResource = new VastResource(str, type, creativeType, i, i2);
            }
            return vastResource;
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, d2 = {"Lcom/mopub/mobileads/VastResource$CreativeType;", "", "<init>", "(Ljava/lang/String;I)V", "NONE", "IMAGE", "JAVASCRIPT", "mopub-sdk-base_release"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/VastResource$CreativeType.class */
    public enum CreativeType {
        NONE,
        IMAGE,
        JAVASCRIPT
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0007\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007¨\u0006\b"}, d2 = {"Lcom/mopub/mobileads/VastResource$Type;", "", "<init>", "(Ljava/lang/String;I)V", "HTML_RESOURCE", "STATIC_RESOURCE", "IFRAME_RESOURCE", "BLURRED_LAST_FRAME", "mopub-sdk-base_release"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/VastResource$Type.class */
    public enum Type {
        HTML_RESOURCE,
        STATIC_RESOURCE,
        IFRAME_RESOURCE,
        BLURRED_LAST_FRAME
    }

    public VastResource(String str, Type type, CreativeType creativeType, int i, int i2) {
        l.f(str, Constants.VAST_RESOURCE);
        l.f(type, "type");
        l.f(creativeType, VastResourceXmlManager.CREATIVE_TYPE);
        this.f8879a = str;
        this.f8880b = type;
        this.f8881c = creativeType;
        this.f8882d = i;
        this.f8883e = i2;
    }

    public static final VastResource fromVastResourceXmlManager(VastResourceXmlManager vastResourceXmlManager, int i, int i2) {
        return Companion.fromVastResourceXmlManager(vastResourceXmlManager, i, i2);
    }

    public static final VastResource fromVastResourceXmlManager(VastResourceXmlManager vastResourceXmlManager, Type type, int i, int i2) {
        return Companion.fromVastResourceXmlManager(vastResourceXmlManager, type, i, i2);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof VastResource)) {
            return false;
        }
        VastResource vastResource = (VastResource) obj;
        return !(l.a(getResource(), vastResource.getResource()) ^ true) && getType() == vastResource.getType() && getCreativeType() == vastResource.getCreativeType() && getWidth() == vastResource.getWidth() && getHeight() == vastResource.getHeight();
    }

    public String getCorrectClickThroughUrl(String str, String str2) {
        if (getType() != Type.HTML_RESOURCE && getType() != Type.IFRAME_RESOURCE) {
            Type type = getType();
            Type type2 = Type.STATIC_RESOURCE;
            if (type != type2 || getCreativeType() != CreativeType.IMAGE) {
                if (getType() != type2 || getCreativeType() != CreativeType.JAVASCRIPT) {
                    if (getType() != Type.BLURRED_LAST_FRAME) {
                        str = null;
                    }
                }
            }
            return str;
        }
        str = str2;
        return str;
    }

    public CreativeType getCreativeType() {
        return this.f8881c;
    }

    public int getHeight() {
        return this.f8883e;
    }

    public String getHtmlResourceValue() {
        String str;
        if (getType() == Type.HTML_RESOURCE) {
            str = getResource();
        } else if (getType() == Type.IFRAME_RESOURCE) {
            StringBuilder m8696K = C22128a.m8696K("<iframe frameborder=\"0\" scrolling=\"no\" marginheight=\"0\" marginwidth=\"0\" style=\"border: 0px; margin: 0px;\"", " width=\"");
            m8696K.append(getWidth());
            m8696K.append('\"');
            m8696K.append(" height=\"");
            m8696K.append(getHeight());
            m8696K.append('\"');
            m8696K.append(" src=\"");
            m8696K.append(getResource());
            m8696K.append("\"></iframe>");
            str = m8696K.toString();
        } else {
            Type type = getType();
            Type type2 = Type.STATIC_RESOURCE;
            if (type == type2 && getCreativeType() == CreativeType.IMAGE) {
                StringBuilder m8696K2 = C22128a.m8696K("<html>", "<head></head><body style=\"margin:0;padding:0\"><img src=\"");
                m8696K2.append(getResource());
                m8696K2.append('\"');
                m8696K2.append(" width=\"100%\" style=\"max-width:100%;max-height:100%;\" />");
                m8696K2.append("</body></html>");
                str = m8696K2.toString();
            } else if (getType() == type2 && getCreativeType() == CreativeType.JAVASCRIPT) {
                StringBuilder m8728C = C22128a.m8728C("<script src=\"");
                m8728C.append(getResource());
                m8728C.append("\"></script>");
                str = m8728C.toString();
            } else {
                str = getType() == Type.BLURRED_LAST_FRAME ? getResource() : null;
            }
        }
        return str;
    }

    public String getResource() {
        return this.f8879a;
    }

    public Type getType() {
        return this.f8880b;
    }

    public int getWidth() {
        return this.f8882d;
    }

    public int hashCode() {
        int hashCode = getResource().hashCode();
        int hashCode2 = getType().hashCode();
        int hashCode3 = getCreativeType().hashCode();
        return getHeight() + ((getWidth() + ((hashCode3 + ((hashCode2 + (hashCode * 31)) * 31)) * 31)) * 31);
    }

    public void initializeWebView(VastWebView vastWebView) {
        l.f(vastWebView, "webView");
        String htmlResourceValue = getHtmlResourceValue();
        if (htmlResourceValue != null) {
            StringBuilder sb = new StringBuilder();
            sb.append(Networking.getScheme());
            sb.append("://");
            vastWebView.loadDataWithBaseURL(C22128a.m8618h(sb, Constants.HOST, StringConstant.SLASH), htmlResourceValue, "text/html", AbstractC22212i.PROTOCOL_CHARSET, null);
        }
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("VastResource(resource='");
        m8728C.append(getResource());
        m8728C.append("', type=");
        m8728C.append(getType());
        m8728C.append(", creativeType=");
        m8728C.append(getCreativeType());
        m8728C.append(", width=");
        m8728C.append(getWidth());
        m8728C.append(", height=");
        m8728C.append(getHeight());
        m8728C.append(')');
        return m8728C.toString();
    }
}
