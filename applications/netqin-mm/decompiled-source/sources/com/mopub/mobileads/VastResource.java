package com.mopub.mobileads;

import com.mopub.common.Constants;
import com.mopub.common.Preconditions;
import java.io.Serializable;
import java.util.Arrays;
import java.util.List;
import p131c.p161d.p354f.p355s.AbstractC6132a;
import p131c.p161d.p354f.p355s.AbstractC6134c;
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastResource.class */
public class VastResource implements Serializable {
    public static final long serialVersionUID = 0;
    @AbstractC6134c(Constants.VAST_CREATIVE_TYPE)
    @AbstractC6132a
    public CreativeType mCreativeType;
    @AbstractC6134c("height")
    @AbstractC6132a
    public int mHeight;
    @AbstractC6134c(Constants.VAST_RESOURCE)
    @AbstractC6132a
    public String mResource;
    @AbstractC6134c("type")
    @AbstractC6132a
    public Type mType;
    @AbstractC6134c("width")
    @AbstractC6132a
    public int mWidth;
    public static final List<String> VALID_IMAGE_TYPES = Arrays.asList("image/jpeg", "image/png", "image/bmp", "image/gif");
    public static final List<String> VALID_APPLICATION_TYPES = Arrays.asList("application/x-javascript");

    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastResource$CreativeType.class */
    public enum CreativeType {
        NONE,
        IMAGE,
        JAVASCRIPT
    }

    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastResource$Type.class */
    public enum Type {
        STATIC_RESOURCE,
        HTML_RESOURCE,
        IFRAME_RESOURCE
    }

    /* renamed from: com.mopub.mobileads.VastResource$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastResource$a.class */
    public static /* synthetic */ class C8817a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f34261a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[Type.values().length];
            f34261a = iArr;
            try {
                iArr[Type.STATIC_RESOURCE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f34261a[Type.HTML_RESOURCE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f34261a[Type.IFRAME_RESOURCE.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    public VastResource(String str, Type type, CreativeType creativeType, int i, int i2) {
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(type);
        Preconditions.checkNotNull(creativeType);
        this.mResource = str;
        this.mType = type;
        this.mCreativeType = creativeType;
        this.mWidth = i;
        this.mHeight = i2;
    }

    public static VastResource fromVastResourceXmlManager(VastResourceXmlManager vastResourceXmlManager, int i, int i2) {
        for (Type type : Type.values()) {
            VastResource fromVastResourceXmlManager = fromVastResourceXmlManager(vastResourceXmlManager, type, i, i2);
            if (fromVastResourceXmlManager != null) {
                return fromVastResourceXmlManager;
            }
        }
        return null;
    }

    public static VastResource fromVastResourceXmlManager(VastResourceXmlManager vastResourceXmlManager, Type type, int i, int i2) {
        CreativeType creativeType;
        String str;
        Preconditions.checkNotNull(vastResourceXmlManager);
        Preconditions.checkNotNull(type);
        String b = vastResourceXmlManager.m4262b();
        String a = vastResourceXmlManager.m4263a();
        String c = vastResourceXmlManager.m4261c();
        String d = vastResourceXmlManager.m4260d();
        if (type == Type.STATIC_RESOURCE && c != null && d != null && (VALID_IMAGE_TYPES.contains(d) || VALID_APPLICATION_TYPES.contains(d))) {
            creativeType = VALID_IMAGE_TYPES.contains(d) ? CreativeType.IMAGE : CreativeType.JAVASCRIPT;
            str = c;
        } else if (type == Type.HTML_RESOURCE && a != null) {
            creativeType = CreativeType.NONE;
            str = a;
        } else if (type != Type.IFRAME_RESOURCE || b == null) {
            return null;
        } else {
            creativeType = CreativeType.NONE;
            str = b;
        }
        return new VastResource(str, type, creativeType, i, i2);
    }

    public String getCorrectClickThroughUrl(String str, String str2) {
        int i = C8817a.f34261a[this.mType.ordinal()];
        if (i == 1) {
            CreativeType creativeType = CreativeType.IMAGE;
            CreativeType creativeType2 = this.mCreativeType;
            if (creativeType == creativeType2) {
                return str;
            }
            if (CreativeType.JAVASCRIPT == creativeType2) {
                return str2;
            }
            return null;
        } else if (i == 2 || i == 3) {
            return str2;
        } else {
            return null;
        }
    }

    public CreativeType getCreativeType() {
        return this.mCreativeType;
    }

    public String getResource() {
        return this.mResource;
    }

    public Type getType() {
        return this.mType;
    }

    public void initializeWebView(VastWebView vastWebView) {
        Preconditions.checkNotNull(vastWebView);
        Type type = this.mType;
        if (type == Type.IFRAME_RESOURCE) {
            vastWebView.m4190a("<iframe frameborder=\"0\" scrolling=\"no\" marginheight=\"0\" marginwidth=\"0\" style=\"border: 0px; margin: 0px;\" width=\"" + this.mWidth + "\" height=\"" + this.mHeight + "\" src=\"" + this.mResource + "\"></iframe>");
        } else if (type == Type.HTML_RESOURCE) {
            vastWebView.m4190a(this.mResource);
        } else if (type == Type.STATIC_RESOURCE) {
            CreativeType creativeType = this.mCreativeType;
            if (creativeType == CreativeType.IMAGE) {
                vastWebView.m4190a("<html><head></head><body style=\"margin:0;padding:0\"><img src=\"" + this.mResource + "\" width=\"100%\" style=\"max-width:100%;max-height:100%;\" /></body></html>");
            } else if (creativeType == CreativeType.JAVASCRIPT) {
                vastWebView.m4190a("<script src=\"" + this.mResource + "\"></script>");
            }
        }
    }
}
