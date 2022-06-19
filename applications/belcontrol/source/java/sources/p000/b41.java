package p000;

import com.millennialmedia.internal.AdPlacement;
import com.mopub.volley.BuildConfig;
/* renamed from: b41 */
/* loaded from: classes-dex2jar.jar:b41.class */
public enum b41 {
    DEFINED_BY_JAVASCRIPT("definedByJavaScript"),
    UNSPECIFIED(BuildConfig.VERSION_NAME),
    LOADED(AdPlacement.STATE_LOADED),
    BEGIN_TO_RENDER("beginToRender"),
    ONE_PIXEL("onePixel"),
    VIEWABLE("viewable"),
    AUDIBLE("audible"),
    OTHER("other");
    

    /* renamed from: a */
    public final String f1788a;

    b41(String str) {
        this.f1788a = str;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.f1788a;
    }
}
