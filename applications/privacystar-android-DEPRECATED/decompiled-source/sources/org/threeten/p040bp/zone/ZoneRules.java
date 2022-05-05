package org.threeten.p040bp.zone;

import java.io.Serializable;
import java.util.Collections;
import java.util.List;
import org.threeten.p040bp.Duration;
import org.threeten.p040bp.Instant;
import org.threeten.p040bp.LocalDateTime;
import org.threeten.p040bp.ZoneOffset;
import org.threeten.p040bp.jdk8.Jdk8Methods;
/* renamed from: org.threeten.bp.zone.ZoneRules */
/* loaded from: classes3-dex2jar.jar:org/threeten/bp/zone/ZoneRules.class */
public abstract class ZoneRules {

    /* renamed from: org.threeten.bp.zone.ZoneRules$Fixed */
    /* loaded from: classes3-dex2jar.jar:org/threeten/bp/zone/ZoneRules$Fixed.class */
    static final class Fixed extends ZoneRules implements Serializable {
        private static final long serialVersionUID = -8733721350312276297L;
        private final ZoneOffset offset;

        Fixed(ZoneOffset zoneOffset) {
            this.offset = zoneOffset;
        }

        @Override // org.threeten.p040bp.zone.ZoneRules
        public boolean equals(Object obj) {
            boolean z = true;
            if (this == obj) {
                return true;
            }
            if (obj instanceof Fixed) {
                return this.offset.equals(((Fixed) obj).offset);
            }
            if (!(obj instanceof StandardZoneRules)) {
                return false;
            }
            StandardZoneRules standardZoneRules = (StandardZoneRules) obj;
            if (!standardZoneRules.isFixedOffset() || !this.offset.equals(standardZoneRules.getOffset(Instant.EPOCH))) {
                z = false;
            }
            return z;
        }

        @Override // org.threeten.p040bp.zone.ZoneRules
        public Duration getDaylightSavings(Instant instant) {
            return Duration.ZERO;
        }

        @Override // org.threeten.p040bp.zone.ZoneRules
        public ZoneOffset getOffset(Instant instant) {
            return this.offset;
        }

        @Override // org.threeten.p040bp.zone.ZoneRules
        public ZoneOffset getOffset(LocalDateTime localDateTime) {
            return this.offset;
        }

        @Override // org.threeten.p040bp.zone.ZoneRules
        public ZoneOffset getStandardOffset(Instant instant) {
            return this.offset;
        }

        @Override // org.threeten.p040bp.zone.ZoneRules
        public ZoneOffsetTransition getTransition(LocalDateTime localDateTime) {
            return null;
        }

        @Override // org.threeten.p040bp.zone.ZoneRules
        public List<ZoneOffsetTransitionRule> getTransitionRules() {
            return Collections.emptyList();
        }

        @Override // org.threeten.p040bp.zone.ZoneRules
        public List<ZoneOffsetTransition> getTransitions() {
            return Collections.emptyList();
        }

        @Override // org.threeten.p040bp.zone.ZoneRules
        public List<ZoneOffset> getValidOffsets(LocalDateTime localDateTime) {
            return Collections.singletonList(this.offset);
        }

        @Override // org.threeten.p040bp.zone.ZoneRules
        public int hashCode() {
            return ((((this.offset.hashCode() + 31) ^ 1) ^ 1) ^ (this.offset.hashCode() + 31)) ^ 1;
        }

        @Override // org.threeten.p040bp.zone.ZoneRules
        public boolean isDaylightSavings(Instant instant) {
            return false;
        }

        @Override // org.threeten.p040bp.zone.ZoneRules
        public boolean isFixedOffset() {
            return true;
        }

        @Override // org.threeten.p040bp.zone.ZoneRules
        public boolean isValidOffset(LocalDateTime localDateTime, ZoneOffset zoneOffset) {
            return this.offset.equals(zoneOffset);
        }

        @Override // org.threeten.p040bp.zone.ZoneRules
        public ZoneOffsetTransition nextTransition(Instant instant) {
            return null;
        }

        @Override // org.threeten.p040bp.zone.ZoneRules
        public ZoneOffsetTransition previousTransition(Instant instant) {
            return null;
        }

        public String toString() {
            return "FixedRules:" + this.offset;
        }
    }

    /* renamed from: of */
    public static ZoneRules m39of(ZoneOffset zoneOffset) {
        Jdk8Methods.requireNonNull(zoneOffset, "offset");
        return new Fixed(zoneOffset);
    }

    /* renamed from: of */
    public static ZoneRules m38of(ZoneOffset zoneOffset, ZoneOffset zoneOffset2, List<ZoneOffsetTransition> list, List<ZoneOffsetTransition> list2, List<ZoneOffsetTransitionRule> list3) {
        Jdk8Methods.requireNonNull(zoneOffset, "baseStandardOffset");
        Jdk8Methods.requireNonNull(zoneOffset2, "baseWallOffset");
        Jdk8Methods.requireNonNull(list, "standardOffsetTransitionList");
        Jdk8Methods.requireNonNull(list2, "transitionList");
        Jdk8Methods.requireNonNull(list3, "lastRules");
        return new StandardZoneRules(zoneOffset, zoneOffset2, list, list2, list3);
    }

    public abstract boolean equals(Object obj);

    public abstract Duration getDaylightSavings(Instant instant);

    public abstract ZoneOffset getOffset(Instant instant);

    public abstract ZoneOffset getOffset(LocalDateTime localDateTime);

    public abstract ZoneOffset getStandardOffset(Instant instant);

    public abstract ZoneOffsetTransition getTransition(LocalDateTime localDateTime);

    public abstract List<ZoneOffsetTransitionRule> getTransitionRules();

    public abstract List<ZoneOffsetTransition> getTransitions();

    public abstract List<ZoneOffset> getValidOffsets(LocalDateTime localDateTime);

    public abstract int hashCode();

    public abstract boolean isDaylightSavings(Instant instant);

    public abstract boolean isFixedOffset();

    public abstract boolean isValidOffset(LocalDateTime localDateTime, ZoneOffset zoneOffset);

    public abstract ZoneOffsetTransition nextTransition(Instant instant);

    public abstract ZoneOffsetTransition previousTransition(Instant instant);
}
