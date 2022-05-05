package com.revenuecat.purchases.common;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.util.Base64;
import com.android.billingclient.api.Purchase;
import com.android.billingclient.api.PurchaseHistoryRecord;
import com.android.billingclient.api.SkuDetails;
import com.android.billingclient.api.g;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.util.Locale;
import kotlin.c0.d;
import kotlin.c0.j;
import kotlin.w.c.k;
/* loaded from: classes2-dex2jar.jar:com/revenuecat/purchases/common/UtilsKt.class */
public final class UtilsKt {
    public static final Locale getLocale(Context context) {
        Locale locale;
        k.f(context, "$this$getLocale");
        if (Build.VERSION.SDK_INT >= 24) {
            Resources resources = context.getResources();
            k.e(resources, "resources");
            Configuration configuration = resources.getConfiguration();
            k.e(configuration, "resources.configuration");
            locale = configuration.getLocales().get(0);
        } else {
            Resources resources2 = context.getResources();
            k.e(resources2, "resources");
            locale = resources2.getConfiguration().locale;
        }
        return locale;
    }

    public static final double getPriceAmount(SkuDetails skuDetails) {
        k.f(skuDetails, "$this$priceAmount");
        return skuDetails.h() / 1000000.0d;
    }

    public static final String getVersionName(Context context) {
        k.f(context, "$this$versionName");
        return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
    }

    public static final boolean isSuccessful(g gVar) {
        k.f(gVar, "$this$isSuccessful");
        return gVar.b() == 0;
    }

    public static final String sha1(String str) {
        k.f(str, "$this$sha1");
        MessageDigest instance = MessageDigest.getInstance("SHA-1");
        Charset charset = d.a;
        byte[] bytes = str.getBytes(charset);
        k.e(bytes, "(this as java.lang.String).getBytes(charset)");
        byte[] encode = Base64.encode(instance.digest(bytes), 2);
        k.e(encode, "Base64.encode(it, Base64.NO_WRAP)");
        return new String(encode, charset);
    }

    public static final String sha256(String str) {
        k.f(str, "$this$sha256");
        MessageDigest instance = MessageDigest.getInstance("SHA-256");
        Charset charset = d.a;
        byte[] bytes = str.getBytes(charset);
        k.e(bytes, "(this as java.lang.String).getBytes(charset)");
        byte[] encode = Base64.encode(instance.digest(bytes), 2);
        k.e(encode, "Base64.encode(it, Base64.NO_WRAP)");
        return new String(encode, charset);
    }

    public static final String toBCP47(Locale locale) {
        String str;
        k.f(locale, "$this$toBCP47");
        if (Build.VERSION.SDK_INT >= 21) {
            String languageTag = locale.toLanguageTag();
            k.e(languageTag, "toLanguageTag()");
            return languageTag;
        }
        String language = locale.getLanguage();
        String country = locale.getCountry();
        String variant = locale.getVariant();
        r11 = "";
        String str2 = language;
        String str3 = country;
        String str4 = variant;
        if (k.b(language, "no")) {
            str2 = language;
            str3 = country;
            str4 = variant;
            if (k.b(country, "NO")) {
                str2 = language;
                str3 = country;
                str4 = variant;
                if (k.b(variant, "NY")) {
                    str2 = "nn";
                    str3 = "NO";
                    str4 = "";
                }
            }
        }
        k.e(str2, "language");
        boolean z = true;
        if ((str2.length() == 0) || !new j("\\p{Alpha}{2,8}").c(str2)) {
            str = "und";
        } else if (k.b(str2, "iw")) {
            str = "he";
        } else if (k.b(str2, "in")) {
            str = "id";
        } else {
            str = str2;
            if (k.b(str2, "ji")) {
                str = "yi";
            }
        }
        k.e(str3, "region");
        String str5 = str3;
        if (!new j("\\p{Alpha}{2}|\\p{Digit}{3}").c(str3)) {
            str5 = "";
        }
        k.e(str4, "variant");
        if (!new j("\\p{Alnum}{5,8}|\\p{Digit}\\p{Alnum}{3}").c(str4)) {
        }
        StringBuilder sb = new StringBuilder(str);
        if (str5.length() > 0) {
            sb.append('-');
            sb.append(str5);
        }
        if (str4.length() <= 0) {
            z = false;
        }
        if (z) {
            sb.append('-');
            sb.append(str4);
        }
        String sb2 = sb.toString();
        k.e(sb2, "bcp47Tag.toString()");
        return sb2;
    }

    public static final String toHumanReadableDescription(Purchase purchase) {
        k.f(purchase, "$this$toHumanReadableDescription");
        return purchase.g() + ' ' + purchase.a() + ' ' + purchase.e();
    }

    public static final String toHumanReadableDescription(PurchaseHistoryRecord purchaseHistoryRecord) {
        k.f(purchaseHistoryRecord, "$this$toHumanReadableDescription");
        return purchaseHistoryRecord.e() + ' ' + purchaseHistoryRecord.b() + ' ' + purchaseHistoryRecord.c();
    }

    public static final String toHumanReadableDescription(g gVar) {
        k.f(gVar, "$this$toHumanReadableDescription");
        return "DebugMessage: " + gVar.a() + ". ErrorCode: " + ErrorsKt.getBillingResponseCodeName(gVar.b()) + '.';
    }
}
