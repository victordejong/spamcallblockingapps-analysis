package com.tenor.android.core.model.impl;

import com.tenor.android.core.constant.StringConstant;
import e.m.e.d0.b;
import java.io.Serializable;
/* loaded from: classes3-dex2jar.jar:com/tenor/android/core/model/impl/FeaturedInfo.class */
public class FeaturedInfo implements Serializable {
    private static final long serialVersionUID = -1486902705491791354L;
    @b("button_link")
    private String mButtonLink;
    @b("button_text")
    private String mButtonText;
    @b("feature_text")
    private String mFeatureText;

    public String getButtonLink() {
        return StringConstant.getOrEmpty(this.mButtonLink);
    }

    public String getButtonText() {
        return StringConstant.getOrEmpty(this.mButtonText);
    }

    public String getFeatureText() {
        return StringConstant.getOrEmpty(this.mFeatureText);
    }
}
