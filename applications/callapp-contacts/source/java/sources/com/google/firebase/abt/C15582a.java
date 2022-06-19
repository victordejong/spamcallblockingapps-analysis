package com.google.firebase.abt;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Locale;
import java.util.Map;
/* renamed from: com.google.firebase.abt.a */
/* loaded from: classes4-dex2jar.jar:com/google/firebase/abt/a.class */
public final class C15582a {

    /* renamed from: b */
    final String f55918b;

    /* renamed from: c */
    final String f55919c;

    /* renamed from: d */
    final String f55920d;

    /* renamed from: e */
    final Date f55921e;

    /* renamed from: f */
    final long f55922f;

    /* renamed from: g */
    final long f55923g;

    /* renamed from: h */
    private static final String[] f55917h = {"experimentId", "experimentStartTime", "timeToLiveMillis", "triggerTimeoutMillis", "variantId"};

    /* renamed from: a */
    static final DateFormat f55916a = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss", Locale.US);

    public C15582a(String str, String str2, String str3, Date date, long j, long j2) {
        this.f55918b = str;
        this.f55919c = str2;
        this.f55920d = str3;
        this.f55921e = date;
        this.f55922f = j;
        this.f55923g = j2;
    }

    /* renamed from: a */
    public static C15582a m8632a(Map<String, String> map) throws AbtException {
        String[] strArr;
        ArrayList arrayList = new ArrayList();
        for (String str : f55917h) {
            if (!map.containsKey(str)) {
                arrayList.add(str);
            }
        }
        if (arrayList.isEmpty()) {
            try {
                return new C15582a(map.get("experimentId"), map.get("variantId"), map.containsKey("triggerEvent") ? map.get("triggerEvent") : "", f55916a.parse(map.get("experimentStartTime")), Long.parseLong(map.get("triggerTimeoutMillis")), Long.parseLong(map.get("timeToLiveMillis")));
            } catch (NumberFormatException e) {
                throw new AbtException("Could not process experiment: one of the durations could not be converted into a long.", e);
            } catch (ParseException e2) {
                throw new AbtException("Could not process experiment: parsing experiment start time failed.", e2);
            }
        }
        throw new AbtException(String.format("The following keys are missing from the experiment info map: %s", arrayList));
    }
}
