package com.criteo.sync.sdk;
/* loaded from: classes-dex2jar.jar:com/criteo/sync/sdk/Duration.class */
public class Duration {
    public long millis;

    public Duration(double d) {
        this.millis = (long) d;
    }

    public Duration(long j) {
        this.millis = j;
    }

    public static Duration ofHours(double d) {
        if (d <= 2.147483647E9d) {
            return new Duration(d * 3600.0d * 1000.0d);
        }
        throw new IllegalArgumentException("Value too large");
    }

    public static Duration ofMillis(long j) {
        return new Duration(j);
    }

    public int toHours() {
        return (int) (this.millis / 3600000);
    }

    public long toMillis() {
        return this.millis;
    }

    public int toSeconds() {
        return (int) (this.millis / 1000);
    }
}
