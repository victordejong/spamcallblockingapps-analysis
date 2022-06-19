package p193e.p1577m.p1578a.p1596c.p1622m1.p1626p;

import android.graphics.PointF;
import android.text.Layout;
import com.tenor.android.core.constant.StringConstant;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import p1727n3.p1789g0.C26232y;
import p193e.p1577m.p1578a.p1596c.p1622m1.AbstractC24563c;
import p193e.p1577m.p1578a.p1596c.p1622m1.AbstractC24565e;
import p193e.p1577m.p1578a.p1596c.p1622m1.C24562b;
import p193e.p1577m.p1578a.p1596c.p1622m1.p1626p.C24602c;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24773d0;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24798t;
/* renamed from: e.m.a.c.m1.p.a */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/m1/p/a.class */
public final class C24600a extends AbstractC24563c {

    /* renamed from: s */
    public static final Pattern f68848s = Pattern.compile("(?:(\\d+):)?(\\d+):(\\d+)[:.](\\d+)");

    /* renamed from: n */
    public final boolean f68849n;

    /* renamed from: o */
    public final C24601b f68850o;

    /* renamed from: p */
    public Map<String, C24602c> f68851p;

    /* renamed from: q */
    public float f68852q = -3.4028235E38f;

    /* renamed from: r */
    public float f68853r = -3.4028235E38f;

