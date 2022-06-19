package p193e.p1577m.p1578a.p1596c.p1622m1.p1627q;

import android.text.Html;
import android.text.Spanned;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import p193e.p1577m.p1578a.p1596c.p1622m1.AbstractC24563c;
import p193e.p1577m.p1578a.p1596c.p1622m1.AbstractC24565e;
import p193e.p1577m.p1578a.p1596c.p1622m1.C24562b;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24798t;
/* renamed from: e.m.a.c.m1.q.a */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/m1/q/a.class */
public final class C24606a extends AbstractC24563c {

    /* renamed from: p */
    public static final Pattern f68872p = Pattern.compile("\\s*((?:(\\d+):)?(\\d+):(\\d+)(?:,(\\d+))?)\\s*-->\\s*((?:(\\d+):)?(\\d+):(\\d+)(?:,(\\d+))?)\\s*");

    /* renamed from: q */
    public static final Pattern f68873q = Pattern.compile("\\{\\\\.*?\\}");

    /* renamed from: n */
    public final StringBuilder f68874n = new StringBuilder();

    /* renamed from: o */
    public final ArrayList<String> f68875o = new ArrayList<>();

    public C24606a() {
        super("SubripDecoder");
    }

    /* renamed from: k */
    public static float m4856k(int i) {
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

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v10, types: [long] */
    /* JADX WARN: Type inference failed for: r0v15, types: [long] */
    /* JADX WARN: Type inference failed for: r0v18, types: [long] */
    /* JADX WARN: Type inference failed for: r0v24, types: [long] */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Type inference failed for: r10v4 */
    /* JADX WARN: Type inference failed for: r10v5 */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* renamed from: l */
    public static long m4855l(Matcher matcher, int i) {
        String group = matcher.group(i + 1);
        ?? parseLong = (Long.parseLong(matcher.group(i + 3)) * 1000) + (Long.parseLong(matcher.group(i + 2)) * 60 * 1000) + ((group != null ? ((Long.parseLong(group) * 60) * 60) * 1000 : false) == true ? 1L : 0L);
        String group2 = matcher.group(i + 4);
        ?? r10 = parseLong;
        if (group2 != null) {
            r10 = parseLong + Long.parseLong(group2);
        }
        return r10 * 1000;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // p193e.p1577m.p1578a.p1596c.p1622m1.AbstractC24563c
    /* renamed from: j */
    public AbstractC24565e mo4817j(byte[] bArr, int i, boolean z) {
        String str;
        C24562b c24562b;
        boolean z2;
        boolean z3;
        ArrayList arrayList = new ArrayList();
        C24798t c24798t = new C24798t(bArr, i);
        int i2 = 0;
        long[] jArr = new long[32];
        while (true) {
            String m4540f = c24798t.m4540f();
            if (m4540f != null) {
                if (m4540f.length() != 0) {
                    try {
                        Integer.parseInt(m4540f);
                        String m4540f2 = c24798t.m4540f();
                        if (m4540f2 != null) {
                            Matcher matcher = f68872p.matcher(m4540f2);
                            if (matcher.matches()) {
                                long m4855l = m4855l(matcher, 1);
                                long[] jArr2 = jArr;
                                if (i2 == jArr.length) {
                                    jArr2 = Arrays.copyOf(jArr, i2 * 2);
                                }
                                int i3 = i2 + 1;
                                jArr2[i2] = m4855l;
                                long m4855l2 = m4855l(matcher, 6);
                                jArr = jArr2;
                                if (i3 == jArr2.length) {
                                    jArr = Arrays.copyOf(jArr2, i3 * 2);
                                }
                                jArr[i3] = m4855l2;
                                this.f68874n.setLength(0);
                                this.f68875o.clear();
                                String m4540f3 = c24798t.m4540f();
                                while (true) {
                                    String str2 = m4540f3;
                                    if (!TextUtils.isEmpty(str2)) {
                                        if (this.f68874n.length() > 0) {
                                            this.f68874n.append("<br>");
                                        }
                                        StringBuilder sb = this.f68874n;
                                        ArrayList<String> arrayList2 = this.f68875o;
                                        String trim = str2.trim();
                                        StringBuilder sb2 = new StringBuilder(trim);
                                        Matcher matcher2 = f68873q.matcher(trim);
                                        int i4 = 0;
                                        while (true) {
                                            int i5 = i4;
                                            if (matcher2.find()) {
                                                String group = matcher2.group();
                                                arrayList2.add(group);
                                                int start = matcher2.start() - i5;
                                                int length = group.length();
                                                sb2.replace(start, start + length, "");
                                                i4 = i5 + length;
                                            }
                                        }
                                        sb.append(sb2.toString());
                                        m4540f3 = c24798t.m4540f();
                                    } else {
                                        Spanned fromHtml = Html.fromHtml(this.f68874n.toString());
                                        int i6 = 0;
                                        while (true) {
                                            str = null;
                                            if (i6 < this.f68875o.size()) {
                                                str = this.f68875o.get(i6);
                                                if (!str.matches("\\{\\\\an[1-9]\\}")) {
                                                    i6++;
                                                }
                                            }
                                        }
                                        if (str == null) {
                                            c24562b = new C24562b(fromHtml);
                                        } else {
                                            switch (str.hashCode()) {
                                                case -685620710:
                                                    if (str.equals("{\\an1}")) {
                                                        z2 = false;
                                                        break;
                                                    }
                                                    z2 = true;
                                                    break;
                                                case -685620679:
                                                    if (str.equals("{\\an2}")) {
                                                        z2 = true;
                                                        break;
                                                    }
                                                    z2 = true;
                                                    break;
                                                case -685620648:
                                                    if (str.equals("{\\an3}")) {
                                                        z2 = true;
                                                        break;
                                                    }
                                                    z2 = true;
                                                    break;
                                                case -685620617:
                                                    if (str.equals("{\\an4}")) {
                                                        z2 = true;
                                                        break;
                                                    }
                                                    z2 = true;
                                                    break;
                                                case -685620586:
                                                    if (str.equals("{\\an5}")) {
                                                        z2 = true;
                                                        break;
                                                    }
                                                    z2 = true;
                                                    break;
                                                case -685620555:
                                                    if (str.equals("{\\an6}")) {
                                                        z2 = true;
                                                        break;
                                                    }
                                                    z2 = true;
                                                    break;
                                                case -685620524:
                                                    if (str.equals("{\\an7}")) {
                                                        z2 = true;
                                                        break;
                                                    }
                                                    z2 = true;
                                                    break;
                                                case -685620493:
                                                    if (str.equals("{\\an8}")) {
                                                        z2 = true;
                                                        break;
                                                    }
                                                    z2 = true;
                                                    break;
                                                case -685620462:
                                                    if (str.equals("{\\an9}")) {
                                                        z2 = true;
                                                        break;
                                                    }
                                                    z2 = true;
                                                    break;
                                                default:
                                                    z2 = true;
                                                    break;
                                            }
                                            int i7 = (!z2 || z2 || z2) ? 0 : (z2 || z2 || z2) ? 2 : 1;
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
                                            int i8 = (!z3 || z3 || z3) ? 2 : (z3 || z3 || z3) ? 0 : 1;
                                            c24562b = new C24562b(fromHtml, null, m4856k(i8), 0, i8, m4856k(i7), i7, -3.4028235E38f);
                                        }
                                        arrayList.add(c24562b);
                                        arrayList.add(C24562b.f68658o);
                                        i2 = i3 + 1;
                                    }
                                }
                            }
                        }
                    } catch (NumberFormatException e) {
                    }
                }
            }
        }
        C24562b[] c24562bArr = new C24562b[arrayList.size()];
        arrayList.toArray(c24562bArr);
        return new C24607b(c24562bArr, Arrays.copyOf(jArr, i2));
    }
}
