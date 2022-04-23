package com.explorestack.iab.mraid;

import com.verizon.ads.EnvironmentInfo;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/explorestack/iab/mraid/b.class */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    public boolean f19128a;

    /* renamed from: b  reason: collision with root package name */
    public int f19129b;

    public b(boolean z, int i) {
        this.f19128a = z;
        this.f19129b = i;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("MRAIDOrientationProperties{allowOrientationChange=");
        sb.append(this.f19128a);
        sb.append(", forceOrientation=");
        int i = this.f19129b;
        sb.append(i != 0 ? i != 1 ? i != 2 ? "error" : "none" : EnvironmentInfo.DeviceInfo.ORIENTATION_LANDSCAPE : EnvironmentInfo.DeviceInfo.ORIENTATION_PORTRAIT);
        sb.append('}');
        return sb.toString();
    }
}
