package p000;

import java.io.Serializable;
import java.util.EnumSet;
import p000.q71;
/* renamed from: n91 */
/* loaded from: classes3-dex2jar.jar:n91.class */
public class n91 {

    /* JADX WARN: Init of enum c can be incorrect */
    /* JADX WARN: Init of enum d can be incorrect */
    /* renamed from: n91$a */
    /* loaded from: classes3-dex2jar.jar:n91$a.class */
    public enum EnumC1484a {
        NONE(i61.phone_filter_none),
        BLACK_LIST(r0),
        BLACK_LIST_MASK(r0),
        WHITE_LIST(i61.phone_filter_white),
        PRIVATE_CALL(i61.phone_filter_private),
        UNKNOWN_CALL(i61.phone_filter_unknown),
        FAKE_CALLER(i61.phone_filter_fake),
        NON_NUMERIC_CALLER(i61.phone_filter_non_numeric),
        INTERNATIONAL_CALL(i61.phone_filter_international),
        EMAILED_TEXT_MESSAGE(i61.phone_filter_emailed),
        TOLL_FREE_NUMBER(i61.phone_filter_toll_free),
        CONTACT(i61.phone_filter_contact),
        COMMUNITY_BLACKLIST(i61.phone_filter_community),
        DND(i61.phone_filter_dnd),
        REPEATED_CALL(i61.phone_filter_repeated_call),
        VOICE_MAILED_ANDROID(i61.phone_filter_voicemailed),
        EMERGENCY_NUMBER(i61.phone_filter_emergency_number),
        SPOOFED_SIMILAR_NUMBER(i61.phone_filter_similar_number),
        NOT_IN_ALLOWED(i61.phone_filter_reason_not_in_allowed),
        CCH_SIMILAR_NUMBER(i61.phone_filter_reason_similar_number),
        CCH_CARRIER_MARKED_CALL(i61.phone_filter_reason_carrier_marked),
        ATTORNEY(i61.phone_filter_reason_attorney),
        SUSPECTED_SPAM(i61.phone_filter_suspected_spam),
        CARRIER_NAME(i61.phone_filter_carrier_name);
        

        /* renamed from: a */
        public int f7081a;

        static {
            int i = i61.phone_filter_black;
        }

        EnumC1484a(int i) {
            this.f7081a = i;
        }

        /* renamed from: a */
        public int m1214a() {
            return this.f7081a;
        }
    }

    /* renamed from: n91$b */
    /* loaded from: classes3-dex2jar.jar:n91$b.class */
    public static class C1485b implements Serializable {

        /* renamed from: a */
        public EnumC1484a f7082a;

        /* renamed from: b */
        public boolean f7083b;

        /* renamed from: c */
        public q71.EnumC1614a f7084c;

        /* renamed from: d */
        public String f7085d;

        /* renamed from: f */
        public String f7086f;

        /* renamed from: g */
        public Integer f7087g;

        /* renamed from: h */
        public EnumSet<q71.EnumC1618e> f7088h;

        /* renamed from: j */
        public boolean f7089j;

        public C1485b() {
            this.f7082a = EnumC1484a.NONE;
            this.f7083b = false;
            this.f7084c = q71.EnumC1614a.DEFAULT;
            this.f7085d = null;
            this.f7086f = null;
            this.f7087g = null;
            this.f7088h = EnumSet.allOf(q71.EnumC1618e.class);
            this.f7089j = true;
        }

        public C1485b(C1485b c1485b) {
            this.f7082a = EnumC1484a.NONE;
            this.f7083b = false;
            this.f7084c = q71.EnumC1614a.DEFAULT;
            this.f7085d = null;
            this.f7086f = null;
            this.f7087g = null;
            this.f7088h = EnumSet.allOf(q71.EnumC1618e.class);
            this.f7089j = true;
            this.f7082a = c1485b.f7082a;
            this.f7083b = c1485b.f7083b;
            this.f7084c = c1485b.f7084c;
            this.f7085d = c1485b.f7085d;
            this.f7086f = c1485b.f7086f;
            this.f7087g = c1485b.f7087g;
            this.f7088h = c1485b.f7088h;
            this.f7089j = c1485b.f7089j;
        }

        /* renamed from: b */
        public boolean m1212b() {
            return this.f7089j;
        }
    }

    /* renamed from: a */
    public static C1485b m1216a(i91 i91Var, q71.EnumC1618e enumC1618e) {
        return m1215b(i91Var, enumC1618e, Boolean.TRUE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:49:0x0151, code lost:
        if (r0.f8638h != p000.i91.EnumC1446b.FULL) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x0154, code lost:
        r0.f7085d = r0.m161L();
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x0178, code lost:
        if (r0.f8638h != p000.i91.EnumC1446b.FULL) goto L50;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static p000.n91.C1485b m1215b(p000.i91 r5, p000.q71.EnumC1618e r6, java.lang.Boolean r7) {
        /*
            Method dump skipped, instructions count: 1806
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p000.n91.m1215b(i91, q71$e, java.lang.Boolean):n91$b");
    }
}
