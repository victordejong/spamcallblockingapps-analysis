package p193e.p194a.p1392y2;

import com.truecaller.background_work.WorkActionPeriod;
import java.lang.annotation.Annotation;
import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.a.y2.a */
/* loaded from: classes5-dex2jar.jar:e/a/y2/a.class */
public final class C21755a implements Annotation {

    /* renamed from: c */
    public final String f60582c;

    /* renamed from: d */
    public final WorkActionPeriod f60583d;

    /* renamed from: e */
    public final boolean f60584e;

    public C21755a(String str, WorkActionPeriod workActionPeriod, boolean z) {
        Objects.requireNonNull(str, "Null actionName");
        this.f60582c = str;
        Objects.requireNonNull(workActionPeriod, "Null period");
        this.f60583d = workActionPeriod;
        this.f60584e = z;
    }

    @Override // java.lang.annotation.Annotation
    public Class<? extends C21755a> annotationType() {
        return C21755a.class;
    }

    @Override // java.lang.annotation.Annotation
    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C21755a)) {
            return false;
        }
        C21755a c21755a = (C21755a) obj;
        if (!this.f60582c.equals(c21755a.f60582c) || !this.f60583d.equals(c21755a.f60583d) || this.f60584e != c21755a.f60584e) {
            z = false;
        }
        return z;
    }

    @Override // java.lang.annotation.Annotation
    public int hashCode() {
        return (this.f60582c.hashCode() ^ (-1059942753)) + (this.f60583d.hashCode() ^ (-1395168577)) + ((this.f60584e ? 1231 : 1237) ^ 321812992);
    }

    @Override // java.lang.annotation.Annotation
    public String toString() {
        StringBuilder m8704I = C22128a.m8704I("@com.truecaller.background_work.PeriodicActionSpec(", "actionName=");
        String str = this.f60582c;
        m8704I.append('\"');
        for (int i = 0; i < str.length(); i++) {
            char charAt = str.charAt(i);
            if (charAt == '\t') {
                m8704I.append("\\t");
            } else if (charAt == '\n') {
                m8704I.append("\\n");
            } else if (charAt == '\r') {
                m8704I.append("\\r");
            } else if (charAt == '\"' || charAt == '\'' || charAt == '\\') {
                m8704I.append('\\');
                m8704I.append(charAt);
            } else if (charAt < ' ') {
                m8704I.append('\\');
                String octalString = Integer.toOctalString(charAt);
                for (int length = 3 - octalString.length(); length > 0; length--) {
                    m8704I.append('0');
                }
                m8704I.append(octalString);
            } else if (charAt < 127 || Character.isLetter(charAt)) {
                m8704I.append(charAt);
            } else {
                m8704I.append("\\u");
                String hexString = Integer.toHexString(charAt);
                for (int length2 = 4 - hexString.length(); length2 > 0; length2--) {
                    m8704I.append('0');
                }
                m8704I.append(hexString);
            }
        }
        m8704I.append('\"');
        m8704I.append(", ");
        m8704I.append("period=");
        m8704I.append(this.f60583d);
        m8704I.append(", ");
        m8704I.append("internetRequired=");
        return C22128a.m8598m(m8704I, this.f60584e, ')');
    }
}
