package com.explorestack.iab.mraid;

import com.verizon.ads.EnvironmentInfo;
/* renamed from: com.explorestack.iab.mraid.b */
/* loaded from: classes2-dex2jar.jar:com/explorestack/iab/mraid/b.class */
public final class C9562b {

    /* renamed from: a */
    public boolean f32498a;

    /* renamed from: b */
    public int f32499b;

    public C9562b(boolean z, int i) {
        this.f32498a = z;
        this.f32499b = i;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("MRAIDOrientationProperties{allowOrientationChange=");
        sb.append(this.f32498a);
        sb.append(", forceOrientation=");
        int i = this.f32499b;
        sb.append(i != 0 ? i != 1 ? i != 2 ? "error" : "none" : EnvironmentInfo.DeviceInfo.ORIENTATION_LANDSCAPE : EnvironmentInfo.DeviceInfo.ORIENTATION_PORTRAIT);
        sb.append('}');
        return sb.toString();
    }
}
