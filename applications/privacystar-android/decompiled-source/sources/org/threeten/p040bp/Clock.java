package org.threeten.p040bp;

import java.io.Serializable;
import org.threeten.p040bp.jdk8.Jdk8Methods;
import org.threeten.p040bp.temporal.TemporalAmount;
/* renamed from: org.threeten.bp.Clock */
/* loaded from: classes3-dex2jar.jar:org/threeten/bp/Clock.class */
public abstract class Clock {

    /* renamed from: org.threeten.bp.Clock$FixedClock */
    /* loaded from: classes3-dex2jar.jar:org/threeten/bp/Clock$FixedClock.class */
    static final class FixedClock extends Clock implements Serializable {
        private static final long serialVersionUID = 7430389292664866958L;
        private final Instant instant;
        private final ZoneId zone;

        FixedClock(Instant instant, ZoneId zoneId) {
            this.instant = instant;
            this.zone = zoneId;
        }

        @Override // org.threeten.p040bp.Clock
        public boolean equals(Object obj) {
            if (!(obj instanceof FixedClock)) {
                return false;
            }
            FixedClock fixedClock = (FixedClock) obj;
            boolean z = false;
            if (this.instant.equals(fixedClock.instant)) {
                z = false;
                if (this.zone.equals(fixedClock.zone)) {
                    z = true;
                }
            }
            return z;
        }

        @Override // org.threeten.p040bp.Clock
        public ZoneId getZone() {
            return this.zone;
        }

        @Override // org.threeten.p040bp.Clock
        public int hashCode() {
            return this.instant.hashCode() ^ this.zone.hashCode();
        }

        @Override // org.threeten.p040bp.Clock
        public Instant instant() {
            return this.instant;
        }

        @Override // org.threeten.p040bp.Clock
        public long millis() {
            return this.instant.toEpochMilli();
        }

        public String toString() {
            return "FixedClock[" + this.instant + "," + this.zone + "]";
        }

        @Override // org.threeten.p040bp.Clock
        public Clock withZone(ZoneId zoneId) {
            return zoneId.equals(this.zone) ? this : new FixedClock(this.instant, zoneId);
        }
    }

    /* renamed from: org.threeten.bp.Clock$OffsetClock */
    /* loaded from: classes3-dex2jar.jar:org/threeten/bp/Clock$OffsetClock.class */
    static final class OffsetClock extends Clock implements Serializable {
        private static final long serialVersionUID = 2007484719125426256L;
        private final Clock baseClock;
        private final Duration offset;

        OffsetClock(Clock clock, Duration duration) {
            this.baseClock = clock;
            this.offset = duration;
        }

        @Override // org.threeten.p040bp.Clock
        public boolean equals(Object obj) {
            if (!(obj instanceof OffsetClock)) {
                return false;
            }
            OffsetClock offsetClock = (OffsetClock) obj;
            boolean z = false;
            if (this.baseClock.equals(offsetClock.baseClock)) {
                z = false;
                if (this.offset.equals(offsetClock.offset)) {
                    z = true;
                }
            }
            return z;
        }

        @Override // org.threeten.p040bp.Clock
        public ZoneId getZone() {
            return this.baseClock.getZone();
        }

        @Override // org.threeten.p040bp.Clock
        public int hashCode() {
            return this.baseClock.hashCode() ^ this.offset.hashCode();
        }

        @Override // org.threeten.p040bp.Clock
        public Instant instant() {
            return this.baseClock.instant().plus((TemporalAmount) this.offset);
        }

        @Override // org.threeten.p040bp.Clock
        public long millis() {
            return Jdk8Methods.safeAdd(this.baseClock.millis(), this.offset.toMillis());
        }

        public String toString() {
            return "OffsetClock[" + this.baseClock + "," + this.offset + "]";
        }

