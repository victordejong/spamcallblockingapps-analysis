package p193e.p194a.p195a.p231g;

import com.amazon.device.ads.DtbConstants;
import com.truecaller.messaging.data.types.InboxTab;
import javax.inject.Inject;
import p193e.p194a.p1272u3.C20592g;
import s1.i;
import s1.z.c.l;
/* renamed from: e.a.a.g.y */
/* loaded from: classes6-dex2jar.jar:e/a/a/g/y.class */
public final class C6250y implements AbstractC6249x {

    /* renamed from: a */
    public final C20592g f21008a;

    @Inject
    public C6250y(C20592g c20592g) {
        l.e(c20592g, "featuresRegistry");
        this.f21008a = c20592g;
    }

    @Override // p193e.p194a.p195a.p231g.AbstractC6249x
    /* renamed from: a */
    public String mo31549a(InboxTab inboxTab) {
        String str;
        l.e(inboxTab, "inboxTab");
        if (this.f21008a.m10963h0().isEnabled()) {
            int ordinal = inboxTab.ordinal();
            if (ordinal == 0) {
                str = "\n        (type NOT IN (2, 3) OR history_events_count > 0)\n            AND\n        blacklist_count = 0 \n            AND\n        (white_list_count > 0 OR outgoing_message_count > 0 OR phonebook_count > 0 OR (top_spammer_count = 0 AND is_spam = 0))\n             AND\n        latest_message_id IS NOT NULL\n    ";
            } else if (ordinal == 1) {
                str = "\n        type IN (2, 3)\n            AND \n        history_events_count = 0 \n            AND \n        blacklist_count = 0 \n            AND \n        latest_message_id IS NOT NULL\n    ";
            } else if (ordinal == 2) {
                throw new IllegalArgumentException("ConversationFilterSelector is not needed for Business tab");
            } else {
                if (ordinal == 3) {
                    str = "\n        (split_criteria = 1 \n            OR\n        split_criteria = 2 \n            OR \n        blacklist_count > 0 \n            OR \n        ((top_spammer_count > 0 OR is_spam = 1) AND phonebook_count = 0 AND white_list_count = 0 AND outgoing_message_count = 0))\n             AND\n        latest_message_id IS NOT NULL\n    ";
                } else if (ordinal != 4) {
                    throw new i();
                } else {
                    str = "\n        (\n        type IN (2, 3)\n            AND \n        history_events_count = 0 \n            AND \n        blacklist_count = 0 \n            AND \n        latest_message_id IS NOT NULL\n    ) AND split_criteria != 0\n             AND\n        latest_message_id IS NOT NULL\n    ";
                }
            }
        } else {
            int ordinal2 = inboxTab.ordinal();
            if (ordinal2 == 0) {
                str = "\n        (type NOT IN (2, 3) OR history_events_count > 0)\n            AND\n        blacklist_count = 0 \n            AND\n        \n        (white_list_count > 0 OR outgoing_message_count > 0 OR phonebook_count > 0 OR (top_spammer_count = 0 AND is_spam = 0)) \n    \n             AND\n        latest_message_id IS NOT NULL\n    ";
            } else if (ordinal2 == 1) {
                str = "\n        type IN (2, 3)\n            AND \n        history_events_count = 0\n            AND \n        blacklist_count = 0 \n            AND \n         \n        (white_list_count > 0 OR outgoing_message_count > 0 OR phonebook_count > 0 OR (top_spammer_count = 0 AND is_spam = 0)) \n    \n            AND\n        latest_message_id IS NOT NULL\n    ";
            } else if (ordinal2 == 2) {
                throw new IllegalArgumentException("ConversationFilterSelector is not needed for Business tab");
            } else {
                if (ordinal2 == 3) {
                    str = "\n        (blacklist_count > 0 \n            OR \n        ((top_spammer_count > 0 OR is_spam = 1) AND phonebook_count = 0 AND white_list_count = 0 AND outgoing_message_count = 0))\n          AND\n        latest_message_id IS NOT NULL\n    ";
                } else if (ordinal2 != 4) {
                    throw new i();
                } else {
                    str = DtbConstants.NETWORK_TYPE_UNKNOWN;
                }
            }
        }
        return str;
    }
}
