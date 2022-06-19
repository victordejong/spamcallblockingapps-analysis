package com.google.android.gms.internal.ads;

import android.graphics.Color;
import com.explorestack.protobuf.openrtb.LossReason;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.google.android.gms.internal.ads.dd */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dd.class */
public final class BinderC12321dd extends AbstractBinderC12379dm {

    /* renamed from: h */
    private static final int f46954h;

    /* renamed from: i */
    private static final int f46955i;

    /* renamed from: j */
    private static final int f46956j;

    /* renamed from: k */
    private static final int f46957k;

    /* renamed from: a */
    final String f46958a;

    /* renamed from: c */
    final int f46960c;

    /* renamed from: d */
    final int f46961d;

    /* renamed from: e */
    final int f46962e;

    /* renamed from: f */
    final int f46963f;

    /* renamed from: g */
    final int f46964g;

    /* renamed from: m */
    private final boolean f46966m;

    /* renamed from: b */
    final List<BinderC12325de> f46959b = new ArrayList();

    /* renamed from: l */
    private final List<AbstractC12394dr> f46965l = new ArrayList();

    static {
        int rgb = Color.rgb(12, 174, (int) LossReason.LOSS_REASON_CREATIVE_FILTERED_NOT_SECURE_VALUE);
        f46954h = rgb;
        int rgb2 = Color.rgb((int) LossReason.LOSS_REASON_CREATIVE_FILTERED_INCORRECT_CREATIVE_FORMAT_VALUE, (int) LossReason.LOSS_REASON_CREATIVE_FILTERED_INCORRECT_CREATIVE_FORMAT_VALUE, (int) LossReason.LOSS_REASON_CREATIVE_FILTERED_INCORRECT_CREATIVE_FORMAT_VALUE);
        f46955i = rgb2;
        f46956j = rgb2;
        f46957k = rgb;
    }

    public BinderC12321dd(String str, List<BinderC12325de> list, Integer num, Integer num2, Integer num3, int i, int i2, boolean z) {
        this.f46958a = str;
        if (list != null) {
            for (int i3 = 0; i3 < list.size(); i3++) {
                BinderC12325de binderC12325de = list.get(i3);
                this.f46959b.add(binderC12325de);
                this.f46965l.add(binderC12325de);
            }
        }
        this.f46960c = num != null ? num.intValue() : f46956j;
        this.f46961d = num2 != null ? num2.intValue() : f46957k;
        this.f46962e = num3 != null ? num3.intValue() : 12;
        this.f46963f = i;
        this.f46964g = i2;
        this.f46966m = z;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12371dj
    /* renamed from: a */
    public final String mo16523a() {
        return this.f46958a;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12371dj
    /* renamed from: b */
    public final List<AbstractC12394dr> mo16522b() {
        return this.f46965l;
    }
}
