package com.fasterxml.jackson.databind.jsonFormatVisitors;

import com.callapp.contacts.model.Constants;
import com.fasterxml.jackson.annotation.JsonValue;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat.class */
public enum JsonValueFormat {
    COLOR("color"),
    DATE("date"),
    DATE_TIME("date-time"),
    EMAIL("email"),
    HOST_NAME("host-name"),
    IP_ADDRESS("ip-address"),
    IPV6("ipv6"),
    PHONE(Constants.EXTRA_PHONE_NUMBER),
    REGEX("regex"),
    STYLE("style"),
    TIME("time"),
    URI("uri"),
    UTC_MILLISEC("utc-millisec"),
    UUID("uuid");
    
    private final String _desc;

    JsonValueFormat(String str) {
        this._desc = str;
    }

    @Override // java.lang.Enum
    @JsonValue
    public final String toString() {
        return this._desc;
    }
}
