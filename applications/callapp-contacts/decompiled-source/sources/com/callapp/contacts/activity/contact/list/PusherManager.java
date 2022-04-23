package com.callapp.contacts.activity.contact.list;

import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.contacts.util.Activities;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/list/PusherManager.class */
public class PusherManager {

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/list/PusherManager$PusherStates.class */
    public enum PusherStates {
        DEFAULT_NO_PUSHER(0),
        SHOW_ALLOW_DRAW_OVERLAY(4),
        MISSING_AUTO_START_PERMISSION(5),
        HUAWEI_PROTECTED_APPS(6);
        
        private final int id;

        PusherStates(int i) {
            this.id = i;
        }

        public final int getValue() {
            return this.id;
        }
    }

    public static PusherStates getPusherStateByRules() {
        return Activities.g() ? PusherStates.MISSING_AUTO_START_PERMISSION : Activities.f() ? PusherStates.HUAWEI_PROTECTED_APPS : (PhoneManager.get().isDefaultSystemPhoneApp() || Activities.e()) ? PusherStates.DEFAULT_NO_PUSHER : PusherStates.SHOW_ALLOW_DRAW_OVERLAY;
    }
}
