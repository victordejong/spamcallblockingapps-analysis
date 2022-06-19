package androidx.work.impl.p052a.p053a;

import android.content.Context;
import androidx.work.AbstractC1293l;
import androidx.work.EnumC1295m;
import androidx.work.impl.p052a.C1153b;
import androidx.work.impl.p052a.p054b.C1164g;
import androidx.work.impl.p055b.C1191p;
import androidx.work.impl.utils.p058b.AbstractC1271a;
/* renamed from: androidx.work.impl.a.a.f */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/a/a/f.class */
public class C1150f extends AbstractC1146c<C1153b> {

    /* renamed from: a */
    private static final String f3944a = AbstractC1293l.m17541a("NetworkNotRoamingCtrlr");

    public C1150f(Context context, AbstractC1271a abstractC1271a) {
        super(C1164g.m17835a(context, abstractC1271a).m17833c());
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0036, code lost:
        if (r6.m17853d() == false) goto L13;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean mo17857b(androidx.work.impl.p052a.C1153b r6) {
        /*
            r5 = this;
            r0 = 1
            r7 = r0
            r0 = 0
            r8 = r0
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 24
            if (r0 >= r1) goto L29
            androidx.work.l r0 = androidx.work.AbstractC1293l.m17543a()
            java.lang.String r1 = androidx.work.impl.p052a.p053a.C1150f.f3944a
            java.lang.String r2 = "Not-roaming network constraint is not supported before API 24, only checking for connected state."
            r3 = 0
            java.lang.Throwable[] r3 = new java.lang.Throwable[r3]
            r0.mo17539b(r1, r2, r3)
            r0 = r6
            boolean r0 = r0.m17856a()
            if (r0 != 0) goto L24
        L22:
            r0 = r7
            return r0
        L24:
            r0 = 0
            r7 = r0
            goto L22
        L29:
            r0 = r6
            boolean r0 = r0.m17856a()
            if (r0 == 0) goto L39
            r0 = r8
            r7 = r0
            r0 = r6
            boolean r0 = r0.m17853d()
            if (r0 != 0) goto L3b
        L39:
            r0 = 1
            r7 = r0
        L3b:
            goto L22
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.work.impl.p052a.p053a.C1150f.mo17857b(androidx.work.impl.a.b):boolean");
    }

    @Override // androidx.work.impl.p052a.p053a.AbstractC1146c
    /* renamed from: a */
    boolean mo17859a(C1191p c1191p) {
        return c1191p.f4022j.m17946a() == EnumC1295m.NOT_ROAMING;
    }
}
