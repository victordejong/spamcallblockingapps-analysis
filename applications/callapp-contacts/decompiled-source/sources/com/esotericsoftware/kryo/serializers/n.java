package com.esotericsoftware.kryo.serializers;

import com.explorestack.iab.vast.VastError;
import java.time.Duration;
import java.time.Instant;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.LocalTime;
import java.time.MonthDay;
import java.time.OffsetDateTime;
import java.time.OffsetTime;
import java.time.Period;
import java.time.Year;
import java.time.YearMonth;
import java.time.ZoneId;
import java.time.ZoneOffset;
import java.time.ZonedDateTime;
/* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/n.class */
public final class n {

    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/n$a.class */
    public static class a extends com.esotericsoftware.kryo.serializers.i<Duration> {
        @Override // com.esotericsoftware.kryo.h
        public /* synthetic */ Object read(com.esotericsoftware.kryo.c cVar, com.esotericsoftware.kryo.a.a aVar, Class cls) {
            return Duration.ofSeconds(aVar.g(), aVar.a(true));
        }

        @Override // com.esotericsoftware.kryo.h
        public /* synthetic */ void write(com.esotericsoftware.kryo.c cVar, com.esotericsoftware.kryo.a.c cVar2, Object obj) {
            Duration duration = (Duration) obj;
            cVar2.a(duration.getSeconds());
            cVar2.a(duration.getNano(), true);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/n$b.class */
    public static class b extends com.esotericsoftware.kryo.serializers.i<Instant> {
        @Override // com.esotericsoftware.kryo.h
        public /* synthetic */ Object read(com.esotericsoftware.kryo.c cVar, com.esotericsoftware.kryo.a.a aVar, Class cls) {
            return Instant.ofEpochSecond(aVar.c(true), aVar.a(true));
        }

        @Override // com.esotericsoftware.kryo.h
        public /* synthetic */ void write(com.esotericsoftware.kryo.c cVar, com.esotericsoftware.kryo.a.c cVar2, Object obj) {
            Instant instant = (Instant) obj;
            cVar2.a(instant.getEpochSecond(), true);
            cVar2.a(instant.getNano(), true);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/n$c.class */
    public static class c extends com.esotericsoftware.kryo.serializers.i<LocalDate> {
        static LocalDate a(com.esotericsoftware.kryo.a.a aVar) {
            return LocalDate.of(aVar.a(true), aVar.c(), aVar.c());
        }

        static void a(com.esotericsoftware.kryo.a.c cVar, LocalDate localDate) {
            cVar.a(localDate.getYear(), true);
            cVar.a(localDate.getMonthValue());
            cVar.a(localDate.getDayOfMonth());
        }

        @Override // com.esotericsoftware.kryo.h
        public /* synthetic */ Object read(com.esotericsoftware.kryo.c cVar, com.esotericsoftware.kryo.a.a aVar, Class cls) {
            return a(aVar);
        }

        @Override // com.esotericsoftware.kryo.h
        public /* synthetic */ void write(com.esotericsoftware.kryo.c cVar, com.esotericsoftware.kryo.a.c cVar2, Object obj) {
            a(cVar2, (LocalDate) obj);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/n$d.class */
    public static class d extends com.esotericsoftware.kryo.serializers.i<LocalDateTime> {
        @Override // com.esotericsoftware.kryo.h
        public /* synthetic */ Object read(com.esotericsoftware.kryo.c cVar, com.esotericsoftware.kryo.a.a aVar, Class cls) {
            return LocalDateTime.of(c.a(aVar), e.a(aVar));
        }

        @Override // com.esotericsoftware.kryo.h
        public /* synthetic */ void write(com.esotericsoftware.kryo.c cVar, com.esotericsoftware.kryo.a.c cVar2, Object obj) {
            LocalDateTime localDateTime = (LocalDateTime) obj;
            c.a(cVar2, localDateTime.toLocalDate());
            e.a(cVar2, localDateTime.toLocalTime());
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/n$e.class */
    public static class e extends com.esotericsoftware.kryo.serializers.i<LocalTime> {
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r7v4 */
        /* JADX WARN: Type inference failed for: r8v6 */
        /* JADX WARN: Type inference failed for: r9v3 */
        static LocalTime a(com.esotericsoftware.kryo.a.a aVar) {
            byte b2;
            int i;
            byte b3;
            byte b4;
            byte b5;
            byte b6;
            byte c2 = aVar.c();
            byte b7 = 0;
            if (c2 < 0) {
                b6 = 0;
                b5 = c2 ^ (-1);
            } else {
                byte c3 = aVar.c();
                if (c3 < 0) {
                    i = 0;
                    b2 = 0;
                    b4 = c2;
                    b3 = c3 ^ (-1);
                } else {
                    byte c4 = aVar.c();
                    if (c4 < 0) {
                        b5 = c2;
                        b7 = c3;
                        b6 = c4 ^ (-1);
                    } else {
                        i = aVar.a(true);
                        b3 = c3;
                        b2 = c4;
                        b4 = c2;
                    }
                }
                int i2 = b3 == 1 ? 1 : 0;
                int i3 = b3 == 1 ? 1 : 0;
                int i4 = b2 == 1 ? 1 : 0;
                int i5 = b3 == 1 ? 1 : 0;
                int i6 = b2 == 1 ? 1 : 0;
                return LocalTime.of(b4, i2, i4, i);
            }
            i = 0;
            b4 = b5;
            b3 = b7;
            b2 = b6;
            int i22 = b3 == 1 ? 1 : 0;
            int i32 = b3 == 1 ? 1 : 0;
            int i42 = b2 == 1 ? 1 : 0;
            int i52 = b3 == 1 ? 1 : 0;
            int i62 = b2 == 1 ? 1 : 0;
            return LocalTime.of(b4, i22, i42, i);
        }

        static void a(com.esotericsoftware.kryo.a.c cVar, LocalTime localTime) {
            if (localTime.getNano() != 0) {
                cVar.a(localTime.getHour());
                cVar.a(localTime.getMinute());
                cVar.a(localTime.getSecond());
                cVar.a(localTime.getNano(), true);
            } else if (localTime.getSecond() != 0) {
                cVar.a(localTime.getHour());
                cVar.a(localTime.getMinute());
                cVar.a(localTime.getSecond() ^ (-1));
            } else if (localTime.getMinute() == 0) {
                cVar.a(localTime.getHour() ^ (-1));
            } else {
                cVar.a(localTime.getHour());
                cVar.a(localTime.getMinute() ^ (-1));
            }
        }

        @Override // com.esotericsoftware.kryo.h
        public /* synthetic */ Object read(com.esotericsoftware.kryo.c cVar, com.esotericsoftware.kryo.a.a aVar, Class cls) {
            return a(aVar);
        }

        @Override // com.esotericsoftware.kryo.h
        public /* synthetic */ void write(com.esotericsoftware.kryo.c cVar, com.esotericsoftware.kryo.a.c cVar2, Object obj) {
            a(cVar2, (LocalTime) obj);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/n$f.class */
    public static class f extends com.esotericsoftware.kryo.serializers.i<MonthDay> {
        @Override // com.esotericsoftware.kryo.h
        public /* synthetic */ Object read(com.esotericsoftware.kryo.c cVar, com.esotericsoftware.kryo.a.a aVar, Class cls) {
            return MonthDay.of(aVar.c(), aVar.c());
        }

        @Override // com.esotericsoftware.kryo.h
        public /* synthetic */ void write(com.esotericsoftware.kryo.c cVar, com.esotericsoftware.kryo.a.c cVar2, Object obj) {
            MonthDay monthDay = (MonthDay) obj;
            cVar2.a(monthDay.getMonthValue());
            cVar2.a(monthDay.getDayOfMonth());
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/n$g.class */
    public static class g extends com.esotericsoftware.kryo.serializers.i<OffsetDateTime> {
        @Override // com.esotericsoftware.kryo.h
        public /* synthetic */ Object read(com.esotericsoftware.kryo.c cVar, com.esotericsoftware.kryo.a.a aVar, Class cls) {
            return OffsetDateTime.of(c.a(aVar), e.a(aVar), m.a(aVar));
        }

        @Override // com.esotericsoftware.kryo.h
        public /* synthetic */ void write(com.esotericsoftware.kryo.c cVar, com.esotericsoftware.kryo.a.c cVar2, Object obj) {
            OffsetDateTime offsetDateTime = (OffsetDateTime) obj;
            c.a(cVar2, offsetDateTime.toLocalDate());
            e.a(cVar2, offsetDateTime.toLocalTime());
            m.a(cVar2, offsetDateTime.getOffset());
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/n$h.class */
    public static class h extends com.esotericsoftware.kryo.serializers.i<OffsetTime> {
        @Override // com.esotericsoftware.kryo.h
        public /* synthetic */ Object read(com.esotericsoftware.kryo.c cVar, com.esotericsoftware.kryo.a.a aVar, Class cls) {
            return OffsetTime.of(e.a(aVar), m.a(aVar));
        }

        @Override // com.esotericsoftware.kryo.h
        public /* synthetic */ void write(com.esotericsoftware.kryo.c cVar, com.esotericsoftware.kryo.a.c cVar2, Object obj) {
            OffsetTime offsetTime = (OffsetTime) obj;
            e.a(cVar2, offsetTime.toLocalTime());
            m.a(cVar2, offsetTime.getOffset());
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/n$i.class */
    public static class i extends com.esotericsoftware.kryo.serializers.i<Period> {
        @Override // com.esotericsoftware.kryo.h
        public /* synthetic */ Object read(com.esotericsoftware.kryo.c cVar, com.esotericsoftware.kryo.a.a aVar, Class cls) {
            return Period.of(aVar.a(true), aVar.a(true), aVar.a(true));
        }

        @Override // com.esotericsoftware.kryo.h
        public /* synthetic */ void write(com.esotericsoftware.kryo.c cVar, com.esotericsoftware.kryo.a.c cVar2, Object obj) {
            Period period = (Period) obj;
            cVar2.b(period.getYears(), true);
            cVar2.b(period.getMonths(), true);
            cVar2.b(period.getDays(), true);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/n$j.class */
    public static class j extends com.esotericsoftware.kryo.serializers.i<YearMonth> {
        @Override // com.esotericsoftware.kryo.h
        public /* synthetic */ Object read(com.esotericsoftware.kryo.c cVar, com.esotericsoftware.kryo.a.a aVar, Class cls) {
            return YearMonth.of(aVar.a(true), aVar.c());
        }

        @Override // com.esotericsoftware.kryo.h
        public /* synthetic */ void write(com.esotericsoftware.kryo.c cVar, com.esotericsoftware.kryo.a.c cVar2, Object obj) {
            YearMonth yearMonth = (YearMonth) obj;
            cVar2.b(yearMonth.getYear(), true);
            cVar2.a(yearMonth.getMonthValue());
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/n$k.class */
    public static class k extends com.esotericsoftware.kryo.serializers.i<Year> {
        @Override // com.esotericsoftware.kryo.h
        public /* synthetic */ Object read(com.esotericsoftware.kryo.c cVar, com.esotericsoftware.kryo.a.a aVar, Class cls) {
            return Year.of(aVar.a(true));
        }

        @Override // com.esotericsoftware.kryo.h
        public /* synthetic */ void write(com.esotericsoftware.kryo.c cVar, com.esotericsoftware.kryo.a.c cVar2, Object obj) {
            cVar2.b(((Year) obj).getValue(), true);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/n$l.class */
    public static class l extends com.esotericsoftware.kryo.serializers.i<ZoneId> {
        static ZoneId a(com.esotericsoftware.kryo.a.a aVar) {
            return ZoneId.of(aVar.m());
        }

        static void a(com.esotericsoftware.kryo.a.c cVar, ZoneId zoneId) {
            cVar.a(zoneId.getId());
        }

        @Override // com.esotericsoftware.kryo.h
        public /* synthetic */ Object read(com.esotericsoftware.kryo.c cVar, com.esotericsoftware.kryo.a.a aVar, Class cls) {
            return ZoneId.of(aVar.m());
        }

        @Override // com.esotericsoftware.kryo.h
        public /* synthetic */ void write(com.esotericsoftware.kryo.c cVar, com.esotericsoftware.kryo.a.c cVar2, Object obj) {
            a(cVar2, (ZoneId) obj);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/n$m.class */
    public static class m extends com.esotericsoftware.kryo.serializers.i<ZoneOffset> {
        static ZoneOffset a(com.esotericsoftware.kryo.a.a aVar) {
            byte c2 = aVar.c();
            return c2 == Byte.MAX_VALUE ? ZoneOffset.ofTotalSeconds(aVar.d()) : ZoneOffset.ofTotalSeconds(c2 * VastError.ERROR_CODE_UNKNOWN);
        }

        static void a(com.esotericsoftware.kryo.a.c cVar, ZoneOffset zoneOffset) {
            int totalSeconds = zoneOffset.getTotalSeconds();
            int i = totalSeconds % VastError.ERROR_CODE_UNKNOWN == 0 ? totalSeconds / VastError.ERROR_CODE_UNKNOWN : 127;
            cVar.a(i);
            if (i == 127) {
                cVar.b(totalSeconds);
            }
        }

        @Override // com.esotericsoftware.kryo.h
        public /* synthetic */ Object read(com.esotericsoftware.kryo.c cVar, com.esotericsoftware.kryo.a.a aVar, Class cls) {
            return a(aVar);
        }

        @Override // com.esotericsoftware.kryo.h
        public /* synthetic */ void write(com.esotericsoftware.kryo.c cVar, com.esotericsoftware.kryo.a.c cVar2, Object obj) {
            a(cVar2, (ZoneOffset) obj);
        }
    }

    /* renamed from: com.esotericsoftware.kryo.serializers.n$n  reason: collision with other inner class name */
    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/n$n.class */
    public static class C0378n extends com.esotericsoftware.kryo.serializers.i<ZonedDateTime> {
        @Override // com.esotericsoftware.kryo.h
        public /* synthetic */ Object read(com.esotericsoftware.kryo.c cVar, com.esotericsoftware.kryo.a.a aVar, Class cls) {
            return ZonedDateTime.of(c.a(aVar), e.a(aVar), l.a(aVar));
        }

        @Override // com.esotericsoftware.kryo.h
        public /* synthetic */ void write(com.esotericsoftware.kryo.c cVar, com.esotericsoftware.kryo.a.c cVar2, Object obj) {
            ZonedDateTime zonedDateTime = (ZonedDateTime) obj;
            c.a(cVar2, zonedDateTime.toLocalDate());
            e.a(cVar2, zonedDateTime.toLocalTime());
            l.a(cVar2, zonedDateTime.getZone());
        }
    }
}
