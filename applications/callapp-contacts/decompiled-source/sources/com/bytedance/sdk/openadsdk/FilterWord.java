package com.bytedance.sdk.openadsdk;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/FilterWord.class */
public class FilterWord {

    /* renamed from: a  reason: collision with root package name */
    private String f8374a;

    /* renamed from: b  reason: collision with root package name */
    private String f8375b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f8376c;

    /* renamed from: d  reason: collision with root package name */
    private List<FilterWord> f8377d;

    public FilterWord() {
    }

    public FilterWord(String str, String str2) {
        this.f8374a = str;
        this.f8375b = str2;
    }

    public void addOption(FilterWord filterWord) {
        if (filterWord != null) {
            if (this.f8377d == null) {
                this.f8377d = new ArrayList();
            }
            this.f8377d.add(filterWord);
        }
    }

    public String getId() {
        return this.f8374a;
    }

    public boolean getIsSelected() {
        return this.f8376c;
    }

    public String getName() {
        return this.f8375b;
    }

    public List<FilterWord> getOptions() {
        return this.f8377d;
    }

    public boolean hasSecondOptions() {
        List<FilterWord> list = this.f8377d;
        return list != null && !list.isEmpty();
    }

    public boolean isValid() {
        return !TextUtils.isEmpty(this.f8374a) && !TextUtils.isEmpty(this.f8375b);
    }

    public void setId(String str) {
        this.f8374a = str;
    }

    public void setIsSelected(boolean z) {
        this.f8376c = z;
    }

    public void setName(String str) {
        this.f8375b = str;
    }
}
