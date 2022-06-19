package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.ArrayList;
import java.util.WeakHashMap;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dto.class */
public final class dto {

    /* renamed from: a */
    private final Object f15707a = new Object();

    /* renamed from: b */
    private final WeakHashMap<Object, Object> f15708b = new WeakHashMap<>();

    /* renamed from: c */
    private final ArrayList<Object> f15709c = new ArrayList<>();

    /* renamed from: d */
    private final Context f15710d;

    /* renamed from: e */
    private final C3647yd f15711e;

    /* renamed from: f */
    private final C3215id f15712f;

    public dto(Context context, C3647yd c3647yd) {
        this.f15710d = context.getApplicationContext();
        this.f15711e = c3647yd;
        this.f15712f = new C3215id(context.getApplicationContext(), c3647yd, (String) dyx.m8158e().m7876a(edi.f16394b));
    }
}
