package androidx.media2.exoplayer.external.text.p075e;

import android.text.Html;
import android.text.Spanned;
import android.text.TextUtils;
import androidx.media2.exoplayer.external.text.AbstractC1870b;
import androidx.media2.exoplayer.external.text.AbstractC1886d;
import androidx.media2.exoplayer.external.text.C1856a;
import androidx.media2.exoplayer.external.util.C2009j;
import androidx.media2.exoplayer.external.util.C2010k;
import androidx.media2.exoplayer.external.util.C2018p;
import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* renamed from: androidx.media2.exoplayer.external.text.e.a */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/text/e/a.class */
public final class C1890a extends AbstractC1870b {

    /* renamed from: a */
    private static final Pattern f7587a = Pattern.compile("\\s*((?:(\\d+):)?(\\d+):(\\d+),(\\d+))\\s*-->\\s*((?:(\\d+):)?(\\d+):(\\d+),(\\d+))?\\s*");

    /* renamed from: b */
    private static final Pattern f7588b = Pattern.compile("\\{\\\\.*?\\}");

    /* renamed from: c */
    private final StringBuilder f7589c = new StringBuilder();

    /* renamed from: d */
    private final ArrayList<String> f7590d = new ArrayList<>();

    public C1890a() {
        super("SubripDecoder");
    }

    /* renamed from: a */
    private static float m41950a(int i) {
        if (i != 0) {
            if (i == 1) {
                return 0.5f;
            }
            if (i != 2) {
                throw new IllegalArgumentException();
            }
            return 0.92f;
        }
        return 0.08f;
    }

    /* renamed from: a */
    private static long m41948a(Matcher matcher, int i) {
        return ((Long.parseLong(matcher.group(i + 1)) * 60 * 60 * 1000) + (Long.parseLong(matcher.group(i + 2)) * 60 * 1000) + (Long.parseLong(matcher.group(i + 3)) * 1000) + Long.parseLong(matcher.group(i + 4))) * 1000;
    }

