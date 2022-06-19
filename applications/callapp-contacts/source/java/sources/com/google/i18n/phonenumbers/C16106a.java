package com.google.i18n.phonenumbers;

import com.google.i18n.phonenumbers.C16129j;
import com.google.i18n.phonenumbers.p402a.C16109c;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* renamed from: com.google.i18n.phonenumbers.a */
/* loaded from: classes4-dex2jar.jar:com/google/i18n/phonenumbers/a.class */
public final class C16106a {

    /* renamed from: l */
    private static final C16129j.C16132b f56861l = C16129j.C16132b.m7784a().m7780c("<ignored>").m7779d("NA");

    /* renamed from: o */
    private static final Pattern f56862o = Pattern.compile("[-x‐-―−ー－-／  \u00ad\u200b\u2060\u3000()（）［］.\\[\\]/~⁓∼～]*(\\$\\d[-x‐-―−ー－-／  \u00ad\u200b\u2060\u3000()（）［］.\\[\\]/~⁓∼～]*)+");

    /* renamed from: p */
    private static final Pattern f56863p = Pattern.compile("[- ]");

    /* renamed from: q */
    private static final Pattern f56864q = Pattern.compile("\u2008");

    /* renamed from: k */
    private String f56875k;

    /* renamed from: m */
    private C16129j.C16132b f56876m;

    /* renamed from: n */
    private C16129j.C16132b f56877n;

    /* renamed from: a */
    private String f56865a = "";

    /* renamed from: b */
    private StringBuilder f56866b = new StringBuilder();

    /* renamed from: c */
    private String f56867c = "";

    /* renamed from: d */
    private StringBuilder f56868d = new StringBuilder();

    /* renamed from: e */
    private StringBuilder f56869e = new StringBuilder();

    /* renamed from: f */
    private boolean f56870f = true;

    /* renamed from: g */
    private boolean f56871g = false;

    /* renamed from: h */
    private boolean f56872h = false;

    /* renamed from: i */
    private boolean f56873i = false;

    /* renamed from: j */
    private final PhoneNumberUtil f56874j = PhoneNumberUtil.getInstance();

    /* renamed from: r */
    private int f56878r = 0;

    /* renamed from: s */
    private int f56879s = 0;

    /* renamed from: t */
    private int f56880t = 0;

    /* renamed from: u */
    private StringBuilder f56881u = new StringBuilder();

    /* renamed from: v */
    private boolean f56882v = false;

    /* renamed from: w */
    private String f56883w = "";

    /* renamed from: x */
    private StringBuilder f56884x = new StringBuilder();

    /* renamed from: y */
    private List<C16129j.C16130a> f56885y = new ArrayList();

    /* renamed from: z */
    private C16109c f56886z = new C16109c(64);

    public C16106a(String str) {
        this.f56875k = str;
        C16129j.C16132b m7860a = m7860a(str);
        this.f56877n = m7860a;
        this.f56876m = m7860a;
    }

    /* renamed from: a */
    private char m7861a(char c, boolean z) {
        if (c == '+') {
            this.f56869e.append(c);
        } else {
            c = Character.forDigit(Character.digit(c, 10), 10);
            this.f56869e.append(c);
            this.f56884x.append(c);
        }
        return c;
    }

    /* renamed from: a */
    private C16129j.C16132b m7860a(String str) {
        C16129j.C16132b metadataForRegion = this.f56874j.getMetadataForRegion(this.f56874j.getRegionCodeForCountryCode(this.f56874j.getCountryCodeForRegion(str)));
        return metadataForRegion != null ? metadataForRegion : f56861l;
    }

    /* renamed from: b */
    private String m7858b(char c) {
        this.f56868d.append(c);
        if (!m7855c(c)) {
            this.f56870f = false;
            this.f56871g = true;
        } else {
            c = m7861a(c, false);
        }
        if (!this.f56870f) {
            if (this.f56871g) {
                return this.f56868d.toString();
            }
            if (m7845j()) {
                if (m7844k()) {
                    return m7856c();
                }
            } else if (m7853d()) {
                this.f56881u.append(' ');
                return m7856c();
            }
            return this.f56868d.toString();
        }
        int length = this.f56869e.length();
        if (length == 0 || length == 1 || length == 2) {
            return this.f56868d.toString();
        }
        if (length == 3) {
            if (!m7845j()) {
                this.f56883w = m7846i();
                return m7849f();
            }
            this.f56873i = true;
        }
        if (this.f56873i) {
            if (m7844k()) {
                this.f56873i = false;
            }
            return ((Object) this.f56881u) + this.f56884x.toString();
        } else if (this.f56885y.size() <= 0) {
            return m7849f();
        } else {
            String m7852d = m7852d(c);
            String m7850e = m7850e();
            if (m7850e.length() > 0) {
                return m7850e;
            }
            m7854c(this.f56884x.toString());
            return m7859b() ? m7848g() : this.f56870f ? m7851d(m7852d) : this.f56868d.toString();
        }
    }

