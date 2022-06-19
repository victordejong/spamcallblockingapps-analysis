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
        

        /* renamed from: id */
        private final int f22610id;

        PusherStates(int i) {
            this.f22610id = i;
        }

        public final int getValue() {
            return this.f22610id;
        }
    }

    public static PusherStates getPusherStateByRules() {
        return Activities.m27639g() ? PusherStates.MISSING_AUTO_START_PERMISSION : Activities.m27640f() ? PusherStates.HUAWEI_PROTECTED_APPS : (PhoneManager.get().isDefaultSystemPhoneApp() || Activities.m27641e()) ? PusherStates.DEFAULT_NO_PUSHER : PusherStates.SHOW_ALLOW_DRAW_OVERLAY;
    }
}