    /* renamed from: a */
    private static String m41949a(String str, ArrayList<String> arrayList) {
        String trim = str.trim();
        StringBuilder sb = new StringBuilder(trim);
        Matcher matcher = f7588b.matcher(trim);
        int i = 0;
        while (true) {
            int i2 = i;
            if (matcher.find()) {
                String group = matcher.group();
                arrayList.add(group);
                int start = matcher.start() - i2;
                int length = group.length();
                sb.replace(start, start + length, "");
                i = i2 + length;
            } else {
                return sb.toString();
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // androidx.media2.exoplayer.external.text.AbstractC1870b
    /* renamed from: a */
    public final AbstractC1886d mo41891a(byte[] bArr, int i, boolean z) {
        boolean z2;
        String str;
        C1856a c1856a;
        boolean z3;
        boolean z4;
        ArrayList arrayList = new ArrayList();
        C2010k c2010k = new C2010k();
        C2018p c2018p = new C2018p(bArr, i);
        while (true) {
            String m41515r = c2018p.m41515r();
            if (m41515r != null) {
                if (m41515r.length() != 0) {
                    try {
                        Integer.parseInt(m41515r);
                        String m41515r2 = c2018p.m41515r();
                        if (m41515r2 == null) {
                            C2009j.m41584a("SubripDecoder", "Unexpected end");
                        } else {
                            Matcher matcher = f7587a.matcher(m41515r2);
                            if (matcher.matches()) {
                                c2010k.m41576a(m41948a(matcher, 1));
                                if (!TextUtils.isEmpty(matcher.group(6))) {
                                    c2010k.m41576a(m41948a(matcher, 6));
                                    z2 = true;
                                } else {
                                    z2 = false;
                                }
                                this.f7589c.setLength(0);
                                this.f7590d.clear();
                                String m41515r3 = c2018p.m41515r();
                                while (true) {
                                    String str2 = m41515r3;
                                    if (!TextUtils.isEmpty(str2)) {
                                        if (this.f7589c.length() > 0) {
                                            this.f7589c.append("<br>");
                                        }
                                        this.f7589c.append(m41949a(str2, this.f7590d));
                                        m41515r3 = c2018p.m41515r();
                                    } else {
                                        Spanned fromHtml = Html.fromHtml(this.f7589c.toString());
                                        int i2 = 0;
                                        while (true) {
                                            str = null;
                                            if (i2 < this.f7590d.size()) {
                                                str = this.f7590d.get(i2);
                                                if (!str.matches("\\{\\\\an[1-9]\\}")) {
                                                    i2++;
                                                }
                                            }
                                        }
                                        if (str == null) {
                                            c1856a = new C1856a(fromHtml);
                                        } else {
                                            switch (str.hashCode()) {
                                                case -685620710:
                                                    if (str.equals("{\\an1}")) {
                                                        z3 = false;
                                                        break;
                                                    }
                                                    z3 = true;
                                                    break;
                                                case -685620679:
                                                    if (str.equals("{\\an2}")) {
                                                        z3 = true;
                                                        break;
                                                    }
                                                    z3 = true;
                                                    break;
                                                case -685620648:
                                                    if (str.equals("{\\an3}")) {
                                                        z3 = true;
                                                        break;
                                                    }
                                                    z3 = true;
                                                    break;
                                                case -685620617:
                                                    if (str.equals("{\\an4}")) {
                                                        z3 = true;
                                                        break;
                                                    }
                                                    z3 = true;
                                                    break;
                                                case -685620586:
                                                    if (str.equals("{\\an5}")) {
                                                        z3 = true;
                                                        break;
                                                    }
                                                    z3 = true;
                                                    break;
                                                case -685620555:
                                                    if (str.equals("{\\an6}")) {
                                                        z3 = true;
                                                        break;
                                                    }
                                                    z3 = true;
                                                    break;
                                                case -685620524:
                                                    if (str.equals("{\\an7}")) {
                                                        z3 = true;
                                                        break;
                                                    }
                                                    z3 = true;
                                                    break;
                                                case -685620493:
                                                    if (str.equals("{\\an8}")) {
                                                        z3 = true;
                                                        break;
                                                    }
                                                    z3 = true;
                                                    break;
                                                case -685620462:
                                                    if (str.equals("{\\an9}")) {
                                                        z3 = true;
                                                        break;
                                                    }
                                                    z3 = true;
                                                    break;
                                                default:
                                                    z3 = true;
                                                    break;
                                            }
                                            int i3 = (!z3 || z3 || z3) ? 0 : (z3 || z3 || z3) ? 2 : 1;
                                            switch (str.hashCode()) {
                                                case -685620710:
                                                    if (str.equals("{\\an1}")) {
                                                        z4 = false;
                                                        break;
                                                    }
                                                    z4 = true;
                                                    break;
                                                case -685620679:
                                                    if (str.equals("{\\an2}")) {
                                                        z4 = true;
                                                        break;
                                                    }
                                                    z4 = true;
                                                    break;
                                                case -685620648:
                                                    if (str.equals("{\\an3}")) {
                                                        z4 = true;
                                                        break;
                                                    }
                                                    z4 = true;
                                                    break;
                                                case -685620617:
                                                    if (str.equals("{\\an4}")) {
                                                        z4 = true;
                                                        break;
                                                    }
                                                    z4 = true;
                                                    break;
                                                case -685620586:
                                                    if (str.equals("{\\an5}")) {
                                                        z4 = true;
                                                        break;
                                                    }
                                                    z4 = true;
                                                    break;
                                                case -685620555:
                                                    if (str.equals("{\\an6}")) {
                                                        z4 = true;
                                                        break;
                                                    }
                                                    z4 = true;
                                                    break;
                                                case -685620524:
                                                    if (str.equals("{\\an7}")) {
                                                        z4 = true;
                                                        break;
                                                    }
                                                    z4 = true;
                                                    break;
                                                case -685620493:
                                                    if (str.equals("{\\an8}")) {
                                                        z4 = true;
                                                        break;
                                                    }
                                                    z4 = true;
                                                    break;
                                                case -685620462:
                                                    if (str.equals("{\\an9}")) {
                                                        z4 = true;
                                                        break;
                                                    }
                                                    z4 = true;
                                                    break;
                                                default:
                                                    z4 = true;
                                                    break;
                                            }
                                            int i4 = (!z4 || z4 || z4) ? 2 : (z4 || z4 || z4) ? 0 : 1;
                                            c1856a = new C1856a(fromHtml, null, m41950a(i4), 0, i4, m41950a(i3), i3, Float.MIN_VALUE);
                                        }
                                        arrayList.add(c1856a);
                                        if (z2) {
                                            arrayList.add(C1856a.f7399a);
                                        }
                                    }
                                }
                            } else {
                                String valueOf = String.valueOf(m41515r2);
                                C2009j.m41584a("SubripDecoder", valueOf.length() != 0 ? "Skipping invalid timing: ".concat(valueOf) : new String("Skipping invalid timing: "));
                            }
                        }
                    } catch (NumberFormatException e) {
                        String valueOf2 = String.valueOf(m41515r);
                        C2009j.m41584a("SubripDecoder", valueOf2.length() != 0 ? "Skipping invalid index: ".concat(valueOf2) : new String("Skipping invalid index: "));
                    }
                }
            }
        }
        C1856a[] c1856aArr = new C1856a[arrayList.size()];
        arrayList.toArray(c1856aArr);
        return new C1891b(c1856aArr, c2010k.m41578a());
    }
}
