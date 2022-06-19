package com.freshchat.consumer.sdk;

import android.os.Bundle;
import com.freshchat.consumer.sdk.p057j.C1626as;
import com.freshchat.consumer.sdk.p057j.C1723q;
import java.util.HashMap;
import java.util.Map;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/Event.class */
public class Event {
    private EventName eventName;
    private Map<Property, Object> properties;

    /* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/Event$EventName.class */
    public enum EventName {
        FCEventFAQCategoryListOpen("FCEventFAQCategoryListOpen"),
        FCEventFAQListOpen("FCEventFAQListOpen"),
        FCEventFAQOpen("FCEventFAQOpen"),
        FCEventBotFAQOpen("FCEventBotFAQOpen"),
        FCEventBotFAQVote("FCEventBotFAQVote"),
        FCEventFAQSearch("FCEventFAQSearch"),
        FCEventFAQVote("FCEventFAQVote"),
        FCEventChannelListOpen("FCEventChannelListOpen"),
        FCEventMessageSent("FCEventMessageSent"),
        FCEventConversationOpen("FCEventConversationOpen"),
        FCEventCsatOpen("FCEventCsatOpen"),
        FCEventCsatSubmit("FCEventCsatSubmit"),
        FCEventCsatExpiry("FCEventCsatExpiry"),
        FCEventLinkTap("FCEventLinkTap"),
        FCEventScreenView("FCEventScreenView"),
        FCEventMessageReceive("FCEventMessageReceive"),
        FCEventNotificationReceive("FCEventNotificationReceive"),
        FCEventIdTokenStatusChange("FCEventIdTokenStatusChange"),
        FCEventDropDownShow("FCEventDropDownShow"),
        FCEventDropDownOptionSelect("FCEventDropDownOptionSelect"),
        FCEventCarouselShow("FCEventCarouselShow"),
        FCEventCarouselOptionSelect("FCEventCarouselOptionSelect"),
        FCEventCarouselOptionView("FCEventCarouselOptionView"),
        FCEventCalendarFindTimeSlotClick("FCEventCalendarFindTimeSlotClick"),
        FCEventCalendarInviteCancel("FCEventCalendarInviteCancel"),
        FCEventCalendarNoTimeSlotFound("FCEventCalendarNoTimeSlotFound"),
        FCEventCalendarBookingSuccess("FCEventCalendarBookingSuccess"),
        FCEventCalendarBookingRetry("FCEventCalendarBookingRetry"),
        FCEventCalendarBookingFailure("FCEventCalendarBookingFailure"),
        FCEventShowOriginalClick("FCEventShowOriginalClick"),
        FCEventHideOriginalClick("FCEventHideOriginalClick");
        
        public static Map<String, EventName> eventNameMap = new HashMap();
        public String name;

        static {
            try {
                EventName[] values = values();
                for (int i = 0; i < 31; i++) {
                    EventName eventName = values[i];
                    eventNameMap.put(eventName.name, eventName);
                }
            } catch (Exception e) {
                C1723q.m39823a(e);
            }
        }

        EventName(String str) {
            this.name = str;
        }

        public static EventName get(Bundle bundle) {
            if (bundle == null || !bundle.containsKey("event_name")) {
                return null;
            }
            return eventNameMap.get(bundle.getString("event_name"));
        }

        public String getName() {
            return this.name;
        }

        @Override // java.lang.Enum
        public String toString() {
            return this.name;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/Event$Property.class */
    public enum Property {
        FCPropertyInputTags("FCPropertyInputTags"),
        FCPropertyFAQCategoryID("FCPropertyFAQCategoryID"),
        FCPropertyFAQCategoryName("FCPropertyFAQCategoryName"),
        FCPropertyFAQID("FCPropertyFAQID"),
        FCPropertyFAQTitle("FCPropertyFAQTitle"),
        FCPropertySearchKey("FCPropertySearchKey"),
        FCPropertySearchFAQCount("FCPropertySearchFAQCount"),
        FCPropertyIsRelevant("FCPropertyIsRelevant"),
        FCPropertyIsHelpful("FCPropertyIsHelpful"),
        FCPropertyChannelID("FCPropertyChannelID"),
        FCPropertyConversationID("FCPropertyConversationID"),
        FCPropertyChannelName("FCPropertyChannelName"),
        FCPropertyResolutionStatus("FCPropertyResolutionStatus"),
        FCPropertyRating("FCPropertyRating"),
        FCPropertyComment("FCPropertyComment"),
        FCPropertyURL("FCPropertyURL"),
        FCPropertyOption("FCPropertyOption"),
        FCPropertyInviteId("FCPropertyInviteId"),
        FCPropertyBotFAQTitle("FCPropertyBotFAQTitle"),
        FCPropertyBotFAQReferenceId("FCPropertyBotFAQReferenceId"),
        FCPropertyBotFAQPlaceholderReferenceId("FCPropertyBotFAQPlaceholderReferenceId"),
        FCPropertyBotFAQFeedback("FCPropertyBotFAQFeedback");
        
        public static Map<String, Property> eventPropertyMap = new HashMap();
        private String name;

        static {
            try {
                Property[] values = values();
                for (int i = 0; i < 22; i++) {
                    Property property = values[i];
                    eventPropertyMap.put(property.name, property);
                }
            } catch (Exception e) {
                C1723q.m39823a(e);
            }
        }

        Property(String str) {
            this.name = str;
        }

        public static Property get(String str) {
            if (C1626as.isEmpty(str)) {
                return null;
            }
            return eventPropertyMap.get(str);
        }

        public String getName() {
            return this.name;
        }

        @Override // java.lang.Enum
        public String toString() {
            return this.name;
        }
    }

    public EventName getEventName() {
        return this.eventName;
    }

    public Map<Property, Object> getProperties() {
        return this.properties;
    }

    public void setEventName(EventName eventName) {
        this.eventName = eventName;
    }

    public void setProperties(Map<Property, Object> map) {
        this.properties = map;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("Event{eventName=");
        m8728C.append(this.eventName);
        m8728C.append(", properties=");
        m8728C.append(this.properties);
        m8728C.append('}');
        return m8728C.toString();
    }
}
