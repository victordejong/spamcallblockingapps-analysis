package com.flurry.sdk;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.ActivityOptions;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.criteo.utils.Utils;
import com.flurry.android.FlurryFullscreenTakeoverActivity;
import com.flurry.android.FlurryTileAdActivity;
import com.flurry.android.ads.sdk.R$anim;
/* renamed from: com.flurry.sdk.ec */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/ec.class */
public class C3016ec {

    /* renamed from: a */
    public static final String f4704a = "ec";

    @TargetApi(16)
    /* renamed from: a */
    public static boolean m33293a(Context context, int i) {
        return m33292a(context, FlurryTileAdActivity.newIntent(context, i), ActivityOptions.makeCustomAnimation(context, R$anim.tile_ad_slide_in_anim, R$anim.tile_ad_slide_out_anim));
    }

    @TargetApi(16)
    /* renamed from: a */
    public static boolean m33292a(Context context, Intent intent, ActivityOptions activityOptions) {
        if (context == null || intent == null) {
            return false;
        }
        try {
            if (!(context instanceof Activity)) {
                intent.addFlags(276824064);
            }
            if (activityOptions == null || !C3017ed.m33282a(16)) {
                context.startActivity(intent);
                return true;
            }
            context.startActivity(intent, activityOptions.toBundle());
            return true;
        } catch (ActivityNotFoundException e) {
            String str = f4704a;
            C3356jq.m32609b(str, intent.getComponent().getClassName() + " must be declared in manifest.");
            return false;
        }
    }

    /* renamed from: a */
    public static boolean m33291a(Context context, Uri uri) {
        boolean z;
        try {
            Intent intent = new Intent("android.intent.action.DIAL");
            intent.setData(uri);
            if (!(context instanceof Activity)) {
                intent.setFlags(intent.getFlags() | 268435456);
            }
            context.startActivity(intent);
            z = true;
        } catch (Exception e) {
            String str = f4704a;
            C3356jq.m32609b(str, "launchDialer, error occured while launching dialer: " + e.getMessage());
            z = false;
        }
        return z;
    }

    /* renamed from: a */
    public static boolean m33290a(Context context, AbstractC3518x xVar) {
        if (context == null) {
            return false;
        }
        return m33289a(context, xVar, null, true);
    }

    /* renamed from: a */
    public static boolean m33289a(Context context, AbstractC3518x xVar, String str, boolean z) {
        if (context == null) {
            return false;
        }
        return m33292a(context, FlurryFullscreenTakeoverActivity.newIntent(context, xVar.mo32283d(), str, z), (ActivityOptions) null);
    }

    /* renamed from: a */
    public static boolean m33288a(Context context, String str) {
        if (context == null || TextUtils.isEmpty(str) || !C3452lf.m32433d(str)) {
            return false;
        }
        return m33292a(context, new Intent("android.intent.action.VIEW").setData(Uri.parse(str)), (ActivityOptions) null);
    }

    /* renamed from: a */
    public static boolean m33287a(Context context, String str, AbstractC3518x xVar) {
        Intent launchIntentForPackage = C3331jb.m32681a().f5679a.getPackageManager().getLaunchIntentForPackage(str);
        if (launchIntentForPackage != null && C3445la.m32466a(launchIntentForPackage)) {
            return m33292a(context, launchIntentForPackage, (ActivityOptions) null);
        }
        return m33285b(context, Utils.URL + str, xVar);
    }

    /* renamed from: b */
    public static boolean m33286b(Context context, String str) {
        Intent b = C3011dy.m33305b(context, str);
        return b != null && m33292a(context, b, (ActivityOptions) null);
    }

    /* renamed from: b */
    public static boolean m33285b(Context context, String str, AbstractC3518x xVar) {
        boolean a = C3452lf.m32433d(str) ? m33288a(context, str) : false;
        boolean z = a;
        if (!a) {
            z = a;
            if (C3452lf.m32432e(str)) {
                z = m33286b(context, str);
            }
        }
        boolean z2 = z;
        if (!z) {
            z2 = m33289a(context, xVar, str, true);
        }
        return z2;
    }

    /* renamed from: c */
    public static boolean m33284c(Context context, String str) {
        if (context == null || TextUtils.isEmpty(str)) {
            return false;
        }
        return m33292a(context, new Intent("android.intent.action.VIEW").setData(Uri.parse(str)), (ActivityOptions) null);
    }

    /* renamed from: d */
    public static boolean m33283d(Context context, String str) {
        Intent a = C3011dy.m33308a(context, str);
        return a != null && C3445la.m32466a(a) && m33292a(context, a, (ActivityOptions) null);
    }
}