    /* renamed from: b */
    private void m7857b(String str) {
        for (C16129j.C16130a c16130a : (!(this.f56872h && this.f56883w.length() == 0) || this.f56877n.m7783b() <= 0) ? this.f56877n.f57020y : this.f56877n.f57021z) {
            if (this.f56883w.length() <= 0 || !PhoneNumberUtil.formattingRuleHasFirstGroupOnly(c16130a.f56951c) || c16130a.f56952d || c16130a.f56953e) {
                if (this.f56883w.length() != 0 || this.f56872h || PhoneNumberUtil.formattingRuleHasFirstGroupOnly(c16130a.f56951c) || c16130a.f56952d) {
                    if (f56862o.matcher(c16130a.f56950b).matches()) {
                        this.f56885y.add(c16130a);
                    }
                }
            }
        }
        m7854c(str);
    }

    /* renamed from: b */
    private boolean m7859b() {
        boolean z;
        Iterator<C16129j.C16130a> it2 = this.f56885y.iterator();
        while (it2.hasNext()) {
            C16129j.C16130a next = it2.next();
            String str = next.f56949a;
            if (this.f56867c.equals(str)) {
                return false;
            }
            String str2 = next.f56949a;
            this.f56866b.setLength(0);
            String str3 = next.f56950b;
            Matcher matcher = this.f56886z.m7842a(str2).matcher("999999999999999");
            matcher.find();
            String group = matcher.group();
            String replaceAll = group.length() < this.f56884x.length() ? "" : group.replaceAll(str2, str3).replaceAll("9", "\u2008");
            if (replaceAll.length() > 0) {
                this.f56866b.append(replaceAll);
                z = true;
            } else {
                z = false;
            }
            if (z) {
                this.f56867c = str;
                this.f56882v = f56863p.matcher(next.f56951c).find();
                this.f56878r = 0;
                return true;
            }
            it2.remove();
        }
        this.f56870f = false;
        return false;
    }

    /* renamed from: c */
    private String m7856c() {
        this.f56870f = true;
        this.f56873i = false;
        this.f56885y.clear();
        this.f56878r = 0;
        this.f56866b.setLength(0);
        this.f56867c = "";
        return m7849f();
    }

    /* renamed from: c */
    private void m7854c(String str) {
        int length = str.length();
        Iterator<C16129j.C16130a> it2 = this.f56885y.iterator();
        while (it2.hasNext()) {
            C16129j.C16130a next = it2.next();
            if (next.m7790e() != 0) {
                if (!this.f56886z.m7842a(next.m7799a(Math.min(length - 3, next.m7790e() - 1))).matcher(str).lookingAt()) {
                    it2.remove();
                }
            }
        }
    }

    /* renamed from: c */
    private boolean m7855c(char c) {
        if (!Character.isDigit(c)) {
            return this.f56868d.length() == 1 && PhoneNumberUtil.PLUS_CHARS_PATTERN.matcher(Character.toString(c)).matches();
        }
        return true;
    }

    /* renamed from: d */
    private String m7852d(char c) {
        Matcher matcher = f56864q.matcher(this.f56866b);
        if (!matcher.find(this.f56878r)) {
            if (this.f56885y.size() == 1) {
                this.f56870f = false;
            }
            this.f56867c = "";
            return this.f56868d.toString();
        }
        String replaceFirst = matcher.replaceFirst(Character.toString(c));
        this.f56866b.replace(0, replaceFirst.length(), replaceFirst);
        int start = matcher.start();
        this.f56878r = start;
        return this.f56866b.substring(0, start + 1);
    }

    /* renamed from: d */
    private String m7851d(String str) {
        int length = this.f56881u.length();
        if (!this.f56882v || length <= 0 || this.f56881u.charAt(length - 1) == ' ') {
            return ((Object) this.f56881u) + str;
        }
        return new String(this.f56881u) + ' ' + str;
    }

    /* renamed from: d */
    private boolean m7853d() {
        if (this.f56883w.length() > 0) {
            this.f56884x.insert(0, this.f56883w);
            this.f56881u.setLength(this.f56881u.lastIndexOf(this.f56883w));
        }
        return !this.f56883w.equals(m7846i());
    }

