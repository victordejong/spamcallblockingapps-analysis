package com.callapp.contacts.widget.sticky;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/sticky/StickyPremiumViewData.class */
public class StickyPremiumViewData {

    /* renamed from: a */
    private final String f29478a;

    /* renamed from: b */
    private final int f29479b;

    /* renamed from: c */
    private final int f29480c;

    /* renamed from: d */
    private final String f29481d;

    /* renamed from: e */
    private final String f29482e;

    public StickyPremiumViewData(String str, String str2, String str3, int i, int i2) {
        this.f29478a = str;
        this.f29481d = str2;
        this.f29479b = i;
        this.f29480c = i2;
        this.f29482e = str3;
    }

    public int getBadge() {
        return this.f29480c;
    }

    public String getButtonText() {
        return this.f29482e;
    }

    public int getImage() {
        return this.f29479b;
    }

    public String getSubtitle() {
        return this.f29481d;
    }

    public String getTitle() {
        return this.f29478a;
    }
}
