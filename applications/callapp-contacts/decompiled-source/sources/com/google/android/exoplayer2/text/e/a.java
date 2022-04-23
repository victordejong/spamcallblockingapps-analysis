package com.google.android.exoplayer2.text.e;

import android.text.Layout;
import android.text.SpannableString;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import com.callapp.contacts.activity.base.BaseViewTypeData;
import com.google.android.exoplayer2.text.b;
import com.google.android.exoplayer2.text.c;
import com.google.android.exoplayer2.text.e;
import com.google.android.exoplayer2.text.e.c;
import com.google.android.exoplayer2.util.af;
import com.google.android.exoplayer2.util.n;
import com.google.android.exoplayer2.util.u;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.commons.lang3.StringUtils;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/text/e/a.class */
public final class a extends c {

    /* renamed from: a  reason: collision with root package name */
    private static final Pattern f21793a = Pattern.compile("(?:(\\d+):)?(\\d+):(\\d+)[:.](\\d+)");

    /* renamed from: b  reason: collision with root package name */
    private final boolean f21794b;

    /* renamed from: c  reason: collision with root package name */
    private final b f21795c;

    /* renamed from: d  reason: collision with root package name */
    private Map<String, c> f21796d;
    private float e;
    private float f;

    public a() {
        this(null);
    }

    public a(List<byte[]> list) {
        super("SsaDecoder");
        this.e = -3.4028235E38f;
        this.f = -3.4028235E38f;
        if (list == null || list.isEmpty()) {
            this.f21794b = false;
            this.f21795c = null;
            return;
        }
        this.f21794b = true;
        String a2 = af.a(list.get(0));
        com.google.android.exoplayer2.util.a.a(a2.startsWith("Format:"));
        this.f21795c = (b) com.google.android.exoplayer2.util.a.b(b.a(a2));
        a(new u(list.get(1)));
    }

