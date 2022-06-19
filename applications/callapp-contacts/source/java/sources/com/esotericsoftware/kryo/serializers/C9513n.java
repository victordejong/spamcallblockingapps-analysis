package com.esotericsoftware.kryo.serializers;

import com.esotericsoftware.kryo.C9380c;
import com.esotericsoftware.kryo.p276a.C9374a;
import com.esotericsoftware.kryo.p276a.C9376c;
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
/* renamed from: com.esotericsoftware.kryo.serializers.n */
/* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/n.class */
public final class C9513n {

    /* renamed from: com.esotericsoftware.kryo.serializers.n$a */
    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/n$a.class */
    public static class C9514a extends AbstractC9494i<Duration> {
        @Override // com.esotericsoftware.kryo.AbstractC9413h
        public /* synthetic */ Object read(C9380c c9380c, C9374a c9374a, Class cls) {
            return Duration.ofSeconds(c9374a.m24445g(), c9374a.m24459a(true));
        }

        @Override // com.esotericsoftware.kryo.AbstractC9413h
        public /* synthetic */ void write(C9380c c9380c, C9376c c9376c, Object obj) {
            Duration duration = (Duration) obj;
            c9376c.m24418a(duration.getSeconds());
            c9376c.m24419a(duration.getNano(), true);
        }
    }

    /* renamed from: com.esotericsoftware.kryo.serializers.n$b */
    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/n$b.class */
    public static class C9515b extends AbstractC9494i<Instant> {
        @Override // com.esotericsoftware.kryo.AbstractC9413h
        public /* synthetic */ Object read(C9380c c9380c, C9374a c9374a, Class cls) {
            return Instant.ofEpochSecond(c9374a.m24453c(true), c9374a.m24459a(true));
        }

        @Override // com.esotericsoftware.kryo.AbstractC9413h
        public /* synthetic */ void write(C9380c c9380c, C9376c c9376c, Object obj) {
            Instant instant = (Instant) obj;
            c9376c.m24417a(instant.getEpochSecond(), true);
            c9376c.m24419a(instant.getNano(), true);
        }
    }

    /* renamed from: com.esotericsoftware.kryo.serializers.n$c */
    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/n$c.class */
    public static class C9516c extends AbstractC9494i<LocalDate> {
        /* renamed from: a */
        static LocalDate m24213a(C9374a c9374a) {
            return LocalDate.of(c9374a.m24459a(true), c9374a.m24455c(), c9374a.m24455c());
        }

        /* renamed from: a */
        static void m24212a(C9376c c9376c, LocalDate localDate) {
            c9376c.m24419a(localDate.getYear(), true);
            c9376c.m24420a(localDate.getMonthValue());
            c9376c.m24420a(localDate.getDayOfMonth());
        }

        @Override // com.esotericsoftware.kryo.AbstractC9413h
        public /* synthetic */ Object read(C9380c c9380c, C9374a c9374a, Class cls) {
            return m24213a(c9374a);
        }

        @Override // com.esotericsoftware.kryo.AbstractC9413h
        public /* synthetic */ void write(C9380c c9380c, C9376c c9376c, Object obj) {
            m24212a(c9376c, (LocalDate) obj);
        }
    }

    /* renamed from: com.esotericsoftware.kryo.serializers.n$d */
    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/n$d.class */
    public static class C9517d extends AbstractC9494i<LocalDateTime> {
        @Override // com.esotericsoftware.kryo.AbstractC9413h
        public /* synthetic */ Object read(C9380c c9380c, C9374a c9374a, Class cls) {
            return LocalDateTime.of(C9516c.m24213a(c9374a), C9518e.m24211a(c9374a));
        }

        @Override // com.esotericsoftware.kryo.AbstractC9413h
        public /* synthetic */ void write(C9380c c9380c, C9376c c9376c, Object obj) {
            LocalDateTime localDateTime = (LocalDateTime) obj;
            C9516c.m24212a(c9376c, localDateTime.toLocalDate());
            C9518e.m24210a(c9376c, localDateTime.toLocalTime());
        }
    }

    /* renamed from: com.esotericsoftware.kryo.serializers.n$e */
    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/n$e.class */
    public static class C9518e extends AbstractC9494i<LocalTime> {
        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: a */
        static LocalTime m24211a(C9374a c9374a) {
            byte b;
            int i;
            byte b2;
            byte m24455c = c9374a.m24455c();
            byte b3 = 0;
            if (m24455c >= 0) {
                byte m24455c2 = c9374a.m24455c();
                if (m24455c2 < 0) {
                    i = 0;
                    b3 = m24455c2 ^ (-1) ? 1 : 0;
                    b = 0;
                } else {
                    byte m24455c3 = c9374a.m24455c();
                    if (m24455c3 < 0) {
                        b2 = m24455c;
                        b3 = m24455c2;
                        b = m24455c3 ^ (-1) ? 1 : 0;
                    } else {
                        i = c9374a.m24459a(true);
                        b3 = m24455c2;
                        b = m24455c3;
                    }
                }
                return LocalTime.of(m24455c, b3, b, i);
            }
            b2 = m24455c ^ (-1) ? 1 : 0;
            b = 0;
            m24455c = b2;
            i = 0;
            return LocalTime.of(m24455c, b3, b, i);
        }

