package org.threeten.p040bp.zone;

import com.privacystar.core.util.DateUtil;
import java.io.DataInput;
import java.io.DataOutput;
import java.io.IOException;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import org.threeten.p040bp.Duration;
import org.threeten.p040bp.Instant;
import org.threeten.p040bp.LocalDate;
import org.threeten.p040bp.LocalDateTime;
import org.threeten.p040bp.ZoneOffset;
import org.threeten.p040bp.jdk8.Jdk8Methods;
import org.threeten.p040bp.zone.ZoneRules;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: org.threeten.bp.zone.StandardZoneRules */
/* loaded from: classes3-dex2jar.jar:org/threeten/bp/zone/StandardZoneRules.class */
public final class StandardZoneRules extends ZoneRules implements Serializable {
    private static final int LAST_CACHED_YEAR = 2100;
    private static final long serialVersionUID = 3044319355680032515L;
    private final ZoneOffsetTransitionRule[] lastRules;
    private final ConcurrentMap<Integer, ZoneOffsetTransition[]> lastRulesCache = new ConcurrentHashMap();
    private final long[] savingsInstantTransitions;
    private final LocalDateTime[] savingsLocalTransitions;
    private final ZoneOffset[] standardOffsets;
    private final long[] standardTransitions;
    private final ZoneOffset[] wallOffsets;

