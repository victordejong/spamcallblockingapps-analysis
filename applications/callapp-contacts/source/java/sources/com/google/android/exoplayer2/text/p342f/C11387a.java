package com.google.android.exoplayer2.text.p342f;

import android.text.Html;
import android.text.Spanned;
import android.text.TextUtils;
import com.google.android.exoplayer2.text.AbstractC11370c;
import com.google.android.exoplayer2.text.AbstractC11379e;
import com.google.android.exoplayer2.text.C11356b;
import com.google.android.exoplayer2.util.C11593a;
import com.google.android.exoplayer2.util.C11617n;
import com.google.android.exoplayer2.util.C11618o;
import com.google.android.exoplayer2.util.C11628u;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* renamed from: com.google.android.exoplayer2.text.f.a */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/text/f/a.class */
public final class C11387a extends AbstractC11370c {

    /* renamed from: a */
    private static final Pattern f37555a = Pattern.compile("\\s*((?:(\\d+):)?(\\d+):(\\d+)(?:,(\\d+))?)\\s*-->\\s*((?:(\\d+):)?(\\d+):(\\d+)(?:,(\\d+))?)\\s*");

    /* renamed from: b */
    private static final Pattern f37556b = Pattern.compile("\\{\\\\.*?\\}");

    /* renamed from: c */
    private final StringBuilder f37557c = new StringBuilder();

    /* renamed from: d */
    private final ArrayList<String> f37558d = new ArrayList<>();

    public C11387a() {
        super("SubripDecoder");
    }

    /* renamed from: a */
    private static float m20703a(int i) {
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
    /* JADX WARN: Type inference failed for: r0v13, types: [long] */
    /* JADX WARN: Type inference failed for: r0v19, types: [long] */
    /* JADX WARN: Type inference failed for: r0v3 */
    /* JADX WARN: Type inference failed for: r0v5, types: [long] */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Type inference failed for: r10v4 */
    /* JADX WARN: Type inference failed for: r10v5 */
    /* renamed from: a */
    private static long m20701a(Matcher matcher, int i) {
        String group = matcher.group(i + 1);
        ?? parseLong = ((group != null ? ((Long.parseLong(group) * 60) * 60) * 1000 : false) == true ? 1L : 0L) + (Long.parseLong((String) C11593a.m20020b(matcher.group(i + 2))) * 60 * 1000) + (Long.parseLong((String) C11593a.m20020b(matcher.group(i + 3))) * 1000);
        String group2 = matcher.group(i + 4);
        ?? r10 = parseLong;
        if (group2 != null) {
            r10 = parseLong + Long.parseLong(group2);
        }
        return r10 * 1000;
    }

    /* renamed from: a */
    private static String m20702a(String str, ArrayList<String> arrayList) {
        String trim = str.trim();
        StringBuilder sb = new StringBuilder(trim);
        Matcher matcher = f37556b.matcher(trim);
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
    @Override // com.google.android.exoplayer2.text.AbstractC11370c
    /* renamed from: a */
    public final AbstractC11379e mo20622a(byte[] bArr, int i, boolean z) {
        String str;
        C11356b c11356b;
        boolean z2;
        boolean z3;
        ArrayList arrayList = new ArrayList();
        C11618o c11618o = new C11618o();
        C11628u c11628u = new C11628u(bArr, i);
        while (true) {
            String m19782t = c11628u.m19782t();
            if (m19782t != null) {
                if (m19782t.length() != 0) {
                    try {
                        Integer.parseInt(m19782t);
                        String m19782t2 = c11628u.m19782t();
                        if (m19782t2 == null) {
                            C11617n.m19863a("SubripDecoder", "Unexpected end");
                        } else {
                            Matcher matcher = f37555a.matcher(m19782t2);
                            if (matcher.matches()) {
                                c11618o.m19855a(m20701a(matcher, 1));
                                c11618o.m19855a(m20701a(matcher, 6));
                                this.f37557c.setLength(0);
                                this.f37558d.clear();
                                String m19782t3 = c11628u.m19782t();
                                while (true) {
                                    String str2 = m19782t3;
                                    if (!TextUtils.isEmpty(str2)) {
                                        if (this.f37557c.length() > 0) {
                                            this.f37557c.append("<br>");
                                        }
                                        this.f37557c.append(m20702a(str2, this.f37558d));
                                        m19782t3 = c11628u.m19782t();
                                    } else {
                                        Spanned fromHtml = Html.fromHtml(this.f37557c.toString());
                                        int i2 = 0;
                                        while (true) {
                                            str = null;
                                            if (i2 < this.f37558d.size()) {
                                                str = this.f37558d.get(i2);
                                                if (!str.matches("\\{\\\\an[1-9]\\}")) {
                                                    i2++;
                                                }
                                            }
                                        }
                                        C11356b.C11358a c11358a = new C11356b.C11358a();
                                        c11358a.f37428a = fromHtml;
                                        if (str == null) {
                                            c11356b = c11358a.m20744a();
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
                                            if (!z2 || z2 || z2) {
                                                c11358a.f37433f = 0;
                                            } else if (z2 || z2 || z2) {
                                                c11358a.f37433f = 2;
                                            } else {
                                                c11358a.f37433f = 1;
                                            }
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
                                            if (!z3 || z3 || z3) {
                                                c11358a.f37431d = 2;
                                            } else if (z3 || z3 || z3) {
                                                c11358a.f37431d = 0;
                                            } else {
                                                c11358a.f37431d = 1;
                                            }
                                            c11358a.f37432e = m20703a(c11358a.f37433f);
                                            c11356b = c11358a.m20743a(m20703a(c11358a.f37431d), 0).m20744a();
                                        }
                                        arrayList.add(c11356b);
                                        arrayList.add(C11356b.f37411a);
                                    }
                                }
                            } else {
                                C11617n.m19863a("SubripDecoder", "Skipping invalid timing: ".concat(String.valueOf(m19782t2)));
                            }
                        }
                    } catch (NumberFormatException e) {
                        C11617n.m19863a("SubripDecoder", "Skipping invalid index: ".concat(String.valueOf(m19782t)));
                    }
                }
            }
        }
        return new C11388b((C11356b[]) arrayList.toArray(new C11356b[0]), Arrays.copyOf(c11618o.f38700b, c11618o.f38699a));
    }
}
