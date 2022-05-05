package org.threeten.p040bp.zone;

import com.privacystar.core.data.model.BlockHistoryFields;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.threeten.p040bp.DayOfWeek;
import org.threeten.p040bp.LocalDate;
import org.threeten.p040bp.LocalDateTime;
import org.threeten.p040bp.LocalTime;
import org.threeten.p040bp.Month;
import org.threeten.p040bp.Year;
import org.threeten.p040bp.ZoneOffset;
import org.threeten.p040bp.chrono.ChronoLocalDate;
import org.threeten.p040bp.chrono.IsoChronology;
import org.threeten.p040bp.jdk8.Jdk8Methods;
import org.threeten.p040bp.temporal.ChronoField;
import org.threeten.p040bp.temporal.TemporalAdjusters;
import org.threeten.p040bp.zone.ZoneOffsetTransitionRule;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: org.threeten.bp.zone.ZoneRulesBuilder */
/* loaded from: classes3-dex2jar.jar:org/threeten/bp/zone/ZoneRulesBuilder.class */
public class ZoneRulesBuilder {
    private Map<Object, Object> deduplicateMap;
    private List<TZWindow> windowList = new ArrayList();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.threeten.bp.zone.ZoneRulesBuilder$TZRule */
    /* loaded from: classes3-dex2jar.jar:org/threeten/bp/zone/ZoneRulesBuilder$TZRule.class */
    public class TZRule implements Comparable<TZRule> {
        private int dayOfMonthIndicator;
        private DayOfWeek dayOfWeek;
        private Month month;
        private int savingAmountSecs;
        private LocalTime time;
        private ZoneOffsetTransitionRule.TimeDefinition timeDefinition;
        private boolean timeEndOfDay;
        private int year;

        TZRule(int i, Month month, int i2, DayOfWeek dayOfWeek, LocalTime localTime, boolean z, ZoneOffsetTransitionRule.TimeDefinition timeDefinition, int i3) {
            this.year = i;
            this.month = month;
            this.dayOfMonthIndicator = i2;
            this.dayOfWeek = dayOfWeek;
            this.time = localTime;
            this.timeEndOfDay = z;
            this.timeDefinition = timeDefinition;
            this.savingAmountSecs = i3;
        }

        private LocalDate toLocalDate() {
            LocalDate localDate;
            if (this.dayOfMonthIndicator < 0) {
                LocalDate of = LocalDate.m90of(this.year, this.month, this.month.length(IsoChronology.INSTANCE.isLeapYear(this.year)) + 1 + this.dayOfMonthIndicator);
                localDate = of;
                if (this.dayOfWeek != null) {
                    localDate = of.with(TemporalAdjusters.previousOrSame(this.dayOfWeek));
                }
            } else {
                LocalDate of2 = LocalDate.m90of(this.year, this.month, this.dayOfMonthIndicator);
                localDate = of2;
                if (this.dayOfWeek != null) {
                    localDate = of2.with(TemporalAdjusters.nextOrSame(this.dayOfWeek));
                }
            }
            LocalDate localDate2 = localDate;
            if (this.timeEndOfDay) {
                localDate2 = localDate.plusDays(1L);
            }
            return localDate2;
        }

        public int compareTo(TZRule tZRule) {
            int i = this.year - tZRule.year;
            int i2 = i;
            if (i == 0) {
                i2 = this.month.compareTo(tZRule.month);
            }
            int i3 = i2;
            if (i2 == 0) {
                i3 = toLocalDate().compareTo((ChronoLocalDate) tZRule.toLocalDate());
            }
            int i4 = i3;
            if (i3 == 0) {
                i4 = this.time.compareTo(tZRule.time);
            }
            return i4;
        }

        ZoneOffsetTransition toTransition(ZoneOffset zoneOffset, int i) {
            LocalDateTime localDateTime = (LocalDateTime) ZoneRulesBuilder.this.deduplicate(LocalDateTime.m83of((LocalDate) ZoneRulesBuilder.this.deduplicate(toLocalDate()), this.time));
            ZoneOffset zoneOffset2 = (ZoneOffset) ZoneRulesBuilder.this.deduplicate(ZoneOffset.ofTotalSeconds(zoneOffset.getTotalSeconds() + i));
            return new ZoneOffsetTransition((LocalDateTime) ZoneRulesBuilder.this.deduplicate(this.timeDefinition.createDateTime(localDateTime, zoneOffset, zoneOffset2)), zoneOffset2, (ZoneOffset) ZoneRulesBuilder.this.deduplicate(ZoneOffset.ofTotalSeconds(zoneOffset.getTotalSeconds() + this.savingAmountSecs)));
        }

