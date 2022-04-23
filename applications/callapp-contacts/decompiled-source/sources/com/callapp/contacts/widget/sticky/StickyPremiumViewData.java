package com.callapp.contacts.widget.sticky;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/sticky/StickyPremiumViewData.class */
public class StickyPremiumViewData {

    /* renamed from: a  reason: collision with root package name */
    private final String f16961a;

    /* renamed from: b  reason: collision with root package name */
    private final int f16962b;

    /* renamed from: c  reason: collision with root package name */
    private final int f16963c;

    /* renamed from: d  reason: collision with root package name */
    private final String f16964d;
    private final String e;

    public StickyPremiumViewData(String str, String str2, String str3, int i, int i2) {
        this.f16961a = str;
        this.f16964d = str2;
        this.f16962b = i;
        this.f16963c = i2;
        this.e = str3;
    }

    public int getBadge() {
        return this.f16963c;
    }

    public String getButtonText() {
        return this.e;
    }

    public int getImage() {
        return this.f16962b;
    }

    public String getSubtitle() {
        return this.f16964d;
    }

    public String getTitle() {
        return this.f16961a;
    }
}
