package com.google.android.exoplayer2.text.p341e;

import android.text.Layout;
import android.text.SpannableString;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import com.google.android.exoplayer2.text.AbstractC11370c;
import com.google.android.exoplayer2.text.AbstractC11379e;
import com.google.android.exoplayer2.text.C11356b;
import com.google.android.exoplayer2.text.p341e.C11382c;
import com.google.android.exoplayer2.util.C11593a;
import com.google.android.exoplayer2.util.C11599af;
import com.google.android.exoplayer2.util.C11617n;
import com.google.android.exoplayer2.util.C11628u;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.commons.lang3.StringUtils;
/* renamed from: com.google.android.exoplayer2.text.e.a */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/text/e/a.class */
public final class C11380a extends AbstractC11370c {

    /* renamed from: a */
    private static final Pattern f37523a = Pattern.compile("(?:(\\d+):)?(\\d+):(\\d+)[:.](\\d+)");

    /* renamed from: b */
    private final boolean f37524b;

    /* renamed from: c */
    private final C11381b f37525c;

    /* renamed from: d */
    private Map<String, C11382c> f37526d;

    /* renamed from: e */
    private float f37527e;

    /* renamed from: f */
    private float f37528f;

    public C11380a() {
        this(null);
    }

    public C11380a(List<byte[]> list) {
        super("SsaDecoder");
        this.f37527e = -3.4028235E38f;
        this.f37528f = -3.4028235E38f;
        if (list == null || list.isEmpty()) {
            this.f37524b = false;
            this.f37525c = null;
            return;
        }
        this.f37524b = true;
        String m19961a = C11599af.m19961a(list.get(0));
        C11593a.m20022a(m19961a.startsWith("Format:"));
        this.f37525c = (C11381b) C11593a.m20020b(C11381b.m20713a(m19961a));
        m20719a(new C11628u(list.get(1)));
    }

