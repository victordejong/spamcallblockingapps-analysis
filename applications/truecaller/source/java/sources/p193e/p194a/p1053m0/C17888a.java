package p193e.p194a.p1053m0;

import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p372b0.p413i.p414e.C8456a;
import s1.z.b.l;
import s1.z.c.m;
/* renamed from: e.a.m0.a */
/* loaded from: classes8-dex2jar.jar:e/a/m0/a.class */
public final class C17888a implements C8456a.AbstractC8463g {

    /* renamed from: a */
    public final C20592g f50884a;

    /* renamed from: e.a.m0.a$a */
    /* loaded from: classes6-dex2jar.jar:e/a/m0/a$a.class */
    public static final class C17889a extends m implements l<String, CharSequence> {

        /* renamed from: c */
        public static final C17889a f50885c = new C17889a(0);

        /* renamed from: d */
        public static final C17889a f50886d = new C17889a(1);

        /* renamed from: b */
        public final /* synthetic */ int f50887b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C17889a(int i) {
            super(1);
            this.f50887b = i;
        }

        /* renamed from: d */
        public final Object m15712d(Object obj) {
            int i = this.f50887b;
            if (i == 0) {
                String str = (String) obj;
                return "?";
            } else if (i != 1) {
                throw null;
            } else {
                String str2 = (String) obj;
                return "?";
            }
        }
    }

    public C17888a(C20592g c20592g) {
        s1.z.c.l.e(c20592g, "featuresRegistry");
        this.f50884a = c20592g;
    }

    /* renamed from: a */
    public final String m15713a(int i) {
        String str;
        if (this.f50884a.m10963h0().isEnabled()) {
            if (i == 1) {
                str = "\n        (type NOT IN (2, 3) OR history_events_count > 0)\n            AND\n        blacklist_count = 0 \n            AND\n        (white_list_count > 0 OR outgoing_message_count > 0 OR phonebook_count > 0 OR (top_spammer_count = 0 AND is_spam = 0))\n             AND\n        latest_message_id IS NOT NULL\n    ";
            } else if (i != 2) {
                throw new IllegalArgumentException();
            } else {
                str = "\n        type IN (2, 3)\n            AND \n        history_events_count = 0 \n            AND \n        blacklist_count = 0 \n            AND \n        latest_message_id IS NOT NULL\n    ";
            }
        } else if (i == 1) {
            str = "\n        (type NOT IN (2, 3) OR history_events_count > 0)\n            AND\n        blacklist_count = 0 \n            AND\n        \n        (white_list_count > 0 OR outgoing_message_count > 0 OR phonebook_count > 0 OR (top_spammer_count = 0 AND is_spam = 0)) \n    \n             AND\n        latest_message_id IS NOT NULL\n    ";
        } else if (i != 2) {
            throw new IllegalArgumentException();
        } else {
            str = "\n        type IN (2, 3)\n            AND \n        history_events_count = 0\n            AND \n        blacklist_count = 0 \n            AND \n         \n        (white_list_count > 0 OR outgoing_message_count > 0 OR phonebook_count > 0 OR (top_spammer_count = 0 AND is_spam = 0)) \n    \n            AND\n        latest_message_id IS NOT NULL\n    ";
        }
        return str;
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0093, code lost:
        if (r12.intValue() == 4) goto L28;
     */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00c2  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0229  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x040b  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0419  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0438  */
    /* JADX WARN: Type inference failed for: r0v216, types: [long] */
    @Override // p193e.p194a.p372b0.p413i.p414e.C8456a.AbstractC8463g
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.database.Cursor mo15459c(p193e.p194a.p372b0.p413i.AbstractC8448a r11, p193e.p194a.p372b0.p413i.p414e.C8456a r12, android.net.Uri r13, java.lang.String[] r14, java.lang.String r15, java.lang.String[] r16, java.lang.String r17, android.os.CancellationSignal r18) {
        /*
            Method dump skipped, instructions count: 1100
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1053m0.C17888a.mo15459c(e.a.b0.i.a, e.a.b0.i.e.a, android.net.Uri, java.lang.String[], java.lang.String, java.lang.String[], java.lang.String, android.os.CancellationSignal):android.database.Cursor");
    }
}
