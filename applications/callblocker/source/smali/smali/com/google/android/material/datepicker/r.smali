.class Lcom/google/android/material/datepicker/r;
.super Ljava/lang/Object;
.source "UtcDates.java"


# direct methods
.method static a(J)J
    .locals 2

    .prologue
    .line 109
    invoke-static {}, Lcom/google/android/material/datepicker/r;->b()Ljava/util/Calendar;

    move-result-object v0

    .line 110
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 111
    invoke-static {v0}, Lcom/google/android/material/datepicker/r;->b(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v0

    .line 112
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method private static a(Ljava/lang/String;Ljava/util/Locale;)Landroid/icu/text/DateFormat;
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .prologue
    .line 117
    .line 118
    invoke-static {p0, p1}, Landroid/icu/text/DateFormat;->getInstanceForSkeleton(Ljava/lang/String;Ljava/util/Locale;)Landroid/icu/text/DateFormat;

    move-result-object v0

    .line 119
    invoke-static {}, Lcom/google/android/material/datepicker/r;->e()Landroid/icu/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/icu/text/DateFormat;->setTimeZone(Landroid/icu/util/TimeZone;)V

    .line 120
    return-object v0
.end method

.method static a(Ljava/util/Locale;)Landroid/icu/text/DateFormat;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .prologue
    .line 171
    const-string/jumbo v0, "MMMEd"

    invoke-static {v0, p0}, Lcom/google/android/material/datepicker/r;->a(Ljava/lang/String;Ljava/util/Locale;)Landroid/icu/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method private static a(ILjava/util/Locale;)Ljava/text/DateFormat;
    .locals 2

    .prologue
    .line 124
    invoke-static {p0, p1}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    .line 125
    invoke-static {}, Lcom/google/android/material/datepicker/r;->d()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 126
    return-object v0
.end method

.method static a()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 51
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/material/datepicker/r;->b(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method static a(Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 4

    .prologue
    .line 74
    invoke-static {}, Lcom/google/android/material/datepicker/r;->d()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 75
    if-nez p0, :cond_0

    .line 76
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 80
    :goto_0
    return-object v0

    .line 78
    :cond_0
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_0
.end method

.method static b(Ljava/util/Locale;)Landroid/icu/text/DateFormat;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .prologue
    .line 176
    const-string/jumbo v0, "yMMMEd"

    invoke-static {v0, p0}, Lcom/google/android/material/datepicker/r;->a(Ljava/lang/String;Ljava/util/Locale;)Landroid/icu/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method private static b(Ljava/lang/String;Ljava/util/Locale;)Ljava/text/SimpleDateFormat;
    .locals 2

    .prologue
    .line 154
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 155
    invoke-static {}, Lcom/google/android/material/datepicker/r;->d()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 156
    return-object v0
.end method

.method static b()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/material/datepicker/r;->a(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method static b(Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 5

    .prologue
    .line 92
    invoke-static {p0}, Lcom/google/android/material/datepicker/r;->a(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v0

    .line 93
    invoke-static {}, Lcom/google/android/material/datepicker/r;->b()Ljava/util/Calendar;

    move-result-object v1

    .line 94
    const/4 v2, 0x1

    .line 95
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x2

    .line 96
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x5

    .line 97
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 94
    invoke-virtual {v1, v2, v3, v0}, Ljava/util/Calendar;->set(III)V

    .line 98
    return-object v1
.end method

.method static c(Ljava/util/Locale;)Ljava/text/DateFormat;
    .locals 1

    .prologue
    .line 202
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/google/android/material/datepicker/r;->a(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method static c()Ljava/text/SimpleDateFormat;
    .locals 1

    .prologue
    .line 206
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/material/datepicker/r;->d(Ljava/util/Locale;)Ljava/text/SimpleDateFormat;

    move-result-object v0

    return-object v0
.end method

.method private static d(Ljava/util/Locale;)Ljava/text/SimpleDateFormat;
    .locals 1

    .prologue
    .line 210
    const-string/jumbo v0, "MMMM, yyyy"

    invoke-static {v0, p0}, Lcom/google/android/material/datepicker/r;->b(Ljava/lang/String;Ljava/util/Locale;)Ljava/text/SimpleDateFormat;

    move-result-object v0

    return-object v0
.end method

.method private static d()Ljava/util/TimeZone;
    .locals 1

    .prologue
    .line 42
    const-string/jumbo v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method private static e()Landroid/icu/util/TimeZone;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .prologue
    .line 47
    const-string/jumbo v0, "UTC"

    invoke-static {v0}, Landroid/icu/util/TimeZone;->getTimeZone(Ljava/lang/String;)Landroid/icu/util/TimeZone;

    move-result-object v0

    return-object v0
.end method