    /* JADX INFO: Access modifiers changed from: package-private */
    public StandardZoneRules(ZoneOffset zoneOffset, ZoneOffset zoneOffset2, List<ZoneOffsetTransition> list, List<ZoneOffsetTransition> list2, List<ZoneOffsetTransitionRule> list3) {
        this.standardTransitions = new long[list.size()];
        this.standardOffsets = new ZoneOffset[list.size() + 1];
        this.standardOffsets[0] = zoneOffset;
        int i = 0;
        while (i < list.size()) {
            this.standardTransitions[i] = list.get(i).toEpochSecond();
            int i2 = i + 1;
            this.standardOffsets[i2] = list.get(i).getOffsetAfter();
            i = i2;
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(zoneOffset2);
        for (ZoneOffsetTransition zoneOffsetTransition : list2) {
            if (zoneOffsetTransition.isGap()) {
                arrayList.add(zoneOffsetTransition.getDateTimeBefore());
                arrayList.add(zoneOffsetTransition.getDateTimeAfter());
            } else {
                arrayList.add(zoneOffsetTransition.getDateTimeAfter());
                arrayList.add(zoneOffsetTransition.getDateTimeBefore());
            }
            arrayList2.add(zoneOffsetTransition.getOffsetAfter());
        }
        this.savingsLocalTransitions = (LocalDateTime[]) arrayList.toArray(new LocalDateTime[arrayList.size()]);
        this.wallOffsets = (ZoneOffset[]) arrayList2.toArray(new ZoneOffset[arrayList2.size()]);
        this.savingsInstantTransitions = new long[list2.size()];
        for (int i3 = 0; i3 < list2.size(); i3++) {
            this.savingsInstantTransitions[i3] = list2.get(i3).getInstant().getEpochSecond();
        }
        if (list3.size() > 15) {
            throw new IllegalArgumentException("Too many transition rules");
        }
        this.lastRules = (ZoneOffsetTransitionRule[]) list3.toArray(new ZoneOffsetTransitionRule[list3.size()]);
    }

    private StandardZoneRules(long[] jArr, ZoneOffset[] zoneOffsetArr, long[] jArr2, ZoneOffset[] zoneOffsetArr2, ZoneOffsetTransitionRule[] zoneOffsetTransitionRuleArr) {
        this.standardTransitions = jArr;
        this.standardOffsets = zoneOffsetArr;
        this.savingsInstantTransitions = jArr2;
        this.wallOffsets = zoneOffsetArr2;
        this.lastRules = zoneOffsetTransitionRuleArr;
        ArrayList arrayList = new ArrayList();
        int i = 0;
        while (i < jArr2.length) {
            ZoneOffset zoneOffset = zoneOffsetArr2[i];
            int i2 = i + 1;
            ZoneOffsetTransition zoneOffsetTransition = new ZoneOffsetTransition(jArr2[i], zoneOffset, zoneOffsetArr2[i2]);
            if (zoneOffsetTransition.isGap()) {
                arrayList.add(zoneOffsetTransition.getDateTimeBefore());
                arrayList.add(zoneOffsetTransition.getDateTimeAfter());
            } else {
                arrayList.add(zoneOffsetTransition.getDateTimeAfter());
                arrayList.add(zoneOffsetTransition.getDateTimeBefore());
            }
            i = i2;
        }
        this.savingsLocalTransitions = (LocalDateTime[]) arrayList.toArray(new LocalDateTime[arrayList.size()]);
    }

    private Object findOffsetInfo(LocalDateTime localDateTime, ZoneOffsetTransition zoneOffsetTransition) {
        LocalDateTime dateTimeBefore = zoneOffsetTransition.getDateTimeBefore();
        return zoneOffsetTransition.isGap() ? localDateTime.isBefore(dateTimeBefore) ? zoneOffsetTransition.getOffsetBefore() : localDateTime.isBefore(zoneOffsetTransition.getDateTimeAfter()) ? zoneOffsetTransition : zoneOffsetTransition.getOffsetAfter() : !localDateTime.isBefore(dateTimeBefore) ? zoneOffsetTransition.getOffsetAfter() : localDateTime.isBefore(zoneOffsetTransition.getDateTimeAfter()) ? zoneOffsetTransition.getOffsetBefore() : zoneOffsetTransition;
    }

    private ZoneOffsetTransition[] findTransitionArray(int i) {
        Integer valueOf = Integer.valueOf(i);
        ZoneOffsetTransition[] zoneOffsetTransitionArr = this.lastRulesCache.get(valueOf);
        if (zoneOffsetTransitionArr != null) {
            return zoneOffsetTransitionArr;
        }
        ZoneOffsetTransitionRule[] zoneOffsetTransitionRuleArr = this.lastRules;
        ZoneOffsetTransition[] zoneOffsetTransitionArr2 = new ZoneOffsetTransition[zoneOffsetTransitionRuleArr.length];
        for (int i2 = 0; i2 < zoneOffsetTransitionRuleArr.length; i2++) {
            zoneOffsetTransitionArr2[i2] = zoneOffsetTransitionRuleArr[i2].createTransition(i);
        }
        if (i < LAST_CACHED_YEAR) {
            this.lastRulesCache.putIfAbsent(valueOf, zoneOffsetTransitionArr2);
        }
        return zoneOffsetTransitionArr2;
    }

    private int findYear(long j, ZoneOffset zoneOffset) {
        return LocalDate.ofEpochDay(Jdk8Methods.floorDiv(j + zoneOffset.getTotalSeconds(), (long) DateUtil.DAY_IN_SECONDS)).getYear();
    }

    private Object getOffsetInfo(LocalDateTime localDateTime) {
        int i;
        ZoneOffsetTransition[] findTransitionArray;
        if (this.lastRules.length <= 0 || !localDateTime.isAfter(this.savingsLocalTransitions[this.savingsLocalTransitions.length - 1])) {
            int binarySearch = Arrays.binarySearch(this.savingsLocalTransitions, localDateTime);
            if (binarySearch == -1) {
                return this.wallOffsets[0];
            }
            if (binarySearch < 0) {
                i = (-binarySearch) - 2;
            } else {
                i = binarySearch;
                if (binarySearch < this.savingsLocalTransitions.length - 1) {
                    LocalDateTime localDateTime2 = this.savingsLocalTransitions[binarySearch];
                    int i2 = binarySearch + 1;
                    i = binarySearch;
                    if (localDateTime2.equals(this.savingsLocalTransitions[i2])) {
                        i = i2;
                    }
                }
            }
            if ((i & 1) != 0) {
                return this.wallOffsets[(i / 2) + 1];
            }
            LocalDateTime localDateTime3 = this.savingsLocalTransitions[i];
            LocalDateTime localDateTime4 = this.savingsLocalTransitions[i + 1];
            int i3 = i / 2;
            ZoneOffset zoneOffset = this.wallOffsets[i3];
            ZoneOffset zoneOffset2 = this.wallOffsets[i3 + 1];
            return zoneOffset2.getTotalSeconds() > zoneOffset.getTotalSeconds() ? new ZoneOffsetTransition(localDateTime3, zoneOffset, zoneOffset2) : new ZoneOffsetTransition(localDateTime4, zoneOffset, zoneOffset2);
        }
        Object obj = null;
        for (ZoneOffsetTransition zoneOffsetTransition : findTransitionArray(localDateTime.getYear())) {
            obj = findOffsetInfo(localDateTime, zoneOffsetTransition);
            if ((obj instanceof ZoneOffsetTransition) || obj.equals(zoneOffsetTransition.getOffsetBefore())) {
                return obj;
            }
        }
        return obj;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static StandardZoneRules readExternal(DataInput dataInput) throws IOException, ClassNotFoundException {
        int readInt = dataInput.readInt();
        long[] jArr = new long[readInt];
        for (int i = 0; i < readInt; i++) {
            jArr[i] = Ser.readEpochSec(dataInput);
        }
        ZoneOffset[] zoneOffsetArr = new ZoneOffset[readInt + 1];
        for (int i2 = 0; i2 < zoneOffsetArr.length; i2++) {
            zoneOffsetArr[i2] = Ser.readOffset(dataInput);
        }
        int readInt2 = dataInput.readInt();
        long[] jArr2 = new long[readInt2];
        for (int i3 = 0; i3 < readInt2; i3++) {
            jArr2[i3] = Ser.readEpochSec(dataInput);
        }
        ZoneOffset[] zoneOffsetArr2 = new ZoneOffset[readInt2 + 1];
        for (int i4 = 0; i4 < zoneOffsetArr2.length; i4++) {
            zoneOffsetArr2[i4] = Ser.readOffset(dataInput);
        }
        int readByte = dataInput.readByte();
        ZoneOffsetTransitionRule[] zoneOffsetTransitionRuleArr = new ZoneOffsetTransitionRule[readByte];
        for (int i5 = 0; i5 < readByte; i5++) {
            zoneOffsetTransitionRuleArr[i5] = ZoneOffsetTransitionRule.readExternal(dataInput);
        }
        return new StandardZoneRules(jArr, zoneOffsetArr, jArr2, zoneOffsetArr2, zoneOffsetTransitionRuleArr);
    }

    private Object writeReplace() {
        return new Ser((byte) 1, this);
    }

    @Override // org.threeten.p040bp.zone.ZoneRules
    public boolean equals(Object obj) {
        boolean z = true;
        boolean z2 = true;
        if (this == obj) {
            return true;
        }
        if (obj instanceof StandardZoneRules) {
            StandardZoneRules standardZoneRules = (StandardZoneRules) obj;
            if (!Arrays.equals(this.standardTransitions, standardZoneRules.standardTransitions) || !Arrays.equals(this.standardOffsets, standardZoneRules.standardOffsets) || !Arrays.equals(this.savingsInstantTransitions, standardZoneRules.savingsInstantTransitions) || !Arrays.equals(this.wallOffsets, standardZoneRules.wallOffsets) || !Arrays.equals(this.lastRules, standardZoneRules.lastRules)) {
                z2 = false;
            }
            return z2;
        } else if (!(obj instanceof ZoneRules.Fixed)) {
            return false;
        } else {
            if (!isFixedOffset() || !getOffset(Instant.EPOCH).equals(((ZoneRules.Fixed) obj).getOffset(Instant.EPOCH))) {
                z = false;
            }
            return z;
        }
    }

    @Override // org.threeten.p040bp.zone.ZoneRules
    public Duration getDaylightSavings(Instant instant) {
        return Duration.ofSeconds(getOffset(instant).getTotalSeconds() - getStandardOffset(instant).getTotalSeconds());
    }

    @Override // org.threeten.p040bp.zone.ZoneRules
    public ZoneOffset getOffset(Instant instant) {
        long epochSecond = instant.getEpochSecond();
        if (this.lastRules.length <= 0 || epochSecond <= this.savingsInstantTransitions[this.savingsInstantTransitions.length - 1]) {
            int binarySearch = Arrays.binarySearch(this.savingsInstantTransitions, epochSecond);
            int i = binarySearch;
            if (binarySearch < 0) {
                i = (-binarySearch) - 2;
            }
            return this.wallOffsets[i + 1];
        }
        ZoneOffsetTransition[] findTransitionArray = findTransitionArray(findYear(epochSecond, this.wallOffsets[this.wallOffsets.length - 1]));
        ZoneOffsetTransition zoneOffsetTransition = null;
        for (int i2 = 0; i2 < findTransitionArray.length; i2++) {
            zoneOffsetTransition = findTransitionArray[i2];
            if (epochSecond < zoneOffsetTransition.toEpochSecond()) {
                return zoneOffsetTransition.getOffsetBefore();
            }
        }
        return zoneOffsetTransition.getOffsetAfter();
    }

    @Override // org.threeten.p040bp.zone.ZoneRules
    public ZoneOffset getOffset(LocalDateTime localDateTime) {
        Object offsetInfo = getOffsetInfo(localDateTime);
        return offsetInfo instanceof ZoneOffsetTransition ? ((ZoneOffsetTransition) offsetInfo).getOffsetBefore() : (ZoneOffset) offsetInfo;
    }

    @Override // org.threeten.p040bp.zone.ZoneRules
    public ZoneOffset getStandardOffset(Instant instant) {
        int binarySearch = Arrays.binarySearch(this.standardTransitions, instant.getEpochSecond());
        int i = binarySearch;
        if (binarySearch < 0) {
            i = (-binarySearch) - 2;
        }
        return this.standardOffsets[i + 1];
    }

    @Override // org.threeten.p040bp.zone.ZoneRules
    public ZoneOffsetTransition getTransition(LocalDateTime localDateTime) {
        Object offsetInfo = getOffsetInfo(localDateTime);
        return offsetInfo instanceof ZoneOffsetTransition ? (ZoneOffsetTransition) offsetInfo : null;
    }

    @Override // org.threeten.p040bp.zone.ZoneRules
    public List<ZoneOffsetTransitionRule> getTransitionRules() {
        return Collections.unmodifiableList(Arrays.asList(this.lastRules));
    }

    @Override // org.threeten.p040bp.zone.ZoneRules
    public List<ZoneOffsetTransition> getTransitions() {
        ArrayList arrayList = new ArrayList();
        int i = 0;
        while (i < this.savingsInstantTransitions.length) {
            long j = this.savingsInstantTransitions[i];
            ZoneOffset zoneOffset = this.wallOffsets[i];
            i++;
            arrayList.add(new ZoneOffsetTransition(j, zoneOffset, this.wallOffsets[i]));
        }
        return Collections.unmodifiableList(arrayList);
    }

    @Override // org.threeten.p040bp.zone.ZoneRules
    public List<ZoneOffset> getValidOffsets(LocalDateTime localDateTime) {
        Object offsetInfo = getOffsetInfo(localDateTime);
        return offsetInfo instanceof ZoneOffsetTransition ? ((ZoneOffsetTransition) offsetInfo).getValidOffsets() : Collections.singletonList((ZoneOffset) offsetInfo);
    }

    @Override // org.threeten.p040bp.zone.ZoneRules
    public int hashCode() {
        return (((Arrays.hashCode(this.standardTransitions) ^ Arrays.hashCode(this.standardOffsets)) ^ Arrays.hashCode(this.savingsInstantTransitions)) ^ Arrays.hashCode(this.wallOffsets)) ^ Arrays.hashCode(this.lastRules);
    }

    @Override // org.threeten.p040bp.zone.ZoneRules
    public boolean isDaylightSavings(Instant instant) {
        return !getStandardOffset(instant).equals(getOffset(instant));
    }

    @Override // org.threeten.p040bp.zone.ZoneRules
    public boolean isFixedOffset() {
        return this.savingsInstantTransitions.length == 0;
    }

    @Override // org.threeten.p040bp.zone.ZoneRules
    public boolean isValidOffset(LocalDateTime localDateTime, ZoneOffset zoneOffset) {
        return getValidOffsets(localDateTime).contains(zoneOffset);
    }

    @Override // org.threeten.p040bp.zone.ZoneRules
    public ZoneOffsetTransition nextTransition(Instant instant) {
        ZoneOffsetTransition[] findTransitionArray;
        if (this.savingsInstantTransitions.length == 0) {
            return null;
        }
        long epochSecond = instant.getEpochSecond();
        if (epochSecond < this.savingsInstantTransitions[this.savingsInstantTransitions.length - 1]) {
            int binarySearch = Arrays.binarySearch(this.savingsInstantTransitions, epochSecond);
            int i = binarySearch < 0 ? (-binarySearch) - 1 : binarySearch + 1;
            return new ZoneOffsetTransition(this.savingsInstantTransitions[i], this.wallOffsets[i], this.wallOffsets[i + 1]);
        } else if (this.lastRules.length == 0) {
            return null;
        } else {
            int findYear = findYear(epochSecond, this.wallOffsets[this.wallOffsets.length - 1]);
            for (ZoneOffsetTransition zoneOffsetTransition : findTransitionArray(findYear)) {
                if (epochSecond < zoneOffsetTransition.toEpochSecond()) {
                    return zoneOffsetTransition;
                }
            }
            if (findYear < 999999999) {
                return findTransitionArray(findYear + 1)[0];
            }
            return null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v4, types: [long] */
    /* JADX WARN: Type inference failed for: r12v0 */
    /* JADX WARN: Type inference failed for: r12v1, types: [long] */
    /* JADX WARN: Type inference failed for: r12v2 */
    /* JADX WARN: Type inference failed for: r12v4 */
    /* JADX WARN: Type inference failed for: r8v0, types: [org.threeten.bp.zone.StandardZoneRules] */
    /* JADX WARN: Unknown variable types count: 2 */
    @Override // org.threeten.p040bp.zone.ZoneRules
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.threeten.p040bp.zone.ZoneOffsetTransition previousTransition(org.threeten.p040bp.Instant r9) {
        /*
            Method dump skipped, instructions count: 239
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.threeten.p040bp.zone.StandardZoneRules.previousTransition(org.threeten.bp.Instant):org.threeten.bp.zone.ZoneOffsetTransition");
    }

    public String toString() {
        return "StandardZoneRules[currentStandardOffset=" + this.standardOffsets[this.standardOffsets.length - 1] + "]";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void writeExternal(DataOutput dataOutput) throws IOException {
        dataOutput.writeInt(this.standardTransitions.length);
        for (long j : this.standardTransitions) {
            Ser.writeEpochSec(j, dataOutput);
        }
        for (ZoneOffset zoneOffset : this.standardOffsets) {
            Ser.writeOffset(zoneOffset, dataOutput);
        }
        dataOutput.writeInt(this.savingsInstantTransitions.length);
        for (long j2 : this.savingsInstantTransitions) {
            Ser.writeEpochSec(j2, dataOutput);
        }
        for (ZoneOffset zoneOffset2 : this.wallOffsets) {
            Ser.writeOffset(zoneOffset2, dataOutput);
        }
        dataOutput.writeByte(this.lastRules.length);
        for (ZoneOffsetTransitionRule zoneOffsetTransitionRule : this.lastRules) {
            zoneOffsetTransitionRule.writeExternal(dataOutput);
        }
    }
}