    private static float a(int i) {
        if (i == 0) {
            return 0.05f;
        }
        if (i != 1) {
            return i != 2 ? -3.4028235E38f : 0.95f;
        }
        return 0.5f;
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0047, code lost:
        r7.add(r9, java.lang.Long.valueOf(r5));
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0059, code lost:
        if (r9 != 0) goto L_0x0063;
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
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static int a(long r5, java.util.List<java.lang.Long> r7, java.util.List<java.util.List<com.google.android.exoplayer2.text.b>> r8) {
        /*
            r0 = r7
            int r0 = r0.size()
            r1 = 1
            int r0 = r0 - r1
            r9 = r0
        L_0x000a:
            r0 = r9
            if (r0 < 0) goto L_0x0044
            r0 = r7
            r1 = r9
            java.lang.Object r0 = r0.get(r1)
            java.lang.Long r0 = (java.lang.Long) r0
            long r0 = r0.longValue()
            r1 = r5
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0025
            r0 = r9
            return r0
        L_0x0025:
            r0 = r7
            r1 = r9
            java.lang.Object r0 = r0.get(r1)
            java.lang.Long r0 = (java.lang.Long) r0
            long r0 = r0.longValue()
            r1 = r5
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x003e
            int r9 = r9 + 1
            goto L_0x0047
        L_0x003e:
            int r9 = r9 + (-1)
            goto L_0x000a
        L_0x0044:
            r0 = 0
            r9 = r0
        L_0x0047:
            r0 = r7
            r1 = r9
            r2 = r5
            java.lang.Long r2 = java.lang.Long.valueOf(r2)
            r0.add(r1, r2)
            java.util.ArrayList r0 = new java.util.ArrayList
            r7 = r0
            r0 = r9
            if (r0 != 0) goto L_0x0063
            r0 = r7
            r0.<init>()
            goto L_0x0074
        L_0x0063:
            r0 = r7
            r1 = r8
            r2 = r9
            r3 = 1
            int r2 = r2 - r3
            java.lang.Object r1 = r1.get(r2)
            java.util.Collection r1 = (java.util.Collection) r1
            r0.<init>(r1)
        L_0x0074:
            r0 = r8
            r1 = r9
            r2 = r7
            r0.add(r1, r2)
            r0 = r9
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.text.e.a.a(long, java.util.List, java.util.List):int");
    }

    private static long a(String str) {
        Matcher matcher = f21793a.matcher(str.trim());
        if (!matcher.matches()) {
            return -9223372036854775807L;
        }
        return (Long.parseLong((String) af.a(matcher.group(1))) * 60 * 60 * 1000000) + (Long.parseLong((String) af.a(matcher.group(2))) * 60 * 1000000) + (Long.parseLong((String) af.a(matcher.group(3))) * 1000000) + (Long.parseLong((String) af.a(matcher.group(4))) * 10000);
    }

    private void a(u uVar) {
        while (true) {
            String t = uVar.t();
            if (t == null) {
                return;
            }
            if ("[Script Info]".equalsIgnoreCase(t)) {
                b(uVar);
            } else if ("[V4+ Styles]".equalsIgnoreCase(t)) {
                this.f21796d = c(uVar);
            } else if ("[V4 Styles]".equalsIgnoreCase(t)) {
                n.b();
            } else if ("[Events]".equalsIgnoreCase(t)) {
                return;
            }
        }
    }

    private void a(u uVar, List<List<b>> list, List<Long> list2) {
        b bVar = this.f21794b ? this.f21795c : null;
        while (true) {
            String t = uVar.t();
            if (t == null) {
                return;
            }
            if (t.startsWith("Format:")) {
                bVar = b.a(t);
            } else if (t.startsWith("Dialogue:")) {
                if (bVar == null) {
                    n.a("SsaDecoder", "Skipping dialogue line before complete format: ".concat(String.valueOf(t)));
                } else {
                    a(t, bVar, list, list2);
                }
            }
        }
    }

    private void a(String str, b bVar, List<List<b>> list, List<Long> list2) {
        Layout.Alignment alignment;
        int i;
        int i2;
        com.google.android.exoplayer2.util.a.a(str.startsWith("Dialogue:"));
        String[] split = str.substring(9).split(",", bVar.e);
        if (split.length != bVar.e) {
            n.a("SsaDecoder", "Skipping dialogue line with fewer columns than format: ".concat(String.valueOf(str)));
            return;
        }
        long a2 = a(split[bVar.f21797a]);
        if (a2 == -9223372036854775807L) {
            n.a("SsaDecoder", "Skipping invalid timing: ".concat(String.valueOf(str)));
            return;
        }
        long a3 = a(split[bVar.f21798b]);
        if (a3 == -9223372036854775807L) {
            n.a("SsaDecoder", "Skipping invalid timing: ".concat(String.valueOf(str)));
            return;
        }
        c cVar = (this.f21796d == null || bVar.f21799c == -1) ? null : this.f21796d.get(split[bVar.f21799c].trim());
        String str2 = split[bVar.f21800d];
        c.b a4 = c.b.a(str2);
        String replace = c.b.b(str2).replace("\\N", StringUtils.LF).replace("\\n", StringUtils.LF).replace("\\h", " ");
        float f = this.e;
        float f2 = this.f;
        SpannableString spannableString = new SpannableString(replace);
        b.a aVar = new b.a();
        aVar.f21738a = spannableString;
        if (cVar != null) {
            if (cVar.f21803c != null) {
                spannableString.setSpan(new ForegroundColorSpan(cVar.f21803c.intValue()), 0, spannableString.length(), 33);
            }
            if (!(cVar.f21804d == -3.4028235E38f || f2 == -3.4028235E38f)) {
                aVar.b(cVar.f21804d / f2, 1);
            }
            if (cVar.e && cVar.f) {
                spannableString.setSpan(new StyleSpan(3), 0, spannableString.length(), 33);
            } else if (cVar.e) {
                spannableString.setSpan(new StyleSpan(1), 0, spannableString.length(), 33);
            } else if (cVar.f) {
                spannableString.setSpan(new StyleSpan(2), 0, spannableString.length(), 33);
            }
        }
        int i3 = -1;
        if (a4.f21811a != -1) {
            i3 = a4.f21811a;
        } else if (cVar != null) {
            i3 = cVar.f21802b;
        }
        switch (i3) {
            case 0:
            default:
                n.a("SsaDecoder", "Unknown alignment: ".concat(String.valueOf(i3)));
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
        aVar.f21740c = alignment;
        switch (i3) {
            case 0:
            default:
                n.a("SsaDecoder", "Unknown alignment: ".concat(String.valueOf(i3)));
            case -1:
                i = BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;
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
        aVar.f = i;
        switch (i3) {
            case 0:
            default:
                n.a("SsaDecoder", "Unknown alignment: ".concat(String.valueOf(i3)));
            case -1:
                i2 = BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;
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
        aVar.f21741d = i2;
        if (a4.f21812b == null || f2 == -3.4028235E38f || f == -3.4028235E38f) {
            aVar.e = a(aVar.f);
            aVar.a(a(aVar.f21741d), 0);
        } else {
            aVar.e = a4.f21812b.x / f;
            aVar.a(a4.f21812b.y / f2, 0);
        }
        b a5 = aVar.a();
        int a6 = a(a3, list2, list);
        for (int a7 = a(a2, list2, list); a7 < a6; a7++) {
            list.get(a7).add(a5);
        }
    }

    private void b(u uVar) {
        while (true) {
            String t = uVar.t();
            if (t == null) {
                return;
            }
            if (uVar.a() == 0 || uVar.b() != 91) {
                String[] split = t.split(":");
                if (split.length == 2) {
                    String d2 = af.d(split[0].trim());
                    d2.hashCode();
                    if (d2.equals("playresx")) {
                        this.e = Float.parseFloat(split[1].trim());
                    } else if (d2.equals("playresy")) {
                        try {
                            this.f = Float.parseFloat(split[1].trim());
                        } catch (NumberFormatException e) {
                        }
                    }
                }
            } else {
                return;
            }
        }
    }

    private static Map<String, c> c(u uVar) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        c.a aVar = null;
        while (true) {
            String t = uVar.t();
            if (t == null || (uVar.a() != 0 && uVar.b() == 91)) {
                break;
            } else if (t.startsWith("Format:")) {
                aVar = c.a.a(t);
            } else if (t.startsWith("Style:")) {
                if (aVar == null) {
                    n.a("SsaDecoder", "Skipping 'Style:' line before 'Format:' line: ".concat(String.valueOf(t)));
                } else {
                    c a2 = c.a(t, aVar);
                    if (a2 != null) {
                        linkedHashMap.put(a2.f21801a, a2);
                    }
                }
            }
        }
        return linkedHashMap;
    }

    @Override // com.google.android.exoplayer2.text.c
    public final e a(byte[] bArr, int i, boolean z) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        u uVar = new u(bArr, i);
        if (!this.f21794b) {
            a(uVar);
        }
        a(uVar, arrayList, arrayList2);
        return new d(arrayList, arrayList2);
    }
}