    /* renamed from: a */
    private static float m20721a(int i) {
        if (i != 0) {
            if (i == 1) {
                return 0.5f;
            }
            return i != 2 ? -3.4028235E38f : 0.95f;
        }
        return 0.05f;
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
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static int m20720a(long r5, java.util.List<java.lang.Long> r7, java.util.List<java.util.List<com.google.android.exoplayer2.text.C11356b>> r8) {
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.text.p341e.C11380a.m20720a(long, java.util.List, java.util.List):int");
    }

    /* renamed from: a */
    private static long m20717a(String str) {
        Matcher matcher = f37523a.matcher(str.trim());
        if (!matcher.matches()) {
            return -9223372036854775807L;
        }
        return (Long.parseLong((String) C11599af.m19974a(matcher.group(1))) * 60 * 60 * 1000000) + (Long.parseLong((String) C11599af.m19974a(matcher.group(2))) * 60 * 1000000) + (Long.parseLong((String) C11599af.m19974a(matcher.group(3))) * 1000000) + (Long.parseLong((String) C11599af.m19974a(matcher.group(4))) * 10000);
    }

    /* renamed from: a */
    private void m20719a(C11628u c11628u) {
        while (true) {
            String m19782t = c11628u.m19782t();
            if (m19782t != null) {
                if ("[Script Info]".equalsIgnoreCase(m19782t)) {
                    m20715b(c11628u);
                } else if ("[V4+ Styles]".equalsIgnoreCase(m19782t)) {
                    this.f37526d = m20714c(c11628u);
                } else if ("[V4 Styles]".equalsIgnoreCase(m19782t)) {
                    C11617n.m19859b();
                } else if ("[Events]".equalsIgnoreCase(m19782t)) {
                    return;
                }
            } else {
                return;
            }
        }
    }

    /* renamed from: a */
    private void m20718a(C11628u c11628u, List<List<C11356b>> list, List<Long> list2) {
        C11381b c11381b = this.f37524b ? this.f37525c : null;
        while (true) {
            String m19782t = c11628u.m19782t();
            if (m19782t != null) {
                if (m19782t.startsWith("Format:")) {
                    c11381b = C11381b.m20713a(m19782t);
                } else if (m19782t.startsWith("Dialogue:")) {
                    if (c11381b == null) {
                        C11617n.m19863a("SsaDecoder", "Skipping dialogue line before complete format: ".concat(String.valueOf(m19782t)));
                    } else {
                        m20716a(m19782t, c11381b, list, list2);
                    }
                }
            } else {
                return;
            }
        }
    }

    /* renamed from: a */
    private void m20716a(String str, C11381b c11381b, List<List<C11356b>> list, List<Long> list2) {
        Layout.Alignment alignment;
        int i;
        int i2;
        C11593a.m20022a(str.startsWith("Dialogue:"));
        String[] split = str.substring(9).split(",", c11381b.f37533e);
        if (split.length != c11381b.f37533e) {
            C11617n.m19863a("SsaDecoder", "Skipping dialogue line with fewer columns than format: ".concat(String.valueOf(str)));
            return;
        }
        long m20717a = m20717a(split[c11381b.f37529a]);
        if (m20717a == -9223372036854775807L) {
            C11617n.m19863a("SsaDecoder", "Skipping invalid timing: ".concat(String.valueOf(str)));
            return;
        }
        long m20717a2 = m20717a(split[c11381b.f37530b]);
        if (m20717a2 == -9223372036854775807L) {
            C11617n.m19863a("SsaDecoder", "Skipping invalid timing: ".concat(String.valueOf(str)));
            return;
        }
        C11382c c11382c = (this.f37526d == null || c11381b.f37531c == -1) ? null : this.f37526d.get(split[c11381b.f37531c].trim());
        String str2 = split[c11381b.f37532d];
        C11382c.C11384b m20706a = C11382c.C11384b.m20706a(str2);
        String replace = C11382c.C11384b.m20705b(str2).replace("\\N", StringUtils.f67179LF).replace("\\n", StringUtils.f67179LF).replace("\\h", " ");
        float f = this.f37527e;
        float f2 = this.f37528f;
        SpannableString spannableString = new SpannableString(replace);
        C11356b.C11358a c11358a = new C11356b.C11358a();
        c11358a.f37428a = spannableString;
        if (c11382c != null) {
            if (c11382c.f37536c != null) {
                spannableString.setSpan(new ForegroundColorSpan(c11382c.f37536c.intValue()), 0, spannableString.length(), 33);
            }
            if (c11382c.f37537d != -3.4028235E38f && f2 != -3.4028235E38f) {
                c11358a.m20742b(c11382c.f37537d / f2, 1);
            }
            if (c11382c.f37538e && c11382c.f37539f) {
                spannableString.setSpan(new StyleSpan(3), 0, spannableString.length(), 33);
            } else if (c11382c.f37538e) {
                spannableString.setSpan(new StyleSpan(1), 0, spannableString.length(), 33);
            } else if (c11382c.f37539f) {
                spannableString.setSpan(new StyleSpan(2), 0, spannableString.length(), 33);
            }
        }
        int i3 = -1;
        if (m20706a.f37551a != -1) {
            i3 = m20706a.f37551a;
        } else if (c11382c != null) {
            i3 = c11382c.f37535b;
        }
        switch (i3) {
            case 0:
            default:
                C11617n.m19863a("SsaDecoder", "Unknown alignment: ".concat(String.valueOf(i3)));
            case -1:
                alignment = null;
                break;
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
        }
        c11358a.f37430c = alignment;
        switch (i3) {
            case 0:
            default:
                C11617n.m19863a("SsaDecoder", "Unknown alignment: ".concat(String.valueOf(i3)));
            case -1:
                i = Integer.MIN_VALUE;
                break;
            case 1:
            case 4:
            case 7:
                i = 0;
                break;
            case 2:
            case 5:
            case 8:
                i = 1;
                break;
            case 3:
            case 6:
            case 9:
                i = 2;
                break;
        }
        c11358a.f37433f = i;
        switch (i3) {
            case 0:
            default:
                C11617n.m19863a("SsaDecoder", "Unknown alignment: ".concat(String.valueOf(i3)));
            case -1:
                i2 = Integer.MIN_VALUE;
                break;
            case 1:
            case 2:
            case 3:
                i2 = 2;
                break;
            case 4:
            case 5:
            case 6:
                i2 = 1;
                break;
            case 7:
            case 8:
            case 9:
                i2 = 0;
                break;
        }
        c11358a.f37431d = i2;
        if (m20706a.f37552b == null || f2 == -3.4028235E38f || f == -3.4028235E38f) {
            c11358a.f37432e = m20721a(c11358a.f37433f);
            c11358a.m20743a(m20721a(c11358a.f37431d), 0);
        } else {
            c11358a.f37432e = m20706a.f37552b.x / f;
            c11358a.m20743a(m20706a.f37552b.y / f2, 0);
        }
        C11356b m20744a = c11358a.m20744a();
        int m20720a = m20720a(m20717a2, list2, list);
        for (int m20720a2 = m20720a(m20717a, list2, list); m20720a2 < m20720a; m20720a2++) {
            list.get(m20720a2).add(m20744a);
        }
    }

    /* renamed from: b */
    private void m20715b(C11628u c11628u) {
        while (true) {
            String m19782t = c11628u.m19782t();
            if (m19782t != null) {
                if (c11628u.m19812a() != 0 && c11628u.m19806b() == 91) {
                    return;
                }
                String[] split = m19782t.split(":");
                if (split.length == 2) {
                    String m19927d = C11599af.m19927d(split[0].trim());
                    m19927d.hashCode();
                    if (m19927d.equals("playresx")) {
                        this.f37527e = Float.parseFloat(split[1].trim());
                    } else if (m19927d.equals("playresy")) {
                        try {
                            this.f37528f = Float.parseFloat(split[1].trim());
                        } catch (NumberFormatException e) {
                        }
                    }
                }
            } else {
                return;
            }
        }
    }

    /* renamed from: c */
    private static Map<String, C11382c> m20714c(C11628u c11628u) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        C11382c.C11383a c11383a = null;
        while (true) {
            String m19782t = c11628u.m19782t();
            if (m19782t == null || (c11628u.m19812a() != 0 && c11628u.m19806b() == 91)) {
                break;
            } else if (m19782t.startsWith("Format:")) {
                c11383a = C11382c.C11383a.m20707a(m19782t);
            } else if (m19782t.startsWith("Style:")) {
                if (c11383a == null) {
                    C11617n.m19863a("SsaDecoder", "Skipping 'Style:' line before 'Format:' line: ".concat(String.valueOf(m19782t)));
                } else {
                    C11382c m20711a = C11382c.m20711a(m19782t, c11383a);
                    if (m20711a != null) {
                        linkedHashMap.put(m20711a.f37534a, m20711a);
                    }
                }
            }
        }
        return linkedHashMap;
    }

    @Override // com.google.android.exoplayer2.text.AbstractC11370c
    /* renamed from: a */
    public final AbstractC11379e mo20622a(byte[] bArr, int i, boolean z) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        C11628u c11628u = new C11628u(bArr, i);
        if (!this.f37524b) {
            m20719a(c11628u);
        }
        m20718a(c11628u, arrayList, arrayList2);
        return new C11385d(arrayList, arrayList2);
    }
}
