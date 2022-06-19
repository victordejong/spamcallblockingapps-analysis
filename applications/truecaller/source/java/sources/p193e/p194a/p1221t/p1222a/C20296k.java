package p193e.p194a.p1221t.p1222a;

import android.content.Context;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.StringTokenizer;
import java.util.concurrent.FutureTask;
import p193e.p194a.p1221t.p1222a.p1224u.C20308c;
import p193e.p194a.p1221t.p1222a.p1224u.C20309d;
import p193e.p194a.p1221t.p1222a.p1224u.C20311f;
import p193e.p194a.p1221t.p1222a.p1224u.C20314i;
import s1.z.c.l;
/* renamed from: e.a.t.a.k */
/* loaded from: classes5-dex2jar.jar:e/a/t/a/k.class */
public class C20296k implements AbstractC20301p {

    /* renamed from: a */
    public final List<C20309d> f57104a = new ArrayList();

    /* renamed from: b */
    public final Context f57105b;

    public C20296k(Context context) {
        C20309d c20309d;
        C20311f c20311f;
        this.f57105b = context;
        StringTokenizer stringTokenizer = new StringTokenizer(context.getSharedPreferences("emoji", 0).getString("recent_emojis", ""), ",");
        while (stringTokenizer.hasMoreTokens()) {
            String nextToken = stringTokenizer.nextToken();
            l.e(nextToken, "value");
            if (!(nextToken.length() == 0)) {
                FutureTask<C20311f> futureTask = C20314i.f57127a;
                if (futureTask != null && (c20311f = futureTask.get()) != null) {
                    C20308c c20308c = c20311f.f57124a;
                    int i = 0;
                    while (true) {
                        int codePointAt = nextToken.codePointAt(i);
                        i += Character.charCount(codePointAt);
                        if (i < nextToken.length()) {
                            C20308c c20308c2 = c20308c.f57118b.get(Integer.valueOf(codePointAt));
                            c20309d = null;
                            if (c20308c2 == null) {
                                break;
                            }
                            c20308c = c20308c2;
                        } else {
                            c20309d = c20308c.f57117a.get(Integer.valueOf(codePointAt));
                            break;
                        }
                    }
                } else {
                    throw new IllegalStateException("Emoji data loader has not been set");
                }
            } else {
                c20309d = null;
            }
            if (c20309d != null) {
                this.f57104a.add(c20309d);
                while (m11261d() > 40) {
                    this.f57104a.remove(0);
                }
            }
        }
    }

    @Override // p193e.p194a.p1221t.p1222a.AbstractC20301p
    /* renamed from: a */
    public void mo11260a() {
        StringBuilder sb = new StringBuilder();
        int m11261d = m11261d();
        for (int i = 0; i < m11261d; i++) {
            C20309d c20309d = this.f57104a.get(i);
            if (c20309d != null) {
                l.e(c20309d, "emoji");
                int[] iArr = c20309d.f57119a;
                sb.append(new String(iArr, 0, iArr.length));
            }
            if (i < m11261d - 1) {
                sb.append(",");
            }
        }
        this.f57105b.getSharedPreferences("emoji", 0).edit().putString("recent_emojis", sb.toString()).apply();
    }

    @Override // p193e.p194a.p1221t.p1222a.AbstractC20301p
    /* renamed from: b */
    public Collection mo11259b() {
        return this.f57104a;
    }

    @Override // p193e.p194a.p1221t.p1222a.AbstractC20301p
    /* renamed from: c */
    public void mo11258c(C20309d c20309d) {
        this.f57104a.remove(c20309d);
        this.f57104a.add(0, c20309d);
        while (m11261d() > 40) {
            this.f57104a.remove(m11261d() - 1);
        }
    }

    /* renamed from: d */
    public final int m11261d() {
        return this.f57104a.size();
    }
}
