package com.google.android.exoplayer2.text.p256p;

import android.text.Html;
import android.text.Spanned;
import android.text.TextUtils;
import com.google.android.exoplayer2.text.AbstractC5318c;
import com.google.android.exoplayer2.text.AbstractC5320e;
import com.google.android.exoplayer2.text.C5317b;
import com.google.android.exoplayer2.util.C5526o;
import com.google.android.exoplayer2.util.C5527p;
import com.google.android.exoplayer2.util.C5536v;
import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* renamed from: com.google.android.exoplayer2.text.p.a */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/text/p/a.class */
public final class C5362a extends AbstractC5318c {

    /* renamed from: o */
    private static final Pattern f17124o = Pattern.compile("\\s*((?:(\\d+):)?(\\d+):(\\d+),(\\d+))\\s*-->\\s*((?:(\\d+):)?(\\d+):(\\d+),(\\d+))\\s*");

    /* renamed from: p */
    private static final Pattern f17125p = Pattern.compile("\\{\\\\.*?\\}");

    /* renamed from: q */
    private final StringBuilder f17126q = new StringBuilder();

    /* renamed from: r */
    private final ArrayList<String> f17127r = new ArrayList<>();

    public C5362a() {
        super("SubripDecoder");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* renamed from: C */
    private C5317b m19520C(Spanned spanned, String str) {
        boolean z;
        boolean z2;
        if (str == null) {
            return new C5317b(spanned);
        }
        switch (str.hashCode()) {
            case -685620710:
                if (str.equals("{\\an1}")) {
                    z = false;
                    break;
                }
                z = true;
                break;
            case -685620679:
                if (str.equals("{\\an2}")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case -685620648:
                if (str.equals("{\\an3}")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case -685620617:
                if (str.equals("{\\an4}")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case -685620586:
                if (str.equals("{\\an5}")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case -685620555:
                if (str.equals("{\\an6}")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case -685620524:
                if (str.equals("{\\an7}")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case -685620493:
                if (str.equals("{\\an8}")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case -685620462:
                if (str.equals("{\\an9}")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            default:
                z = true;
                break;
        }
        int i = (!z || z || z) ? 0 : (z || z || z) ? 2 : 1;
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
        int i2 = (!z2 || z2 || z2) ? 2 : (z2 || z2 || z2) ? 0 : 1;
        return new C5317b(spanned, null, m19519D(i2), 0, i2, m19519D(i), i, -3.4028235E38f);
    }

    /* renamed from: D */
    static float m19519D(int i) {
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

    /* renamed from: E */
    private static long m19518E(Matcher matcher, int i) {
        return ((Long.parseLong(matcher.group(i + 1)) * 60 * 60 * 1000) + (Long.parseLong(matcher.group(i + 2)) * 60 * 1000) + (Long.parseLong(matcher.group(i + 3)) * 1000) + Long.parseLong(matcher.group(i + 4))) * 1000;
    }

    /* renamed from: F */
    private String m19517F(String str, ArrayList<String> arrayList) {
        String trim = str.trim();
        StringBuilder sb = new StringBuilder(trim);
        Matcher matcher = f17125p.matcher(trim);
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

    @Override // com.google.android.exoplayer2.text.AbstractC5318c
    /* renamed from: z */
    protected AbstractC5320e mo19377z(byte[] bArr, int i, boolean z) {
        String str;
        ArrayList arrayList = new ArrayList();
        C5527p c5527p = new C5527p();
        C5536v c5536v = new C5536v(bArr, i);
        while (true) {
            String m18666m = c5536v.m18666m();
            if (m18666m == null) {
                break;
            } else if (m18666m.length() != 0) {
                try {
                    Integer.parseInt(m18666m);
                    String m18666m2 = c5536v.m18666m();
                    if (m18666m2 == null) {
                        C5526o.m18742f("SubripDecoder", "Unexpected end");
                        break;
                    }
                    Matcher matcher = f17124o.matcher(m18666m2);
                    if (matcher.matches()) {
                        c5527p.m18740a(m19518E(matcher, 1));
                        c5527p.m18740a(m19518E(matcher, 6));
                        int i2 = 0;
                        this.f17126q.setLength(0);
                        this.f17127r.clear();
                        String m18666m3 = c5536v.m18666m();
                        while (true) {
                            String str2 = m18666m3;
                            if (TextUtils.isEmpty(str2)) {
                                break;
                            }
                            if (this.f17126q.length() > 0) {
                                this.f17126q.append("<br>");
                            }
                            this.f17126q.append(m19517F(str2, this.f17127r));
                            m18666m3 = c5536v.m18666m();
                        }
                        Spanned fromHtml = Html.fromHtml(this.f17126q.toString());
                        while (true) {
                            str = null;
                            if (i2 >= this.f17127r.size()) {
                                break;
                            }
                            str = this.f17127r.get(i2);
                            if (str.matches("\\{\\\\an[1-9]\\}")) {
                                break;
                            }
                            i2++;
                        }
                        arrayList.add(m19520C(fromHtml, str));
                        arrayList.add(C5317b.f16903d);
                    } else {
                        C5526o.m18742f("SubripDecoder", "Skipping invalid timing: " + m18666m2);
                    }
                } catch (NumberFormatException e) {
                    C5526o.m18742f("SubripDecoder", "Skipping invalid index: " + m18666m);
                }
            }
        }
        C5317b[] c5317bArr = new C5317b[arrayList.size()];
        arrayList.toArray(c5317bArr);
        return new C5363b(c5317bArr, c5527p.m18737d());
    }
}
