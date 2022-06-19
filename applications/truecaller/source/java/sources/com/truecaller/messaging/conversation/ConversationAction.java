package com.truecaller.messaging.conversation;

import com.truecaller.C2752R;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes5-dex2jar.jar:com/truecaller/messaging/conversation/ConversationAction.class */
public enum ConversationAction {
    TOP_SAVE(C2752R.C2753drawable.ic_save, C2752R.string.ConversationTopSave, 2130970409, 2131362013, C2752R.C2754id.action_save_title),
    TOP_BLOCK(C2752R.C2753drawable.ic_block, C2752R.string.ConversationDetailsActionBlock, 2130970409, C2752R.C2754id.action_block, C2752R.C2754id.action_block_title),
    TOP_UNBLOCK(C2752R.C2753drawable.ic_block, C2752R.string.ConversationDetailsActionUnblock, C2752R.attr.theme_spamColor, C2752R.C2754id.action_unblock, C2752R.C2754id.action_unblock_title);
    
    public String dynamicTitle;
    public final int icon;
    public final int menuId;
    public final int textViewId;
    public final int tint;
    public final int title;

    ConversationAction(int i, int i2, int i3, int i4, int i5) {
        this.menuId = i4;
        this.icon = i;
        this.title = i2;
        this.tint = i3;
        this.textViewId = i5;
    }

    public static ConversationAction findById(int i) {
        ConversationAction[] values = values();
        for (int i2 = 0; i2 < 3; i2++) {
            ConversationAction conversationAction = values[i2];
            if (conversationAction.menuId == i) {
                return conversationAction;
            }
        }
        return null;
    }

    public static List<Integer> getAllMenuItemIds() {
        ArrayList arrayList = new ArrayList();
        ConversationAction[] values = values();
        for (int i = 0; i < 3; i++) {
            arrayList.add(Integer.valueOf(values[i].menuId));
        }
        return arrayList;
    }
}