        /* renamed from: a */
        static void m24210a(C9376c c9376c, LocalTime localTime) {
            if (localTime.getNano() != 0) {
                c9376c.m24420a(localTime.getHour());
                c9376c.m24420a(localTime.getMinute());
                c9376c.m24420a(localTime.getSecond());
                c9376c.m24419a(localTime.getNano(), true);
            } else if (localTime.getSecond() != 0) {
                c9376c.m24420a(localTime.getHour());
                c9376c.m24420a(localTime.getMinute());
                c9376c.m24420a(localTime.getSecond() ^ (-1));
            } else if (localTime.getMinute() == 0) {
                c9376c.m24420a(localTime.getHour() ^ (-1));
            } else {
                c9376c.m24420a(localTime.getHour());
                c9376c.m24420a(localTime.getMinute() ^ (-1));
            }
        }

        @Override // com.esotericsoftware.kryo.AbstractC9413h
        public /* synthetic */ Object read(C9380c c9380c, C9374a c9374a, Class cls) {
            return m24211a(c9374a);
        }

        @Override // com.esotericsoftware.kryo.AbstractC9413h
        public /* synthetic */ void write(C9380c c9380c, C9376c c9376c, Object obj) {
            m24210a(c9376c, (LocalTime) obj);
        }
    }

    /* renamed from: com.esotericsoftware.kryo.serializers.n$f */
    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/n$f.class */
    public static class C9519f extends AbstractC9494i<MonthDay> {
        @Override // com.esotericsoftware.kryo.AbstractC9413h
        public /* synthetic */ Object read(C9380c c9380c, C9374a c9374a, Class cls) {
            return MonthDay.of(c9374a.m24455c(), c9374a.m24455c());
        }

        @Override // com.esotericsoftware.kryo.AbstractC9413h
        public /* synthetic */ void write(C9380c c9380c, C9376c c9376c, Object obj) {
            MonthDay monthDay = (MonthDay) obj;
            c9376c.m24420a(monthDay.getMonthValue());
            c9376c.m24420a(monthDay.getDayOfMonth());
        }
    }

    /* renamed from: com.esotericsoftware.kryo.serializers.n$g */
    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/n$g.class */
    public static class C9520g extends AbstractC9494i<OffsetDateTime> {
        @Override // com.esotericsoftware.kryo.AbstractC9413h
        public /* synthetic */ Object read(C9380c c9380c, C9374a c9374a, Class cls) {
            return OffsetDateTime.of(C9516c.m24213a(c9374a), C9518e.m24211a(c9374a), C9526m.m24207a(c9374a));
        }

        @Override // com.esotericsoftware.kryo.AbstractC9413h
        public /* synthetic */ void write(C9380c c9380c, C9376c c9376c, Object obj) {
            OffsetDateTime offsetDateTime = (OffsetDateTime) obj;
            C9516c.m24212a(c9376c, offsetDateTime.toLocalDate());
            C9518e.m24210a(c9376c, offsetDateTime.toLocalTime());
            C9526m.m24206a(c9376c, offsetDateTime.getOffset());
        }
    }

    /* renamed from: com.esotericsoftware.kryo.serializers.n$h */
    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/n$h.class */
    public static class C9521h extends AbstractC9494i<OffsetTime> {
        @Override // com.esotericsoftware.kryo.AbstractC9413h
        public /* synthetic */ Object read(C9380c c9380c, C9374a c9374a, Class cls) {
            return OffsetTime.of(C9518e.m24211a(c9374a), C9526m.m24207a(c9374a));
        }

        @Override // com.esotericsoftware.kryo.AbstractC9413h
        public /* synthetic */ void write(C9380c c9380c, C9376c c9376c, Object obj) {
            OffsetTime offsetTime = (OffsetTime) obj;
            C9518e.m24210a(c9376c, offsetTime.toLocalTime());
            C9526m.m24206a(c9376c, offsetTime.getOffset());
        }
    }

    /* renamed from: com.esotericsoftware.kryo.serializers.n$i */
    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/n$i.class */
    public static class C9522i extends AbstractC9494i<Period> {
        @Override // com.esotericsoftware.kryo.AbstractC9413h
        public /* synthetic */ Object read(C9380c c9380c, C9374a c9374a, Class cls) {
            return Period.of(c9374a.m24459a(true), c9374a.m24459a(true), c9374a.m24459a(true));
        }

        @Override // com.esotericsoftware.kryo.AbstractC9413h
        public /* synthetic */ void write(C9380c c9380c, C9376c c9376c, Object obj) {
            Period period = (Period) obj;
            c9376c.m24402b(period.getYears(), true);
            c9376c.m24402b(period.getMonths(), true);
            c9376c.m24402b(period.getDays(), true);
        }
    }

