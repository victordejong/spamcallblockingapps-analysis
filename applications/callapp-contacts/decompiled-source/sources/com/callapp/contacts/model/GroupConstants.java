package com.callapp.contacts.model;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/GroupConstants.class */
public class GroupConstants {
    public static final int GROUP_ID_CHANNEL_MESSEGING = 2;
    public static final int GROUP_ID_CHANNEL_SOCIAL = 1;
    private static int idToGenerate = Integer.MAX_VALUE;

    public static int getGroupIcon(int i) {
        if (i != 1) {
            return i != 2 ? 0 : 2131231768;
        }
        return 2131231900;
    }

    public static int idForItemWithoutGroup() {
        int i = idToGenerate;
        idToGenerate = i - 1;
        return i;
    }
}
