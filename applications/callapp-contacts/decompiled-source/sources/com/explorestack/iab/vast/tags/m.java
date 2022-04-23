package com.explorestack.iab.vast.tags;

import android.text.TextUtils;
import com.mopub.mobileads.VastResourceXmlManager;
import org.xmlpull.v1.XmlPullParser;
/* loaded from: classes2-dex2jar.jar:com/explorestack/iab/vast/tags/m.class */
public final class m extends r {

    /* renamed from: a  reason: collision with root package name */
    private static final String[] f19315a = {VastResourceXmlManager.CREATIVE_TYPE};

    /* JADX INFO: Access modifiers changed from: package-private */
    public m(XmlPullParser xmlPullParser) throws Exception {
        super(xmlPullParser);
    }

    @Override // com.explorestack.iab.vast.tags.r
    public final String[] w_() {
        return f19315a;
    }

    @Override // com.explorestack.iab.vast.tags.r
    public final boolean x_() {
        String c2 = c(VastResourceXmlManager.CREATIVE_TYPE);
        if (!TextUtils.isEmpty(c2)) {
            return c2.matches("image/.*(?i)(gif|jpeg|jpg|bmp|png)");
        }
        return false;
    }

    @Override // com.explorestack.iab.vast.tags.r
    public final boolean y_() {
        return true;
    }
}
