package p081h.p203i.p204a.p224e.p235d.p243o;

import android.util.Log;
import androidx.annotation.Nullable;
import java.util.Locale;
import p081h.p203i.p204a.p224e.p235d.p240n.C6999k;
/* renamed from: h.i.a.e.d.o.a */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/d/o/a.class */
public class C7051a {

    /* renamed from: a */
    public final String f17175a;

    /* renamed from: b */
    public final String f17176b;

    /* renamed from: c */
    public final int f17177c;

    public C7051a(String str, String str2) {
        this.f17176b = str2;
        this.f17175a = str;
        new C6999k(str);
        int i = 2;
        while (7 >= i && !Log.isLoggable(this.f17175a, i)) {
            i++;
        }
        this.f17177c = i;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C7051a(java.lang.String r5, java.lang.String... r6) {
        /*
            r4 = this;
            r0 = r6
            int r0 = r0.length
            if (r0 != 0) goto L_0x000b
            java.lang.String r0 = ""
            r6 = r0
            goto L_0x005d
        L_0x000b:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r7 = r0
            r0 = r7
            r1 = 91
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r6
            int r0 = r0.length
            r8 = r0
            r0 = 0
            r9 = r0
        L_0x0021:
            r0 = r9
            r1 = r8
            if (r0 >= r1) goto L_0x004a
            r0 = r6
            r1 = r9
            r0 = r0[r1]
            r10 = r0
            r0 = r7
            int r0 = r0.length()
            r1 = 1
            if (r0 <= r1) goto L_0x003d
            r0 = r7
            java.lang.String r1 = ","
            java.lang.StringBuilder r0 = r0.append(r1)
        L_0x003d:
            r0 = r7
            r1 = r10
            java.lang.StringBuilder r0 = r0.append(r1)
            int r9 = r9 + 1
            goto L_0x0021
        L_0x004a:
            r0 = r7
            r1 = 93
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r7
            r1 = 32
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r7
            java.lang.String r0 = r0.toString()
            r6 = r0
        L_0x005d:
            r0 = r4
            r1 = r5
            r2 = r6
            r0.<init>(r1, r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p204a.p224e.p235d.p243o.C7051a.<init>(java.lang.String, java.lang.String[]):void");
    }

    /* renamed from: a */
    public void m21191a(String str, @Nullable Object... objArr) {
        if (m21192a(3)) {
            m21189c(str, objArr);
        }
    }

    /* renamed from: a */
    public boolean m21192a(int i) {
        return this.f17177c <= i;
    }

    /* renamed from: b */
    public void m21190b(String str, @Nullable Object... objArr) {
        Log.e(this.f17175a, m21189c(str, objArr));
    }

    /* renamed from: c */
    public String m21189c(String str, @Nullable Object... objArr) {
        String str2 = str;
        if (objArr != null) {
            str2 = str;
            if (objArr.length > 0) {
                str2 = String.format(Locale.US, str, objArr);
            }
        }
        return this.f17176b.concat(str2);
    }

    /* renamed from: d */
    public void m21188d(String str, @Nullable Object... objArr) {
        m21189c(str, objArr);
    }

    /* renamed from: e */
    public void m21187e(String str, @Nullable Object... objArr) {
        m21189c(str, objArr);
    }
}
