package com.unknownphone.callblocker.custom;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Build;
import android.telephony.TelephonyManager;
import android.text.Editable;
import android.text.Html;
import android.text.SpannedString;
import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import androidx.core.app.C0456a;
import com.google.i18n.phonenumbers.C5055g;
import com.google.i18n.phonenumbers.NumberParseException;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
/* renamed from: com.unknownphone.callblocker.custom.g */
/* loaded from: classes-dex2jar.jar:com/unknownphone/callblocker/custom/g.class */
public class C5287g {
    /* renamed from: a */
    public static int m1094a(Context context, float f) {
        return (int) TypedValue.applyDimension(1, f, context.getResources().getDisplayMetrics());
    }

    /* renamed from: a */
    public static Pair<String, String> m1088a(String str) {
        Pair<String, String> pair;
        if (TextUtils.isEmpty(str)) {
            pair = C5282b.f22117a;
        } else {
            String m1079b = m1079b(str);
            pair = TextUtils.isEmpty(m1079b) ? C5282b.f22117a : m1079b.equals(m1079b((String) C5282b.f22117a.first)) ? C5282b.f22117a : m1079b.equals(m1079b((String) C5282b.f22118b.first)) ? C5282b.f22118b : m1079b.equals(m1079b((String) C5282b.f22119c.first)) ? C5282b.f22119c : m1079b.equals(m1079b((String) C5282b.f22120d.first)) ? C5282b.f22120d : m1079b.equals(m1079b((String) C5282b.f22121e.first)) ? C5282b.f22121e : m1079b.equals(m1079b((String) C5282b.f22122f.first)) ? C5282b.f22122f : m1079b.equals(m1079b((String) C5282b.f22123g.first)) ? C5282b.f22123g : m1079b.equals(m1079b((String) C5282b.f22124h.first)) ? C5282b.f22124h : m1079b.equals(m1079b((String) C5282b.f22125i.first)) ? C5282b.f22125i : m1079b.equals(m1079b((String) C5282b.f22126j.first)) ? C5282b.f22126j : m1079b.equals(m1079b((String) C5282b.f22127k.first)) ? C5282b.f22127k : m1079b.equals(m1079b((String) C5282b.f22128l.first)) ? C5282b.f22128l : m1079b.equals(m1079b((String) C5282b.f22129m.first)) ? C5282b.f22129m : m1079b.equals(m1079b((String) C5282b.f22130n.first)) ? C5282b.f22130n : m1079b.equals(m1079b((String) C5282b.f22131o.first)) ? C5282b.f22131o : m1079b.equals(m1079b((String) C5282b.f22132p.first)) ? C5282b.f22132p : m1079b.equals(m1079b((String) C5282b.f22133q.first)) ? C5282b.f22133q : m1079b.equals(m1079b((String) C5282b.f22134r.first)) ? C5282b.f22134r : m1079b.equals(m1079b((String) C5282b.f22135s.first)) ? C5282b.f22135s : m1079b.equals(m1079b((String) C5282b.f22136t.first)) ? C5282b.f22136t : m1079b.equals(m1079b((String) C5282b.f22137u.first)) ? C5282b.f22137u : m1079b.equals(m1079b((String) C5282b.f22138v.first)) ? C5282b.f22138v : m1079b.equals(m1079b((String) C5282b.f22139w.first)) ? C5282b.f22139w : m1079b.equals(m1079b((String) C5282b.f22140x.first)) ? C5282b.f22140x : C5282b.f22117a;
        }
        return pair;
    }

    /* renamed from: a */
    public static CharSequence m1093a(Context context, int i, Object... objArr) {
        for (int i2 = 0; i2 < objArr.length; i2++) {
            objArr[i2] = objArr[i2] instanceof String ? TextUtils.htmlEncode((String) objArr[i2]) : objArr[i2];
        }
        return m1089a(Html.fromHtml(String.format(Html.toHtml(new SpannedString(context.getText(i))), objArr)));
    }

    /* renamed from: a */
    private static CharSequence m1089a(CharSequence charSequence) {
        while (charSequence.length() > 0 && charSequence.charAt(charSequence.length() - 1) == '\n') {
            charSequence = charSequence.subSequence(0, charSequence.length() - 1);
        }
        return charSequence;
    }

