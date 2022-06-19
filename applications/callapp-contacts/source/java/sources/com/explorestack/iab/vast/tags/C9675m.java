package com.explorestack.iab.vast.tags;

import android.text.TextUtils;
import com.mopub.mobileads.VastResourceXmlManager;
import org.xmlpull.v1.XmlPullParser;
/* renamed from: com.explorestack.iab.vast.tags.m */
/* loaded from: classes2-dex2jar.jar:com/explorestack/iab/vast/tags/m.class */
public final class C9675m extends C9680r {

    /* renamed from: a */
    private static final String[] f32836a = {VastResourceXmlManager.CREATIVE_TYPE};

    public C9675m(XmlPullParser xmlPullParser) throws Exception {
        super(xmlPullParser);
    }

    @Override // com.explorestack.iab.vast.tags.C9680r
    /* renamed from: w_ */
    public final String[] mo23829w_() {
        return f32836a;
    }

    @Override // com.explorestack.iab.vast.tags.C9680r
    /* renamed from: x_ */
    public final boolean mo23831x_() {
        String c = m23844c(VastResourceXmlManager.CREATIVE_TYPE);
        if (!TextUtils.isEmpty(c)) {
            return c.matches("image/.*(?i)(gif|jpeg|jpg|bmp|png)");
        }
        return false;
    }

    @Override // com.explorestack.iab.vast.tags.C9680r
    /* renamed from: y_ */
    public final boolean mo23830y_() {
        return true;
    }
}
