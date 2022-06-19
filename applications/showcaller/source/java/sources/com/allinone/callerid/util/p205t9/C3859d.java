package com.allinone.callerid.util.p205t9;

import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.ForegroundColorSpan;
import com.allinone.callerid.search.CallLogBean;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import net.sourceforge.pinyin4j.format.exception.BadHanyuPinyinOutputFormatCombination;
import p020b.p041h.p049k.C1596g;
import p330f.p331a.p332a.C9481c;
import p330f.p331a.p332a.p333e.C9483a;
import p330f.p331a.p332a.p333e.C9484b;
import p330f.p331a.p332a.p333e.C9485c;
import p330f.p331a.p332a.p333e.C9486d;
/* renamed from: com.allinone.callerid.util.t9.d */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/t9/d.class */
public final class C3859d {

    /* renamed from: b */
    private static final C9484b f12177b;

    /* renamed from: c */
    private static final C1596g<Set<String>> f12178c = new C1596g<>(4);

    /* renamed from: a */
    private static final AbstractC3856a f12176a = new C3860a();

    /* renamed from: d */
    private static final Comparator<CallLogBean> f12179d = new C3861b();

    /* renamed from: com.allinone.callerid.util.t9.d$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/t9/d$a.class */
    class C3860a implements AbstractC3856a {
        C3860a() {
        }

        /* JADX WARN: Finally extract failed */
        @Override // com.allinone.callerid.util.p205t9.AbstractC3856a
        /* renamed from: a */
        public String[] mo23933a(char c) {
            Set set = (Set) C3859d.f12178c.mo22686a();
            HashSet hashSet = set;
            if (set == null) {
                hashSet = new HashSet();
            }
            try {
                try {
                    String[] m497c = C9481c.m497c(c, C3859d.f12177b);
                    if (m497c == null) {
                        hashSet.clear();
                        C3859d.f12178c.mo22685b(hashSet);
                        return null;
                    }
                    hashSet.addAll(Arrays.asList(m497c));
                    String[] strArr = (String[]) hashSet.toArray(new String[hashSet.size()]);
                    hashSet.clear();
                    C3859d.f12178c.mo22685b(hashSet);
                    return strArr;
                } catch (BadHanyuPinyinOutputFormatCombination e) {
                    e.printStackTrace();
                    hashSet.clear();
                    C3859d.f12178c.mo22685b(hashSet);
                    return null;
                }
            } catch (Throwable th) {
                hashSet.clear();
                C3859d.f12178c.mo22685b(hashSet);
                throw th;
            }
        }
    }

    /* renamed from: com.allinone.callerid.util.t9.d$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/t9/d$b.class */
    class C3861b implements Comparator<CallLogBean> {
        C3861b() {
        }

        /* renamed from: b */
        private int m23931b(T9MatchInfo t9MatchInfo) {
            int i = 0;
            while (t9MatchInfo != null) {
                i += t9MatchInfo.m23955b();
                t9MatchInfo = t9MatchInfo.m23954c();
            }
            return i;
        }

        /* renamed from: a */
        public int compare(CallLogBean callLogBean, CallLogBean callLogBean2) {
            int m23951f;
            int m23951f2;
            int m23951f3;
            int m23951f4;
            T9MatchInfo t9MatchInfo = callLogBean.f11512f0;
            T9MatchInfo t9MatchInfo2 = callLogBean2.f11512f0;
            if (!t9MatchInfo.m23956a()) {
                if (t9MatchInfo2.m23956a()) {
                    return 1;
                }
                T9MatchInfo t9MatchInfo3 = callLogBean.f11514g0;
                T9MatchInfo t9MatchInfo4 = callLogBean2.f11514g0;
                if (!t9MatchInfo3.m23956a()) {
                    return t9MatchInfo4.m23956a() ? 1 : 0;
                } else if (!t9MatchInfo4.m23956a() || (m23951f = t9MatchInfo3.m23951f()) < (m23951f2 = t9MatchInfo4.m23951f())) {
                    return -1;
                } else {
                    if (m23951f <= m23951f2) {
                        return callLogBean.m24880o().compareToIgnoreCase(callLogBean2.m24880o());
                    }
                    return 1;
                }
            } else if (!t9MatchInfo2.m23956a() || (m23951f3 = t9MatchInfo.m23951f()) < (m23951f4 = t9MatchInfo2.m23951f())) {
                return -1;
            } else {
                if (m23951f3 > m23951f4) {
                    return 1;
                }
                int m23931b = m23931b(t9MatchInfo);
                int m23931b2 = m23931b(t9MatchInfo2);
                int length = (callLogBean.m24884m().length() - m23931b) - (callLogBean2.m24884m().length() - m23931b2);
                if (length != 0) {
                    if (m23931b < m23931b2) {
                        return 1;
                    }
                    if (m23931b <= m23931b2) {
                        return length;
                    }
                    return -1;
                }
                if (m23931b != m23931b2) {
                    if (callLogBean.m24884m().length() > callLogBean2.m24884m().length()) {
                        return 1;
                    }
                    if (callLogBean.m24884m().length() < callLogBean2.m24884m().length()) {
                        return -1;
                    }
                }
                return callLogBean.m24884m().compareToIgnoreCase(callLogBean2.m24884m());
            }
        }
    }

    static {
        C9484b c9484b = new C9484b();
        f12177b = c9484b;
        c9484b.m490e(C9483a.f40352a);
        c9484b.m489f(C9485c.f40359b);
        c9484b.m488g(C9486d.f40363b);
    }

    /* renamed from: c */
    public static String m23936c(String str) {
        return C3862e.m23930a(str, f12176a);
    }

    /* renamed from: d */
    public static List<CallLogBean> m23935d(List<CallLogBean> list, String str) {
        ArrayList arrayList = new ArrayList();
        if (list != null && list.size() > 0) {
            for (CallLogBean callLogBean : list) {
                T9MatchInfo m23943c = C3858c.m23943c(callLogBean.f11518i0, str);
                T9MatchInfo m23940f = C3858c.m23940f(callLogBean.m24880o(), str);
                if (m23943c.m23956a() || m23940f.m23956a()) {
                    new CallLogBean();
                    callLogBean.f11512f0 = m23943c;
                    callLogBean.f11514g0 = m23940f;
                    arrayList.add(callLogBean);
                }
            }
            Collections.sort(arrayList, f12179d);
        }
        return arrayList;
    }

    /* renamed from: e */
    public static SpannableStringBuilder m23934e(SpannableStringBuilder spannableStringBuilder, T9MatchInfo t9MatchInfo, String str, int i) {
        spannableStringBuilder.clear();
        if (!TextUtils.isEmpty(str)) {
            spannableStringBuilder.append((CharSequence) str);
            int length = str.length();
            while (t9MatchInfo != null) {
                int m23951f = t9MatchInfo.m23951f();
                int m23955b = t9MatchInfo.m23955b() + m23951f;
                if (t9MatchInfo.m23956a() && m23951f < length && m23955b <= length) {
                    spannableStringBuilder.setSpan(new ForegroundColorSpan(i), m23951f, m23955b, 33);
                }
                t9MatchInfo = t9MatchInfo.m23954c();
            }
        }
        return spannableStringBuilder;
    }
}
