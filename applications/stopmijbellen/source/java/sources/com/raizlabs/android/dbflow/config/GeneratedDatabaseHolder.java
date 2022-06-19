package com.raizlabs.android.dbflow.config;

import java.math.BigDecimal;
import java.math.BigInteger;
import java.sql.Date;
import java.sql.Time;
import java.sql.Timestamp;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.UUID;
import p235s8.C4326a;
import p235s8.C4327b;
import p235s8.C4328c;
import p235s8.C4329d;
import p235s8.C4330e;
import p235s8.C4331f;
/* loaded from: classes2-dex2jar.jar:com/raizlabs/android/dbflow/config/GeneratedDatabaseHolder.class */
public final class GeneratedDatabaseHolder extends AbstractC2117d {
    public GeneratedDatabaseHolder() {
        this.typeConverters.put(Boolean.class, new C4328c());
        this.typeConverters.put(Character.class, new C4330e());
        this.typeConverters.put(BigDecimal.class, new C4326a(0));
        this.typeConverters.put(BigInteger.class, new C4327b(0));
        this.typeConverters.put(Date.class, new C4331f());
        this.typeConverters.put(Time.class, new C4331f());
        this.typeConverters.put(Timestamp.class, new C4331f());
        this.typeConverters.put(Calendar.class, new C4329d());
        this.typeConverters.put(GregorianCalendar.class, new C4329d());
        this.typeConverters.put(java.util.Date.class, new C4326a(1));
        this.typeConverters.put(UUID.class, new C4327b(1));
        new C2114a(this);
    }
}
