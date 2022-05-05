package com.mopub.mobileads;

import androidx.media2.exoplayer.external.source.hls.playlist.HlsPlaylistParser;
import com.mopub.common.Constants;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import p081h.p203i.p384e.p385v.AbstractC10118a;
import p081h.p203i.p384e.p385v.AbstractC10120c;
import p626l.p632u.C15020l;
import p626l.p632u.C15021m;
import p626l.p632u.C15029u;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��2\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u000f\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0017\u0018�� \u001c2\u00020\u0001:\u0003\u001c\u001d\u001eB-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0002\u0010\u000bJ\u001e\u0010\u0015\u001a\u0004\u0018\u00010\u00032\b\u0010\u0016\u001a\u0004\u0018\u00010\u00032\b\u0010\u0017\u001a\u0004\u0018\u00010\u0003H\u0016J\u0010\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001bH\u0016R\u0016\u0010\u0006\u001a\u00020\u00078\u0016X\u0097\u0004¢\u0006\b\n��\u001a\u0004\b\f\u0010\rR\u0016\u0010\n\u001a\u00020\t8\u0016X\u0097\u0004¢\u0006\b\n��\u001a\u0004\b\u000e\u0010\u000fR\u0016\u0010\u0002\u001a\u00020\u00038\u0016X\u0097\u0004¢\u0006\b\n��\u001a\u0004\b\u0010\u0010\u0011R\u0016\u0010\u0004\u001a\u00020\u00058\u0016X\u0097\u0004¢\u0006\b\n��\u001a\u0004\b\u0012\u0010\u0013R\u0016\u0010\b\u001a\u00020\t8\u0016X\u0097\u0004¢\u0006\b\n��\u001a\u0004\b\u0014\u0010\u000f¨\u0006\u001f"}, m815d2 = {"Lcom/mopub/mobileads/VastResourceTwo;", "Ljava/io/Serializable;", Constants.VAST_RESOURCE, "", "type", "Lcom/mopub/mobileads/VastResourceTwo$Type;", VastResourceXmlManager.CREATIVE_TYPE, "Lcom/mopub/mobileads/VastResourceTwo$CreativeType;", "width", "", "height", "(Ljava/lang/String;Lcom/mopub/mobileads/VastResourceTwo$Type;Lcom/mopub/mobileads/VastResourceTwo$CreativeType;II)V", "getCreativeType", "()Lcom/mopub/mobileads/VastResourceTwo$CreativeType;", "getHeight", "()I", "getResource", "()Ljava/lang/String;", "getType", "()Lcom/mopub/mobileads/VastResourceTwo$Type;", "getWidth", "getCorrectClickThroughUrl", "vastClickThroughUrl", "webViewClickThroughUrl", "initializeWebView", "", "webView", "Lcom/mopub/mobileads/VastWebView;", "Companion", "CreativeType", "Type", "mopub-sdk-base_release"}, m814k = 1, m813mv = {1, 1, 16})
@Mockable
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastResourceTwo.class */
public class VastResourceTwo implements Serializable {
    public static final Companion Companion = new Companion(null);

    /* renamed from: f */
    public static final List<String> f8585f = C15021m.m557c("image/jpeg", "image/png", "image/bmp", "image/gif");

    /* renamed from: g */
    public static final List<String> f8586g = C15020l.m567a("application/x-javascript");
    @AbstractC10120c(Constants.VAST_RESOURCE)
    @AbstractC10118a

    /* renamed from: a */
    public final String f8587a;
    @AbstractC10120c("type")
    @AbstractC10118a

    /* renamed from: b */
    public final Type f8588b;
    @AbstractC10120c(Constants.VAST_CREATIVE_TYPE)
    @AbstractC10118a

    /* renamed from: c */
    public final CreativeType f8589c;
    @AbstractC10120c("width")
    @AbstractC10118a

    /* renamed from: d */
    public final int f8590d;
    @AbstractC10120c("height")
    @AbstractC10118a

