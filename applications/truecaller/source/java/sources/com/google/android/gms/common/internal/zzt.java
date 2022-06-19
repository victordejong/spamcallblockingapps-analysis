package com.google.android.gms.common.internal;

import android.net.Uri;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/internal/zzt.class */
public final class zzt {

    /* renamed from: a */
    public static final Uri f6065a;

    static {
        Uri parse = Uri.parse("https://plus.google.com/");
        f6065a = parse;
        parse.buildUpon().appendPath("circles").appendPath("find").build();
    }
}
