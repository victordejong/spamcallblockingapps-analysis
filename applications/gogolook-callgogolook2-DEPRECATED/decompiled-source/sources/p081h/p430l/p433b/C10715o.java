package p081h.p430l.p433b;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.mopub.common.Constants;
import com.mopub.common.Preconditions;
import com.mopub.mobileads.VastResourceXmlManager;
import com.mopub.mobileads.VastWebView;
import java.io.Serializable;
import java.util.Arrays;
import java.util.List;
import p081h.p203i.p384e.p385v.AbstractC10118a;
import p081h.p203i.p384e.p385v.AbstractC10120c;
/* renamed from: h.l.b.o */
/* loaded from: classes2-dex2jar.jar:h/l/b/o.class */
public class C10715o implements Serializable {

    /* renamed from: f */
    public static final List<String> f24418f = Arrays.asList("image/jpeg", "image/png", "image/bmp", "image/gif");

    /* renamed from: g */
    public static final List<String> f24419g = Arrays.asList("application/x-javascript");
    @NonNull
    @AbstractC10120c(Constants.VAST_RESOURCE)
    @AbstractC10118a

    /* renamed from: a */
    public String f24420a;
    @NonNull
    @AbstractC10120c("type")
    @AbstractC10118a

    /* renamed from: b */
    public EnumC10718c f24421b;
    @NonNull
    @AbstractC10120c(Constants.VAST_CREATIVE_TYPE)
    @AbstractC10118a

    /* renamed from: c */
    public EnumC10717b f24422c;
    @AbstractC10120c("width")
    @AbstractC10118a

    /* renamed from: d */
    public int f24423d;
    @AbstractC10120c("height")
    @AbstractC10118a

    /* renamed from: e */
    public int f24424e;

    /* renamed from: h.l.b.o$a */
    /* loaded from: classes2-dex2jar.jar:h/l/b/o$a.class */
    public static /* synthetic */ class C10716a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f24425a = new int[EnumC10718c.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            try {
                f24425a[EnumC10718c.STATIC_RESOURCE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f24425a[EnumC10718c.HTML_RESOURCE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f24425a[EnumC10718c.IFRAME_RESOURCE.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    /* renamed from: h.l.b.o$b */
    /* loaded from: classes2-dex2jar.jar:h/l/b/o$b.class */
    public enum EnumC10717b {
        NONE,
        IMAGE,
        JAVASCRIPT
    }

    /* renamed from: h.l.b.o$c */
    /* loaded from: classes2-dex2jar.jar:h/l/b/o$c.class */
    public enum EnumC10718c {
        STATIC_RESOURCE,
        HTML_RESOURCE,
        IFRAME_RESOURCE
    }

    public C10715o(@NonNull String str, @NonNull EnumC10718c cVar, @NonNull EnumC10717b bVar, int i, int i2) {
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(cVar);
        Preconditions.checkNotNull(bVar);
        this.f24420a = str;
        this.f24421b = cVar;
        this.f24422c = bVar;
        this.f24423d = i;
        this.f24424e = i2;
    }

    @Nullable
    /* renamed from: a */
    public static C10715o m10829a(@NonNull VastResourceXmlManager vastResourceXmlManager, @NonNull EnumC10718c cVar, int i, int i2) {
        EnumC10717b bVar;
        String str;
        Preconditions.checkNotNull(vastResourceXmlManager);
        Preconditions.checkNotNull(cVar);
        String b = vastResourceXmlManager.m30473b();
        String a = vastResourceXmlManager.m30474a();
        String c = vastResourceXmlManager.m30472c();
        String d = vastResourceXmlManager.m30471d();
        if (cVar == EnumC10718c.STATIC_RESOURCE && c != null && d != null && (f24418f.contains(d) || f24419g.contains(d))) {
            bVar = f24418f.contains(d) ? EnumC10717b.IMAGE : EnumC10717b.JAVASCRIPT;
            str = c;
        } else if (cVar == EnumC10718c.HTML_RESOURCE && a != null) {
            bVar = EnumC10717b.NONE;
            str = a;
        } else if (cVar != EnumC10718c.IFRAME_RESOURCE || b == null) {
            return null;
        } else {
            bVar = EnumC10717b.NONE;
            str = b;
        }
        return new C10715o(str, cVar, bVar, i, i2);
    }

    @Nullable
    public String getCorrectClickThroughUrl(@Nullable String str, @Nullable String str2) {
        int i = C10716a.f24425a[this.f24421b.ordinal()];
        if (i == 1) {
            EnumC10717b bVar = EnumC10717b.IMAGE;
            EnumC10717b bVar2 = this.f24422c;
            if (bVar == bVar2) {
                return str;
            }
            if (EnumC10717b.JAVASCRIPT == bVar2) {
                return str2;
            }
            return null;
        } else if (i == 2 || i == 3) {
            return str2;
        } else {
            return null;
        }
    }

    @NonNull
    public EnumC10717b getCreativeType() {
        return this.f24422c;
    }

    @NonNull
    public String getResource() {
        return this.f24420a;
    }

    @NonNull
    public EnumC10718c getType() {
        return this.f24421b;
    }

    public void initializeWebView(@NonNull VastWebView vastWebView) {
        Preconditions.checkNotNull(vastWebView);
        EnumC10718c cVar = this.f24421b;
        if (cVar == EnumC10718c.IFRAME_RESOURCE) {
            vastWebView.m30382a("<iframe frameborder=\"0\" scrolling=\"no\" marginheight=\"0\" marginwidth=\"0\" style=\"border: 0px; margin: 0px;\" width=\"" + this.f24423d + "\" height=\"" + this.f24424e + "\" src=\"" + this.f24420a + "\"></iframe>");
        } else if (cVar == EnumC10718c.HTML_RESOURCE) {
            vastWebView.m30382a(this.f24420a);
        } else if (cVar == EnumC10718c.STATIC_RESOURCE) {
            EnumC10717b bVar = this.f24422c;
            if (bVar == EnumC10717b.IMAGE) {
                vastWebView.m30382a("<html><head></head><body style=\"margin:0;padding:0\"><img src=\"" + this.f24420a + "\" width=\"100%\" style=\"max-width:100%;max-height:100%;\" /></body></html>");
            } else if (bVar == EnumC10717b.JAVASCRIPT) {
                vastWebView.m30382a("<script src=\"" + this.f24420a + "\"></script>");
            }
        }
    }
}
