package p131c.p161d.p282e.p283i;

import android.text.TextUtils;
import com.google.firebase.abt.AbtException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import p131c.p161d.p282e.p285j.p286a.AbstractC5143a;
/* renamed from: c.d.e.i.a */
/* loaded from: classes2-dex2jar.jar:c/d/e/i/a.class */
public class C5139a {

    /* renamed from: g */
    public static final String[] f17744g = {"experimentId", "experimentStartTime", "timeToLiveMillis", "triggerTimeoutMillis", "variantId"};

    /* renamed from: h */
    public static final DateFormat f17745h = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss", Locale.US);

    /* renamed from: a */
    public final String f17746a;

    /* renamed from: b */
    public final String f17747b;

    /* renamed from: c */
    public final String f17748c;

    /* renamed from: d */
    public final Date f17749d;

    /* renamed from: e */
    public final long f17750e;

    /* renamed from: f */
    public final long f17751f;

    public C5139a(String str, String str2, String str3, Date date, long j, long j2) {
        this.f17746a = str;
        this.f17747b = str2;
        this.f17748c = str3;
        this.f17749d = date;
        this.f17750e = j;
        this.f17751f = j2;
    }

    /* renamed from: a */
    public static C5139a m24439a(Map<String, String> map) throws AbtException {
        m24437b(map);
        try {
            return new C5139a(map.get("experimentId"), map.get("variantId"), map.containsKey("triggerEvent") ? map.get("triggerEvent") : "", f17745h.parse(map.get("experimentStartTime")), Long.parseLong(map.get("triggerTimeoutMillis")), Long.parseLong(map.get("timeToLiveMillis")));
        } catch (NumberFormatException e) {
            throw new AbtException("Could not process experiment: one of the durations could not be converted into a long.", e);
        } catch (ParseException e2) {
            throw new AbtException("Could not process experiment: parsing experiment start time failed.", e2);
        }
    }

    /* renamed from: a */
    public static void m24441a(C5139a aVar) throws AbtException {
        m24437b(aVar.m24436c());
    }

    /* renamed from: b */
    public static void m24437b(Map<String, String> map) throws AbtException {
        String[] strArr;
        ArrayList arrayList = new ArrayList();
        for (String str : f17744g) {
            if (!map.containsKey(str)) {
                arrayList.add(str);
            }
        }
        if (!arrayList.isEmpty()) {
            throw new AbtException(String.format("The following keys are missing from the experiment info map: %s", arrayList));
        }
    }

    /* renamed from: a */
    public AbstractC5143a.C5146c m24440a(String str) {
        AbstractC5143a.C5146c cVar = new AbstractC5143a.C5146c();
        cVar.f17759a = str;
        cVar.f17771m = m24438b();
        cVar.f17760b = this.f17746a;
        cVar.f17761c = this.f17747b;
        cVar.f17762d = TextUtils.isEmpty(this.f17748c) ? null : this.f17748c;
        cVar.f17763e = this.f17750e;
        cVar.f17768j = this.f17751f;
        return cVar;
    }

    /* renamed from: a */
    public String m24442a() {
        return this.f17746a;
    }

    /* renamed from: b */
    public long m24438b() {
        return this.f17749d.getTime();
    }

    /* renamed from: c */
    public Map<String, String> m24436c() {
        HashMap hashMap = new HashMap();
        hashMap.put("experimentId", this.f17746a);
        hashMap.put("variantId", this.f17747b);
        hashMap.put("triggerEvent", this.f17748c);
        hashMap.put("experimentStartTime", f17745h.format(this.f17749d));
        hashMap.put("triggerTimeoutMillis", Long.toString(this.f17750e));
        hashMap.put("timeToLiveMillis", Long.toString(this.f17751f));
        return hashMap;
    }
}
