package com.google.android.exoplayer2.text.p255o;

import android.graphics.PointF;
import android.text.Layout;
import com.google.android.exoplayer2.text.AbstractC5318c;
import com.google.android.exoplayer2.text.AbstractC5320e;
import com.google.android.exoplayer2.text.C5317b;
import com.google.android.exoplayer2.text.p255o.C5358c;
import com.google.android.exoplayer2.util.C5508e;
import com.google.android.exoplayer2.util.C5515h0;
import com.google.android.exoplayer2.util.C5526o;
import com.google.android.exoplayer2.util.C5536v;
import com.yanzhenjie.nohttp.BuildConfig;
import com.zhy.http.okhttp.OkHttpUtils;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* renamed from: com.google.android.exoplayer2.text.o.a */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/text/o/a.class */
public final class C5356a extends AbstractC5318c {

    /* renamed from: o */
    private static final Pattern f17100o = Pattern.compile("(?:(\\d+):)?(\\d+):(\\d+)[:.](\\d+)");

    /* renamed from: p */
    private final boolean f17101p;

    /* renamed from: q */
    private final C5357b f17102q;

    /* renamed from: r */
    private Map<String, C5358c> f17103r;

    /* renamed from: s */
    private float f17104s = -3.4028235E38f;

    /* renamed from: t */
    private float f17105t = -3.4028235E38f;

    public C5356a(List<byte[]> list) {
        super("SsaDecoder");
        if (list == null || list.isEmpty()) {
            this.f17101p = false;
            this.f17102q = null;
            return;
        }
        this.f17101p = true;
        String m18803v = C5515h0.m18803v(list.get(0));
        C5508e.m18915a(m18803v.startsWith("Format:"));
        this.f17102q = (C5357b) C5508e.m18911e(C5357b.m19530a(m18803v));
        m19537H(new C5536v(list.get(1)));
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
    /* renamed from: C */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static int m19542C(long r5, java.util.List<java.lang.Long> r7, java.util.List<java.util.List<com.google.android.exoplayer2.text.C5317b>> r8) {
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.text.p255o.C5356a.m19542C(long, java.util.List, java.util.List):int");
    }

    /* renamed from: D */
    private static float m19541D(int i) {
        if (i != 0) {
            if (i == 1) {
                return 0.5f;
            }
            return i != 2 ? -3.4028235E38f : 0.95f;
        }
        return 0.05f;
    }

    /* renamed from: E */
    private static C5317b m19540E(String str, C5358c c5358c, C5358c.C5360b c5360b, float f, float f2) {
        float f3;
        float f4;
        int i = c5360b.f17120e;
        if (i == -1) {
            i = c5358c != null ? c5358c.f17112b : -1;
        }
        int m19532M = m19532M(i);
        int m19533L = m19533L(i);
        PointF pointF = c5360b.f17121f;
        if (pointF == null || f2 == -3.4028235E38f || f == -3.4028235E38f) {
            f4 = m19541D(m19532M);
            f3 = m19541D(m19533L);
        } else {
            f4 = pointF.x / f;
            f3 = pointF.y / f2;
        }
        return new C5317b(str, m19531N(i), f3, 0, m19533L, f4, m19532M, -3.4028235E38f);
    }

    /* renamed from: F */
    private void m19539F(String str, C5357b c5357b, List<List<C5317b>> list, List<Long> list2) {
        int i;
        C5508e.m18915a(str.startsWith("Dialogue:"));
        String[] split = str.substring(9).split(",", c5357b.f17110e);
        if (split.length != c5357b.f17110e) {
            C5526o.m18742f("SsaDecoder", "Skipping dialogue line with fewer columns than format: " + str);
            return;
        }
        long m19534K = m19534K(split[c5357b.f17106a]);
        if (m19534K == -9223372036854775807L) {
            C5526o.m18742f("SsaDecoder", "Skipping invalid timing: " + str);
            return;
        }
        long m19534K2 = m19534K(split[c5357b.f17107b]);
        if (m19534K2 == -9223372036854775807L) {
            C5526o.m18742f("SsaDecoder", "Skipping invalid timing: " + str);
            return;
        }
        Map<String, C5358c> map = this.f17103r;
        C5358c c5358c = (map == null || (i = c5357b.f17108c) == -1) ? null : map.get(split[i].trim());
        String str2 = split[c5357b.f17109d];
        C5317b m19540E = m19540E(C5358c.C5360b.m19521d(str2).replaceAll("\\\\N", "\n").replaceAll("\\\\n", "\n"), c5358c, C5358c.C5360b.m19523b(str2), this.f17104s, this.f17105t);
        int m19542C = m19542C(m19534K2, list2, list);
        for (int m19542C2 = m19542C(m19534K, list2, list); m19542C2 < m19542C; m19542C2++) {
            list.get(m19542C2).add(m19540E);
        }
    }

    /* renamed from: G */
    private void m19538G(C5536v c5536v, List<List<C5317b>> list, List<Long> list2) {
        C5357b c5357b = this.f17101p ? this.f17102q : null;
        while (true) {
            String m18666m = c5536v.m18666m();
            if (m18666m != null) {
                if (m18666m.startsWith("Format:")) {
                    c5357b = C5357b.m19530a(m18666m);
                } else if (m18666m.startsWith("Dialogue:")) {
                    if (c5357b == null) {
                        C5526o.m18742f("SsaDecoder", "Skipping dialogue line before complete format: " + m18666m);
                    } else {
                        m19539F(m18666m, c5357b, list, list2);
                    }
                }
            } else {
                return;
            }
        }
    }

    /* renamed from: H */
    private void m19537H(C5536v c5536v) {
        while (true) {
            String m18666m = c5536v.m18666m();
            if (m18666m != null) {
                if ("[Script Info]".equalsIgnoreCase(m18666m)) {
                    m19536I(c5536v);
                } else if ("[V4+ Styles]".equalsIgnoreCase(m18666m)) {
                    this.f17103r = m19535J(c5536v);
                } else if ("[V4 Styles]".equalsIgnoreCase(m18666m)) {
                    C5526o.m18743e("SsaDecoder", "[V4 Styles] are not supported");
                } else if ("[Events]".equalsIgnoreCase(m18666m)) {
                    return;
                }
            } else {
                return;
            }
        }
    }

    /* renamed from: I */
    private void m19536I(C5536v c5536v) {
        while (true) {
            String m18666m = c5536v.m18666m();
            if (m18666m != null) {
                if (c5536v.m18678a() != 0 && c5536v.m18673f() == 91) {
                    return;
                }
                String[] split = m18666m.split(":");
                if (split.length == 2) {
                    String m18804u0 = C5515h0.m18804u0(split[0].trim());
                    m18804u0.hashCode();
                    if (m18804u0.equals("playresx")) {
                        this.f17104s = Float.parseFloat(split[1].trim());
                    } else if (m18804u0.equals("playresy")) {
                        try {
                            this.f17105t = Float.parseFloat(split[1].trim());
                        } catch (NumberFormatException e) {
                        }
                    }
                }
            } else {
                return;
            }
        }
    }

    /* renamed from: J */
    private static Map<String, C5358c> m19535J(C5536v c5536v) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        C5358c.C5359a c5359a = null;
        while (true) {
            String m18666m = c5536v.m18666m();
            if (m18666m == null || (c5536v.m18678a() != 0 && c5536v.m18673f() == 91)) {
                break;
            } else if (m18666m.startsWith("Format:")) {
                c5359a = C5358c.C5359a.m19525a(m18666m);
            } else if (m18666m.startsWith("Style:")) {
                if (c5359a == null) {
                    C5526o.m18742f("SsaDecoder", "Skipping 'Style:' line before 'Format:' line: " + m18666m);
                } else {
                    C5358c m19528b = C5358c.m19528b(m18666m, c5359a);
                    if (m19528b != null) {
                        linkedHashMap.put(m19528b.f17111a, m19528b);
                    }
                }
            }
        }
        return linkedHashMap;
    }

