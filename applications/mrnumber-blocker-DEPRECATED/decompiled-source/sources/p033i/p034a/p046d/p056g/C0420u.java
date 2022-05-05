package p033i.p034a.p046d.p056g;
/* renamed from: i.a.d.g.u */
/* loaded from: classes2-dex2jar.jar:i/a/d/g/u.class */
final class C0420u {
    /* JADX WARN: Type inference failed for: r0v13, types: [java.util.List, T, java.util.ArrayList] */
    /* JADX WARN: Unknown variable types count: 1 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static <T> T m207a(p033i.p034a.p035a.p036f.AbstractC0296h<T> r4, T r5, int r6) {
        /*
            r0 = r5
            if (r0 == 0) goto L_0x007b
            r0 = r4
            i.a.a.f.j r0 = r0.getType()
            i.a.a.f.j r1 = p033i.p034a.p035a.p036f.EnumC0297j.STRING
            if (r0 == r1) goto L_0x001f
            r0 = r4
            i.a.a.f.j r0 = r0.getType()
            i.a.a.f.j r1 = p033i.p034a.p035a.p036f.EnumC0297j.STRING_ARRAY
            if (r0 == r1) goto L_0x001f
            goto L_0x007b
        L_0x001f:
            r0 = r4
            i.a.a.f.j r0 = r0.getType()
            i.a.a.f.j r1 = p033i.p034a.p035a.p036f.EnumC0297j.STRING_ARRAY
            if (r0 != r1) goto L_0x0072
            r0 = r5
            java.util.List r0 = (java.util.List) r0
            r7 = r0
            r0 = r7
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L_0x003b
            r0 = r5
            return r0
        L_0x003b:
            java.util.ArrayList r0 = new java.util.ArrayList
            r1 = r0
            r2 = r7
            int r2 = r2.size()
            r1.<init>(r2)
            r4 = r0
            r0 = r7
            java.util.Iterator r0 = r0.iterator()
            r5 = r0
        L_0x0050:
            r0 = r5
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L_0x0070
            r0 = r4
            r1 = r5
            java.lang.Object r1 = r1.next()
            java.lang.String r1 = (java.lang.String) r1
            r2 = r6
            java.lang.String r1 = m206b(r1, r2)
            boolean r0 = r0.add(r1)
            goto L_0x0050
        L_0x0070:
            r0 = r4
            return r0
        L_0x0072:
            r0 = r5
            java.lang.String r0 = (java.lang.String) r0
            r1 = r6
            java.lang.String r0 = m206b(r0, r1)
            return r0
        L_0x007b:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p033i.p034a.p046d.p056g.C0420u.m207a(i.a.a.f.h, java.lang.Object, int):java.lang.Object");
    }

    /* renamed from: b */
    private static String m206b(String str, int i) {
        String str2 = str;
        if (str != null) {
            str2 = str.length() <= i ? str : str.substring(0, i);
        }
        return str2;
    }
}
