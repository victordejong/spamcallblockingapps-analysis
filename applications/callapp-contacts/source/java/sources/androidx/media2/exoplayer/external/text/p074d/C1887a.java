package androidx.media2.exoplayer.external.text.p074d;

import android.text.TextUtils;
import androidx.media2.exoplayer.external.text.AbstractC1870b;
import androidx.media2.exoplayer.external.text.AbstractC1886d;
import androidx.media2.exoplayer.external.text.C1856a;
import androidx.media2.exoplayer.external.util.C1993a;
import androidx.media2.exoplayer.external.util.C1996ac;
import androidx.media2.exoplayer.external.util.C2009j;
import androidx.media2.exoplayer.external.util.C2010k;
import androidx.media2.exoplayer.external.util.C2018p;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
import org.apache.commons.lang3.StringUtils;
/* renamed from: androidx.media2.exoplayer.external.text.d.a */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/text/d/a.class */
public final class C1887a extends AbstractC1870b {

    /* renamed from: a */
    private static final Pattern f7579a = Pattern.compile("(?:(\\d+):)?(\\d+):(\\d+)(?::|\\.)(\\d+)");

    /* renamed from: b */
    private final boolean f7580b;

    /* renamed from: c */
    private int f7581c;

    /* renamed from: d */
    private int f7582d;

    /* renamed from: e */
    private int f7583e;

    /* renamed from: f */
    private int f7584f;

    public C1887a() {
        this(null);
    }

    public C1887a(List<byte[]> list) {
        super("SsaDecoder");
        if (list == null || list.isEmpty()) {
            this.f7580b = false;
            return;
        }
        this.f7580b = true;
        String m41649a = C1996ac.m41649a(list.get(0));
        C1993a.m41688a(m41649a.startsWith("Format: "));
        m41953a(m41649a);
        m41955a(new C2018p(list.get(1)));
    }

    /* renamed from: a */
    private static void m41955a(C2018p c2018p) {
        String m41515r;
        do {
            m41515r = c2018p.m41515r();
            if (m41515r == null) {
                return;
            }
        } while (!m41515r.startsWith("[Events]"));
    }

    /* JADX WARN: Type inference failed for: r0v61, types: [long] */
    /* renamed from: a */
    private void m41954a(C2018p c2018p, List<C1856a> list, C2010k c2010k) {
        char c;
        while (true) {
            String m41515r = c2018p.m41515r();
            if (m41515r != null) {
                if (!this.f7580b && m41515r.startsWith("Format: ")) {
                    m41953a(m41515r);
                } else if (m41515r.startsWith("Dialogue: ")) {
                    if (this.f7581c == 0) {
                        String valueOf = String.valueOf(m41515r);
                        C2009j.m41584a("SsaDecoder", valueOf.length() != 0 ? "Skipping dialogue line before complete format: ".concat(valueOf) : new String("Skipping dialogue line before complete format: "));
                    } else {
                        String[] split = m41515r.substring(10).split(",", this.f7581c);
                        if (split.length != this.f7581c) {
                            String valueOf2 = String.valueOf(m41515r);
                            C2009j.m41584a("SsaDecoder", valueOf2.length() != 0 ? "Skipping dialogue line with fewer columns than format: ".concat(valueOf2) : new String("Skipping dialogue line with fewer columns than format: "));
                        } else {
                            long m41952b = m41952b(split[this.f7582d]);
                            if (m41952b == -9223372036854775807L) {
                                String valueOf3 = String.valueOf(m41515r);
                                C2009j.m41584a("SsaDecoder", valueOf3.length() != 0 ? "Skipping invalid timing: ".concat(valueOf3) : new String("Skipping invalid timing: "));
                            } else {
                                String str = split[this.f7583e];
                                if (!str.trim().isEmpty()) {
                                    ?? m41952b2 = m41952b(str);
                                    c = m41952b2;
                                    if (m41952b2 == -9223372036854775807L) {
                                        String valueOf4 = String.valueOf(m41515r);
                                        C2009j.m41584a("SsaDecoder", valueOf4.length() != 0 ? "Skipping invalid timing: ".concat(valueOf4) : new String("Skipping invalid timing: "));
                                    }
                                } else {
                                    c = 1;
                                }
                                list.add(new C1856a(split[this.f7584f].replaceAll("\\{.*?\\}", "").replaceAll("\\\\N", StringUtils.f67179LF).replaceAll("\\\\n", StringUtils.f67179LF)));
                                c2010k.m41576a(m41952b);
                                if (c != -9223372036854775807L) {
                                    list.add(C1856a.f7399a);
                                    c2010k.m41576a((long) c);
                                }
                            }
                        }
                    }
                }
            } else {
                return;
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* renamed from: a */
    private void m41953a(String str) {
        boolean z;
        String[] split = TextUtils.split(str.substring(8), ",");
        this.f7581c = split.length;
        this.f7582d = -1;
        this.f7583e = -1;
        this.f7584f = -1;
        for (int i = 0; i < this.f7581c; i++) {
            String m41620d = C1996ac.m41620d(split[i].trim());
            m41620d.hashCode();
            switch (m41620d.hashCode()) {
                case 100571:
                    if (m41620d.equals("end")) {
                        z = false;
                        break;
                    }
                    z = true;
                    break;
                case 3556653:
                    if (m41620d.equals("text")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 109757538:
                    if (m41620d.equals(EventConstants.START)) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                default:
                    z = true;
                    break;
            }
            switch (z) {
                case false:
                    this.f7583e = i;
                    break;
                case true:
                    this.f7584f = i;
                    break;
                case true:
                    this.f7582d = i;
                    break;
            }
        }
        if (this.f7582d == -1 || this.f7583e == -1 || this.f7584f == -1) {
            this.f7581c = 0;
        }
    }

    /* renamed from: b */
    private static long m41952b(String str) {
        Matcher matcher = f7579a.matcher(str);
        if (!matcher.matches()) {
            return -9223372036854775807L;
        }
        return (Long.parseLong(matcher.group(1)) * 60 * 60 * 1000000) + (Long.parseLong(matcher.group(2)) * 60 * 1000000) + (Long.parseLong(matcher.group(3)) * 1000000) + (Long.parseLong(matcher.group(4)) * 10000);
    }

    @Override // androidx.media2.exoplayer.external.text.AbstractC1870b
    /* renamed from: a */
    public final AbstractC1886d mo41891a(byte[] bArr, int i, boolean z) {
        ArrayList arrayList = new ArrayList();
        C2010k c2010k = new C2010k();
        C2018p c2018p = new C2018p(bArr, i);
        if (!this.f7580b) {
            m41955a(c2018p);
        }
        m41954a(c2018p, arrayList, c2010k);
        C1856a[] c1856aArr = new C1856a[arrayList.size()];
        arrayList.toArray(c1856aArr);
        return new C1888b(c1856aArr, c2010k.m41578a());
    }
}
