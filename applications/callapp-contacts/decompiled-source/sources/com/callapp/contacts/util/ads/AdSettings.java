package com.callapp.contacts.util.ads;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/ads/AdSettings.class */
public class AdSettings {

    /* renamed from: a  reason: collision with root package name */
    public boolean f15991a;

    /* renamed from: b  reason: collision with root package name */
    private final String f15992b;

    /* renamed from: c  reason: collision with root package name */
    private final int f15993c;

    /* renamed from: d  reason: collision with root package name */
    private final int f15994d;
    private final boolean e;
    private boolean f;
    private boolean g;

    public AdSettings(String str, int i, boolean z, int i2, boolean z2) {
        this.f15992b = str;
        this.f15993c = i;
        this.e = z;
        this.f15994d = i2;
        this.f = z2;
    }

    public int getAdAnimation() {
        return this.f15994d;
    }

    public int getAdLayoutResourceId() {
        return this.f15993c;
    }

    public String getAdUnitId() {
        return this.f15992b;
    }

    public boolean isIncludeMainImage() {
        return this.f;
    }

    public boolean isIncludeTextDescription() {
        return this.e;
    }

    public boolean isTitlePrimaryColor() {
        return this.g;
    }

    public void setTitlePrimaryColor(boolean z) {
        this.g = z;
    }
}
