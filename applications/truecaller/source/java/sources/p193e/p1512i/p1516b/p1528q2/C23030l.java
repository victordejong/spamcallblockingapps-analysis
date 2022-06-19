package p193e.p1512i.p1516b.p1528q2;

import android.content.Context;
import com.razorpay.AnalyticsConstants;
import java.text.SimpleDateFormat;
import java.util.Locale;
import java.util.TimeZone;
import p193e.p1512i.p1516b.AbstractC22939e2;
import p193e.p1512i.p1516b.C22940e3;
import p193e.p1512i.p1516b.p1519d2.C22935c;
import p193e.p1512i.p1516b.p1531s2.C23073b;
import p193e.p1512i.p1516b.p1531s2.C23080f;
import s1.z.c.l;
/* renamed from: e.i.b.q2.l */
/* loaded from: classes-dex2jar.jar:e/i/b/q2/l.class */
public class C23030l {

    /* renamed from: a */
    public final SimpleDateFormat f63808a;

    /* renamed from: b */
    public final C23080f f63809b;

    /* renamed from: c */
    public final Context f63810c;

    /* renamed from: d */
    public final C23073b f63811d;

    /* renamed from: e */
    public final C22940e3 f63812e;

    /* renamed from: f */
    public final C22935c f63813f;

    /* renamed from: g */
    public final AbstractC22939e2 f63814g;

    /* renamed from: h */
    public final C23024j f63815h;

    public C23030l(C23080f c23080f, Context context, C23073b c23073b, C22940e3 c22940e3, C22935c c22935c, AbstractC22939e2 abstractC22939e2, C23024j c23024j) {
        l.f(c23080f, "buildConfigWrapper");
        l.f(context, AnalyticsConstants.CONTEXT);
        l.f(c23073b, "advertisingInfo");
        l.f(c22940e3, "session");
        l.f(c22935c, "integrationRegistry");
        l.f(abstractC22939e2, "clock");
        l.f(c23024j, "publisherCodeRemover");
        this.f63809b = c23080f;
        this.f63810c = context;
        this.f63811d = c23073b;
        this.f63812e = c22940e3;
        this.f63813f = c22935c;
        this.f63814g = abstractC22939e2;
        this.f63815h = c23024j;
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'", Locale.ROOT);
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        this.f63808a = simpleDateFormat;
    }
}
