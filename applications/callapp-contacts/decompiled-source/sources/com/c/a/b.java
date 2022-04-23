package com.c.a;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.regex.Pattern;
import org.apache.commons.lang3.StringUtils;
/* loaded from: classes-dex2jar.jar:com/c/a/b.class */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    static final Pattern f10365a = Pattern.compile("((^Sent from my (\\s*\\w+){1,3}$)|(^-\\w|^\\s?__|^\\s?--|^–|^—))", 32);

    /* renamed from: b  reason: collision with root package name */
    static final Pattern f10366b = Pattern.compile("(^>+)", 32);

    /* renamed from: c  reason: collision with root package name */
    private static List<Pattern> f10367c;

    /* renamed from: d  reason: collision with root package name */
    private List<String> f10368d = new ArrayList();
    private List<d> e = new ArrayList();
    private int f = 6;
    private int g = 200;

    public b() {
        f10367c = new ArrayList();
        this.f10368d.add("^(On\\s(.{1,500})wrote:)");
        this.f10368d.add("From:[^\\n]+\\n?([^\\n]+\\n?){0,2}To:[^\\n]+\\n?([^\\n]+\\n?){0,2}Subject:[^\\n]+");
        this.f10368d.add("To:[^\\n]+\\n?([^\\n]+\\n?){0,2}From:[^\\n]+\\n?([^\\n]+\\n?){0,2}Subject:[^\\n]+");
    }

    private static a a(List<d> list) {
        ArrayList arrayList = new ArrayList();
        Collections.reverse(list);
        for (d dVar : list) {
            Collections.reverse(dVar.f10373a);
            arrayList.add(new c(new StringBuilder(StringUtils.join(dVar.f10373a, StringUtils.LF)).toString(), dVar.f10374b, dVar.f10375c, dVar.f10376d));
        }
        return new a(arrayList);
    }

    private void a() {
        for (String str : this.f10368d) {
            f10367c.add(Pattern.compile(str, 40));
        }
    }

    private static boolean a(d dVar) {
        return StringUtils.join(dVar.f10373a, "").isEmpty();
    }

    private void b(d dVar) {
        if (dVar.f10376d || dVar.f10375c || a(dVar)) {
            dVar.f10374b = true;
        }
        this.e.add(dVar);
    }

    private boolean b(List<String> list) {
        if (list.size() > this.f) {
            return false;
        }
        for (String str : list) {
            if (str.length() > this.g) {
                return false;
            }
        }
        Collections.reverse(list);
        String sb = new StringBuilder(StringUtils.join(list, StringUtils.LF)).toString();
        for (Pattern pattern : f10367c) {
            if (pattern.matcher(sb).find()) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x0108, code lost:
        if (r16 == false) goto L_0x010b;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.c.a.a a(java.lang.String r7) {
        /*
            Method dump skipped, instructions count: 355
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.c.a.b.a(java.lang.String):com.c.a.a");
    }
}
