package com.mopub.mobileads;

import com.amazonaws.services.p101s3.util.Mimetypes;
import com.google.gson.C15965f;
import com.google.gson.annotations.AbstractC15952b;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import com.mopub.common.Constants;
import com.mopub.network.Networking;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.p518a.C18282n;
import proguard.optimize.gson.C21025a;
import proguard.optimize.gson._OptimizedJsonReader;
import proguard.optimize.gson._OptimizedJsonWriter;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\f\n\u0002\u0010\u000b\n��\n\u0002\u0010��\n\u0002\b\u0006\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0017\u0018�� #2\u00020\u0001:\u0003#$%B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0002\u0010\u000bJ\u0013\u0010\u0015\u001a\u00020\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0096\u0002J\u001e\u0010\u0019\u001a\u0004\u0018\u00010\u00032\b\u0010\u001a\u001a\u0004\u0018\u00010\u00032\b\u0010\u001b\u001a\u0004\u0018\u00010\u0003H\u0016J\n\u0010\u001c\u001a\u0004\u0018\u00010\u0003H\u0016J\b\u0010\u001d\u001a\u00020\tH\u0016J\u0010\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!H\u0016J\b\u0010\"\u001a\u00020\u0003H\u0016R\u0016\u0010\u0006\u001a\u00020\u00078\u0016X\u0097\u0004¢\u0006\b\n��\u001a\u0004\b\f\u0010\rR\u0016\u0010\n\u001a\u00020\t8\u0016X\u0097\u0004¢\u0006\b\n��\u001a\u0004\b\u000e\u0010\u000fR\u0016\u0010\u0002\u001a\u00020\u00038\u0016X\u0097\u0004¢\u0006\b\n��\u001a\u0004\b\u0010\u0010\u0011R\u0016\u0010\u0004\u001a\u00020\u00058\u0016X\u0097\u0004¢\u0006\b\n��\u001a\u0004\b\u0012\u0010\u0013R\u0016\u0010\b\u001a\u00020\t8\u0016X\u0097\u0004¢\u0006\b\n��\u001a\u0004\b\u0014\u0010\u000f¨\u0006&"}, m4298d2 = {"Lcom/mopub/mobileads/VastResource;", "Ljava/io/Serializable;", Constants.VAST_RESOURCE, "", "type", "Lcom/mopub/mobileads/VastResource$Type;", VastResourceXmlManager.CREATIVE_TYPE, "Lcom/mopub/mobileads/VastResource$CreativeType;", "width", "", "height", "(Ljava/lang/String;Lcom/mopub/mobileads/VastResource$Type;Lcom/mopub/mobileads/VastResource$CreativeType;II)V", "getCreativeType", "()Lcom/mopub/mobileads/VastResource$CreativeType;", "getHeight", "()I", "getResource", "()Ljava/lang/String;", "getType", "()Lcom/mopub/mobileads/VastResource$Type;", "getWidth", "equals", "", "other", "", "getCorrectClickThroughUrl", "vastClickThroughUrl", "webViewClickThroughUrl", "getHtmlResourceValue", "hashCode", "initializeWebView", "", "webView", "Lcom/mopub/mobileads/VastWebView;", "toString", "Companion", "CreativeType", "Type", "mopub-sdk-base_release"}, m4297k = 1, m4296mv = {1, 1, 16})
@Mockable
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/VastResource.class */
public class VastResource implements Serializable {
    public static final Companion Companion = new Companion(null);

    /* renamed from: f */
    private static final List<String> f59497f = C18282n.m4167b((Object[]) new String[]{"image/jpeg", "image/png", "image/bmp", "image/gif", "image/jpg"});

    /* renamed from: g */
    private static final List<String> f59498g = C18282n.m4176a("application/x-javascript");
    @AbstractC15952b(m7988a = Constants.VAST_RESOURCE)

    /* renamed from: a */
    private String f59499a;
    @AbstractC15952b(m7988a = "type")

    /* renamed from: b */
    private Type f59500b;
    @AbstractC15952b(m7988a = "creative_type")

    /* renamed from: c */
    private CreativeType f59501c;
    @AbstractC15952b(m7988a = "width")

    /* renamed from: d */
    private int f59502d;
    @AbstractC15952b(m7988a = "height")