    /* renamed from: K */
    private static long m19534K(String str) {
        Matcher matcher = f17100o.matcher(str.trim());
        if (!matcher.matches()) {
            return -9223372036854775807L;
        }
        return (Long.parseLong((String) C5515h0.m18833g(matcher.group(1))) * 60 * 60 * 1000000) + (Long.parseLong((String) C5515h0.m18833g(matcher.group(2))) * 60 * 1000000) + (Long.parseLong((String) C5515h0.m18833g(matcher.group(3))) * 1000000) + (Long.parseLong((String) C5515h0.m18833g(matcher.group(4))) * OkHttpUtils.DEFAULT_MILLISECONDS);
    }

    /* renamed from: L */
    private static int m19533L(int i) {
        switch (i) {
            case BuildConfig.VERSION_CODE /* -1 */:
                return Integer.MIN_VALUE;
            case 0:
            default:
                C5526o.m18742f("SsaDecoder", "Unknown alignment: " + i);
                return Integer.MIN_VALUE;
            case 1:
            case 2:
            case 3:
                return 2;
            case 4:
            case 5:
            case 6:
                return 1;
            case 7:
            case 8:
            case 9:
                return 0;
        }
    }

    /* renamed from: M */
    private static int m19532M(int i) {
        switch (i) {
            case BuildConfig.VERSION_CODE /* -1 */:
                return Integer.MIN_VALUE;
            case 0:
            default:
                C5526o.m18742f("SsaDecoder", "Unknown alignment: " + i);
                return Integer.MIN_VALUE;
            case 1:
            case 4:
            case 7:
                return 0;
            case 2:
            case 5:
            case 8:
                return 1;
            case 3:
            case 6:
            case 9:
                return 2;
        }
    }

    /* renamed from: N */
    private static Layout.Alignment m19531N(int i) {
        switch (i) {
            case BuildConfig.VERSION_CODE /* -1 */:
                return null;
            case 0:
            default:
                C5526o.m18742f("SsaDecoder", "Unknown alignment: " + i);
                return null;
            case 1:
            case 4:
            case 7:
                return Layout.Alignment.ALIGN_NORMAL;
            case 2:
            case 5:
            case 8:
                return Layout.Alignment.ALIGN_CENTER;
            case 3:
            case 6:
            case 9:
                return Layout.Alignment.ALIGN_OPPOSITE;
        }
    }

    @Override // com.google.android.exoplayer2.text.AbstractC5318c
    /* renamed from: z */
    protected AbstractC5320e mo19377z(byte[] bArr, int i, boolean z) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        C5536v c5536v = new C5536v(bArr, i);
        if (!this.f17101p) {
            m19537H(c5536v);
        }
        m19538G(c5536v, arrayList, arrayList2);
        return new C5361d(arrayList, arrayList2);
    }
}
