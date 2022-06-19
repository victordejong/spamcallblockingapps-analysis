.class public final Lcom/explorestack/protobuf/ext/Timestamps;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final MILLIS_PER_SECOND:J = 0x3e8L

.field static final NANOS_PER_MICROSECOND:J = 0x3e8L

.field static final NANOS_PER_MILLISECOND:J = 0xf4240L

.field static final NANOS_PER_SECOND:J = 0x3b9aca00L

.field static final TIMESTAMP_SECONDS_MAX:J = 0x3afff4417fL

.field static final TIMESTAMP_SECONDS_MIN:J = -0xe7791f700L

.field private static final timestampFormat:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/text/SimpleDateFormat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    new-instance v0, Lcom/explorestack/protobuf/ext/Timestamps$1;

    invoke-direct {v0}, Lcom/explorestack/protobuf/ext/Timestamps$1;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/ext/Timestamps;->timestampFormat:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/text/SimpleDateFormat;
    .locals 1

    .line 10
    invoke-static {}, Lcom/explorestack/protobuf/ext/Timestamps;->createTimestampFormat()Ljava/text/SimpleDateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static add(Lcom/explorestack/protobuf/Timestamp;Lcom/explorestack/protobuf/Duration;)Lcom/explorestack/protobuf/Timestamp;
    .locals 4

    .line 149
    invoke-static {p0}, Lcom/explorestack/protobuf/ext/Timestamps;->checkValid(Lcom/explorestack/protobuf/Timestamp;)Lcom/explorestack/protobuf/Timestamp;

    .line 151
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Timestamp;->getSeconds()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Duration;->getSeconds()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/explorestack/protobuf/ext/Timestamps;->checkedAdd(JJ)I

    move-result v0

    int-to-long v0, v0

    .line 152
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Timestamp;->getNanos()I

    move-result p0

    int-to-long v2, p0

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Duration;->getNanos()I

    move-result p0

    int-to-long p0, p0

    invoke-static {v2, v3, p0, p1}, Lcom/explorestack/protobuf/ext/Timestamps;->checkedAdd(JJ)I

    move-result p0

    .line 150
    invoke-static {v0, v1, p0}, Lcom/explorestack/protobuf/ext/Timestamps;->normalizedTimestamp(JI)Lcom/explorestack/protobuf/Timestamp;

    move-result-object p0

    return-object p0
.end method

.method private static checkNoOverflow(ZLjava/lang/String;JJ)V
    .locals 2

    if-eqz p0, :cond_0

    return-void

    .line 243
    :cond_0
    new-instance p0, Ljava/lang/ArithmeticException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "overflow: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static checkValid(Lcom/explorestack/protobuf/Timestamp$Builder;)Lcom/explorestack/protobuf/Timestamp;
    .locals 0

    .line 88
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Timestamp$Builder;->build()Lcom/explorestack/protobuf/Timestamp;

    move-result-object p0

    invoke-static {p0}, Lcom/explorestack/protobuf/ext/Timestamps;->checkValid(Lcom/explorestack/protobuf/Timestamp;)Lcom/explorestack/protobuf/Timestamp;

    move-result-object p0

    return-object p0
.end method

.method public static checkValid(Lcom/explorestack/protobuf/Timestamp;)Lcom/explorestack/protobuf/Timestamp;
    .locals 5

    .line 68
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Timestamp;->getSeconds()J

    move-result-wide v0

    .line 69
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Timestamp;->getNanos()I

    move-result v2

    .line 70
    invoke-static {v0, v1, v2}, Lcom/explorestack/protobuf/ext/Timestamps;->isValid(JI)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object p0

    .line 71
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 76
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v0

    const-string v0, "Timestamp is not valid. See proto definition for valid values. Seconds (%s) must be in range [-62,135,596,800, +253,402,300,799]. Nanos (%s) must be in range [0, +999,999,999]."

    .line 72
    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static checkedAdd(JJ)I
    .locals 9

    add-long v0, p0, p2

    long-to-int v2, v0

    int-to-long v3, v2

    cmp-long v5, v0, v3

    if-nez v5, :cond_0

    const/4 v0, 0x1

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_0
    const-string v4, "checkedAdd"

    move-wide v5, p0

    move-wide v7, p2

    .line 226
    invoke-static/range {v3 .. v8}, Lcom/explorestack/protobuf/ext/Timestamps;->checkNoOverflow(ZLjava/lang/String;JJ)V

    return v2
