package com.truecaller.tracking.events;

import org.apache.avro.Schema;
import org.apache.avro.generic.GenericEnumSymbol;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes15-dex2jar.jar:com/truecaller/tracking/events/AppAddressBookPermission.class */
public enum AppAddressBookPermission implements GenericEnumSymbol<AppAddressBookPermission> {
    UNKNOWN,
    NOT_DETERMINED,
    NOT_GRANTED,
    GRANTED;
    
    public static final Schema SCHEMA$ = C22128a.m8613i0("{\"type\":\"enum\",\"name\":\"AppAddressBookPermission\",\"namespace\":\"com.truecaller.tracking.events\",\"doc\":\"iOS's application address book permission\",\"symbols\":[\"UNKNOWN\",\"NOT_DETERMINED\",\"NOT_GRANTED\",\"GRANTED\"]}");

    public static Schema getClassSchema() {
        return SCHEMA$;
    }

    public Schema getSchema() {
        return SCHEMA$;
    }
}
