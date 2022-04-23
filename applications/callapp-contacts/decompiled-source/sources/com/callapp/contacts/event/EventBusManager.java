package com.callapp.contacts.event;

import com.callapp.contacts.event.bus.EventBus;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/event/EventBusManager.class */
public class EventBusManager {

    /* renamed from: a  reason: collision with root package name */
    public static final EventBus f14368a = new EventBus();

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/event/EventBusManager$CallAppDataType.class */
    public enum CallAppDataType {
        CONTACTS(0),
        FAVORITES(1),
        BLOCK(2),
        RECENT_CALLS(3),
        SIM_CHANGED(5),
        CALL(6),
        REMINDER(7),
        REFRESH_SEARCH(8),
        CALL_RECORDERS(9),
        CALL_RECORD_CHANGED(10),
        IDENTIFY_CONTACTS_FINISHED(11),
        OVERLAY_LINK_CLICKED(12),
        LAST_SEEN_CALL_LOG_TIMESTAMP(13),
        CALLAPP_PLUS_UNREAD_COUNT_CHANGED(14),
        MARKET_ITEM_ADDED(15),
        CALL_RECORDING_LAST_SHOWN_MESSAGE_CHANGED(16),
        SPAM_CALL_UNREAD_COUNT_CHANGED(17),
        IDENTIFIED_CONTACTS_DATA_CHANGED(18),
        HANG_UP(19),
        SET_AS_DEFAULT_PHONE(20),
        SUPER_SKIN_CHANGED(21),
        NETWORK_DATA_CONNECTIVITY_CHANGED(22),
        UNSET_INCOGNITO(23),
        INSIGHTS(24);
        
        public boolean isObserverOriginated = false;
        int type;

        CallAppDataType(int i) {
            this.type = i;
        }
    }
}
