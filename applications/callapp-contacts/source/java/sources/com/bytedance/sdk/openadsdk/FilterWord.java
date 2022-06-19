package com.bytedance.sdk.openadsdk;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/FilterWord.class */
public class FilterWord {

    /* renamed from: a */
    private String f15544a;

    /* renamed from: b */
    private String f15545b;

    /* renamed from: c */
    private boolean f15546c;

    /* renamed from: d */
    private List<FilterWord> f15547d;

    public FilterWord() {
    }

    public FilterWord(String str, String str2) {
        this.f15544a = str;
        this.f15545b = str2;
    }

    public void addOption(FilterWord filterWord) {
        if (filterWord == null) {
            return;
        }
        if (this.f15547d == null) {
            this.f15547d = new ArrayList();
        }
        this.f15547d.add(filterWord);
    }

    public String getId() {
        return this.f15544a;
    }

    public boolean getIsSelected() {
        return this.f15546c;
    }

    public String getName() {
        return this.f15545b;
    }

    public List<FilterWord> getOptions() {
        return this.f15547d;
    }

    public boolean hasSecondOptions() {
        List<FilterWord> list = this.f15547d;
        return list != null && !list.isEmpty();
    }

    public boolean isValid() {
        return !TextUtils.isEmpty(this.f15544a) && !TextUtils.isEmpty(this.f15545b);
    }

    public void setId(String str) {
        this.f15544a = str;
    }

    public void setIsSelected(boolean z) {
        this.f15546c = z;
    }

    public void setName(String str) {
        this.f15545b = str;
    }
}
