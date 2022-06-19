package p252u4;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
/* renamed from: u4.a */
/* loaded from: classes-dex2jar.jar:u4/a.class */
public class C4484a {

    /* renamed from: g */
    public static final String[] f13884g = {"experimentId", "experimentStartTime", "timeToLiveMillis", "triggerTimeoutMillis", "variantId"};

    /* renamed from: h */
    public static final DateFormat f13885h = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss", Locale.US);

    /* renamed from: a */
    public final String f13886a;

    /* renamed from: b */
    public final String f13887b;

    /* renamed from: c */
    public final String f13888c;

    /* renamed from: d */
    public final Date f13889d;

    /* renamed from: e */
    public final long f13890e;

    /* renamed from: f */
    public final long f13891f;

    public C4484a(String str, String str2, String str3, Date date, long j, long j2) {
        this.f13886a = str;
        this.f13887b = str2;
        this.f13888c = str3;
        this.f13889d = date;
        this.f13890e = j;
        this.f13891f = j2;
    }
}