    /* renamed from: a */
    public static String m1095a(Context context) {
        String country;
        if (context == null) {
            country = null;
        } else {
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
            country = telephonyManager == null ? context.getResources().getConfiguration().locale.getCountry() : telephonyManager.getNetworkCountryIso();
        }
        return country;
    }

    /* renamed from: a */
    public static String m1092a(Context context, Date date) {
        long time = (new Date().getTime() - date.getTime()) / 1000;
        long j = time / 60;
        long j2 = j / 60;
        long j3 = j2 / 24;
        long j4 = j3 / 7;
        long j5 = j3 / 30;
        long j6 = j3 / 365;
        return time < 5 ? context.getString(2131755503) : j < 1 ? String.format(context.getString(2131755520), Long.valueOf(time)) : j == 1 ? context.getString(2131755221) : j2 < 1 ? String.format(context.getString(2131755506), Long.valueOf(j)) : j2 == 1 ? context.getString(2131755218) : j3 < 1 ? String.format(context.getString(2131755500), Long.valueOf(j2)) : j3 == 1 ? context.getString(2131755223) : j4 < 1 ? String.format(context.getString(2131755491), Long.valueOf(j3)) : j4 == 1 ? context.getString(2131755219) : j5 < 1 ? String.format(context.getString(2131755524), Long.valueOf(j4)) : j5 == 1 ? context.getString(2131755222) : j6 < 1 ? String.format(context.getString(2131755509), Long.valueOf(j5)) : j6 == 1 ? context.getString(2131755220) : String.format(context.getString(2131755529), Long.valueOf(j6));
    }

    /* renamed from: a */
    public static String m1090a(Editable editable) {
        return m1076c(TextUtils.isEmpty(editable) ? null : editable.toString());
    }

    /* renamed from: a */
    public static String m1087a(String str, int i) {
        StringBuilder sb = new StringBuilder();
        String[] split = str.split(" ");
        int length = split.length;
        int i2 = i;
        int i3 = 0;
        while (i3 < length) {
            String str2 = split[i3];
            int i4 = i2;
            if (str2 != null) {
                i4 = i2;
                if (!str2.isEmpty()) {
                    sb.append(str2.charAt(0));
                    int i5 = i2 - 1;
                    i4 = i5;
                    if (i5 == 0) {
                        break;
                    }
                } else {
                    continue;
                }
            }
            i3++;
            i2 = i4;
        }
        return sb.toString();
    }

    /* renamed from: a */
    public static String m1086a(String str, String str2) {
        String str3;
        if (TextUtils.isEmpty(str)) {
            str3 = "";
        } else {
            str3 = str;
            if (!TextUtils.isEmpty(str2)) {
                try {
                    C5055g m1745a = C5055g.m1745a();
                    str3 = m1745a.m1735a(m1745a.m1727a(str, str2.toUpperCase()), C5055g.EnumC5057a.E164);
                } catch (NumberParseException e) {
                    str3 = str;
                }
            }
        }
        return str3;
    }

    /* renamed from: a */
    public static String m1084a(String str, String str2, boolean z) {
        String str3;
        if (TextUtils.isEmpty(str)) {
            str3 = "";
        } else {
            String replaceAll = str.replaceAll("[^0-9]+", "");
            str3 = replaceAll;
            if (z) {
                str3 = replaceAll;
                if (!TextUtils.isEmpty(str2)) {
                    str3 = replaceAll;
                    if (replaceAll.startsWith(str2)) {
                        str3 = replaceAll;
                        if (str2.length() < replaceAll.length()) {
                            str3 = replaceAll.substring(str2.length());
                        }
                    }
                }
            }
        }
        return str3;
    }

    /* renamed from: a */
    public static void m1097a(Activity activity) {
        Log.d("Utils", "hideSoftKeyboard() was called.");
        InputMethodManager inputMethodManager = (InputMethodManager) activity.getSystemService("input_method");
        View currentFocus = activity.getCurrentFocus();
        if (inputMethodManager == null || currentFocus == null) {
            return;
        }
        inputMethodManager.hideSoftInputFromWindow(currentFocus.getWindowToken(), 0);
    }

