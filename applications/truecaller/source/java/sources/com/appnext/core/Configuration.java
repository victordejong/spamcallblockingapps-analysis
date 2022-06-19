package com.appnext.core;

import android.text.TextUtils;
import com.tenor.android.core.constant.StringConstant;
import java.io.Serializable;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;
/* loaded from: classes-dex2jar.jar:com/appnext/core/Configuration.class */
public abstract class Configuration implements Serializable {
    public Boolean backButtonCanClose;
    public Boolean mute;
    private String categories = "";
    private String mSpecificCategories = "";
    public String postback = "";
    public int maxVideoLength = 0;
    public int minVideoLength = 0;
    public String orientation = AbstractC0501Ad.ORIENTATION_DEFAULT;
    public String language = "";

    /* renamed from: x */
    private static String m42491x(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        try {
            return str.equals(URLDecoder.decode(str, StringConstant.UTF8)) ? URLEncoder.encode(str, StringConstant.UTF8) : "";
        } catch (UnsupportedEncodingException e) {
            return "";
        }
    }

    /* renamed from: g */
    public abstract SettingsManager m42492g();

    public String getCategories() {
        return this.categories;
    }

    public String getLanguage() {
        return this.language;
    }

    public int getMaxVideoLength() {
        return this.maxVideoLength;
    }

    public int getMinVideoLength() {
        return this.minVideoLength;
    }

    public boolean getMute() {
        Boolean bool = this.mute;
        return bool == null ? Boolean.parseBoolean(m42492g().m42476y("mute")) : bool.booleanValue();
    }

    public String getOrientation() {
        return this.orientation;
    }

    public String getPostback() {
        return this.postback;
    }

    public String getSpecificCategories() {
        return this.mSpecificCategories;
    }

    @Deprecated
    public boolean isBackButtonCanClose() {
        Boolean bool = this.backButtonCanClose;
        return bool == null ? Boolean.parseBoolean(m42492g().m42476y("can_close")) : bool.booleanValue();
    }

    public void setCategories(String str) {
        this.categories = m42491x(str);
    }

    public void setLanguage(String str) {
        this.language = str;
    }

    public void setMaxVideoLength(int i) {
        if (i >= 0) {
            if (i > 0 && getMinVideoLength() > 0 && i < getMinVideoLength()) {
                throw new IllegalArgumentException("Max Length cannot be lower than min length");
            }
            this.maxVideoLength = i;
            return;
        }
        throw new IllegalArgumentException("Max Length must be higher than 0");
    }

    public void setMinVideoLength(int i) {
        if (i >= 0) {
            if (i > 0 && getMaxVideoLength() > 0 && i > getMaxVideoLength()) {
                throw new IllegalArgumentException("Min Length cannot be higher than max length");
            }
            this.minVideoLength = i;
            return;
        }
        throw new IllegalArgumentException("Min Length must be higher than 0");
    }

    public void setMute(boolean z) {
        this.mute = Boolean.valueOf(z);
    }

    public void setOrientation(String str) {
        if (str != null) {
            if (!str.equals(AbstractC0501Ad.ORIENTATION_AUTO) && !str.equals(AbstractC0501Ad.ORIENTATION_DEFAULT) && !str.equals("landscape") && !str.equals("portrait")) {
                throw new IllegalArgumentException("Wrong orientation type");
            }
            this.orientation = str;
            return;
        }
        throw new IllegalArgumentException("orientation type");
    }

    public void setPostback(String str) {
        this.postback = m42491x(str);
    }

    public void setSpecificCategories(String str) {
        this.mSpecificCategories = m42491x(str);
    }
}
