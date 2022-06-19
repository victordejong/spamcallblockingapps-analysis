package org.mistergroup.shouldianswer.model;

import android.content.Context;
import kotlin.NoWhenBranchMatchedException;
import kotlin.p081e.p083b.C1691e;
import kotlin.p081e.p083b.C1694h;
import org.mistergroup.shouldianswer.utils.C3134x;
/* renamed from: org.mistergroup.shouldianswer.model.k */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/model/k.class */
public enum EnumC2436k {
    INCOMING(1),
    OUTGOING(2),
    MISSED(3),
    VOICEMAIL(4),
    REJECTED(5),
    BLOCKED(6),
    ANSWERED_EXTERNALLY(7),
    UNKNOWN(0);
    

    /* renamed from: i */
    public static final C2437a f7111i = new C2437a(null);

    /* renamed from: k */
    private final int f7113k;

    /* renamed from: org.mistergroup.shouldianswer.model.k$a */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/model/k$a.class */
    public static final class C2437a {
        private C2437a() {
        }

        public /* synthetic */ C2437a(C1691e c1691e) {
            this();
        }

        /* renamed from: a */
        public final int m1023a(Context context, EnumC2436k enumC2436k) {
            int i;
            C1694h.m3117b(context, "context");
            C1694h.m3117b(enumC2436k, "value");
            switch (enumC2436k) {
                case INCOMING:
                    i = C3134x.f9269a.m26a(context, 2130969066);
                    break;
                case OUTGOING:
                    i = C3134x.f9269a.m26a(context, 2130969066);
                    break;
                case MISSED:
                    i = C3134x.f9269a.m26a(context, 2130969064);
                    break;
                case BLOCKED:
                    i = C3134x.f9269a.m26a(context, 2130969064);
                    break;
                case REJECTED:
                    i = C3134x.f9269a.m26a(context, 2130969064);
                    break;
                case VOICEMAIL:
                    i = C3134x.f9269a.m26a(context, 2130969064);
                    break;
                default:
                    i = 0;
                    break;
            }
            return i;
        }

        /* renamed from: a */
        public final EnumC2436k m1024a(int i) {
            EnumC2436k[] values;
            for (EnumC2436k enumC2436k : EnumC2436k.values()) {
                if (enumC2436k.m1025a() == i) {
                    return enumC2436k;
                }
            }
            return EnumC2436k.UNKNOWN;
        }

        /* renamed from: a */
        public final boolean m1022a(EnumC2436k enumC2436k) {
            C1694h.m3117b(enumC2436k, "callType");
            return enumC2436k == EnumC2436k.INCOMING || enumC2436k == EnumC2436k.BLOCKED || enumC2436k == EnumC2436k.REJECTED || enumC2436k == EnumC2436k.MISSED || enumC2436k == EnumC2436k.VOICEMAIL;
        }

        /* renamed from: b */
        public final int m1020b(EnumC2436k enumC2436k) {
            int i;
            C1694h.m3117b(enumC2436k, "value");
            switch (enumC2436k) {
                case INCOMING:
                    i = 2131230900;
                    break;
                case OUTGOING:
                    i = 2131230894;
                    break;
                case MISSED:
                    i = 2131230898;
                    break;
                case BLOCKED:
                    i = 2131230883;
                    break;
                case REJECTED:
                    i = 2131230892;
                    break;
                case VOICEMAIL:
                    i = 2131230954;
                    break;
                default:
                    i = 0;
                    break;
            }
            return i;
        }

        /* renamed from: b */
        public final String m1021b(Context context, EnumC2436k enumC2436k) {
            String str;
            C1694h.m3117b(context, "context");
            C1694h.m3117b(enumC2436k, "callType");
            switch (enumC2436k) {
                case INCOMING:
                    str = context.getString(2131755340);
                    C1694h.m3122a((Object) str, "context.getString(R.string.incoming_call)");
                    break;
                case OUTGOING:
                    str = context.getString(2131755425);
                    C1694h.m3122a((Object) str, "context.getString(R.string.outgoing_call)");
                    break;
                case MISSED:
                    str = context.getString(2131755379);
                    C1694h.m3122a((Object) str, "context.getString(R.string.missed_call)");
                    break;
                case VOICEMAIL:
                    str = context.getString(2131755557);
                    C1694h.m3122a((Object) str, "context.getString(R.string.voicemail)");
                    break;
                case REJECTED:
                    str = context.getString(2131755459);
                    C1694h.m3122a((Object) str, "context.getString(R.string.rejected)");
                    break;
                case BLOCKED:
                    str = context.getString(2131755170);
                    C1694h.m3122a((Object) str, "context.getString(R.string.blocked)");
                    break;
                case ANSWERED_EXTERNALLY:
                    str = context.getString(2131755149);
                    C1694h.m3122a((Object) str, "context.getString(R.string.answered_externally)");
                    break;
                case UNKNOWN:
                    str = context.getString(2131755548);
                    C1694h.m3122a((Object) str, "context.getString(R.string.unknown)");
                    break;
                default:
                    throw new NoWhenBranchMatchedException();
            }
            return str;
        }
    }

    EnumC2436k(int i) {
        this.f7113k = i;
    }

    /* renamed from: a */
    public final int m1025a() {
        return this.f7113k;
    }
}
