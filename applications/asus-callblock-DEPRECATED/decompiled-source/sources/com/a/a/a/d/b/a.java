package com.a.a.a.d.b;

import android.annotation.SuppressLint;
import com.asus.updatesdk.BuildConfig;
import com.google.gson.k;
import com.google.gson.l;
import com.google.gson.p;
import com.google.gson.r;
import com.google.gson.t;
import java.lang.reflect.Type;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;
@SuppressLint({"SimpleDateFormat"})
/* loaded from: classes-dex2jar.jar:com/a/a/a/d/b/a.class */
public final class a implements k<Date>, t<Date> {
    /* renamed from: a  reason: avoid collision after fix types in other method */
    public static String a2(Date date) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'.'SSS'Z'", Locale.getDefault());
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        return simpleDateFormat.format(date);
    }

    private static Date a(l lVar) {
        try {
            return a(lVar.b());
        } catch (ParseException e) {
            throw new p(e);
        }
    }

    private static Date a(String str) {
        String str2;
        String str3;
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'.'SSSZ");
        simpleDateFormat.setTimeZone(TimeZone.getDefault());
        try {
            String[] split = str.split("\\.");
            if (split.length == 1) {
                str3 = str.replace("Z", ".000Z");
            } else {
                String replace = split[split.length - 1].replace("Z", BuildConfig.FLAVOR);
                if (replace.length() == 1) {
                    str2 = "00" + replace;
                } else {
                    str2 = replace;
                    if (replace.length() == 2) {
                        str2 = "0" + replace;
                    }
                }
                str3 = split[0] + "." + str2 + "Z";
            }
            return simpleDateFormat.parse(str3.replace("Z", "+0000"));
        } catch (IndexOutOfBoundsException e) {
            throw new p("Invalid length");
        }
    }

    @Override // com.google.gson.t
    public final /* synthetic */ l a(Date date) {
        return new r(a2(date));
    }

    @Override // com.google.gson.k
    public final /* bridge */ /* synthetic */ Date a(l lVar, Type type) {
        return a(lVar);
    }
}
