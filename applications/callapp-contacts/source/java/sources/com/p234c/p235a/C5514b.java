package com.p234c.p235a;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.regex.Pattern;
import org.apache.commons.lang3.StringUtils;
/* renamed from: com.c.a.b */
/* loaded from: classes-dex2jar.jar:com/c/a/b.class */
public final class C5514b {

    /* renamed from: a */
    static final Pattern f19099a = Pattern.compile("((^Sent from my (\\s*\\w+){1,3}$)|(^-\\w|^\\s?__|^\\s?--|^–|^—))", 32);

    /* renamed from: b */
    static final Pattern f19100b = Pattern.compile("(^>+)", 32);

    /* renamed from: c */
    private static List<Pattern> f19101c;

    /* renamed from: d */
    private List<String> f19102d = new ArrayList();

    /* renamed from: e */
    private List<C5516d> f19103e = new ArrayList();

    /* renamed from: f */
    private int f19104f = 6;

    /* renamed from: g */
    private int f19105g = 200;

    public C5514b() {
        f19101c = new ArrayList();
        this.f19102d.add("^(On\\s(.{1,500})wrote:)");
        this.f19102d.add("From:[^\\n]+\\n?([^\\n]+\\n?){0,2}To:[^\\n]+\\n?([^\\n]+\\n?){0,2}Subject:[^\\n]+");
        this.f19102d.add("To:[^\\n]+\\n?([^\\n]+\\n?){0,2}From:[^\\n]+\\n?([^\\n]+\\n?){0,2}Subject:[^\\n]+");
    }

    /* renamed from: a */
    private static C5513a m31937a(List<C5516d> list) {
        ArrayList arrayList = new ArrayList();
        Collections.reverse(list);
        for (C5516d c5516d : list) {
            Collections.reverse(c5516d.f19110a);
            arrayList.add(new C5515c(new StringBuilder(StringUtils.join(c5516d.f19110a, StringUtils.f67179LF)).toString(), c5516d.f19111b, c5516d.f19112c, c5516d.f19113d));
        }
        return new C5513a(arrayList);
    }

    /* renamed from: a */
    private void m31940a() {
        for (String str : this.f19102d) {
            f19101c.add(Pattern.compile(str, 40));
        }
    }

    /* renamed from: a */
    private static boolean m31939a(C5516d c5516d) {
        return StringUtils.join(c5516d.f19110a, "").isEmpty();
    }

    /* renamed from: b */
    private void m31936b(C5516d c5516d) {
        if (c5516d.f19113d || c5516d.f19112c || m31939a(c5516d)) {
            c5516d.f19111b = true;
        }
        this.f19103e.add(c5516d);
    }

    /* renamed from: b */
    private boolean m31935b(List<String> list) {
        if (list.size() > this.f19104f) {
            return false;
        }
        for (String str : list) {
            if (str.length() > this.f19105g) {
                return false;
            }
        }
        Collections.reverse(list);
        String sb = new StringBuilder(StringUtils.join(list, StringUtils.f67179LF)).toString();
        for (Pattern pattern : f19101c) {
            if (pattern.matcher(sb).find()) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x0108, code lost:
        if (r16 == false) goto L31;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.p234c.p235a.C5513a m31938a(java.lang.String r7) {
        /*
            Method dump skipped, instructions count: 355
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.p234c.p235a.C5514b.m31938a(java.lang.String):com.c.a.a");
    }
}