        ZoneOffsetTransitionRule toTransitionRule(ZoneOffset zoneOffset, int i) {
            if (this.dayOfMonthIndicator < 0 && this.month != Month.FEBRUARY) {
                this.dayOfMonthIndicator = this.month.maxLength() - 6;
            }
            if (this.timeEndOfDay && this.dayOfMonthIndicator > 0) {
                if (!(this.dayOfMonthIndicator == 28 && this.month == Month.FEBRUARY)) {
                    LocalDate plusDays = LocalDate.m90of(2004, this.month, this.dayOfMonthIndicator).plusDays(1L);
                    this.month = plusDays.getMonth();
                    this.dayOfMonthIndicator = plusDays.getDayOfMonth();
                    if (this.dayOfWeek != null) {
                        this.dayOfWeek = this.dayOfWeek.plus(1L);
                    }
                    this.timeEndOfDay = false;
                }
            }
            ZoneOffsetTransition transition = toTransition(zoneOffset, i);
            return new ZoneOffsetTransitionRule(this.month, this.dayOfMonthIndicator, this.dayOfWeek, this.time, this.timeEndOfDay, this.timeDefinition, zoneOffset, transition.getOffsetBefore(), transition.getOffsetAfter());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.threeten.bp.zone.ZoneRulesBuilder$TZWindow */
    /* loaded from: classes3-dex2jar.jar:org/threeten/bp/zone/ZoneRulesBuilder$TZWindow.class */
    public class TZWindow {
        private Integer fixedSavingAmountSecs;
        private final ZoneOffset standardOffset;
        private final ZoneOffsetTransitionRule.TimeDefinition timeDefinition;
        private final LocalDateTime windowEnd;
        private List<TZRule> ruleList = new ArrayList();
        private int maxLastRuleStartYear = Year.MIN_VALUE;
        private List<TZRule> lastRuleList = new ArrayList();

        TZWindow(ZoneOffset zoneOffset, LocalDateTime localDateTime, ZoneOffsetTransitionRule.TimeDefinition timeDefinition) {
            this.windowEnd = localDateTime;
            this.timeDefinition = timeDefinition;
            this.standardOffset = zoneOffset;
        }

        void addRule(int i, int i2, Month month, int i3, DayOfWeek dayOfWeek, LocalTime localTime, boolean z, ZoneOffsetTransitionRule.TimeDefinition timeDefinition, int i4) {
            if (this.fixedSavingAmountSecs != null) {
                throw new IllegalStateException("Window has a fixed DST saving, so cannot have DST rules");
            } else if (this.ruleList.size() >= 2000) {
                throw new IllegalStateException("Window has reached the maximum number of allowed rules");
            } else {
                boolean z2 = false;
                int i5 = i2;
                if (i2 == 999999999) {
                    z2 = true;
                    i5 = i;
                }
                for (int i6 = i; i6 <= i5; i6++) {
                    TZRule tZRule = new TZRule(i6, month, i3, dayOfWeek, localTime, z, timeDefinition, i4);
                    if (z2) {
                        this.lastRuleList.add(tZRule);
                        this.maxLastRuleStartYear = Math.max(i, this.maxLastRuleStartYear);
                    } else {
                        this.ruleList.add(tZRule);
                    }
                }
            }
        }

        long createDateTimeEpochSecond(int i) {
            ZoneOffset createWallOffset = createWallOffset(i);
            return this.timeDefinition.createDateTime(this.windowEnd, this.standardOffset, createWallOffset).toEpochSecond(createWallOffset);
        }

        ZoneOffset createWallOffset(int i) {
            return ZoneOffset.ofTotalSeconds(this.standardOffset.getTotalSeconds() + i);
        }

        boolean isSingleWindowStandardOffset() {
            return this.windowEnd.equals(LocalDateTime.MAX) && this.timeDefinition == ZoneOffsetTransitionRule.TimeDefinition.WALL && this.fixedSavingAmountSecs == null && this.lastRuleList.isEmpty() && this.ruleList.isEmpty();
        }

        void setFixedSavings(int i) {
            if (this.ruleList.size() > 0 || this.lastRuleList.size() > 0) {
                throw new IllegalStateException("Window has DST rules, so cannot have fixed savings");
            }
            this.fixedSavingAmountSecs = Integer.valueOf(i);
        }

        void tidy(int i) {
            if (this.lastRuleList.size() == 1) {
                throw new IllegalStateException("Cannot have only one rule defined as being forever");
            }
            if (this.windowEnd.equals(LocalDateTime.MAX)) {
                this.maxLastRuleStartYear = Math.max(this.maxLastRuleStartYear, i) + 1;
                for (TZRule tZRule : this.lastRuleList) {
                    addRule(tZRule.year, this.maxLastRuleStartYear, tZRule.month, tZRule.dayOfMonthIndicator, tZRule.dayOfWeek, tZRule.time, tZRule.timeEndOfDay, tZRule.timeDefinition, tZRule.savingAmountSecs);
                    tZRule.year = this.maxLastRuleStartYear + 1;
                }
                if (this.maxLastRuleStartYear == 999999999) {
                    this.lastRuleList.clear();
                } else {
                    this.maxLastRuleStartYear++;
                }
            } else {
                int year = this.windowEnd.getYear();
                for (TZRule tZRule2 : this.lastRuleList) {
                    addRule(tZRule2.year, year + 1, tZRule2.month, tZRule2.dayOfMonthIndicator, tZRule2.dayOfWeek, tZRule2.time, tZRule2.timeEndOfDay, tZRule2.timeDefinition, tZRule2.savingAmountSecs);
                }
                this.lastRuleList.clear();
                this.maxLastRuleStartYear = Year.MAX_VALUE;
            }
            Collections.sort(this.ruleList);
            Collections.sort(this.lastRuleList);
            if (this.ruleList.size() == 0 && this.fixedSavingAmountSecs == null) {
                this.fixedSavingAmountSecs = 0;
            }
        }

        void validateWindowOrder(TZWindow tZWindow) {
            if (this.windowEnd.isBefore(tZWindow.windowEnd)) {
                throw new IllegalStateException("Windows must be added in date-time order: " + this.windowEnd + " < " + tZWindow.windowEnd);
            }
        }
    }

    public ZoneRulesBuilder addRuleToWindow(int i, int i2, Month month, int i3, DayOfWeek dayOfWeek, LocalTime localTime, boolean z, ZoneOffsetTransitionRule.TimeDefinition timeDefinition, int i4) {
        Jdk8Methods.requireNonNull(month, "month");
        Jdk8Methods.requireNonNull(localTime, BlockHistoryFields.TIME);
        Jdk8Methods.requireNonNull(timeDefinition, "timeDefinition");
        ChronoField.YEAR.checkValidValue(i);
        ChronoField.YEAR.checkValidValue(i2);
        if (i3 < -28 || i3 > 31 || i3 == 0) {
            throw new IllegalArgumentException("Day of month indicator must be between -28 and 31 inclusive excluding zero");
        } else if (z && !localTime.equals(LocalTime.MIDNIGHT)) {
            throw new IllegalArgumentException("Time must be midnight when end of day flag is true");
        } else if (this.windowList.isEmpty()) {
            throw new IllegalStateException("Must add a window before adding a rule");
        } else {
            this.windowList.get(this.windowList.size() - 1).addRule(i, i2, month, i3, dayOfWeek, localTime, z, timeDefinition, i4);
            return this;
        }
    }

    public ZoneRulesBuilder addRuleToWindow(int i, Month month, int i2, LocalTime localTime, boolean z, ZoneOffsetTransitionRule.TimeDefinition timeDefinition, int i3) {
        return addRuleToWindow(i, i, month, i2, null, localTime, z, timeDefinition, i3);
    }

    public ZoneRulesBuilder addRuleToWindow(LocalDateTime localDateTime, ZoneOffsetTransitionRule.TimeDefinition timeDefinition, int i) {
        Jdk8Methods.requireNonNull(localDateTime, "transitionDateTime");
        return addRuleToWindow(localDateTime.getYear(), localDateTime.getYear(), localDateTime.getMonth(), localDateTime.getDayOfMonth(), null, localDateTime.toLocalTime(), false, timeDefinition, i);
    }

    public ZoneRulesBuilder addWindow(ZoneOffset zoneOffset, LocalDateTime localDateTime, ZoneOffsetTransitionRule.TimeDefinition timeDefinition) {
        Jdk8Methods.requireNonNull(zoneOffset, "standardOffset");
        Jdk8Methods.requireNonNull(localDateTime, "until");
        Jdk8Methods.requireNonNull(timeDefinition, "untilDefinition");
        TZWindow tZWindow = new TZWindow(zoneOffset, localDateTime, timeDefinition);
        if (this.windowList.size() > 0) {
            tZWindow.validateWindowOrder(this.windowList.get(this.windowList.size() - 1));
        }
        this.windowList.add(tZWindow);
        return this;
    }

    public ZoneRulesBuilder addWindowForever(ZoneOffset zoneOffset) {
        return addWindow(zoneOffset, LocalDateTime.MAX, ZoneOffsetTransitionRule.TimeDefinition.WALL);
    }

    <T> T deduplicate(T t) {
        if (!this.deduplicateMap.containsKey(t)) {
            this.deduplicateMap.put(t, t);
        }
        return (T) this.deduplicateMap.get(t);
    }

    public ZoneRulesBuilder setFixedSavingsToWindow(int i) {
        if (this.windowList.isEmpty()) {
            throw new IllegalStateException("Must add a window before setting the fixed savings");
        }
        this.windowList.get(this.windowList.size() - 1).setFixedSavings(i);
        return this;
    }

    public ZoneRules toRules(String str) {
        return toRules(str, new HashMap());
    }

    ZoneRules toRules(String str, Map<Object, Object> map) {
        Jdk8Methods.requireNonNull(str, "zoneId");
        this.deduplicateMap = map;
        if (this.windowList.isEmpty()) {
            throw new IllegalStateException("No windows have been added to the builder");
        }
        ArrayList arrayList = new ArrayList(4);
        ArrayList arrayList2 = new ArrayList(256);
        ArrayList arrayList3 = new ArrayList(2);
        TZWindow tZWindow = this.windowList.get(0);
        ZoneOffset zoneOffset = tZWindow.standardOffset;
        int intValue = tZWindow.fixedSavingAmountSecs != null ? tZWindow.fixedSavingAmountSecs.intValue() : 0;
        ZoneOffset zoneOffset2 = (ZoneOffset) deduplicate(ZoneOffset.ofTotalSeconds(zoneOffset.getTotalSeconds() + intValue));
        LocalDateTime localDateTime = (LocalDateTime) deduplicate(LocalDateTime.m89of((int) Year.MIN_VALUE, 1, 1, 0, 0));
        ZoneOffset zoneOffset3 = zoneOffset2;
        for (TZWindow tZWindow2 : this.windowList) {
            tZWindow2.tidy(localDateTime.getYear());
            Integer num = tZWindow2.fixedSavingAmountSecs;
            Integer num2 = num;
            if (num == null) {
                int i = 0;
                Iterator it = tZWindow2.ruleList.iterator();
                while (true) {
                    num2 = i;
                    if (!it.hasNext()) {
                        break;
                    }
                    TZRule tZRule = (TZRule) it.next();
                    if (tZRule.toTransition(zoneOffset, intValue).toEpochSecond() > localDateTime.toEpochSecond(zoneOffset3)) {
                        num2 = i;
                        break;
                    }
                    i = Integer.valueOf(tZRule.savingAmountSecs);
                }
            }
            if (!zoneOffset.equals(tZWindow2.standardOffset)) {
                arrayList.add(deduplicate(new ZoneOffsetTransition(LocalDateTime.ofEpochSecond(localDateTime.toEpochSecond(zoneOffset3), 0, zoneOffset), zoneOffset, tZWindow2.standardOffset)));
                zoneOffset = (ZoneOffset) deduplicate(tZWindow2.standardOffset);
            }
            ZoneOffset zoneOffset4 = (ZoneOffset) deduplicate(ZoneOffset.ofTotalSeconds(zoneOffset.getTotalSeconds() + num2.intValue()));
            if (!zoneOffset3.equals(zoneOffset4)) {
                arrayList2.add((ZoneOffsetTransition) deduplicate(new ZoneOffsetTransition(localDateTime, zoneOffset3, zoneOffset4)));
            }
            intValue = num2.intValue();
            for (TZRule tZRule2 : tZWindow2.ruleList) {
                ZoneOffsetTransition zoneOffsetTransition = (ZoneOffsetTransition) deduplicate(tZRule2.toTransition(zoneOffset, intValue));
                if (!(zoneOffsetTransition.toEpochSecond() < localDateTime.toEpochSecond(zoneOffset3)) && zoneOffsetTransition.toEpochSecond() < tZWindow2.createDateTimeEpochSecond(intValue) && !zoneOffsetTransition.getOffsetBefore().equals(zoneOffsetTransition.getOffsetAfter())) {
                    arrayList2.add(zoneOffsetTransition);
                    intValue = tZRule2.savingAmountSecs;
                }
            }
            for (TZRule tZRule3 : tZWindow2.lastRuleList) {
                arrayList3.add((ZoneOffsetTransitionRule) deduplicate(tZRule3.toTransitionRule(zoneOffset, intValue)));
                intValue = tZRule3.savingAmountSecs;
            }
            zoneOffset3 = (ZoneOffset) deduplicate(tZWindow2.createWallOffset(intValue));
            localDateTime = (LocalDateTime) deduplicate(LocalDateTime.ofEpochSecond(tZWindow2.createDateTimeEpochSecond(intValue), 0, zoneOffset3));
        }
        return new StandardZoneRules(tZWindow.standardOffset, zoneOffset2, arrayList, arrayList2, arrayList3);
    }
}
