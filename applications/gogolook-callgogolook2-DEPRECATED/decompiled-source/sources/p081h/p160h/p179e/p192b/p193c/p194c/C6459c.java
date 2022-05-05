package p081h.p160h.p179e.p192b.p193c.p194c;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import p626l.C14986p;
import p626l.p631e0.C14967x;
import p626l.p632u.C15021m;
import p626l.p641z.p643d.C15149k;
/* renamed from: h.h.e.b.c.c.c */
/* loaded from: classes2-dex2jar.jar:h/h/e/b/c/c/c.class */
public final class C6459c {

    /* renamed from: a */
    public final String f16096a = "[UNK]";

    /* renamed from: b */
    public final int f16097b = 200;

    /* renamed from: c */
    public final Map<String, Integer> f16098c;

    public C6459c(Map<String, Integer> map) {
        C15149k.m377b(map, "vocab");
        this.f16098c = map;
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x00ee, code lost:
        if (r13 == false) goto L_0x00ff;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00f1, code lost:
        r0.add(r4.f16096a);
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00ff, code lost:
        r0.addAll(r0);
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<java.lang.String> m22535a(java.lang.String r5) {
        /*
            Method dump skipped, instructions count: 269
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p081h.p160h.p179e.p192b.p193c.p194c.C6459c.m22535a(java.lang.String):java.util.List");
    }

    /* renamed from: b */
    public final List<String> m22534b(String str) {
        String str2;
        ArrayList arrayList = new ArrayList();
        if (str != null) {
            int length = str.length() - 1;
            int i = 0;
            boolean z = false;
            while (i <= length) {
                boolean z2 = str.charAt(!z ? i : length) <= ' ';
                if (!z) {
                    if (!z2) {
                        z = true;
                    } else {
                        i++;
                    }
                } else if (!z2) {
                    break;
                } else {
                    length--;
                }
            }
            str2 = str.subSequence(i, length + 1).toString();
        } else {
            str2 = null;
        }
        if (str2 == null) {
            return arrayList;
        }
        Object[] array = C14967x.m691a((CharSequence) str, new String[]{" "}, false, 0, 6, (Object) null).toArray(new String[0]);
        if (array != null) {
            String[] strArr = (String[]) array;
            return C15021m.m557c((String[]) Arrays.copyOf(strArr, strArr.length));
        }
        throw new C14986p("null cannot be cast to non-null type kotlin.Array<T>");
    }
}