    /* renamed from: e */
    private String m7850e() {
        for (C16129j.C16130a c16130a : this.f56885y) {
            Matcher matcher = this.f56886z.m7842a(c16130a.f56949a).matcher(this.f56884x);
            if (matcher.matches()) {
                this.f56882v = f56863p.matcher(c16130a.f56951c).find();
                String m7851d = m7851d(matcher.replaceAll(c16130a.f56950b));
                if (PhoneNumberUtil.normalizeDiallableCharsOnly(m7851d).contentEquals(this.f56869e)) {
                    return m7851d;
                }
            }
        }
        return "";
    }

    /* renamed from: f */
    private String m7849f() {
        if (this.f56884x.length() >= 3) {
            m7857b(this.f56884x.toString());
            String m7850e = m7850e();
            return m7850e.length() > 0 ? m7850e : m7859b() ? m7848g() : this.f56868d.toString();
        }
        return m7851d(this.f56884x.toString());
    }

    /* renamed from: g */
    private String m7848g() {
        int length = this.f56884x.length();
        if (length > 0) {
            String str = "";
            for (int i = 0; i < length; i++) {
                str = m7852d(this.f56884x.charAt(i));
            }
            return this.f56870f ? m7851d(str) : this.f56868d.toString();
        }
        return this.f56881u.toString();
    }

    /* renamed from: h */
    private boolean m7847h() {
        return this.f56877n.f57008m == 1 && this.f56884x.charAt(0) == '1' && this.f56884x.charAt(1) != '0' && this.f56884x.charAt(1) != '1';
    }

    /* renamed from: i */
    private String m7846i() {
        int i = 1;
        if (m7847h()) {
            StringBuilder sb = this.f56881u;
            sb.append('1');
            sb.append(' ');
            this.f56872h = true;
        } else {
            if (this.f56877n.f57016u) {
                Matcher matcher = this.f56886z.m7842a(this.f56877n.f57017v).matcher(this.f56884x);
                if (matcher.lookingAt() && matcher.end() > 0) {
                    this.f56872h = true;
                    i = matcher.end();
                    this.f56881u.append(this.f56884x.substring(0, i));
                }
            }
            i = 0;
        }
        String substring = this.f56884x.substring(0, i);
        this.f56884x.delete(0, i);
        return substring;
    }

    /* renamed from: j */
    private boolean m7845j() {
        C16109c c16109c = this.f56886z;
        Matcher matcher = c16109c.m7842a("\\+|" + this.f56877n.f57009n).matcher(this.f56869e);
        if (matcher.lookingAt()) {
            this.f56872h = true;
            int end = matcher.end();
            this.f56884x.setLength(0);
            this.f56884x.append(this.f56869e.substring(end));
            this.f56881u.setLength(0);
            this.f56881u.append(this.f56869e.substring(0, end));
            if (this.f56869e.charAt(0) == '+') {
                return true;
            }
            this.f56881u.append(' ');
            return true;
        }
        return false;
    }

    /* renamed from: k */
    private boolean m7844k() {
        StringBuilder sb;
        int extractCountryCode;
        if (this.f56884x.length() == 0 || (extractCountryCode = this.f56874j.extractCountryCode(this.f56884x, (sb = new StringBuilder()))) == 0) {
            return false;
        }
        this.f56884x.setLength(0);
        this.f56884x.append((CharSequence) sb);
        String regionCodeForCountryCode = this.f56874j.getRegionCodeForCountryCode(extractCountryCode);
        if (PhoneNumberUtil.REGION_CODE_FOR_NON_GEO_ENTITY.equals(regionCodeForCountryCode)) {
            this.f56877n = this.f56874j.getMetadataForNonGeographicalRegion(extractCountryCode);
        } else if (!regionCodeForCountryCode.equals(this.f56875k)) {
            this.f56877n = m7860a(regionCodeForCountryCode);
        }
        String num = Integer.toString(extractCountryCode);
        StringBuilder sb2 = this.f56881u;
        sb2.append(num);
        sb2.append(' ');
        this.f56883w = "";
        return true;
    }

    /* renamed from: a */
    public final String m7862a(char c) {
        String m7858b = m7858b(c);
        this.f56865a = m7858b;
        return m7858b;
    }

    /* renamed from: a */
    public final void m7863a() {
        this.f56865a = "";
        this.f56868d.setLength(0);
        this.f56869e.setLength(0);
        this.f56866b.setLength(0);
        this.f56878r = 0;
        this.f56867c = "";
        this.f56881u.setLength(0);
        this.f56883w = "";
        this.f56884x.setLength(0);
        this.f56870f = true;
        this.f56871g = false;
        this.f56880t = 0;
        this.f56879s = 0;
        this.f56872h = false;
        this.f56873i = false;
        this.f56885y.clear();
        this.f56882v = false;
        if (!this.f56877n.equals(this.f56876m)) {
            this.f56877n = m7860a(this.f56875k);
        }
    }
}
