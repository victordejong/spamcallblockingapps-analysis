package com.truecaller.tracking.events;

import org.apache.avro.Schema;
import org.apache.avro.generic.GenericEnumSymbol;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes15-dex2jar.jar:com/truecaller/tracking/events/AppSubscriptionType.class */
public enum AppSubscriptionType implements GenericEnumSymbol<AppSubscriptionType> {
    FREE,
    PREMIUM,
    GOLD;
    
    public static final Schema SCHEMA$ = C22128a.m8613i0("{\"type\":\"enum\",\"name\":\"AppSubscriptionType\",\"namespace\":\"com.truecaller.tracking.events\",\"doc\":\"iOS's application subscription type\",\"symbols\":[\"FREE\",\"PREMIUM\",\"GOLD\"]}");

    public static Schema getClassSchema() {
        return SCHEMA$;
    }

    public Schema getSchema() {
        return SCHEMA$;
    }
}
