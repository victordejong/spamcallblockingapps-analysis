package p193e.p194a.p1221t.p1222a.p1228y;

import java.util.concurrent.FutureTask;
import p193e.p194a.p1221t.p1222a.p1224u.C20308c;
import p193e.p194a.p1221t.p1222a.p1224u.C20309d;
import p193e.p194a.p1221t.p1222a.p1224u.C20311f;
import p193e.p194a.p1221t.p1222a.p1224u.C20314i;
import s1.k;
import s1.z.c.l;
/* renamed from: e.a.t.a.y.b */
/* loaded from: classes5-dex2jar.jar:e/a/t/a/y/b.class */
public final class C20344b {

    /* renamed from: a */
    public static final C20344b f57181a = new C20344b();

    /* renamed from: a */
    public final int m11236a(CharSequence charSequence) {
        C20311f c20311f;
        l.e(charSequence, "input");
        int i = 0;
        int i2 = 0;
        while (i < charSequence.length()) {
            FutureTask<C20311f> futureTask = C20314i.f57127a;
            if (futureTask == null || (c20311f = futureTask.get()) == null) {
                throw new IllegalStateException("Emoji data loader has not been set");
            }
            k<C20309d, Integer> m11235b = m11235b(charSequence, i, i, c20311f.f57124a);
            C20309d c20309d = (C20309d) m11235b.a;
            int intValue = ((Number) m11235b.b).intValue();
            i = intValue;
            if (c20309d != null) {
                i2++;
                i = intValue;
            }
        }
        return i2;
    }

    /* renamed from: b */
    public final k<C20309d, Integer> m11235b(CharSequence charSequence, int i, int i2, C20308c c20308c) {
        if (i >= charSequence.length()) {
            return new k<>((Object) null, Integer.valueOf(i));
        }
        int codePointAt = Character.codePointAt(charSequence, i);
        int charCount = Character.charCount(codePointAt) + i;
        C20308c c20308c2 = c20308c.f57118b.get(Integer.valueOf(codePointAt));
        if (c20308c2 != null) {
            k<C20309d, Integer> m11235b = m11235b(charSequence, charCount, i2, c20308c2);
            if (m11235b.a != null) {
                return m11235b;
            }
        }
        return new k<>(c20308c.f57117a.get(Integer.valueOf(codePointAt)), Integer.valueOf(charCount));
    }
}
