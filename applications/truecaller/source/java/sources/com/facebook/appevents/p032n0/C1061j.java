package com.facebook.appevents.p032n0;

import android.text.TextUtils;
import com.facebook.internal.p037u0.p040m.C1220a;
import com.tenor.android.core.constant.StringConstant;
import java.nio.charset.Charset;
import kotlin.Metadata;
import s1.f0.h;
import s1.z.c.l;
@Metadata(d1 = {"��4\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0015\n\u0002\b\u0002\n\u0002\u0010\b\n��\bÇ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\n\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0007J\u000e\u0010\u0007\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0004J\u001e\u0010\t\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u000b\u0018\u00010\n2\u0006\u0010\f\u001a\u00020\u0006H\u0007J\u0016\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u0011R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��¨\u0006\u0012"}, d2 = {"Lcom/facebook/appevents/ml/Utils;", "", "()V", "DIR_NAME", "", "getMlDir", "Ljava/io/File;", "normalizeString", "str", "parseModelWeights", "", "Lcom/facebook/appevents/ml/MTensor;", "file", "vectorize", "", "texts", "maxLen", "", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* renamed from: com.facebook.appevents.n0.j */
/* loaded from: classes2-dex2jar.jar:com/facebook/appevents/n0/j.class */
public final class C1061j {

    /* renamed from: a */
    public static final C1061j f2929a = new C1061j();

    /* JADX WARN: Code restructure failed: missing block: B:8:0x002f, code lost:
        if (r0.mkdirs() != false) goto L9;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.io.File m41826a() {
        /*
            java.lang.Class<com.facebook.appevents.n0.j> r0 = com.facebook.appevents.p032n0.C1061j.class
            boolean r0 = com.facebook.internal.p037u0.p040m.C1220a.m41623b(r0)
            r4 = r0
            r0 = 0
            r5 = r0
            r0 = r4
            if (r0 == 0) goto Le
            r0 = 0
            return r0
        Le:
            java.io.File r0 = new java.io.File     // Catch: java.lang.Throwable -> L36
            r6 = r0
            e.j.f0 r0 = p193e.p1538j.C23228f0.f64291a     // Catch: java.lang.Throwable -> L36
            r7 = r0
            r0 = r6
            android.content.Context r1 = p193e.p1538j.C23228f0.m7354a()     // Catch: java.lang.Throwable -> L36
            java.io.File r1 = r1.getFilesDir()     // Catch: java.lang.Throwable -> L36
            java.lang.String r2 = "facebook_ml/"
            r0.<init>(r1, r2)     // Catch: java.lang.Throwable -> L36
            r0 = r6
            boolean r0 = r0.exists()     // Catch: java.lang.Throwable -> L36
            if (r0 != 0) goto L32
            r0 = r6
            boolean r0 = r0.mkdirs()     // Catch: java.lang.Throwable -> L36
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L34
        L32:
            r0 = r6
            r5 = r0
        L34:
            r0 = r5
            return r0
        L36:
            r5 = move-exception
            r0 = r5
            java.lang.Class<com.facebook.appevents.n0.j> r1 = com.facebook.appevents.p032n0.C1061j.class
            com.facebook.internal.p037u0.p040m.C1220a.m41624a(r0, r1)
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.appevents.p032n0.C1061j.m41826a():java.io.File");
    }

    /* renamed from: b */
    public final String m41825b(String str) {
        if (C1220a.m41623b(this)) {
            return null;
        }
        try {
            l.e(str, "str");
            int length = str.length() - 1;
            int i = 0;
            boolean z = false;
            while (i <= length) {
                boolean z2 = l.g(str.charAt(!z ? i : length), 32) <= 0;
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
            Object[] array = new h("\\s+").f(str.subSequence(i, length + 1).toString(), 0).toArray(new String[0]);
            if (array == null) {
                throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T>");
            }
            String join = TextUtils.join(StringConstant.SPACE, (String[]) array);
            l.d(join, "join(\" \", strArray)");
            return join;
        } catch (Throwable th) {
            C1220a.m41624a(th, this);
            return null;
        }
    }

    /* renamed from: c */
    public final int[] m41824c(String str, int i) {
        if (C1220a.m41623b(this)) {
            return null;
        }
        try {
            l.e(str, "texts");
            int[] iArr = new int[i];
            String m41825b = m41825b(str);
            Charset forName = Charset.forName(StringConstant.UTF8);
            l.d(forName, "forName(\"UTF-8\")");
            if (m41825b == null) {
                throw new NullPointerException("null cannot be cast to non-null type java.lang.String");
            }
            byte[] bytes = m41825b.getBytes(forName);
            l.d(bytes, "(this as java.lang.String).getBytes(charset)");
            if (i > 0) {
                int i2 = 0;
                while (true) {
                    int i3 = i2;
                    int i4 = i3 + 1;
                    if (i3 < bytes.length) {
                        iArr[i3] = bytes[i3] & 255;
                    } else {
                        iArr[i3] = 0;
                    }
                    if (i4 >= i) {
                        break;
                    }
                    i2 = i4;
                }
            }
            return iArr;
        } catch (Throwable th) {
            C1220a.m41624a(th, this);
            return null;
        }
    }
}
