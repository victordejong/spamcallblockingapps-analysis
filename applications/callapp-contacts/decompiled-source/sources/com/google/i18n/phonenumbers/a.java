package com.google.i18n.phonenumbers;

import com.google.i18n.phonenumbers.a.c;
import com.google.i18n.phonenumbers.j;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* loaded from: classes4-dex2jar.jar:com/google/i18n/phonenumbers/a.class */
public final class a {
    private static final j.b l = j.b.a().c("<ignored>").d("NA");
    private static final Pattern o = Pattern.compile("[-x‐-―−ー－-／  \u00ad\u200b\u2060\u3000()（）［］.\\[\\]/~⁓∼～]*(\\$\\d[-x‐-―−ー－-／  \u00ad\u200b\u2060\u3000()（）［］.\\[\\]/~⁓∼～]*)+");
    private static final Pattern p = Pattern.compile("[- ]");
    private static final Pattern q = Pattern.compile("\u2008");
    private String k;
    private j.b m;
    private j.b n;

    /* renamed from: a  reason: collision with root package name */
    private String f32829a = "";

    /* renamed from: b  reason: collision with root package name */
    private StringBuilder f32830b = new StringBuilder();

    /* renamed from: c  reason: collision with root package name */
    private String f32831c = "";

    /* renamed from: d  reason: collision with root package name */
    private StringBuilder f32832d = new StringBuilder();
    private StringBuilder e = new StringBuilder();
    private boolean f = true;
    private boolean g = false;
    private boolean h = false;
    private boolean i = false;
    private final PhoneNumberUtil j = PhoneNumberUtil.getInstance();
    private int r = 0;
    private int s = 0;
    private int t = 0;
    private StringBuilder u = new StringBuilder();
    private boolean v = false;
    private String w = "";
    private StringBuilder x = new StringBuilder();
    private List<j.a> y = new ArrayList();
    private c z = new c(64);

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(String str) {
        this.k = str;
        j.b a2 = a(str);
        this.n = a2;
        this.m = a2;
    }

    private char a(char c2, boolean z) {
        if (c2 == '+') {
            this.e.append(c2);
        } else {
            c2 = Character.forDigit(Character.digit(c2, 10), 10);
            this.e.append(c2);
            this.x.append(c2);
        }
        return c2;
    }

    private j.b a(String str) {
        j.b metadataForRegion = this.j.getMetadataForRegion(this.j.getRegionCodeForCountryCode(this.j.getCountryCodeForRegion(str)));
        return metadataForRegion != null ? metadataForRegion : l;
    }

    private String b(char c2) {
        this.f32832d.append(c2);
        if (!c(c2)) {
            this.f = false;
            this.g = true;
        } else {
            c2 = a(c2, false);
        }
        if (this.f) {
            int length = this.e.length();
            if (length == 0 || length == 1 || length == 2) {
                return this.f32832d.toString();
            }
            if (length == 3) {
                if (j()) {
                    this.i = true;
                } else {
                    this.w = i();
                    return f();
                }
            }
            if (this.i) {
                if (k()) {
                    this.i = false;
                }
                return ((Object) this.u) + this.x.toString();
            } else if (this.y.size() <= 0) {
                return f();
            } else {
                String d2 = d(c2);
                String e = e();
                if (e.length() > 0) {
                    return e;
                }
                c(this.x.toString());
                return b() ? g() : this.f ? d(d2) : this.f32832d.toString();
            }
        } else if (this.g) {
            return this.f32832d.toString();
        } else {
            if (j()) {
                if (k()) {
                    return c();
                }
            } else if (d()) {
                this.u.append(' ');
                return c();
            }
            return this.f32832d.toString();
        }
    }

    private void b(String str) {
        for (j.a aVar : (!(this.h && this.w.length() == 0) || this.n.b() <= 0) ? this.n.y : this.n.z) {
            if (this.w.length() <= 0 || !PhoneNumberUtil.formattingRuleHasFirstGroupOnly(aVar.f32879c) || aVar.f32880d || aVar.e) {
                if (this.w.length() != 0 || this.h || PhoneNumberUtil.formattingRuleHasFirstGroupOnly(aVar.f32879c) || aVar.f32880d) {
                    if (o.matcher(aVar.f32878b).matches()) {
                        this.y.add(aVar);
                    }
                }
            }
        }
        c(str);
    }

    private boolean b() {
        boolean z;
        Iterator<j.a> it2 = this.y.iterator();
        while (it2.hasNext()) {
            j.a next = it2.next();
            String str = next.f32877a;
            if (this.f32831c.equals(str)) {
                return false;
            }
            String str2 = next.f32877a;
            this.f32830b.setLength(0);
            String str3 = next.f32878b;
            Matcher matcher = this.z.a(str2).matcher("999999999999999");
            matcher.find();
            String group = matcher.group();
            String replaceAll = group.length() < this.x.length() ? "" : group.replaceAll(str2, str3).replaceAll("9", "\u2008");
            if (replaceAll.length() > 0) {
                this.f32830b.append(replaceAll);
                z = true;
            } else {
                z = false;
            }
            if (z) {
                this.f32831c = str;
                this.v = p.matcher(next.f32879c).find();
                this.r = 0;
                return true;
            }
            it2.remove();
        }
        this.f = false;
        return false;
    }

    private String c() {
        this.f = true;
        this.i = false;
        this.y.clear();
        this.r = 0;
        this.f32830b.setLength(0);
        this.f32831c = "";
        return f();
    }

