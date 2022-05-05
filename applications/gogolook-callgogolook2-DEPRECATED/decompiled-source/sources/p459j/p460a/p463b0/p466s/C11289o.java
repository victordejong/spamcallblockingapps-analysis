package p459j.p460a.p463b0.p466s;

import android.text.SpannableString;
import android.text.TextUtils;
import android.text.style.ForegroundColorSpan;
import p459j.p460a.p582w0.C14108o4;
import p626l.p631e0.C14949k;
import p626l.p631e0.C14967x;
import p626l.p641z.p643d.C15149k;
/* renamed from: j.a.b0.s.o */
/* loaded from: classes2-dex2jar.jar:j/a/b0/s/o.class */
public final class C11289o {

    /* renamed from: a */
    public static final C11289o f25341a = new C11289o();

    /* JADX WARN: Code restructure failed: missing block: B:76:0x0268, code lost:
        if (r0.mo9792d(r0.charAt(r25)) != false) goto L_0x026b;
     */
    /* JADX WARN: Removed duplicated region for block: B:130:0x02d1 A[EDGE_INSN: B:130:0x02d1->B:93:0x02d1 ?: BREAK  , SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:91:0x02c1 A[LOOP:4: B:67:0x0224->B:91:0x02c1, LOOP_END] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.CharSequence m9884a(java.lang.String r8, java.lang.String r9, int r10) {
        /*
            Method dump skipped, instructions count: 876
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p463b0.p466s.C11289o.m9884a(java.lang.String, java.lang.String, int):java.lang.CharSequence");
    }

    /* renamed from: a */
    public final CharSequence m9883a(String str, String str2, String str3, int i) {
        C15149k.m377b(str2, "displayNumber");
        SpannableString spannableString = null;
        if (str3 != null) {
            if (!(str3.length() > 0)) {
                str3 = null;
            }
            spannableString = null;
            if (str3 != null) {
                spannableString = null;
                if (str != null) {
                    spannableString = null;
                    if (!TextUtils.isEmpty(str)) {
                        int a = C14967x.m703a((CharSequence) str, str3, 0, false, 6, (Object) null);
                        if (a >= 0) {
                            spannableString = new SpannableString(str);
                            spannableString.setSpan(new ForegroundColorSpan(i), a, str3.length() + a, 0);
                        } else {
                            String l = C14108o4.m2474l(str);
                            if (!TextUtils.equals(str, l)) {
                                C15149k.m383a((Object) l, "e164");
                                int a2 = C14967x.m703a((CharSequence) l, str3, 0, false, 6, (Object) null);
                                if (a2 >= 0) {
                                    spannableString = new SpannableString(l);
                                    spannableString.setSpan(new ForegroundColorSpan(i), a2, str3.length() + a2, 0);
                                }
                            }
                            String a3 = new C14949k("\\s").m748a(str2, "");
                            spannableString = null;
                            if (!TextUtils.equals(str, a3)) {
                                spannableString = null;
                                if (!TextUtils.equals(l, a3)) {
                                    int a4 = C14967x.m703a((CharSequence) a3, str3, 0, false, 6, (Object) null);
                                    spannableString = null;
                                    if (a4 >= 0) {
                                        spannableString = new SpannableString(a3);
                                        spannableString.setSpan(new ForegroundColorSpan(i), a4, str3.length() + a4, 0);
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        return spannableString;
    }

    /* renamed from: a */
    public final String m9885a(String str, int i) {
        boolean z = i == 17 || i == 19;
        if (str != null) {
            String a = C14108o4.m2493a(str, true, z);
            C15149k.m383a((Object) a, "UtilsTelephony.getDispla… isIncomingOrMissingCall)");
            return a;
        }
        C15149k.m378b();
        throw null;
    }
}
