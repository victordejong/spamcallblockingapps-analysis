.class public Lcom/telguarder/helpers/dateUtils/DateUtils;
.super Ljava/lang/Object;
.source "DateUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getCalendarForWeekStartingWithMonday()Ljava/util/Calendar;
    .locals 2

    .line 52
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x2

    .line 53
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setFirstDayOfWeek(I)V

    return-object v0
.end method

.method public static getDayStartingFromSunday(I)I
    .locals 2

    const/4 v0, 0x1

    if-lt p0, v0, :cond_1

    const/4 v1, 0x7

    if-gt p0, v1, :cond_1

    if-ne p0, v1, :cond_0

    return v0

    :cond_0
    add-int/2addr p0, v0

    return p0

    .line 89
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Day index must be in range: [1-7]"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getStartOfCurrentDay()Ljava/util/Calendar;
    .locals 3

    .line 59
    invoke-static {}, Lcom/telguarder/helpers/dateUtils/DateUtils;->getCalendarForWeekStartingWithMonday()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    const/4 v2, 0x0

    .line 60
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xc

    .line 61
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->clear(I)V

    const/16 v1, 0xd

    .line 62
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->clear(I)V

    const/16 v1, 0xe

    .line 63
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->clear(I)V

    return-object v0
.end method

.method public static getStartOfCurrentWeek()Ljava/util/Calendar;
    .locals 3

    .line 38
    invoke-static {}, Lcom/telguarder/helpers/dateUtils/DateUtils;->getCalendarForWeekStartingWithMonday()Ljava/util/Calendar;

    move-result-object v0

    .line 39
    invoke-virtual {v0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v1

    const/4 v2, 0x7

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    return-object v0
.end method

.method public static getStartOfNextDay()Ljava/util/Calendar;
    .locals 3

    .line 45
    invoke-static {}, Lcom/telguarder/helpers/dateUtils/DateUtils;->getStartOfCurrentDay()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x5

    const/4 v2, 0x1

    .line 46
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    return-object v0
.end method

.method public static getStartOfNextWeek()Ljava/util/Calendar;
    .locals 3

    .line 31
    invoke-static {}, Lcom/telguarder/helpers/dateUtils/DateUtils;->getStartOfNextDay()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    .line 32
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    return-object v0
.end method

.method public static isCurrentDayOfWeek(I)Z
    .locals 3

    const/4 v0, 0x1

    if-lt p0, v0, :cond_1

    const/4 v1, 0x7

    if-gt p0, v1, :cond_1

    .line 76
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 77
    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 74
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Day index must be in range: [1-7]"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static isCurrentWeek(J)Z
    .locals 3

    .line 26
    invoke-static {}, Lcom/telguarder/helpers/dateUtils/DateUtils;->getStartOfCurrentWeek()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    cmp-long v2, p0, v0

    if-lez v2, :cond_0

    invoke-static {}, Lcom/telguarder/helpers/dateUtils/DateUtils;->getStartOfNextWeek()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    cmp-long v2, p0, v0

    if-gez v2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isCurrentWeek(Ljava/util/Calendar;)Z
    .locals 2

    const/4 v0, 0x2

    .line 20
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->setFirstDayOfWeek(I)V

    .line 21
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/telguarder/helpers/dateUtils/DateUtils;->isCurrentWeek(J)Z

    move-result p0

    return p0
.end method

.method public static isToday(J)Z
    .locals 3

    .line 15
    invoke-static {}, Lcom/telguarder/helpers/dateUtils/DateUtils;->getStartOfCurrentDay()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    cmp-long v2, p0, v0

    if-lez v2, :cond_0

    invoke-static {}, Lcom/telguarder/helpers/dateUtils/DateUtils;->getStartOfNextDay()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    cmp-long v2, p0, v0

    if-gez v2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isToday(Ljava/util/Calendar;)Z
    .locals 2

    .line 10
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/telguarder/helpers/dateUtils/DateUtils;->isToday(J)Z

    move-result p0

    return p0
.end method