.end method

.method private static checkedMultiply(JJ)I
    .locals 9

    mul-long v0, p0, p2

    long-to-int v2, v0

    int-to-long v3, v2

    cmp-long v5, v0, v3

    if-nez v5, :cond_0

    const/4 v0, 0x1

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_0
    const-string v4, "checkedMultiply"

    move-wide v5, p0

    move-wide v7, p2

    .line 237
    invoke-static/range {v3 .. v8}, Lcom/explorestack/protobuf/ext/Timestamps;->checkNoOverflow(ZLjava/lang/String;JJ)V

    return v2
.end method

.method private static checkedSubtract(JJ)I
    .locals 9

    sub-long v0, p0, p2

    long-to-int v2, v0

    int-to-long v3, v2

    cmp-long v5, v0, v3

    if-nez v5, :cond_0

    const/4 v0, 0x1

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_0
    const-string v4, "checkedSubtract"

    move-wide v5, p0

    move-wide v7, p2

    .line 215
    invoke-static/range {v3 .. v8}, Lcom/explorestack/protobuf/ext/Timestamps;->checkNoOverflow(ZLjava/lang/String;JJ)V

    return v2
.end method

.method private static createTimestampFormat()Ljava/text/SimpleDateFormat;
    .locals 5

    .line 32
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ss"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 33
    new-instance v1, Ljava/util/GregorianCalendar;

    const-string v2, "UTC"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 36
    new-instance v2, Ljava/util/Date;

    const-wide/high16 v3, -0x8000000000000000L

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/util/GregorianCalendar;->setGregorianChange(Ljava/util/Date;)V

    .line 37
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setCalendar(Ljava/util/Calendar;)V

    return-object v0
.end method