    /* renamed from: a */
    public static void m1096a(final Activity activity, View view) {
        if (!(view instanceof EditText)) {
            view.setOnTouchListener(new View.OnTouchListener() { // from class: com.unknownphone.callblocker.custom.g.1
                @Override // android.view.View.OnTouchListener
                @SuppressLint({"ClickableViewAccessibility"})
                public boolean onTouch(View view2, MotionEvent motionEvent) {
                    C5287g.m1097a(activity);
                    return false;
                }
            });
        }
        if (view instanceof ViewGroup) {
            for (int i = 0; i < ((ViewGroup) view).getChildCount(); i++) {
                m1096a(activity, ((ViewGroup) view).getChildAt(i));
            }
        }
    }

    /* renamed from: a */
    public static void m1083a(Map<String, String> map) {
        for (Map.Entry<String, String> entry : map.entrySet()) {
            Log.d("Utils", String.format(Locale.US, "%s: %s", entry.getKey(), m1076c(entry.getValue())));
        }
    }

    /* renamed from: a */
    public static boolean m1091a(SharedPreferences sharedPreferences, int i) {
        boolean z = true;
        if (!sharedPreferences.contains("subscription_ends_at") && sharedPreferences.getInt("credits", 0) < i) {
            z = false;
        }
        return z;
    }

