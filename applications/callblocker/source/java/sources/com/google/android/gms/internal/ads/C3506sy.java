package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.content.Context;
import com.google.android.gms.common.util.C2716m;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.annotation.ParametersAreNonnullByDefault;
/* JADX INFO: Access modifiers changed from: package-private */
@ParametersAreNonnullByDefault
@TargetApi(21)
/* renamed from: com.google.android.gms.internal.ads.sy */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/sy.class */
public final class C3506sy {

    /* renamed from: a */
    private static final Map<String, String> f17353a;

    /* renamed from: b */
    private final Context f17354b;

    /* renamed from: c */
    private final List<String> f17355c;

    /* renamed from: d */
    private final C3492sk f17356d;

    static {
        HashMap hashMap = new HashMap();
        if (C2716m.m13835h()) {
            hashMap.put("android.webkit.resource.AUDIO_CAPTURE", "android.permission.RECORD_AUDIO");
            hashMap.put("android.webkit.resource.VIDEO_CAPTURE", "android.permission.CAMERA");
        }
        f17353a = hashMap;
    }

    public C3506sy(Context context, List<String> list, C3492sk c3492sk) {
        this.f17354b = context;
        this.f17355c = list;
        this.f17356d = c3492sk;
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x007d  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00d5  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<java.lang.String> m7168a(java.lang.String[] r5) {
        /*
            Method dump skipped, instructions count: 239
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.C3506sy.m7168a(java.lang.String[]):java.util.List");
    }
}
