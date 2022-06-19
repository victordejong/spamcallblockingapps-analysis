package p193e.p194a.p291a3;

import com.truecaller.blocking.ActionSource;
import com.truecaller.blocking.C3554R;
import java.util.List;
import s1.u.i;
import s1.z.c.l;
/* renamed from: e.a.a3.c */
/* loaded from: classes6-dex2jar.jar:e/a/a3/c.class */
public final class C7427c {

    /* renamed from: a */
    public static final List<ActionSource> f23600a = i.T(new ActionSource[]{ActionSource.NONE, ActionSource.CUSTOM_WHITELIST, ActionSource.SPAMMER_FROM_SEARCH});

    /* renamed from: a */
    public static final ActionSource m29644a(String str) {
        ActionSource actionSource;
        ActionSource[] values = ActionSource.values();
        int i = 0;
        while (true) {
            if (i >= 12) {
                actionSource = null;
                break;
            }
            ActionSource actionSource2 = values[i];
            if (l.a(actionSource2.name(), str)) {
                actionSource = actionSource2;
                break;
            }
            i++;
        }
        if (actionSource == null) {
            actionSource = ActionSource.NONE;
        }
        return actionSource;
    }

    /* renamed from: b */
    public static final int m29643b(ActionSource actionSource) {
        int i;
        l.e(actionSource, "$this$title");
        switch (actionSource.ordinal()) {
            case 0:
                throw new UnsupportedOperationException("There is no string for NONE. You must check this above in the callstack");
            case 1:
                i = C3554R.string.blocking_action_src_unknown;
                break;
            case 2:
                i = C3554R.string.blocking_action_src_non_phonebook;
                break;
            case 3:
                i = C3554R.string.blocking_action_src_foreign;
                break;
            case 4:
                i = C3554R.string.blocking_action_src_neighbour_spoofing;
                break;
            case 5:
                i = C3554R.string.blocking_action_src_indian_registered_telemarketer;
                break;
            case 6:
                i = C3554R.string.blocking_action_src_top_spammer;
                break;
            case 7:
                i = C3554R.string.blocking_action_src_blacklisted_number;
                break;
            case 8:
                i = C3554R.string.blocking_action_src_blacklisted_country;
                break;
            case 9:
                i = C3554R.string.blocking_action_src_blacklisted_wildcard;
                break;
            case 10:
                throw new UnsupportedOperationException("There is no string for CUSTOM_WHITELIST. You must check this above in the callstack");
            case 11:
                throw new UnsupportedOperationException("There is no string for SPAMMER_FROM_SEARCH. You must check this above in the callstack");
            default:
                throw new s1.i();
        }
        return i;
    }
}