.method private static formatNanos(I)Ljava/lang/String;
    .locals 11

    int-to-long v0, p0

    const-wide/32 v2, 0xf4240

    .line 199
    rem-long v4, v0, v2

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    cmp-long v10, v4, v6

    if-nez v10, :cond_0

    .line 200
    sget-object p0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v4, v9, [Ljava/lang/Object;

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v8

    const-string v0, "%1$03d"

    invoke-static {p0, v0, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-wide/16 v2, 0x3e8

    .line 201
    rem-long v4, v0, v2

    cmp-long v10, v4, v6

    if-nez v10, :cond_1

    .line 202
    sget-object p0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v4, v9, [Ljava/lang/Object;

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v8

    const-string v0, "%1$06d"

    invoke-static {p0, v0, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 204
    :cond_1
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v1, v9, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v8

    const-string p0, "%1$09d"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static fromMillis(J)Lcom/explorestack/protobuf/Timestamp;
    .locals 4

    const-wide/16 v0, 0x3e8

    .line 126
    div-long v2, p0, v0

    rem-long/2addr p0, v0

    const-wide/32 v0, 0xf4240

    mul-long p0, p0, v0

    long-to-int p1, p0

    invoke-static {v2, v3, p1}, Lcom/explorestack/protobuf/ext/Timestamps;->normalizedTimestamp(JI)Lcom/explorestack/protobuf/Timestamp;

    move-result-object p0

    return-object p0
.end method

.method public static isValid(JI)Z
    .locals 4

    const/4 v0, 0x0

    const-wide v1, -0xe7791f700L

    cmp-long v3, p0, v1

    if-ltz v3, :cond_2

    const-wide v1, 0x3afff4417fL

    cmp-long v3, p0, v1

    if-lez v3, :cond_0

    goto :goto_0

    :cond_0
    if-ltz p2, :cond_2

    int-to-long p0, p2

    const-wide/32 v1, 0x3b9aca00

    cmp-long p2, p0, v1

    if-ltz p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v0
.end method

.method private static normalizedTimestamp(JI)Lcom/explorestack/protobuf/Timestamp;
    .locals 7

    int-to-long v0, p2

    const-wide/32 v2, 0x3b9aca00

    const-wide/32 v4, -0x3b9aca00

    cmp-long v6, v0, v4

    if-lez v6, :cond_0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    .line 157
    :cond_0
    div-long v4, v0, v2

    invoke-static {p0, p1, v4, v5}, Lcom/explorestack/protobuf/ext/Timestamps;->checkedAdd(JJ)I

    move-result p0

    int-to-long p0, p0

    .line 158
    rem-long/2addr v0, v2

    long-to-int p2, v0

    :cond_1
    if-gez p2, :cond_2

    int-to-long v0, p2

    add-long/2addr v0, v2

    long-to-int p2, v0

    const-wide/16 v0, 0x1

    .line 164
    invoke-static {p0, p1, v0, v1}, Lcom/explorestack/protobuf/ext/Timestamps;->checkedSubtract(JJ)I

    move-result p0

    int-to-long p0, p0

    .line 166
    :cond_2
    invoke-static {}, Lcom/explorestack/protobuf/Timestamp;->newBuilder()Lcom/explorestack/protobuf/Timestamp$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/explorestack/protobuf/Timestamp$Builder;->setSeconds(J)Lcom/explorestack/protobuf/Timestamp$Builder;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/explorestack/protobuf/Timestamp$Builder;->setNanos(I)Lcom/explorestack/protobuf/Timestamp$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/explorestack/protobuf/Timestamp$Builder;->build()Lcom/explorestack/protobuf/Timestamp;

    move-result-object p0

    .line 167
    invoke-static {p0}, Lcom/explorestack/protobuf/ext/Timestamps;->checkValid(Lcom/explorestack/protobuf/Timestamp;)Lcom/explorestack/protobuf/Timestamp;

    move-result-object p0

    return-object p0
.end method

.method private static parseNanos(Ljava/lang/String;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x9

    if-ge v1, v3, :cond_2

    mul-int/lit8 v2, v2, 0xa

    .line 184
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 185
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x30

    if-lt v3, v4, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0x39

    if-gt v3, v5, :cond_0

    .line 188
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    sub-int/2addr v3, v4

    add-int/2addr v2, v3

    goto :goto_1

    .line 186
    :cond_0
    new-instance p0, Ljava/text/ParseException;

    const-string v1, "Invalid nanoseconds."

    invoke-direct {p0, v1, v0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method private static parseTimezoneOffset(Ljava/lang/String;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const/16 v0, 0x3a

    .line 171
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 175
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    .line 176
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 177
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x3c

    mul-long v0, v0, v2

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    add-long/2addr v0, v4

    mul-long v0, v0, v2

    return-wide v0

    .line 173
    :cond_0
    new-instance v0, Ljava/text/ParseException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "Invalid offset value: "

    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public static toMillis(Lcom/explorestack/protobuf/Timestamp;)J
    .locals 6

    .line 139
    invoke-static {p0}, Lcom/explorestack/protobuf/ext/Timestamps;->checkValid(Lcom/explorestack/protobuf/Timestamp;)Lcom/explorestack/protobuf/Timestamp;

    .line 141
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Timestamp;->getSeconds()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    invoke-static {v0, v1, v2, v3}, Lcom/explorestack/protobuf/ext/Timestamps;->checkedMultiply(JJ)I

    move-result v0

    int-to-long v0, v0

    .line 142
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Timestamp;->getNanos()I

    move-result p0

    int-to-long v2, p0

    const-wide/32 v4, 0xf4240

    div-long/2addr v2, v4

    .line 140
    invoke-static {v0, v1, v2, v3}, Lcom/explorestack/protobuf/ext/Timestamps;->checkedAdd(JJ)I

    move-result p0

    int-to-long v0, p0

    return-wide v0
.end method

.method public static toString(Lcom/explorestack/protobuf/Timestamp;)Ljava/lang/String;
    .locals 6

    .line 103
    invoke-static {p0}, Lcom/explorestack/protobuf/ext/Timestamps;->checkValid(Lcom/explorestack/protobuf/Timestamp;)Lcom/explorestack/protobuf/Timestamp;

    .line 105
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Timestamp;->getSeconds()J

    move-result-wide v0

    .line 106
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Timestamp;->getNanos()I

    move-result p0

    .line 108
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    new-instance v3, Ljava/util/Date;

    const-wide/16 v4, 0x3e8

    mul-long v0, v0, v4

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 111
    sget-object v0, Lcom/explorestack/protobuf/ext/Timestamps;->timestampFormat:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_0

    const-string v0, "."

    .line 114
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    invoke-static {p0}, Lcom/explorestack/protobuf/ext/Timestamps;->formatNanos(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string p0, "Z"

    .line 117
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
