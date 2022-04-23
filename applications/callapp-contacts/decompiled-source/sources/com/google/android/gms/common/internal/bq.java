package com.google.android.gms.common.internal;

import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/internal/bq.class */
public final class bq {

    /* renamed from: a  reason: collision with root package name */
    private static final Uri f22874a;

    /* renamed from: b  reason: collision with root package name */
    private static final Uri f22875b;

    static {
        Uri parse = Uri.parse("https://plus.google.com/");
        f22874a = parse;
        f22875b = parse.buildUpon().appendPath("circles").appendPath("find").build();
    }

    public static Intent a() {
        Uri fromParts = Uri.fromParts("package", "com.google.android.gms", null);
        Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
        intent.setData(fromParts);
        return intent;
    }

    public static Intent a(String str) {
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

    public static Intent b() {
        Intent intent = new Intent("com.google.android.clockwork.home.UPDATE_ANDROID_WEAR_ACTION");
        intent.setPackage("com.google.android.wearable.app");
        return intent;
    }
}
