package com.facebook.internal.logging.monitor;
/* loaded from: classes-dex2jar.jar:com/facebook/internal/logging/monitor/PerformanceEventName.class */
public enum PerformanceEventName {
    EVENT_NAME_FOR_TEST_FIRST("EVENT_NAME_FOR_TEST_FIRST"),
    EVENT_NAME_FOR_TEST_SECOND("EVENT_NAME_FOR_TEST_SECOND"),
    FB_CORE_STARTUP("FB_CORE_STARTUP");
    
    private String eventName;

    PerformanceEventName(String str) {
        this.eventName = str;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.eventName;
    }
}
