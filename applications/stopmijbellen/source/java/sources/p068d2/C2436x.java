package p068d2;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import p134j4.C3210h0;
/* renamed from: d2.x */
/* loaded from: classes-dex2jar.jar:d2/x.class */
public class C2436x {

    /* renamed from: e */
    public static final SimpleDateFormat f8615e = new SimpleDateFormat("yyyyMMdd'T'HHmmss.SSSZ", Locale.US);

    /* renamed from: a */
    public Date f8616a;

    /* renamed from: b */
    public int f8617b;

    /* renamed from: c */
    public C3210h0 f8618c;

    /* renamed from: d */
    public String f8619d;

    /* renamed from: a */
    public String m3557a() {
        int i = this.f8617b;
        return i != -1 ? i != 0 ? i != 1 ? i != 2 ? i != 3 ? "UNKNOWN LOG LEVEL" : "Debug" : "Info" : "Warn" : "Error" : "Fatal";
    }

    public String toString() {
        return f8615e.format(this.f8616a) + " " + m3557a() + "/" + ((String) this.f8618c.f10812d) + ": " + this.f8619d;
    }
}
