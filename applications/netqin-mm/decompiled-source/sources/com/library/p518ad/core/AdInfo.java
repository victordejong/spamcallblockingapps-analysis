package com.library.p518ad.core;

import java.io.Serializable;
import p131c.p396i.p397a.p399f.p400a.C6524b;
/* renamed from: com.library.ad.core.AdInfo */
/* loaded from: classes2-dex2jar.jar:com/library/ad/core/AdInfo.class */
public class AdInfo implements Serializable {
    public String adSource;
    public int adType;
    public boolean isDefault;
    public int layoutIndex;
    public int layoutType;
    public String placeId;
    public String unitId;
    public String adSyId = "";
    public String testType = "";
    public int clickViews = -1;

    public String getAdSource() {
        return this.adSource;
    }

    public String getAdSyId() {
        return this.adSyId;
    }

    public int getAdType() {
        return this.adType;
    }

    public String getAdTypeDec() {
        return C6524b.m20573a(this.adType);
    }

    public int getClickViews() {
        return this.clickViews;
    }

    public int getLayoutIndex() {
        return this.layoutIndex;
    }

    public int getLayoutType() {
        return this.layoutType;
    }

    public String getPlaceId() {
        return this.placeId;
    }

    public String getTestType() {
        return this.testType;
    }

    public String getUnitId() {
        return this.unitId;
    }

    public boolean isDefault() {
        return this.isDefault;
    }

    public void setAdSource(String str) {
        this.adSource = str;
    }

    public void setAdSyId(String str) {
        this.adSyId = str;
    }

    public void setAdType(int i) {
        this.adType = i;
    }

    public void setClickViews(int i) {
        this.clickViews = i;
    }

    public void setDefault(boolean z) {
        this.isDefault = z;
    }

    public void setLayoutIndex(int i) {
        this.layoutIndex = i;
    }

    public void setLayoutType(int i) {
        this.layoutType = i;
    }

    public void setPlaceId(String str) {
        this.placeId = str;
    }

    public void setTestType(String str) {
        this.testType = str;
    }

    public void setUnitId(String str) {
        this.unitId = str;
    }

    public String toString() {
        return String.format("%s@%s,广告位:%s平台:%s,类型:%s,unitId:%s", AdInfo.class.getSimpleName(), Integer.toHexString(hashCode()), getPlaceId(), this.adSource, C6524b.m20573a(getAdType()), getUnitId());
    }
}
