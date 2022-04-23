package com.explorestack.iab.vast.tags;

import android.text.TextUtils;
import org.xmlpull.v1.XmlPullParser;
/* loaded from: classes2-dex2jar.jar:com/explorestack/iab/vast/tags/MediaFileTag.class */
public class MediaFileTag extends r {

    /* renamed from: a  reason: collision with root package name */
    private static final String[] f19287a = {"delivery", "type", "width", "height", "codec", "id", "bitrate", "minBitrate", "maxBitrate", "scalable", "maintainAspectRatio", "apiFramework"};

    /* JADX INFO: Access modifiers changed from: package-private */
    public MediaFileTag(XmlPullParser xmlPullParser) throws Exception {
        super(xmlPullParser);
    }

    public String getApiFramework() {
        return c("apiFramework");
    }

    public String getType() {
        return c("type");
    }

    @Override // com.explorestack.iab.vast.tags.r
    public final String[] w_() {
        return f19287a;
    }

    @Override // com.explorestack.iab.vast.tags.r
    public final boolean x_() {
        return !TextUtils.isEmpty(c("type")) && !TextUtils.isEmpty(c("width")) && !TextUtils.isEmpty(c("height")) && !TextUtils.isEmpty(getText());
    }

    @Override // com.explorestack.iab.vast.tags.r
    public final boolean y_() {
        return true;
    }
}
