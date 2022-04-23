package com.google.android.gms.internal.ads;

import android.graphics.Color;
import com.explorestack.protobuf.openrtb.LossReason;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dd.class */
public final class dd extends dm {
    private static final int h;
    private static final int i;
    private static final int j;
    private static final int k;

    /* renamed from: a  reason: collision with root package name */
    final String f26735a;

    /* renamed from: c  reason: collision with root package name */
    final int f26737c;

    /* renamed from: d  reason: collision with root package name */
    final int f26738d;
    final int e;
    final int f;
    final int g;
    private final boolean m;

    /* renamed from: b  reason: collision with root package name */
    final List<de> f26736b = new ArrayList();
    private final List<dr> l = new ArrayList();

    static {
        int rgb = Color.rgb(12, 174, (int) LossReason.LOSS_REASON_CREATIVE_FILTERED_NOT_SECURE_VALUE);
        h = rgb;
        int rgb2 = Color.rgb((int) LossReason.LOSS_REASON_CREATIVE_FILTERED_INCORRECT_CREATIVE_FORMAT_VALUE, (int) LossReason.LOSS_REASON_CREATIVE_FILTERED_INCORRECT_CREATIVE_FORMAT_VALUE, (int) LossReason.LOSS_REASON_CREATIVE_FILTERED_INCORRECT_CREATIVE_FORMAT_VALUE);
        i = rgb2;
        j = rgb2;
        k = rgb;
    }

    public dd(String str, List<de> list, Integer num, Integer num2, Integer num3, int i2, int i3, boolean z) {
        this.f26735a = str;
        if (list != null) {
            for (int i4 = 0; i4 < list.size(); i4++) {
                de deVar = list.get(i4);
                this.f26736b.add(deVar);
                this.l.add(deVar);
            }
        }
        this.f26737c = num != null ? num.intValue() : j;
        this.f26738d = num2 != null ? num2.intValue() : k;
        this.e = num3 != null ? num3.intValue() : 12;
        this.f = i2;
        this.g = i3;
        this.m = z;
    }

    @Override // com.google.android.gms.internal.ads.dj
    public final String a() {
        return this.f26735a;
    }

    @Override // com.google.android.gms.internal.ads.dj
    public final List<dr> b() {
        return this.l;
    }
}
