package p081h.p203i.p325c.p329j;

import android.text.TextUtils;
import androidx.annotation.VisibleForTesting;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Locale;
import java.util.Map;
import p081h.p203i.p325c.p331k.p332a.AbstractC9452a;
/* renamed from: h.i.c.j.b */
/* loaded from: classes2-dex2jar.jar:h/i/c/j/b.class */
public class C9448b {

    /* renamed from: g */
    public static final String[] f21561g = {"experimentId", "experimentStartTime", "timeToLiveMillis", "triggerTimeoutMillis", "variantId"};
    @VisibleForTesting

    /* renamed from: h */
    public static final DateFormat f21562h = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss", Locale.US);

    /* renamed from: a */
    public final String f21563a;

    /* renamed from: b */
    public final String f21564b;

    /* renamed from: c */
    public final String f21565c;

    /* renamed from: d */
    public final Date f21566d;

    /* renamed from: e */
    public final long f21567e;

    /* renamed from: f */
    public final long f21568f;

    public C9448b(String str, String str2, String str3, Date date, long j, long j2) {
        this.f21563a = str;
        this.f21564b = str2;
        this.f21565c = str3;
        this.f21566d = date;
        this.f21567e = j;
        this.f21568f = j2;
    }

    /* renamed from: a */
    public static C9448b m15144a(Map<String, String> map) throws C9447a {
        m15142b(map);
        try {
            return new C9448b(map.get("experimentId"), map.get("variantId"), map.containsKey("triggerEvent") ? map.get("triggerEvent") : "", f21562h.parse(map.get("experimentStartTime")), Long.parseLong(map.get("triggerTimeoutMillis")), Long.parseLong(map.get("timeToLiveMillis")));
        } catch (NumberFormatException e) {
            throw new C9447a("Could not process experiment: one of the durations could not be converted into a long.", e);
        } catch (ParseException e2) {
            throw new C9447a("Could not process experiment: parsing experiment start time failed.", e2);
        }
    }

    /* renamed from: b */
    public static void m15142b(Map<String, String> map) throws C9447a {
        String[] strArr;
        ArrayList arrayList = new ArrayList();
        for (String str : f21561g) {
            if (!map.containsKey(str)) {
                arrayList.add(str);
            }
        }
        if (!arrayList.isEmpty()) {
            throw new C9447a(String.format("The following keys are missing from the experiment info map: %s", arrayList));
        }
    }

    /* renamed from: a */
    public AbstractC9452a.C9455c m15145a(String str) {
        AbstractC9452a.C9455c cVar = new AbstractC9452a.C9455c();
        cVar.f21576a = str;
        cVar.f21588m = m15143b();
        cVar.f21577b = this.f21563a;
        cVar.f21578c = this.f21564b;
        cVar.f21579d = TextUtils.isEmpty(this.f21565c) ? null : this.f21565c;
        cVar.f21580e = this.f21567e;
        cVar.f21585j = this.f21568f;
        return cVar;
    }

    /* renamed from: a */
    public String m15146a() {
        return this.f21563a;
    }

    /* renamed from: b */
    public long m15143b() {
        return this.f21566d.getTime();
    }
}