    public C24600a(List<byte[]> list) {
        super("SsaDecoder");
        if (list == null || list.isEmpty()) {
            this.f68849n = false;
            this.f68850o = null;
            return;
        }
        this.f68849n = true;
        byte[] bArr = list.get(0);
        int i = C24773d0.f69427a;
        String str = new String(bArr, Charset.forName(StringConstant.UTF8));
        C26232y.m2310r(str.startsWith("Format:"));
        C24601b m4859a = C24601b.m4859a(str);
        Objects.requireNonNull(m4859a);
        this.f68850o = m4859a;
        m4861m(new C24798t(list.get(1)));
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0047, code lost:
        r7.add(r9, java.lang.Long.valueOf(r5));
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0059, code lost:
        if (r9 != 0) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x005c, code lost:
        r0 = new java.util.ArrayList();
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0063, code lost:
        r0 = new java.util.ArrayList(r8.get(r9 - 1));
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0074, code lost:
        r8.add(r9, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x007f, code lost:
        return r9;
     */
    /* renamed from: k */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int m4863k(long r5, java.util.List<java.lang.Long> r7, java.util.List<java.util.List<p193e.p1577m.p1578a.p1596c.p1622m1.C24562b>> r8) {
        /*
            r0 = r7
            int r0 = r0.size()
            r1 = 1
            int r0 = r0 - r1
            r9 = r0
        La:
            r0 = r9
            if (r0 < 0) goto L44
            r0 = r7
            r1 = r9
            java.lang.Object r0 = r0.get(r1)
            java.lang.Long r0 = (java.lang.Long) r0
            long r0 = r0.longValue()
            r1 = r5
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L25
            r0 = r9
            return r0
        L25:
            r0 = r7
            r1 = r9
            java.lang.Object r0 = r0.get(r1)
            java.lang.Long r0 = (java.lang.Long) r0
            long r0 = r0.longValue()
            r1 = r5
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L3e
            int r9 = r9 + 1
            goto L47
        L3e:
            int r9 = r9 + (-1)
            goto La
        L44:
            r0 = 0
            r9 = r0
        L47:
            r0 = r7
            r1 = r9
            r2 = r5
            java.lang.Long r2 = java.lang.Long.valueOf(r2)
            r0.add(r1, r2)
            java.util.ArrayList r0 = new java.util.ArrayList
            r7 = r0
            r0 = r9
            if (r0 != 0) goto L63
            r0 = r7
            r0.<init>()
            goto L74
        L63:
            r0 = r7
            r1 = r8
            r2 = r9
            r3 = 1
            int r2 = r2 - r3
            java.lang.Object r1 = r1.get(r2)
            java.util.Collection r1 = (java.util.Collection) r1
            r0.<init>(r1)
        L74:
            r0 = r8
            r1 = r9
            r2 = r7
            r0.add(r1, r2)
            r0 = r9
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1577m.p1578a.p1596c.p1622m1.p1626p.C24600a.m4863k(long, java.util.List, java.util.List):int");
    }

    /* renamed from: l */
    public static float m4862l(int i) {
        if (i != 0) {
            if (i == 1) {
                return 0.5f;
            }
            return i != 2 ? -3.4028235E38f : 0.95f;
        }
        return 0.05f;
    }

    /* renamed from: n */
    public static long m4860n(String str) {
        Matcher matcher = f68848s.matcher(str.trim());
        if (!matcher.matches()) {
            return -9223372036854775807L;
        }
        String group = matcher.group(1);
        int i = C24773d0.f69427a;
        long parseLong = Long.parseLong(group);
        long parseLong2 = Long.parseLong(matcher.group(2));
        return (Long.parseLong(matcher.group(4)) * 10000) + (Long.parseLong(matcher.group(3)) * 1000000) + (parseLong2 * 60 * 1000000) + (parseLong * 60 * 60 * 1000000);
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1622m1.AbstractC24563c
    /* renamed from: j */
    public AbstractC24565e mo4817j(byte[] bArr, int i, boolean z) {
        int i2;
        int i3;
        float f;
        float f2;
        Layout.Alignment alignment;
        int i4;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        C24798t c24798t = new C24798t(bArr, i);
        if (!this.f68849n) {
            m4861m(c24798t);
        }
        C24601b c24601b = this.f68849n ? this.f68850o : null;
        while (true) {
            String m4540f = c24798t.m4540f();
            if (m4540f != null) {
                if (m4540f.startsWith("Format:")) {
                    c24601b = C24601b.m4859a(m4540f);
                } else if (m4540f.startsWith("Dialogue:") && c24601b != null) {
                    C26232y.m2310r(m4540f.startsWith("Dialogue:"));
                    String[] split = m4540f.substring(9).split(",", c24601b.f68858e);
                    if (split.length == c24601b.f68858e) {
                        long m4860n = m4860n(split[c24601b.f68854a]);
                        if (m4860n != -9223372036854775807L) {
                            long m4860n2 = m4860n(split[c24601b.f68855b]);
                            if (m4860n2 != -9223372036854775807L) {
                                Map<String, C24602c> map = this.f68851p;
                                C24602c c24602c = (map == null || (i4 = c24601b.f68856c) == -1) ? null : map.get(split[i4].trim());
                                String str = split[c24601b.f68857d];
                                Matcher matcher = C24602c.C24604b.f68864c.matcher(str);
                                int i5 = -1;
                                PointF pointF = null;
                                while (matcher.find()) {
                                    String group = matcher.group(1);
                                    try {
                                        PointF m4857a = C24602c.C24604b.m4857a(group);
                                        if (m4857a != null) {
                                            pointF = m4857a;
                                        }
                                    } catch (RuntimeException e) {
                                    }
                                    try {
                                        Matcher matcher2 = C24602c.C24604b.f68867f.matcher(group);
                                        int m4858a = matcher2.find() ? C24602c.m4858a(matcher2.group(1)) : -1;
                                        if (m4858a != -1) {
                                            i5 = m4858a;
                                        }
                                    } catch (RuntimeException e2) {
                                    }
                                }
                                C24602c.C24604b c24604b = new C24602c.C24604b(i5, pointF);
                                String replaceAll = C24602c.C24604b.f68864c.matcher(str).replaceAll("").replaceAll("\\\\N", StringConstant.NEW_LINE).replaceAll("\\\\n", StringConstant.NEW_LINE);
                                float f3 = this.f68852q;
                                float f4 = this.f68853r;
                                int i6 = c24604b.f68868a;
                                if (i6 == -1) {
                                    i6 = c24602c != null ? c24602c.f68860b : -1;
                                }
                                switch (i6) {
                                    case 1:
                                    case 4:
                                    case 7:
                                        i2 = 0;
                                        break;
                                    case 2:
                                    case 5:
                                    case 8:
                                        i2 = 1;
                                        break;
                                    case 3:
                                    case 6:
                                    case 9:
                                        i2 = 2;
                                        break;
                                    default:
                                        i2 = Integer.MIN_VALUE;
                                        break;
                                }
                                switch (i6) {
                                    case 1:
                                    case 2:
                                    case 3:
                                        i3 = 2;
                                        break;
                                    case 4:
                                    case 5:
                                    case 6:
                                        i3 = 1;
                                        break;
                                    case 7:
                                    case 8:
                                    case 9:
                                        i3 = 0;
                                        break;
                                    default:
                                        i3 = Integer.MIN_VALUE;
                                        break;
                                }
                                PointF pointF2 = c24604b.f68869b;
                                if (pointF2 == null || f4 == -3.4028235E38f || f3 == -3.4028235E38f) {
                                    f2 = m4862l(i2);
                                    f = m4862l(i3);
                                } else {
                                    f2 = pointF2.x / f3;
                                    f = pointF2.y / f4;
                                }
                                switch (i6) {
                                    case 1:
                                    case 4:
                                    case 7:
                                        alignment = Layout.Alignment.ALIGN_NORMAL;
                                        break;
                                    case 2:
                                    case 5:
                                    case 8:
                                        alignment = Layout.Alignment.ALIGN_CENTER;
                                        break;
                                    case 3:
                                    case 6:
                                    case 9:
                                        alignment = Layout.Alignment.ALIGN_OPPOSITE;
                                        break;
                                    default:
                                        alignment = null;
                                        break;
                                }
                                C24562b c24562b = new C24562b(replaceAll, alignment, f, 0, i3, f2, i2, -3.4028235E38f);
                                int m4863k = m4863k(m4860n2, arrayList2, arrayList);
                                for (int m4863k2 = m4863k(m4860n, arrayList2, arrayList); m4863k2 < m4863k; m4863k2++) {
                                    ((List) arrayList.get(m4863k2)).add(c24562b);
                                }
                            }
                        }
                    }
                }
            } else {
                return new C24605d(arrayList, arrayList2);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:104:0x0098 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:99:0x01d9 A[SYNTHETIC] */
    /* renamed from: m */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m4861m(p193e.p1577m.p1578a.p1596c.p1636q1.C24798t r7) {
        /*
            Method dump skipped, instructions count: 526
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1577m.p1578a.p1596c.p1622m1.p1626p.C24600a.m4861m(e.m.a.c.q1.t):void");
    }
}
