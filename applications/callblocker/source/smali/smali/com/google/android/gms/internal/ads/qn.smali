.class public final Lcom/google/android/gms/internal/ads/qn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# direct methods
.method private static a(Ljava/lang/String;)J
    .locals 4

    .prologue
    .line 59
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/qn;->a()Ljava/text/SimpleDateFormat;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 61
    :goto_0
    return-wide v0

    .line 60
    :catch_0
    move-exception v0

    const-string/jumbo v1, "Unable to parse dateStr: %s, falling back to 0"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/ez;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lcom/google/android/gms/internal/ads/drt;)Lcom/google/android/gms/internal/ads/bzv;
    .locals 25

    .prologue
    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    .line 2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/drt;->c:Ljava/util/Map;

    move-object/from16 v24, v0

    .line 3
    const-wide/16 v4, 0x0

    .line 4
    const-wide/16 v16, 0x0

    .line 5
    const-wide/16 v14, 0x0

    .line 6
    const-wide/16 v20, 0x0

    .line 7
    const-wide/16 v18, 0x0

    .line 8
    const-wide/16 v10, 0x0

    .line 9
    const-wide/16 v8, 0x0

    .line 10
    const/4 v7, 0x0

    .line 11
    const/4 v6, 0x0

    .line 12
    const-string/jumbo v2, "Date"

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 13
    if-eqz v2, :cond_0

    .line 14
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/qn;->a(Ljava/lang/String;)J

    move-result-wide v2

    move-wide v4, v2

    .line 15
    :cond_0
    const-string/jumbo v2, "Cache-Control"

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 16
    if-eqz v2, :cond_d

    .line 17
    const/4 v12, 0x1

    .line 18
    const-string/jumbo v3, ","

    const/4 v7, 0x0

    invoke-virtual {v2, v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v13

    .line 19
    const/4 v2, 0x0

    move v3, v6

    :goto_0
    array-length v6, v13

    if-ge v2, v6, :cond_6

    .line 20
    aget-object v6, v13, v2

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 21
    const-string/jumbo v7, "no-cache"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string/jumbo v7, "no-store"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 22
    :cond_1
    const/4 v2, 0x0

    .line 58
    :goto_1
    return-object v2

    .line 23
    :cond_2
    const-string/jumbo v7, "max-age="

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 24
    const/16 v7, 0x8

    :try_start_0
    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v10

    move-wide v6, v8

    .line 35
    :goto_2
    add-int/lit8 v2, v2, 0x1

    move-wide v8, v6

    goto :goto_0

    .line 27
    :catch_0
    move-exception v6

    move-wide v6, v8

    goto :goto_2

    .line 28
    :cond_3
    const-string/jumbo v7, "stale-while-revalidate="

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 29
    const/16 v7, 0x17

    :try_start_1
    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v8

    move-wide v6, v8

    .line 30
    goto :goto_2

    .line 32
    :catch_1
    move-exception v6

    move-wide v6, v8

    goto :goto_2

    .line 33
    :cond_4
    const-string/jumbo v7, "must-revalidate"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    const-string/jumbo v7, "proxy-revalidate"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 34
    :cond_5
    const/4 v3, 0x1

    move-wide v6, v8

    goto :goto_2

    :cond_6
    move v7, v12

    .line 36
    :goto_3
    const-string/jumbo v2, "Expires"

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 37
    if-eqz v2, :cond_b

    .line 38
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/qn;->a(Ljava/lang/String;)J

    move-result-wide v12

    .line 39
    :goto_4
    const-string/jumbo v2, "Last-Modified"

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 40
    if-eqz v2, :cond_a

    .line 41
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/qn;->a(Ljava/lang/String;)J

    move-result-wide v14

    .line 42
    :goto_5
    const-string/jumbo v2, "ETag"

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 43
    if-eqz v7, :cond_8

    .line 44
    const-wide/16 v6, 0x3e8

    mul-long/2addr v6, v10

    add-long v10, v22, v6

    .line 45
    if-eqz v3, :cond_7

    move-wide v6, v10

    .line 49
    :goto_6
    new-instance v3, Lcom/google/android/gms/internal/ads/bzv;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/bzv;-><init>()V

    .line 50
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/drt;->b:[B

    iput-object v8, v3, Lcom/google/android/gms/internal/ads/bzv;->a:[B

    .line 51
    iput-object v2, v3, Lcom/google/android/gms/internal/ads/bzv;->b:Ljava/lang/String;

    .line 52
    iput-wide v10, v3, Lcom/google/android/gms/internal/ads/bzv;->f:J

    .line 53
    iput-wide v6, v3, Lcom/google/android/gms/internal/ads/bzv;->e:J

    .line 54
    iput-wide v4, v3, Lcom/google/android/gms/internal/ads/bzv;->c:J

    .line 55
    iput-wide v14, v3, Lcom/google/android/gms/internal/ads/bzv;->d:J

    .line 56
    move-object/from16 v0, v24

    iput-object v0, v3, Lcom/google/android/gms/internal/ads/bzv;->g:Ljava/util/Map;

    .line 57
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/drt;->d:Ljava/util/List;

    iput-object v2, v3, Lcom/google/android/gms/internal/ads/bzv;->h:Ljava/util/List;

    move-object v2, v3

    .line 58
    goto/16 :goto_1

    .line 45
    :cond_7
    const-wide/16 v6, 0x3e8

    mul-long/2addr v6, v8

    add-long/2addr v6, v10

    goto :goto_6

    .line 46
    :cond_8
    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_9

    cmp-long v3, v12, v4

    if-ltz v3, :cond_9

    .line 47
    sub-long v6, v12, v4

    add-long v8, v22, v6

    move-wide v6, v8

    move-wide v10, v8

    .line 48
    goto :goto_6

    :cond_9
    move-wide/from16 v6, v18

    move-wide/from16 v10, v20

    goto :goto_6

    :cond_a
    move-wide/from16 v14, v16

    goto :goto_5

    :cond_b
    move-wide v12, v14

    goto :goto_4

    :cond_c
    move-wide v6, v8

    goto/16 :goto_2

    :cond_d
    move v3, v6

    goto :goto_3
.end method

.method static a(J)Ljava/lang/String;
    .locals 2

    .prologue
    .line 62
    invoke-static {}, Lcom/google/android/gms/internal/ads/qn;->a()Ljava/text/SimpleDateFormat;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a()Ljava/text/SimpleDateFormat;
    .locals 3

    .prologue
    .line 63
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "EEE, dd MMM yyyy HH:mm:ss zzz"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 64
    const-string/jumbo v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 65
    return-object v0
.end method
