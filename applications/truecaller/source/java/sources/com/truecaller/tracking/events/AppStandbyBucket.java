package com.truecaller.tracking.events;

import org.apache.avro.Schema;
import org.apache.avro.generic.GenericEnumSymbol;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes15-dex2jar.jar:com/truecaller/tracking/events/AppStandbyBucket.class */
public enum AppStandbyBucket implements GenericEnumSymbol<AppStandbyBucket> {
    ACTIVE,
    WORKING_SET,
    FREQUENT,
    RARE,
    RESTRICTED;
    
    public static final Schema SCHEMA$ = C22128a.m8613i0("{\"type\":\"enum\",\"name\":\"AppStandbyBucket\",\"namespace\":\"com.truecaller.tracking.events\",\"doc\":\"Android's application Standby bucket types\",\"symbols\":[\"ACTIVE\",\"WORKING_SET\",\"FREQUENT\",\"RARE\",\"RESTRICTED\"]}");

    public static Schema getClassSchema() {
        return SCHEMA$;
    }

    public Schema getSchema() {
        return SCHEMA$;
    }
}
