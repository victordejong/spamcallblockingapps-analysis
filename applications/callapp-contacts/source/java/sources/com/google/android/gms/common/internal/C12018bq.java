package com.google.android.gms.common.internal;

import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
/* renamed from: com.google.android.gms.common.internal.bq */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/internal/bq.class */
public final class C12018bq {

    /* renamed from: a */
    private static final Uri f39533a;

    /* renamed from: b */
    private static final Uri f39534b;

    static {
        Uri parse = Uri.parse("https://plus.google.com/");
        f39533a = parse;
        f39534b = parse.buildUpon().appendPath("circles").appendPath("find").build();
    }

    /* renamed from: a */
    public static Intent m19195a() {
        Uri fromParts = Uri.fromParts("package", "com.google.android.gms", null);
        Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
        intent.setData(fromParts);
        return intent;
    }

    /* renamed from: a */
    public static Intent m19194a(String str) {
        Intent intent = new Intent("android.intent.action.VIEW");
        Uri.Builder appendQueryParameter = Uri.parse("market://details").buildUpon().appendQueryParameter("id", "com.google.android.gms");
        if (!TextUtils.isEmpty(str)) {
            appendQueryParameter.appendQueryParameter("pcampaignid", str);
        }
        intent.setData(appendQueryParameter.build());
        intent.setPackage("com.android.vending");
        intent.addFlags(524288);
        return intent;
    }

    /* renamed from: b */
    public static Intent m19193b() {
        Intent intent = new Intent("com.google.android.clockwork.home.UPDATE_ANDROID_WEAR_ACTION");
        intent.setPackage("com.google.android.wearable.app");
        return intent;
    }
}
