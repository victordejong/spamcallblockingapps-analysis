package com.google.firebase.abt;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Locale;
import java.util.Map;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/abt/a.class */
public final class a {

    /* renamed from: b  reason: collision with root package name */
    final String f32172b;

    /* renamed from: c  reason: collision with root package name */
    final String f32173c;

    /* renamed from: d  reason: collision with root package name */
    final String f32174d;
    final Date e;
    final long f;
    final long g;
    private static final String[] h = {"experimentId", "experimentStartTime", "timeToLiveMillis", "triggerTimeoutMillis", "variantId"};

    /* renamed from: a  reason: collision with root package name */
    static final DateFormat f32171a = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss", Locale.US);

    public a(String str, String str2, String str3, Date date, long j, long j2) {
        this.f32172b = str;
        this.f32173c = str2;
        this.f32174d = str3;
        this.e = date;
        this.f = j;
        this.g = j2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static a a(Map<String, String> map) throws AbtException {
        String[] strArr;
        ArrayList arrayList = new ArrayList();
        for (String str : h) {
            if (!map.containsKey(str)) {
                arrayList.add(str);
            }
        }
        if (arrayList.isEmpty()) {
            try {
                return new a(map.get("experimentId"), map.get("variantId"), map.containsKey("triggerEvent") ? map.get("triggerEvent") : "", f32171a.parse(map.get("experimentStartTime")), Long.parseLong(map.get("triggerTimeoutMillis")), Long.parseLong(map.get("timeToLiveMillis")));
            } catch (NumberFormatException e) {
                throw new AbtException("Could not process experiment: one of the durations could not be converted into a long.", e);
            } catch (ParseException e2) {
                throw new AbtException("Could not process experiment: parsing experiment start time failed.", e2);
            }
        } else {
            throw new AbtException(String.format("The following keys are missing from the experiment info map: %s", arrayList));
        }
    }
}