    private void c(String str) {
        int length = str.length();
        Iterator<j.a> it2 = this.y.iterator();
        while (it2.hasNext()) {
            j.a next = it2.next();
            if (next.e() != 0) {
                if (!this.z.a(next.a(Math.min(length - 3, next.e() - 1))).matcher(str).lookingAt()) {
                    it2.remove();
                }
            }
        }
    }

    private boolean c(char c2) {
        if (!Character.isDigit(c2)) {
            return this.f32832d.length() == 1 && PhoneNumberUtil.PLUS_CHARS_PATTERN.matcher(Character.toString(c2)).matches();
        }
        return true;
    }

    private String d(char c2) {
        Matcher matcher = q.matcher(this.f32830b);
        if (matcher.find(this.r)) {
            String replaceFirst = matcher.replaceFirst(Character.toString(c2));
            this.f32830b.replace(0, replaceFirst.length(), replaceFirst);
            int start = matcher.start();
            this.r = start;
            return this.f32830b.substring(0, start + 1);
        }
        if (this.y.size() == 1) {
            this.f = false;
        }
        this.f32831c = "";
        return this.f32832d.toString();
    }

    private String d(String str) {
        int length = this.u.length();
        if (!this.v || length <= 0 || this.u.charAt(length - 1) == ' ') {
            return ((Object) this.u) + str;
        }
        return new String(this.u) + ' ' + str;
    }

    private boolean d() {
        if (this.w.length() > 0) {
            this.x.insert(0, this.w);
            this.u.setLength(this.u.lastIndexOf(this.w));
        }
        return !this.w.equals(i());
    }

    private String e() {
        for (j.a aVar : this.y) {
            Matcher matcher = this.z.a(aVar.f32877a).matcher(this.x);
            if (matcher.matches()) {
                this.v = p.matcher(aVar.f32879c).find();
                String d2 = d(matcher.replaceAll(aVar.f32878b));
                if (PhoneNumberUtil.normalizeDiallableCharsOnly(d2).contentEquals(this.e)) {
                    return d2;
                }
            }
        }
        return "";
    }

    private String f() {
        if (this.x.length() < 3) {
            return d(this.x.toString());
        }
        b(this.x.toString());
        String e = e();
        return e.length() > 0 ? e : b() ? g() : this.f32832d.toString();
    }

    private String g() {
        int length = this.x.length();
        if (length <= 0) {
            return this.u.toString();
        }
        String str = "";
        for (int i = 0; i < length; i++) {
            str = d(this.x.charAt(i));
        }
        return this.f ? d(str) : this.f32832d.toString();
    }

    private boolean h() {
        return this.n.m == 1 && this.x.charAt(0) == '1' && this.x.charAt(1) != '0' && this.x.charAt(1) != '1';
    }

    private String i() {
        int i = 1;
        if (h()) {
            StringBuilder sb = this.u;
            sb.append('1');
            sb.append(' ');
            this.h = true;
        } else {
            if (this.n.u) {
                Matcher matcher = this.z.a(this.n.v).matcher(this.x);
                if (matcher.lookingAt() && matcher.end() > 0) {
                    this.h = true;
                    i = matcher.end();
                    this.u.append(this.x.substring(0, i));
                }
            }
            i = 0;
        }
        String substring = this.x.substring(0, i);
        this.x.delete(0, i);
        return substring;
    }

    private boolean j() {
        c cVar = this.z;
        Matcher matcher = cVar.a("\\+|" + this.n.n).matcher(this.e);
        if (!matcher.lookingAt()) {
            return false;
        }
        this.h = true;
        int end = matcher.end();
        this.x.setLength(0);
        this.x.append(this.e.substring(end));
        this.u.setLength(0);
        this.u.append(this.e.substring(0, end));
        if (this.e.charAt(0) == '+') {
            return true;
        }
        this.u.append(' ');
        return true;
    }

    private boolean k() {
        StringBuilder sb;
        int extractCountryCode;
        if (this.x.length() == 0 || (extractCountryCode = this.j.extractCountryCode(this.x, (sb = new StringBuilder()))) == 0) {
            return false;
        }
        this.x.setLength(0);
        this.x.append((CharSequence) sb);
        String regionCodeForCountryCode = this.j.getRegionCodeForCountryCode(extractCountryCode);
        if (PhoneNumberUtil.REGION_CODE_FOR_NON_GEO_ENTITY.equals(regionCodeForCountryCode)) {
            this.n = this.j.getMetadataForNonGeographicalRegion(extractCountryCode);
        } else if (!regionCodeForCountryCode.equals(this.k)) {
            this.n = a(regionCodeForCountryCode);
        }
        String num = Integer.toString(extractCountryCode);
        StringBuilder sb2 = this.u;
        sb2.append(num);
        sb2.append(' ');
        this.w = "";
        return true;
    }

    public final String a(char c2) {
        String b2 = b(c2);
        this.f32829a = b2;
        return b2;
    }

    public final void a() {
        this.f32829a = "";
        this.f32832d.setLength(0);
        this.e.setLength(0);
        this.f32830b.setLength(0);
        this.r = 0;
        this.f32831c = "";
        this.u.setLength(0);
        this.w = "";
        this.x.setLength(0);
        this.f = true;
        this.g = false;
        this.t = 0;
        this.s = 0;
        this.h = false;
        this.i = false;
        this.y.clear();
        this.v = false;
        if (!this.n.equals(this.m)) {
            this.n = a(this.k);
        }
    }
}