    /* renamed from: e */
    public final int f8591e;

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��8\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\t\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J*\u0010\t\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0010H\u0007J\"\u0010\t\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0010H\u0007R\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004¢\u0006\u0002\n��R\u0014\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\bX\u0082T¢\u0006\u0002\n��¨\u0006\u0012"}, m815d2 = {"Lcom/mopub/mobileads/VastResourceTwo$Companion;", "", "()V", "VALID_APPLICATION_TYPES", "", "", "VALID_IMAGE_TYPES", "serialVersionUID", "", "fromVastResourceXmlManager", "Lcom/mopub/mobileads/VastResourceTwo;", "resourceXmlManager", "Lcom/mopub/mobileads/VastResourceXmlManager;", "type", "Lcom/mopub/mobileads/VastResourceTwo$Type;", "width", "", "height", "mopub-sdk-base_release"}, m814k = 1, m813mv = {1, 1, 16})
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastResourceTwo$Companion.class */
    public static final class Companion {

        @Metadata(m817bv = {1, 0, 3}, m814k = 3, m813mv = {1, 1, 16})
        /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastResourceTwo$Companion$WhenMappings.class */
        public final /* synthetic */ class WhenMappings {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0 = new int[Type.values().length];

            static {
                $EnumSwitchMapping$0[Type.STATIC_RESOURCE.ordinal()] = 1;
                $EnumSwitchMapping$0[Type.HTML_RESOURCE.ordinal()] = 2;
                $EnumSwitchMapping$0[Type.IFRAME_RESOURCE.ordinal()] = 3;
            }
        }

        public Companion() {
        }

        public /* synthetic */ Companion(C15145g gVar) {
            this();
        }

        public final VastResourceTwo fromVastResourceXmlManager(VastResourceXmlManager vastResourceXmlManager, int i, int i2) {
            C15149k.m377b(vastResourceXmlManager, "resourceXmlManager");
            Type[] values = Type.values();
            ArrayList arrayList = new ArrayList();
            for (Type type : values) {
                VastResourceTwo fromVastResourceXmlManager = VastResourceTwo.Companion.fromVastResourceXmlManager(vastResourceXmlManager, type, i, i2);
                if (fromVastResourceXmlManager != null) {
                    arrayList.add(fromVastResourceXmlManager);
                }
            }
            return (VastResourceTwo) C15029u.m523e((List<? extends Object>) arrayList);
        }

        /* JADX WARN: Removed duplicated region for block: B:29:0x00b4  */
        /* JADX WARN: Removed duplicated region for block: B:30:0x00c6  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final com.mopub.mobileads.VastResourceTwo fromVastResourceXmlManager(com.mopub.mobileads.VastResourceXmlManager r9, com.mopub.mobileads.VastResourceTwo.Type r10, int r11, int r12) {
            /*
                r8 = this;
                r0 = r9
                java.lang.String r1 = "resourceXmlManager"
                p626l.p641z.p643d.C15149k.m377b(r0, r1)
                r0 = r10
                java.lang.String r1 = "type"
                p626l.p641z.p643d.C15149k.m377b(r0, r1)
                r0 = r9
                java.lang.String r0 = r0.m30471d()
                r13 = r0
                com.mopub.mobileads.VastResourceTwo$CreativeType r0 = com.mopub.mobileads.VastResourceTwo.CreativeType.NONE
                r14 = r0
                int[] r0 = com.mopub.mobileads.VastResourceTwo.Companion.WhenMappings.$EnumSwitchMapping$0
                r1 = r10
                int r1 = r1.ordinal()
                r0 = r0[r1]
                r15 = r0
                r0 = 1
                r16 = r0
                r0 = r15
                r1 = 1
                if (r0 == r1) goto L_0x0059
                r0 = r15
                r1 = 2
                if (r0 == r1) goto L_0x0047
                r0 = r15
                r1 = 3
                if (r0 == r1) goto L_0x003b
                r0 = 0
                r9 = r0
                goto L_0x00b0
            L_0x003b:
                r0 = r9
                java.lang.String r0 = r0.m30473b()
                r17 = r0
                r0 = r14
                r9 = r0
                goto L_0x0050
            L_0x0047:
                r0 = r9
                java.lang.String r0 = r0.m30474a()
                r17 = r0
                r0 = r14
                r9 = r0
            L_0x0050:
                r0 = r9
                r14 = r0
                r0 = r17
                r9 = r0
                goto L_0x00b0
            L_0x0059:
                r0 = r9
                java.lang.String r0 = r0.m30472c()
                r17 = r0
                r0 = r16
                r15 = r0
                java.util.List r0 = com.mopub.mobileads.VastResourceTwo.access$getVALID_IMAGE_TYPES$cp()
                r1 = r13
                boolean r0 = p626l.p632u.C15029u.m544a(r0, r1)
                if (r0 != 0) goto L_0x0083
                java.util.List r0 = com.mopub.mobileads.VastResourceTwo.access$getVALID_APPLICATION_TYPES$cp()
                r1 = r13
                boolean r0 = p626l.p632u.C15029u.m544a(r0, r1)
                if (r0 == 0) goto L_0x0080
                r0 = r16
                r15 = r0
                goto L_0x0083
            L_0x0080:
                r0 = 0
                r15 = r0
            L_0x0083:
                r0 = r15
                if (r0 == 0) goto L_0x008b
                goto L_0x008e
            L_0x008b:
                r0 = 0
                r17 = r0
            L_0x008e:
                com.mopub.mobileads.VastResourceTwo$CreativeType r0 = com.mopub.mobileads.VastResourceTwo.CreativeType.IMAGE
                r9 = r0
                java.util.List r0 = com.mopub.mobileads.VastResourceTwo.access$getVALID_IMAGE_TYPES$cp()
                r1 = r13
                boolean r0 = p626l.p632u.C15029u.m544a(r0, r1)
                if (r0 == 0) goto L_0x00a0
                goto L_0x00a2
            L_0x00a0:
                r0 = 0
                r9 = r0
            L_0x00a2:
                r0 = r9
                if (r0 == 0) goto L_0x00a9
                goto L_0x0050
            L_0x00a9:
                com.mopub.mobileads.VastResourceTwo$CreativeType r0 = com.mopub.mobileads.VastResourceTwo.CreativeType.JAVASCRIPT
                r9 = r0
                goto L_0x0050
            L_0x00b0:
                r0 = r9
                if (r0 == 0) goto L_0x00c6
                com.mopub.mobileads.VastResourceTwo r0 = new com.mopub.mobileads.VastResourceTwo
                r1 = r0
                r2 = r9
                r3 = r10
                r4 = r14
                r5 = r11
                r6 = r12
                r1.<init>(r2, r3, r4, r5, r6)
                r9 = r0
                goto L_0x00c8
            L_0x00c6:
                r0 = 0
                r9 = r0
            L_0x00c8:
                r0 = r9
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.mopub.mobileads.VastResourceTwo.Companion.fromVastResourceXmlManager(com.mopub.mobileads.VastResourceXmlManager, com.mopub.mobileads.VastResourceTwo$Type, int, int):com.mopub.mobileads.VastResourceTwo");
        }
    }

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, m815d2 = {"Lcom/mopub/mobileads/VastResourceTwo$CreativeType;", "", "(Ljava/lang/String;I)V", HlsPlaylistParser.METHOD_NONE, "IMAGE", "JAVASCRIPT", "mopub-sdk-base_release"}, m814k = 1, m813mv = {1, 1, 16})
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastResourceTwo$CreativeType.class */
    public enum CreativeType {
        NONE,
        IMAGE,
        JAVASCRIPT
    }

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, m815d2 = {"Lcom/mopub/mobileads/VastResourceTwo$Type;", "", "(Ljava/lang/String;I)V", "STATIC_RESOURCE", "HTML_RESOURCE", "IFRAME_RESOURCE", "mopub-sdk-base_release"}, m814k = 1, m813mv = {1, 1, 16})
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastResourceTwo$Type.class */
    public enum Type {
        STATIC_RESOURCE,
        HTML_RESOURCE,
        IFRAME_RESOURCE
    }

    public VastResourceTwo(String str, Type type, CreativeType creativeType, int i, int i2) {
        C15149k.m377b(str, Constants.VAST_RESOURCE);
        C15149k.m377b(type, "type");
        C15149k.m377b(creativeType, VastResourceXmlManager.CREATIVE_TYPE);
        this.f8587a = str;
        this.f8588b = type;
        this.f8589c = creativeType;
        this.f8590d = i;
        this.f8591e = i2;
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
        return this.f8589c;
    }

    public int getHeight() {
        return this.f8591e;
    }

    public String getResource() {
        return this.f8587a;
    }

    public Type getType() {
        return this.f8588b;
    }

    public int getWidth() {
        return this.f8590d;
    }

    public void initializeWebView(VastWebView vastWebView) {
        String str;
        C15149k.m377b(vastWebView, "webView");
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
            vastWebView.m30382a(str);
        }
    }
}
