.class public Lcom/allinone/callerid/util/i;
.super Ljava/lang/Object;
.source "DateUtil.java"


# direct methods
.method public static a(JLjava/lang/String;)Z
    .locals 4

    .line 1
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 3
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 4
    invoke-static {p2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 5
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 6
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 7
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 8
    invoke-static {p2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    const/4 p0, 0x1

    .line 9
    invoke-virtual {v1, p0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    move-result p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x6

    .line 10
    invoke-virtual {v1, p1}, Ljava/util/Calendar;->get(I)I

    move-result p2

    .line 11
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sub-int/2addr p2, p1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    return p0

    :catch_0
    move-exception p0

    .line 12
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static b(Ljava/util/Date;)Ljava/lang/String;
    .locals 13

    .line 1
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "time_12_24"

    .line 2
    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "24"

    .line 3
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "night"

    const-string v2, "morning"

    const/16 v3, 0x9

    const-string v4, "hour:"

    const-string v5, "worktime"

    const-string v6, "weekends"

    const/4 v7, 0x1

    const-string v8, "comment"

    const/4 v9, 0x7

    if-eqz v0, :cond_5

    .line 4
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Lcom/allinone/callerid/util/h1;->y()Ljava/util/Locale;

    move-result-object v10

    const-string v11, "HH"

    invoke-direct {v0, v11, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 5
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 6
    sget-boolean v10, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v10, :cond_0

    .line 7
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-ltz v0, :cond_1

    if-ge v0, v3, :cond_1

    move-object v1, v2

    goto/16 :goto_3

    :cond_1
    const/16 v2, 0x11

    if-lt v0, v2, :cond_2

    const/16 v2, 0x18

    if-ge v0, v2, :cond_2

    goto/16 :goto_3

    .line 8
    :cond_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 9
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 10
    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result p0

    if-eq p0, v7, :cond_4

    .line 11
    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result p0

    if-ne p0, v9, :cond_3

    goto :goto_0

    :cond_3
    move-object v1, v5

    goto/16 :goto_3

    :cond_4
    :goto_0
    move-object v1, v6

    goto/16 :goto_3

    .line 12
    :cond_5
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Lcom/allinone/callerid/util/h1;->y()Ljava/util/Locale;

    move-result-object v10

    const-string v11, "a"

    invoke-direct {v0, v11, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 13
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 14
    new-instance v10, Ljava/text/SimpleDateFormat;

    invoke-static {}, Lcom/allinone/callerid/util/h1;->y()Ljava/util/Locale;

    move-result-object v11

    const-string v12, "hh"

    invoke-direct {v10, v12, v11}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 15
    invoke-virtual {v10, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 16
    sget-boolean v11, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v11, :cond_6

    .line 17
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    if-eqz v0, :cond_8

    const-string v4, "AM"

    .line 18
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    if-ltz v10, :cond_7

    if-ge v10, v3, :cond_7

    move-object v1, v2

    goto :goto_2

    .line 19
    :cond_7
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 20
    invoke-virtual {v1, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 21
    invoke-virtual {v1, v9}, Ljava/util/Calendar;->get(I)I

    move-result p0

    if-eq p0, v7, :cond_b

    .line 22
    invoke-virtual {v1, v9}, Ljava/util/Calendar;->get(I)I

    move-result p0

    if-ne p0, v9, :cond_a

    goto :goto_1

    :cond_8
    if-eqz v0, :cond_c

    const-string v2, "PM"

    .line 23
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const/4 v2, 0x5

    if-lt v10, v2, :cond_9

    const/16 v2, 0xc

    if-ge v10, v2, :cond_9

    goto :goto_2

    .line 24
    :cond_9
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 25
    invoke-virtual {v1, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 26
    invoke-virtual {v1, v9}, Ljava/util/Calendar;->get(I)I

    move-result p0

    if-eq p0, v7, :cond_b

    .line 27
    invoke-virtual {v1, v9}, Ljava/util/Calendar;->get(I)I

    move-result p0

    if-ne p0, v9, :cond_a

    goto :goto_1

    :cond_a
    move-object v1, v5

    goto :goto_2

    :cond_b
    :goto_1
    move-object v1, v6

    goto :goto_2

    :cond_c
    const-string v1, ""

    .line 28
    :goto_2
    sget-boolean p0, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz p0, :cond_d

    .line 29
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "amOrpm:"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v8, p0}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    :goto_3
    return-object v1
.end method

.method public static c(Ljava/util/Date;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f100339

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x2

    .line 3
    new-instance v1, Ljava/util/Locale;

    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v2

    iget-object v2, v2, Lcom/allinone/callerid/main/EZCallApplication;->h:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d(J)Ljava/lang/String;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 2
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 3
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static e(Ljava/util/Date;)Ljava/lang/String;
    .locals 8

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10017b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/allinone/callerid/util/h1;->y()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 2
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f10017c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/allinone/callerid/util/h1;->y()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 3
    new-instance v2, Ljava/text/SimpleDateFormat;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v4, "yyyy"

    invoke-direct {v2, v4, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 4
    :cond_0
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide v5, 0x77bbdb000L

    cmp-long v7, v3, v5

    if-lez v7, :cond_1

    .line 5
    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 6
    :cond_1
    invoke-virtual {v2, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 7
    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const-wide/32 v1, 0x240c8400

    cmp-long v5, v3, v1

    if-lez v5, :cond_3

    .line 8
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const-wide/32 v0, 0x5265c00

    const-string p0, " "

    cmp-long v2, v3, v0

    if-lez v2, :cond_4

    if-gtz v5, :cond_4

    .line 9
    div-long/2addr v3, v0

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f10011b

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    const-wide/32 v0, 0x36ee80

    cmp-long v2, v3, v0

    if-lez v2, :cond_5

    .line 11
    div-long/2addr v3, v0

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f1001a8

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    const v0, 0x7f1001db

    const-wide/32 v1, 0xea60

    cmp-long v5, v3, v1

    if-lez v5, :cond_6

    .line 13
    div-long/2addr v3, v1

    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 15
    :cond_6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "1 "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static f(J)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Lcom/allinone/callerid/util/h1;->y()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "yyyy-MM-dd"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 2
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 3
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static g(J)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "yyyyMMddHHmmss"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 2
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 3
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static h(Ljava/util/Date;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x3

    .line 1
    invoke-static {v0}, Ljava/text/SimpleDateFormat;->getTimeInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static i(Ljava/util/Date;)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Lcom/allinone/callerid/util/h1;->y()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "HH:mm"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static j(Ljava/util/Date;)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Lcom/allinone/callerid/util/h1;->y()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "MM/dd HH:mm"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static k(Ljava/util/Date;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/Locale;

    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v1

    iget-object v1, v1, Lcom/allinone/callerid/main/EZCallApplication;->h:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x2

    invoke-static {v1, v0}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static l(II)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    .line 2
    invoke-virtual {v0, v1, p0}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xc

    .line 3
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->set(II)V

    const/4 p0, 0x3

    .line 4
    invoke-static {p0}, Ljava/text/SimpleDateFormat;->getTimeInstance(I)Ljava/text/DateFormat;

    move-result-object p0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static m(Ljava/util/Date;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/Locale;

    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v1

    iget-object v1, v1, Lcom/allinone/callerid/main/EZCallApplication;->h:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x3

    invoke-static {v1, v0}, Ljava/text/SimpleDateFormat;->getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static n(Ljava/util/Date;)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/Locale;

    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v1

    iget-object v1, v1, Lcom/allinone/callerid/main/EZCallApplication;->h:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x2

    const/4 v2, 0x3

    invoke-static {v1, v2, v0}, Ljava/text/SimpleDateFormat;->getDateTimeInstance(IILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static o(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    goto :goto_0

    .line 1
    :pswitch_0
    sget-object p0, Lcom/allinone/callerid/util/Week;->j:Lcom/allinone/callerid/util/Week;

    invoke-virtual {p0}, Lcom/allinone/callerid/util/Week;->getName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 2
    :pswitch_1
    sget-object p0, Lcom/allinone/callerid/util/Week;->i:Lcom/allinone/callerid/util/Week;

    invoke-virtual {p0}, Lcom/allinone/callerid/util/Week;->getName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 3
    :pswitch_2
    sget-object p0, Lcom/allinone/callerid/util/Week;->h:Lcom/allinone/callerid/util/Week;

    invoke-virtual {p0}, Lcom/allinone/callerid/util/Week;->getName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 4
    :pswitch_3
    sget-object p0, Lcom/allinone/callerid/util/Week;->g:Lcom/allinone/callerid/util/Week;

    invoke-virtual {p0}, Lcom/allinone/callerid/util/Week;->getName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 5
    :pswitch_4
    sget-object p0, Lcom/allinone/callerid/util/Week;->f:Lcom/allinone/callerid/util/Week;

    invoke-virtual {p0}, Lcom/allinone/callerid/util/Week;->getName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 6
    :pswitch_5
    sget-object p0, Lcom/allinone/callerid/util/Week;->e:Lcom/allinone/callerid/util/Week;

    invoke-virtual {p0}, Lcom/allinone/callerid/util/Week;->getName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 7
    :pswitch_6
    sget-object p0, Lcom/allinone/callerid/util/Week;->d:Lcom/allinone/callerid/util/Week;

    invoke-virtual {p0}, Lcom/allinone/callerid/util/Week;->getName()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static p(Landroid/content/Context;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static q(IIII)Z
    .locals 6

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    .line 3
    invoke-virtual {v2, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 4
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    .line 5
    invoke-virtual {v3, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 6
    iput p0, v3, Landroid/text/format/Time;->hour:I

    .line 7
    iput p1, v3, Landroid/text/format/Time;->minute:I

    .line 8
    new-instance p0, Landroid/text/format/Time;

    invoke-direct {p0}, Landroid/text/format/Time;-><init>()V

    .line 9
    invoke-virtual {p0, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 10
    iput p2, p0, Landroid/text/format/Time;->hour:I

    .line 11
    iput p3, p0, Landroid/text/format/Time;->minute:I

    .line 12
    invoke-virtual {v3, p0}, Landroid/text/format/Time;->before(Landroid/text/format/Time;)Z

    move-result p1

    const/4 p2, 0x0

    const/4 p3, 0x1

    if-nez p1, :cond_1

    .line 13
    invoke-virtual {v3, p3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    const-wide/32 v4, 0x5265c00

    sub-long/2addr v0, v4

    invoke-virtual {v3, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 14
    invoke-virtual {v2, v3}, Landroid/text/format/Time;->before(Landroid/text/format/Time;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {v2, p0}, Landroid/text/format/Time;->after(Landroid/text/format/Time;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p2, 0x1

    .line 15
    :cond_0
    new-instance p0, Landroid/text/format/Time;

    invoke-direct {p0}, Landroid/text/format/Time;-><init>()V

    .line 16
    invoke-virtual {v3, p3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    add-long/2addr v0, v4

    invoke-virtual {p0, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 17
    invoke-virtual {v2, p0}, Landroid/text/format/Time;->before(Landroid/text/format/Time;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    .line 18
    :cond_1
    invoke-virtual {v2, v3}, Landroid/text/format/Time;->before(Landroid/text/format/Time;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {v2, p0}, Landroid/text/format/Time;->after(Landroid/text/format/Time;)Z

    move-result p0

    if-nez p0, :cond_2

    const/4 p2, 0x1

    :cond_2
    move p3, p2

    :goto_0
    return p3
.end method

.method public static r(Ljava/util/Date;Ljava/util/Date;)Z
    .locals 3

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "yyyy-MM-dd"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 2
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static s(Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;)Z
    .locals 3

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "yyyy-MM-dd"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 2
    invoke-static {p2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 3
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
