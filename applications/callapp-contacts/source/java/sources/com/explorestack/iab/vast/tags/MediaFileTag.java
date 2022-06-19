package com.explorestack.iab.vast.tags;

import android.text.TextUtils;
import org.xmlpull.v1.XmlPullParser;
/* loaded from: classes2-dex2jar.jar:com/explorestack/iab/vast/tags/MediaFileTag.class */
public class MediaFileTag extends C9680r {

    /* renamed from: a */
    private static final String[] f32778a = {"delivery", "type", "width", "height", "codec", "id", "bitrate", "minBitrate", "maxBitrate", "scalable", "maintainAspectRatio", "apiFramework"};

    public MediaFileTag(XmlPullParser xmlPullParser) throws Exception {
        super(xmlPullParser);
    }

    public String getApiFramework() {
        return m23844c("apiFramework");
    }

    public String getType() {
        return m23844c("type");
    }

    @Override // com.explorestack.iab.vast.tags.C9680r
    /* renamed from: w_ */
    public final String[] mo23829w_() {
        return f32778a;
    }

    @Override // com.explorestack.iab.vast.tags.C9680r
    /* renamed from: x_ */
    public final boolean mo23831x_() {
        return !TextUtils.isEmpty(m23844c("type")) && !TextUtils.isEmpty(m23844c("width")) && !TextUtils.isEmpty(m23844c("height")) && !TextUtils.isEmpty(getText());
    }

    @Override // com.explorestack.iab.vast.tags.C9680r
    /* renamed from: y_ */
    public final boolean mo23830y_() {
        return true;
    }
}
