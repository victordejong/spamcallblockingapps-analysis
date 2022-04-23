package com.flurry.sdk;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
/* renamed from: com.flurry.sdk.gh */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/gh.class */
public final class C3158gh {

    /* JADX WARN: Failed to restore enum class, 'enum' modifier removed */
    /* renamed from: com.flurry.sdk.gh$a */
    /* loaded from: classes2-dex2jar.jar:com/flurry/sdk/gh$a.class */
    public static final class EnumC3159a extends Enum<EnumC3159a> {

        /* renamed from: a */
        public static final int f5180a = 1;

        /* renamed from: b */
        public static final int f5181b = 2;

        /* renamed from: c */
        public static final int f5182c = 3;

        /* renamed from: d */
        public static final int f5183d = 4;

        /* renamed from: e */
        public static final int f5184e = 5;

        /* renamed from: f */
        public static final int f5185f = 6;

        /* renamed from: g */
        public static final /* synthetic */ int[] f5186g = {f5180a, f5181b, f5182c, f5183d, f5184e, f5185f};

        /* renamed from: a */
        public static int[] m32960a() {
            return (int[]) f5186g.clone();
        }
    }

    /* renamed from: a */
    public static int m32961a(Context context, AbstractC3518x xVar, String str) {
        return (context == null || xVar == null) ? EnumC3159a.f5185f : TextUtils.isEmpty(str) ? EnumC3159a.f5180a : C3452lf.m32431f(str) ? EnumC3159a.f5181b : (!(xVar instanceof C2772aa) || !((C2772aa) xVar).mo32304v() || !str.startsWith("file:")) ? (xVar.mo32279k().f4111b.f4151f || !C2866be.m33486a(context) || Build.VERSION.SDK_INT < 16) ? EnumC3159a.f5184e : EnumC3159a.f5183d : EnumC3159a.f5182c;
    }
}