        @Override // org.threeten.p040bp.Clock
        public Clock withZone(ZoneId zoneId) {
            return zoneId.equals(this.baseClock.getZone()) ? this : new OffsetClock(this.baseClock.withZone(zoneId), this.offset);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.threeten.bp.Clock$SystemClock */
    /* loaded from: classes3-dex2jar.jar:org/threeten/bp/Clock$SystemClock.class */
    public static final class SystemClock extends Clock implements Serializable {
        private static final long serialVersionUID = 6740630888130243051L;
        private final ZoneId zone;

        SystemClock(ZoneId zoneId) {
            this.zone = zoneId;
        }

        @Override // org.threeten.p040bp.Clock
        public boolean equals(Object obj) {
            if (obj instanceof SystemClock) {
                return this.zone.equals(((SystemClock) obj).zone);
            }
            return false;
        }

        @Override // org.threeten.p040bp.Clock
        public ZoneId getZone() {
            return this.zone;
        }

        @Override // org.threeten.p040bp.Clock
        public int hashCode() {
            return this.zone.hashCode() + 1;
        }

        @Override // org.threeten.p040bp.Clock
        public Instant instant() {
            return Instant.ofEpochMilli(millis());
        }

        @Override // org.threeten.p040bp.Clock
        public long millis() {
            return System.currentTimeMillis();
        }

        public String toString() {
            return "SystemClock[" + this.zone + "]";
        }

        @Override // org.threeten.p040bp.Clock
        public Clock withZone(ZoneId zoneId) {
            return zoneId.equals(this.zone) ? this : new SystemClock(zoneId);
        }
    }

    /* renamed from: org.threeten.bp.Clock$TickClock */
    /* loaded from: classes3-dex2jar.jar:org/threeten/bp/Clock$TickClock.class */
    static final class TickClock extends Clock implements Serializable {
        private static final long serialVersionUID = 6504659149906368850L;
        private final Clock baseClock;
        private final long tickNanos;

        TickClock(Clock clock, long j) {
            this.baseClock = clock;
            this.tickNanos = j;
        }

        @Override // org.threeten.p040bp.Clock
        public boolean equals(Object obj) {
            if (!(obj instanceof TickClock)) {
                return false;
            }
            TickClock tickClock = (TickClock) obj;
            boolean z = false;
            if (this.baseClock.equals(tickClock.baseClock)) {
                z = false;
                if (this.tickNanos == tickClock.tickNanos) {
                    z = true;
                }
            }
            return z;
        }

        @Override // org.threeten.p040bp.Clock
        public ZoneId getZone() {
            return this.baseClock.getZone();
        }

        @Override // org.threeten.p040bp.Clock
        public int hashCode() {
            return this.baseClock.hashCode() ^ ((int) (this.tickNanos ^ (this.tickNanos >>> 32)));
        }

        @Override // org.threeten.p040bp.Clock
        public Instant instant() {
            if (this.tickNanos % 1000000 == 0) {
                long millis = this.baseClock.millis();
                return Instant.ofEpochMilli(millis - Jdk8Methods.floorMod(millis, this.tickNanos / 1000000));
            }
            Instant instant = this.baseClock.instant();
            return instant.minusNanos(Jdk8Methods.floorMod(instant.getNano(), this.tickNanos));
        }

        @Override // org.threeten.p040bp.Clock
        public long millis() {
            long millis = this.baseClock.millis();
            return millis - Jdk8Methods.floorMod(millis, this.tickNanos / 1000000);
        }

        public String toString() {
            return "TickClock[" + this.baseClock + "," + Duration.ofNanos(this.tickNanos) + "]";
        }

        @Override // org.threeten.p040bp.Clock
        public Clock withZone(ZoneId zoneId) {
            return zoneId.equals(this.baseClock.getZone()) ? this : new TickClock(this.baseClock.withZone(zoneId), this.tickNanos);
        }
    }

    protected Clock() {
    }

    public static Clock fixed(Instant instant, ZoneId zoneId) {
        Jdk8Methods.requireNonNull(instant, "fixedInstant");
        Jdk8Methods.requireNonNull(zoneId, "zone");
        return new FixedClock(instant, zoneId);
    }

    public static Clock offset(Clock clock, Duration duration) {
        Jdk8Methods.requireNonNull(clock, "baseClock");
        Jdk8Methods.requireNonNull(duration, "offsetDuration");
        return duration.equals(Duration.ZERO) ? clock : new OffsetClock(clock, duration);
    }

    public static Clock system(ZoneId zoneId) {
        Jdk8Methods.requireNonNull(zoneId, "zone");
        return new SystemClock(zoneId);
    }

    public static Clock systemDefaultZone() {
        return new SystemClock(ZoneId.systemDefault());
    }

    public static Clock systemUTC() {
        return new SystemClock(ZoneOffset.UTC);
    }

    public static Clock tick(Clock clock, Duration duration) {
        Jdk8Methods.requireNonNull(clock, "baseClock");
        Jdk8Methods.requireNonNull(duration, "tickDuration");
        if (duration.isNegative()) {
            throw new IllegalArgumentException("Tick duration must not be negative");
        }
        long nanos = duration.toNanos();
        if (nanos % 1000000 == 0 || 1000000000 % nanos == 0) {
            return nanos <= 1 ? clock : new TickClock(clock, nanos);
        }
        throw new IllegalArgumentException("Invalid tick duration");
    }

    public static Clock tickMinutes(ZoneId zoneId) {
        return new TickClock(system(zoneId), 60000000000L);
    }

    public static Clock tickSeconds(ZoneId zoneId) {
        return new TickClock(system(zoneId), 1000000000L);
    }

    public boolean equals(Object obj) {
        return super.equals(obj);
    }

    public abstract ZoneId getZone();

    public int hashCode() {
        return super.hashCode();
    }

    public abstract Instant instant();

    public long millis() {
        return instant().toEpochMilli();
    }

    public abstract Clock withZone(ZoneId zoneId);
}
