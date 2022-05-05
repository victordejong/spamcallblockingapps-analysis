package p459j.p460a.p604y0.p610e;

import android.util.SparseArray;
import androidx.media2.session.MediaSessionImplBase;
import gogolook.callgogolook2.gson.UserProfile;
import p081h.p203i.p384e.p385v.AbstractC10118a;
import p081h.p203i.p384e.p385v.AbstractC10120c;
import p626l.p631e0.C14964u;
import p626l.p631e0.C14965v;
import p626l.p631e0.C14966w;
/* renamed from: j.a.y0.e.a */
/* loaded from: classes3-dex2jar.jar:j/a/y0/e/a.class */
public final class C14567a {
    @AbstractC10120c("vas_service")
    @AbstractC10118a

    /* renamed from: a */
    public String f32535a;
    @AbstractC10120c("price")
    @AbstractC10118a

    /* renamed from: b */
    public String f32536b;
    @AbstractC10120c("period")
    @AbstractC10118a

    /* renamed from: c */
    public String f32537c;
    @AbstractC10120c("order")
    @AbstractC10118a

    /* renamed from: d */
    public String f32538d;
    @AbstractC10120c("num")
    @AbstractC10118a

    /* renamed from: e */
    public String f32539e;
    @AbstractC10120c("cancel_num")
    @AbstractC10118a

    /* renamed from: f */
    public String f32540f;
    @AbstractC10120c("cancel_word")
    @AbstractC10118a

    /* renamed from: g */
    public String f32541g;
    @AbstractC10120c("names")
    @AbstractC10118a

    /* renamed from: h */
    public String[] f32542h;

    /* renamed from: a */
    public final String m1115a() {
        return this.f32535a;
    }

    /* renamed from: b */
    public final String[] m1114b() {
        return this.f32542h;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0031, code lost:
        if (r4 != null) goto L_0x003a;
     */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String m1113c() {
        /*
            r3 = this;
            j.a.y0.e.b$h r0 = p459j.p460a.p604y0.p610e.C14568b.f32555v
            android.util.SparseArray r0 = r0.m1087d()
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L_0x0037
            r0 = r3
            java.lang.String r0 = r0.f32537c
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L_0x0025
            r0 = r5
            java.lang.Integer r0 = p626l.p631e0.C14965v.m726e(r0)
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L_0x0025
            r0 = r5
            int r0 = r0.intValue()
            r6 = r0
            goto L_0x0027
        L_0x0025:
            r0 = 0
            r6 = r0
        L_0x0027:
            r0 = r4
            r1 = r6
            java.lang.Object r0 = r0.get(r1)
            java.lang.String r0 = (java.lang.String) r0
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L_0x0037
            goto L_0x003a
        L_0x0037:
            java.lang.String r0 = ""
            r4 = r0
        L_0x003a:
            r0 = r4
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p604y0.p610e.C14567a.m1113c():java.lang.String");
    }

    /* renamed from: d */
    public final double m1112d() {
        double d;
        String a;
        Double d2;
        Integer e;
        SparseArray<String> e2 = C14568b.f32555v.m1086e();
        if (e2 != null) {
            String str = this.f32536b;
            String str2 = e2.get((str == null || (e = C14965v.m726e(str)) == null) ? 0 : e.intValue());
            if (!(str2 == null || (a = C14966w.m718a(str2, ",", MediaSessionImplBase.DEFAULT_MEDIA_SESSION_TAG_DELIM, false, 4, (Object) null)) == null || (d2 = C14964u.m729d(a)) == null)) {
                d = d2.doubleValue();
                return d;
            }
        }
        d = 0.0d;
        return d;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("[");
        String[] strArr = this.f32542h;
        if (strArr != null) {
            for (String str : strArr) {
                if (sb.length() != 1) {
                    sb.append(UserProfile.CARD_CATE_SEPARATOR);
                }
                sb.append(str);
            }
        }
        sb.append("]");
        return "name: " + this.f32535a + ", price: " + this.f32536b + ", period: " + this.f32537c + ", order: " + this.f32538d + ", number: " + this.f32539e + ", names: " + ((Object) sb);
    }
}
