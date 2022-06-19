package com.tenor.android.core.model.impl;

import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.StringConstant;
import e.m.e.d0.b;
import java.io.Serializable;
/* loaded from: classes3-dex2jar.jar:com/tenor/android/core/model/impl/EmojiTag.class */
public class EmojiTag implements Serializable {
    private static final long serialVersionUID = -2207206185861282031L;
    @b("path")
    private String imgUrl;
    @b(AnalyticsConstants.NAME)
    private String searchName;
    @b("searchterm")
    private String searchTerm;
    @b("character")
    private String unicodeChars;

    public String getImgUrl() {
        return StringConstant.getOrEmpty(this.imgUrl);
    }

    public String getSearchName() {
        return StringConstant.getOrEmpty(this.searchName);
    }

    public String getSearchTerm() {
        return StringConstant.getOrEmpty(this.searchTerm);
    }

    public String getUnicodeChars() {
        return StringConstant.getOrEmpty(this.unicodeChars);
    }
}