    /* renamed from: e */
    private int f59503e;

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��8\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\t\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J*\u0010\t\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0010H\u0007J\"\u0010\t\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0010H\u0007R\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004¢\u0006\u0002\n��R\u0014\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\bX\u0082T¢\u0006\u0002\n��¨\u0006\u0012"}, m4298d2 = {"Lcom/mopub/mobileads/VastResource$Companion;", "", "()V", "VALID_APPLICATION_TYPES", "", "", "VALID_IMAGE_TYPES", "serialVersionUID", "", "fromVastResourceXmlManager", "Lcom/mopub/mobileads/VastResource;", "resourceXmlManager", "Lcom/mopub/mobileads/VastResourceXmlManager;", "type", "Lcom/mopub/mobileads/VastResource$Type;", "width", "", "height", "mopub-sdk-base_release"}, m4297k = 1, m4296mv = {1, 1, 16})
    /* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/VastResource$Companion.class */
    public static final class Companion {

        @Metadata(m4300bv = {1, 0, 3}, m4297k = 3, m4296mv = {1, 1, 16})
        /* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/VastResource$Companion$WhenMappings.class */
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

        public Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final /* synthetic */ void fromJson$19(C15965f c15965f, JsonReader jsonReader, _OptimizedJsonReader _optimizedjsonreader) {
            jsonReader.beginObject();
            while (jsonReader.hasNext()) {
                _optimizedjsonreader.mo123b(jsonReader);
                jsonReader.skipValue();
            }
            jsonReader.endObject();
        }

        public final VastResource fromVastResourceXmlManager(VastResourceXmlManager resourceXmlManager, int i, int i2) {
            C18524p.m3841c(resourceXmlManager, "resourceXmlManager");
            Type[] values = Type.values();
            ArrayList arrayList = new ArrayList();
            for (Type type : values) {
                VastResource fromVastResourceXmlManager = VastResource.Companion.fromVastResourceXmlManager(resourceXmlManager, type, i, i2);
                if (fromVastResourceXmlManager != null) {
                    arrayList.add(fromVastResourceXmlManager);
                }
            }
            return (VastResource) C18282n.m4121f((List<? extends Object>) arrayList);
        }

        /* JADX WARN: Removed duplicated region for block: B:33:0x00e4  */
        /* JADX WARN: Removed duplicated region for block: B:35:0x00f3 A[RETURN] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final com.mopub.mobileads.VastResource fromVastResourceXmlManager(com.mopub.mobileads.VastResourceXmlManager r9, com.mopub.mobileads.VastResource.Type r10, int r11, int r12) {
            /*
                Method dump skipped, instructions count: 245
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.mopub.mobileads.VastResource.Companion.fromVastResourceXmlManager(com.mopub.mobileads.VastResourceXmlManager, com.mopub.mobileads.VastResource$Type, int, int):com.mopub.mobileads.VastResource");
        }

        public final /* synthetic */ void toJson$19(C15965f c15965f, JsonWriter jsonWriter, _OptimizedJsonWriter _optimizedjsonwriter) {
            jsonWriter.beginObject();
            jsonWriter.endObject();
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, m4298d2 = {"Lcom/mopub/mobileads/VastResource$CreativeType;", "", "(Ljava/lang/String;I)V", "NONE", "IMAGE", "JAVASCRIPT", "mopub-sdk-base_release"}, m4297k = 1, m4296mv = {1, 1, 16})
    /* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/VastResource$CreativeType.class */
    public enum CreativeType {
        NONE,
        IMAGE,
        JAVASCRIPT
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, m4298d2 = {"Lcom/mopub/mobileads/VastResource$Type;", "", "(Ljava/lang/String;I)V", "HTML_RESOURCE", "STATIC_RESOURCE", "IFRAME_RESOURCE", "BLURRED_LAST_FRAME", "mopub-sdk-base_release"}, m4297k = 1, m4296mv = {1, 1, 16})
    /* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/VastResource$Type.class */
    public enum Type {
        HTML_RESOURCE,
        STATIC_RESOURCE,
        IFRAME_RESOURCE,
        BLURRED_LAST_FRAME
    }

    public /* synthetic */ VastResource() {
    }

    public VastResource(String resource, Type type, CreativeType creativeType, int i, int i2) {
        C18524p.m3841c(resource, "resource");
        C18524p.m3841c(type, "type");
        C18524p.m3841c(creativeType, "creativeType");
        this.f59499a = resource;
        this.f59500b = type;
        this.f59501c = creativeType;
        this.f59502d = i;
        this.f59503e = i2;
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
        return !(C18524p.m3850a((Object) getResource(), (Object) vastResource.getResource()) ^ true) && getType() == vastResource.getType() && getCreativeType() == vastResource.getCreativeType() && getWidth() == vastResource.getWidth() && getHeight() == vastResource.getHeight();
    }

    /* JADX WARN: Code restructure failed: missing block: B:40:0x00ba, code lost:
        if (r9 == false) goto L72;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00bd, code lost:
        r4.f59502d = r6.nextInt();
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00c8, code lost:
        r5 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00d1, code lost:
        throw new com.google.gson.JsonSyntaxException(r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00d4, code lost:
        if (r9 == false) goto L73;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00d7, code lost:
        r4.f59503e = r6.nextInt();
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00e2, code lost:
        r5 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00eb, code lost:
        throw new com.google.gson.JsonSyntaxException(r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x010a, code lost:
        r6.nextNull();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ void fromJson$2(com.google.gson.C15965f r5, com.google.gson.stream.JsonReader r6, proguard.optimize.gson._OptimizedJsonReader r7) {
        /*
            Method dump skipped, instructions count: 278
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mopub.mobileads.VastResource.fromJson$2(com.google.gson.f, com.google.gson.stream.JsonReader, proguard.optimize.gson._OptimizedJsonReader):void");
    }

    public String getCorrectClickThroughUrl(String str, String str2) {
        if (getType() == Type.HTML_RESOURCE || getType() == Type.IFRAME_RESOURCE) {
            return str2;
        }
        if (getType() == Type.STATIC_RESOURCE && getCreativeType() == CreativeType.IMAGE) {
            return str;
        }
        if (getType() == Type.STATIC_RESOURCE && getCreativeType() == CreativeType.JAVASCRIPT) {
            return str2;
        }
        if (getType() != Type.BLURRED_LAST_FRAME) {
            return null;
        }
        return str;
    }

    public CreativeType getCreativeType() {
        return this.f59501c;
    }

    public int getHeight() {
        return this.f59503e;
    }

    public String getHtmlResourceValue() {
        if (getType() == Type.HTML_RESOURCE) {
            return getResource();
        }
        if (getType() == Type.IFRAME_RESOURCE) {
            return "<iframe frameborder=\"0\" scrolling=\"no\" marginheight=\"0\" marginwidth=\"0\" style=\"border: 0px; margin: 0px;\" width=\"" + getWidth() + "\" height=\"" + getHeight() + "\" src=\"" + getResource() + "\"></iframe>";
        } else if (getType() == Type.STATIC_RESOURCE && getCreativeType() == CreativeType.IMAGE) {
            return "<html><head></head><body style=\"margin:0;padding:0\"><img src=\"" + getResource() + "\" width=\"100%\" style=\"max-width:100%;max-height:100%;\" /></body></html>";
        } else if (getType() != Type.STATIC_RESOURCE || getCreativeType() != CreativeType.JAVASCRIPT) {
            if (getType() != Type.BLURRED_LAST_FRAME) {
                return null;
            }
            return getResource();
        } else {
            return "<script src=\"" + getResource() + "\"></script>";
        }
    }

    public String getResource() {
        return this.f59499a;
    }

    public Type getType() {
        return this.f59500b;
    }

    public int getWidth() {
        return this.f59502d;
    }

    public int hashCode() {
        return (((((((getResource().hashCode() * 31) + getType().hashCode()) * 31) + getCreativeType().hashCode()) * 31) + getWidth()) * 31) + getHeight();
    }

    public void initializeWebView(VastWebView webView) {
        C18524p.m3841c(webView, "webView");
        String htmlResourceValue = getHtmlResourceValue();
        if (htmlResourceValue != null) {
            webView.loadDataWithBaseURL(Networking.getScheme() + "://" + Constants.HOST + "/", htmlResourceValue, Mimetypes.MIMETYPE_HTML, "utf-8", null);
        }
    }

    public /* synthetic */ void toJson$2(C15965f c15965f, JsonWriter jsonWriter, _OptimizedJsonWriter _optimizedjsonwriter) {
        jsonWriter.beginObject();
        if (this != this.f59499a) {
            _optimizedjsonwriter.mo120b(jsonWriter, 62);
            jsonWriter.value(this.f59499a);
        }
        if (this != this.f59500b) {
            _optimizedjsonwriter.mo120b(jsonWriter, 3);
            Type type = this.f59500b;
            C21025a.m117a(c15965f, Type.class, type).write(jsonWriter, type);
        }
        if (this != this.f59501c) {
            _optimizedjsonwriter.mo120b(jsonWriter, 84);
            CreativeType creativeType = this.f59501c;
            C21025a.m117a(c15965f, CreativeType.class, creativeType).write(jsonWriter, creativeType);
        }
        _optimizedjsonwriter.mo120b(jsonWriter, 47);
        jsonWriter.value(Integer.valueOf(this.f59502d));
        _optimizedjsonwriter.mo120b(jsonWriter, 14);
        jsonWriter.value(Integer.valueOf(this.f59503e));
        jsonWriter.endObject();
    }

    public String toString() {
        return "VastResource(resource='" + getResource() + "', type=" + getType() + ", creativeType=" + getCreativeType() + ", width=" + getWidth() + ", height=" + getHeight() + ')';
    }
}
