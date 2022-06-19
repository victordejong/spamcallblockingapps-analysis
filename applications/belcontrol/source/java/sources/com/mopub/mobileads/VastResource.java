package com.mopub.mobileads;

import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
import com.mopub.common.Constants;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
@Mockable
/* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/VastResource.class */
public class VastResource implements Serializable {
    public static final Companion Companion = new Companion(null);

    /* renamed from: g */
    public static final List<String> f4840g = uj1.m394c("image/jpeg", "image/png", "image/bmp", "image/gif");

    /* renamed from: h */
    public static final List<String> f4841h = tj1.m475a("application/x-javascript");
    private static final long serialVersionUID = 1;
    @SerializedName(Constants.VAST_RESOURCE)
    @Expose

    /* renamed from: a */
    public final String f4842a;
    @SerializedName("type")
    @Expose

    /* renamed from: b */
    public final Type f4843b;
    @SerializedName(Constants.VAST_CREATIVE_TYPE)
    @Expose

    /* renamed from: c */
    public final CreativeType f4844c;
    @SerializedName("width")
    @Expose

    /* renamed from: d */
    public final int f4845d;
    @SerializedName("height")
    @Expose

    /* renamed from: f */
    public final int f4846f;

    /* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/VastResource$Companion.class */
    public static final class Companion {

        /* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/VastResource$Companion$WhenMappings.class */
        public final /* synthetic */ class WhenMappings {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[Type.values().length];
                $EnumSwitchMapping$0 = iArr;
                iArr[Type.STATIC_RESOURCE.ordinal()] = 1;
                iArr[Type.HTML_RESOURCE.ordinal()] = 2;
                iArr[Type.IFRAME_RESOURCE.ordinal()] = 3;
            }
        }

        private Companion() {
        }

        public /* synthetic */ Companion(ok1 ok1Var) {
            this();
        }

        public final VastResource fromVastResourceXmlManager(VastResourceXmlManager vastResourceXmlManager, int i, int i2) {
            qk1.m744c(vastResourceXmlManager, "resourceXmlManager");
            Type[] values = Type.values();
            ArrayList arrayList = new ArrayList();
            for (Type type : values) {
                VastResource fromVastResourceXmlManager = VastResource.Companion.fromVastResourceXmlManager(vastResourceXmlManager, type, i, i2);
                if (fromVastResourceXmlManager != null) {
                    arrayList.add(fromVastResourceXmlManager);
                }
            }
            return (VastResource) ck1.m5312j(arrayList);
        }

        /* JADX WARN: Removed duplicated region for block: B:29:0x00bb  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final com.mopub.mobileads.VastResource fromVastResourceXmlManager(com.mopub.mobileads.VastResourceXmlManager r9, com.mopub.mobileads.VastResource.Type r10, int r11, int r12) {
            /*
                Method dump skipped, instructions count: 206
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.mopub.mobileads.VastResource.Companion.fromVastResourceXmlManager(com.mopub.mobileads.VastResourceXmlManager, com.mopub.mobileads.VastResource$Type, int, int):com.mopub.mobileads.VastResource");
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/VastResource$CreativeType.class */
    public enum CreativeType {
        NONE,
        IMAGE,
        JAVASCRIPT
    }

    /* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/VastResource$Type.class */
    public enum Type {
        STATIC_RESOURCE,
        HTML_RESOURCE,
        IFRAME_RESOURCE
    }

    public VastResource(String str, Type type, CreativeType creativeType, int i, int i2) {
        qk1.m744c(str, Constants.VAST_RESOURCE);
        qk1.m744c(type, "type");
        qk1.m744c(creativeType, VastResourceXmlManager.CREATIVE_TYPE);
        this.f4842a = str;
        this.f4843b = type;
        this.f4844c = creativeType;
        this.f4845d = i;
        this.f4846f = i2;
    }

    public static final VastResource fromVastResourceXmlManager(VastResourceXmlManager vastResourceXmlManager, int i, int i2) {
        return Companion.fromVastResourceXmlManager(vastResourceXmlManager, i, i2);
    }

    public static final VastResource fromVastResourceXmlManager(VastResourceXmlManager vastResourceXmlManager, Type type, int i, int i2) {
        return Companion.fromVastResourceXmlManager(vastResourceXmlManager, type, i, i2);
    }

    public String getCorrectClickThroughUrl(String str, String str2) {
        if (getType() != Type.HTML_RESOURCE && getType() != Type.IFRAME_RESOURCE) {
            Type type = getType();
            Type type2 = Type.STATIC_RESOURCE;
            if (type != type2 || getCreativeType() != CreativeType.IMAGE) {
                if (getType() != type2 || getCreativeType() != CreativeType.JAVASCRIPT) {
                    str = null;
                }
            }
            return str;
        }
        str = str2;
        return str;
    }

    public CreativeType getCreativeType() {
        return this.f4844c;
    }

    public int getHeight() {
        return this.f4846f;
    }

    public String getResource() {
        return this.f4842a;
    }

    public Type getType() {
        return this.f4843b;
    }

    public int getWidth() {
        return this.f4845d;
    }

    public void initializeWebView(VastWebView vastWebView) {
        String str;
        StringBuilder sb;
        String str2;
        qk1.m744c(vastWebView, "webView");
        if (getType() == Type.HTML_RESOURCE) {
            str = getResource();
        } else {
            if (getType() == Type.IFRAME_RESOURCE) {
                sb = new StringBuilder();
                sb.append("<iframe frameborder=\"0\" scrolling=\"no\" marginheight=\"0\" marginwidth=\"0\" style=\"border: 0px; margin: 0px;\"");
                sb.append(" width=\"");
                sb.append(getWidth());
                sb.append('\"');
                sb.append(" height=\"");
                sb.append(getHeight());
                sb.append('\"');
                sb.append(" src=\"");
                sb.append(getResource());
                str2 = "\"></iframe>";
            } else {
                Type type = getType();
                Type type2 = Type.STATIC_RESOURCE;
                if (type == type2 && getCreativeType() == CreativeType.IMAGE) {
                    sb = new StringBuilder();
                    sb.append("<html>");
                    sb.append("<head></head><body style=\"margin:0;padding:0\"><img src=\"");
                    sb.append(getResource());
                    sb.append('\"');
                    sb.append(" width=\"100%\" style=\"max-width:100%;max-height:100%;\" />");
                    str2 = "</body></html>";
                } else if (getType() == type2 && getCreativeType() == CreativeType.JAVASCRIPT) {
                    sb = new StringBuilder();
                    sb.append("<script src=\"");
                    sb.append(getResource());
                    str2 = "\"></script>";
                } else {
                    str = null;
                }
            }
            sb.append(str2);
            str = sb.toString();
        }
        if (str != null) {
            vastWebView.m3535h(str);
        }
    }
}
