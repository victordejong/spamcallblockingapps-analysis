package com.callapp.contacts.util.ads;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/ads/AdSettings.class */
public class AdSettings {

    /* renamed from: a */
    public boolean f27896a;

    /* renamed from: b */
    private final String f27897b;

    /* renamed from: c */
    private final int f27898c;

    /* renamed from: d */
    private final int f27899d;

    /* renamed from: e */
    private final boolean f27900e;

    /* renamed from: f */
    private boolean f27901f;

    /* renamed from: g */
    private boolean f27902g;

    public AdSettings(String str, int i, boolean z, int i2, boolean z2) {
        this.f27897b = str;
        this.f27898c = i;
        this.f27900e = z;
        this.f27899d = i2;
        this.f27901f = z2;
    }

    public int getAdAnimation() {
        return this.f27899d;
    }

    public int getAdLayoutResourceId() {
        return this.f27898c;
    }

    public String getAdUnitId() {
        return this.f27897b;
    }

    public boolean isIncludeMainImage() {
        return this.f27901f;
    }

    public boolean isIncludeTextDescription() {
        return this.f27900e;
    }

    public boolean isTitlePrimaryColor() {
        return this.f27902g;
    }

    public void setTitlePrimaryColor(boolean z) {
        this.f27902g = z;
    }
}