    /* renamed from: a */
    public static boolean m1085a(String str, String str2, String str3, String str4) {
        boolean z;
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            z = false;
        } else {
            z = true;
            if (!m1084a(str, str3, false).equals(m1084a(str2, str3, false))) {
                z = true;
                if (!m1084a(str, str3, true).equals(m1084a(str2, str3, true))) {
                    z = true;
                    if (!m1086a(str, str4).equals(m1086a(str2, str4))) {
                        z = false;
                    }
                }
            }
        }
        return z;
    }

    /* renamed from: b */
    public static int m1081b(Context context, float f) {
        return (int) TypedValue.applyDimension(2, f, context.getResources().getDisplayMetrics());
    }

    /* renamed from: b */
    public static String m1079b(String str) {
        return new Locale(str).getLanguage();
    }

    /* renamed from: b */
    public static String m1078b(String str, String str2) {
        String str3;
        if (TextUtils.isEmpty(str)) {
            str3 = "";
        } else {
            str3 = str;
            if (!TextUtils.isEmpty(str2)) {
                try {
                    C5055g m1745a = C5055g.m1745a();
                    str3 = m1745a.m1735a(m1745a.m1727a(str, str2.toUpperCase()), C5055g.EnumC5057a.NATIONAL);
                } catch (NumberParseException e) {
                    str3 = str;
                }
            }
        }
        return str3;
    }

    /* renamed from: b */
    public static void m1082b(Context context) {
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("market://details?id=" + context.getPackageName()));
        intent.addFlags(1208483840);
        try {
            context.startActivity(intent);
        } catch (ActivityNotFoundException e) {
            context.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("http://play.google.com/store/apps/details?id=" + context.getPackageName())));
        }
    }

    /* renamed from: b */
    public static void m1080b(SharedPreferences sharedPreferences, int i) {
        if (sharedPreferences.contains("subscription_ends_at")) {
            return;
        }
        int i2 = sharedPreferences.getInt("credits", 0);
        if (i > i2) {
            sharedPreferences.edit().putInt("credits", 0).apply();
        } else {
            sharedPreferences.edit().putInt("credits", i2 - i).apply();
        }
    }

    /* renamed from: c */
    public static String m1076c(String str) {
        String str2 = str;
        if (TextUtils.isEmpty(str)) {
            str2 = "";
        }
        return str2;
    }

    /* renamed from: c */
    public static String m1075c(String str, String str2) {
        String str3 = str;
        if (TextUtils.isEmpty(str)) {
            str3 = m1076c(str2);
        }
        return str3;
    }

    /* renamed from: c */
    public static boolean m1077c(Context context) {
        boolean isConnected;
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        if (connectivityManager == null) {
            isConnected = false;
        } else {
            NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
            isConnected = activeNetworkInfo == null ? false : activeNetworkInfo.isConnected();
        }
        return isConnected;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x002e, code lost:
        if (r0.length() > 17) goto L13;
     */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String m1073d(java.lang.String r4) {
        /*
            r0 = r4
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 != 0) goto L10
            r0 = r4
            int r0 = r0.length()
            r1 = 23
            if (r0 <= r1) goto L14
        L10:
            r0 = 0
            r4 = r0
        L12:
            r0 = r4
            return r0
        L14:
            r0 = r4
            java.lang.String r1 = "[^0-9]+"
            java.lang.String r2 = ""
            java.lang.String r0 = r0.replaceAll(r1, r2)
            r5 = r0
            r0 = r5
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 != 0) goto L31
            r0 = r5
            r4 = r0
            r0 = r5
            int r0 = r0.length()
            r1 = 17
            if (r0 <= r1) goto L12
        L31:
            r0 = 0
            r4 = r0
            goto L12
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unknownphone.callblocker.custom.C5287g.m1073d(java.lang.String):java.lang.String");
    }

    /* renamed from: d */
    public static String m1072d(String str, String str2) {
        String str3;
        if (TextUtils.isEmpty(str)) {
            str3 = str2;
        } else {
            String upperCase = str.toUpperCase();
            str3 = str2;
            if (!TextUtils.isEmpty(upperCase)) {
                try {
                    C5055g m1745a = C5055g.m1745a();
                    str3 = m1745a.m1735a(m1745a.m1727a(str2, upperCase), C5055g.EnumC5057a.E164);
                } catch (NumberParseException e) {
                    str3 = str2;
                }
            }
        }
        return str3;
    }

    /* renamed from: d */
    public static Map<Integer, String> m1074d(Context context) {
        int i;
        String[] stringArray = context.getResources().getStringArray(2130903040);
        String[] stringArray2 = context.getResources().getStringArray(2130903044);
        String[] stringArray3 = context.getResources().getStringArray(2130903042);
        String[] stringArray4 = context.getResources().getStringArray(2130903041);
        String[] stringArray5 = context.getResources().getStringArray(2130903045);
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
        if (telephonyManager != null) {
            String networkCountryIso = telephonyManager.getNetworkCountryIso();
            i = 0;
            while (i < stringArray.length) {
                if (stringArray[i].equalsIgnoreCase(networkCountryIso)) {
                    break;
                }
                i++;
            }
        }
        i = 1;
        HashMap hashMap = new HashMap();
        if (stringArray4[i].equalsIgnoreCase("L")) {
            hashMap.put(1, String.format(Locale.US, "%s%s", stringArray3[i], stringArray2[i]));
            hashMap.put(3, String.format(Locale.US, "%s%s", stringArray3[i], stringArray5[i]));
        } else {
            hashMap.put(1, String.format(Locale.US, "%s%s", stringArray2[i], stringArray3[i]));
            hashMap.put(3, String.format(Locale.US, "%s%s", stringArray5[i], stringArray3[i]));
        }
        return hashMap;
    }

    /* renamed from: e */
    public static String m1070e(String str) {
        return str.replaceAll(" ", "_");
    }

    @SuppressLint({"InlinedApi"})
    /* renamed from: e */
    public static List<String> m1071e(Context context) {
        boolean z = false;
        boolean z2 = C0456a.m20898a(context, "android.permission.CALL_PHONE") == 0;
        boolean z3 = C0456a.m20898a(context, "android.permission.READ_CALL_LOG") == 0;
        boolean z4 = C0456a.m20898a(context, "android.permission.READ_PHONE_STATE") == 0;
        if (Build.VERSION.SDK_INT < 28 || C0456a.m20898a(context, "android.permission.ANSWER_PHONE_CALLS") == 0) {
            z = true;
        }
        ArrayList arrayList = new ArrayList();
        if (!z2) {
            arrayList.add("android.permission.CALL_PHONE");
        }
        if (!z3) {
            arrayList.add("android.permission.READ_CALL_LOG");
        }
        if (!z4) {
            arrayList.add("android.permission.READ_PHONE_STATE");
        }
        if (!z) {
            arrayList.add("android.permission.ANSWER_PHONE_CALLS");
        }
        return arrayList;
    }
}