    /* renamed from: com.esotericsoftware.kryo.serializers.n$j */
    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/n$j.class */
    public static class C9523j extends AbstractC9494i<YearMonth> {
        @Override // com.esotericsoftware.kryo.AbstractC9413h
        public /* synthetic */ Object read(C9380c c9380c, C9374a c9374a, Class cls) {
            return YearMonth.of(c9374a.m24459a(true), c9374a.m24455c());
        }

        @Override // com.esotericsoftware.kryo.AbstractC9413h
        public /* synthetic */ void write(C9380c c9380c, C9376c c9376c, Object obj) {
            YearMonth yearMonth = (YearMonth) obj;
            c9376c.m24402b(yearMonth.getYear(), true);
            c9376c.m24420a(yearMonth.getMonthValue());
        }
    }

    /* renamed from: com.esotericsoftware.kryo.serializers.n$k */
    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/n$k.class */
    public static class C9524k extends AbstractC9494i<Year> {
        @Override // com.esotericsoftware.kryo.AbstractC9413h
        public /* synthetic */ Object read(C9380c c9380c, C9374a c9374a, Class cls) {
            return Year.of(c9374a.m24459a(true));
        }

        @Override // com.esotericsoftware.kryo.AbstractC9413h
        public /* synthetic */ void write(C9380c c9380c, C9376c c9376c, Object obj) {
            c9376c.m24402b(((Year) obj).getValue(), true);
        }
    }

    /* renamed from: com.esotericsoftware.kryo.serializers.n$l */
    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/n$l.class */
    public static class C9525l extends AbstractC9494i<ZoneId> {
        /* renamed from: a */
        static ZoneId m24209a(C9374a c9374a) {
            return ZoneId.of(c9374a.m24433m());
        }

        /* renamed from: a */
        static void m24208a(C9376c c9376c, ZoneId zoneId) {
            c9376c.m24416a(zoneId.getId());
        }

        @Override // com.esotericsoftware.kryo.AbstractC9413h
        public /* synthetic */ Object read(C9380c c9380c, C9374a c9374a, Class cls) {
            return ZoneId.of(c9374a.m24433m());
        }

        @Override // com.esotericsoftware.kryo.AbstractC9413h
        public /* synthetic */ void write(C9380c c9380c, C9376c c9376c, Object obj) {
            m24208a(c9376c, (ZoneId) obj);
        }
    }

    /* renamed from: com.esotericsoftware.kryo.serializers.n$m */
    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/n$m.class */
    public static class C9526m extends AbstractC9494i<ZoneOffset> {
        /* renamed from: a */
        static ZoneOffset m24207a(C9374a c9374a) {
            byte m24455c = c9374a.m24455c();
            return m24455c == Byte.MAX_VALUE ? ZoneOffset.ofTotalSeconds(c9374a.m24452d()) : ZoneOffset.ofTotalSeconds(m24455c * VastError.ERROR_CODE_UNKNOWN);
        }

        /* renamed from: a */
        static void m24206a(C9376c c9376c, ZoneOffset zoneOffset) {
            int totalSeconds = zoneOffset.getTotalSeconds();
            int i = totalSeconds % VastError.ERROR_CODE_UNKNOWN == 0 ? totalSeconds / VastError.ERROR_CODE_UNKNOWN : 127;
            c9376c.m24420a(i);
            if (i == 127) {
                c9376c.m24403b(totalSeconds);
            }
        }

        @Override // com.esotericsoftware.kryo.AbstractC9413h
        public /* synthetic */ Object read(C9380c c9380c, C9374a c9374a, Class cls) {
            return m24207a(c9374a);
        }

        @Override // com.esotericsoftware.kryo.AbstractC9413h
        public /* synthetic */ void write(C9380c c9380c, C9376c c9376c, Object obj) {
            m24206a(c9376c, (ZoneOffset) obj);
        }
    }

    /* renamed from: com.esotericsoftware.kryo.serializers.n$n */
    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/n$n.class */
    public static class C9527n extends AbstractC9494i<ZonedDateTime> {
        @Override // com.esotericsoftware.kryo.AbstractC9413h
        public /* synthetic */ Object read(C9380c c9380c, C9374a c9374a, Class cls) {
            return ZonedDateTime.of(C9516c.m24213a(c9374a), C9518e.m24211a(c9374a), C9525l.m24209a(c9374a));
        }

        @Override // com.esotericsoftware.kryo.AbstractC9413h
        public /* synthetic */ void write(C9380c c9380c, C9376c c9376c, Object obj) {
            ZonedDateTime zonedDateTime = (ZonedDateTime) obj;
            C9516c.m24212a(c9376c, zonedDateTime.toLocalDate());
            C9518e.m24210a(c9376c, zonedDateTime.toLocalTime());
            C9525l.m24208a(c9376c, zonedDateTime.getZone());
        }
    }
}
