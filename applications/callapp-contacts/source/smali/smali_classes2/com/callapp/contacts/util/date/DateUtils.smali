.class public Lcom/callapp/contacts/util/date/DateUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[Ljava/lang/String;

.field private static final b:[Ljava/lang/String;

.field private static final c:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 36

    const-string v0, "yyyy-MM-dd"

    const-string v1, "yyyy-dd-MM"

    const-string v2, "yyyy-MMMM-dd"

    const-string v3, "yyyy-dd-MMMM"

    const-string v4, "MMMM, dd"

    const-string v5, "dd, MMMM"

    const-string v6, "yyyy/MMMM/dd"

    const-string v7, "yyyy/dd/MMMM"

    const-string v8, "yyyy/MM/dd"

    const-string v9, "yyyy/dd/MM"

    const-string v10, "MM/dd/yyyy"

    const-string v11, "dd/MM/yyyy"

    const-string v12, "MMMM/dd/yyyy"

    const-string v13, "dd/MMMM/yyyy"

    const-string v14, "MM-dd-yyyy"

    const-string v15, "dd-MM-yyyy"

    const-string v16, "MMMM dd, yyyy"

    const-string v17, "dd MMMM, yyyy"

    const-string v18, "MMMM dd yyyy"

    const-string v19, "dd MMMM yyyy"

    const-string v20, "-/MM/dd"

    const-string v21, "-/dd/MM"

    const-string v22, "--MM-dd"

    const-string v23, "--dd-MM"

    const-string v24, "-MM-dd"

    const-string v25, "-dd-MM"

    const-string v26, "MM-dd"

    const-string v27, "dd-MM"

    const-string v28, "MM/dd/-"

    const-string v29, "dd/MM/-"

    const-string v30, "MM/dd/"

    const-string v31, "dd/MM/"

    const-string v32, "/MM/dd"

    const-string v33, "/dd/MM"

    const-string v34, "MM/dd"

    const-string v35, "dd/MM"

    .line 41
    filled-new-array/range {v0 .. v35}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/callapp/contacts/util/date/DateUtils;->a:[Ljava/lang/String;

    const-string v1, "yyyy-MM-dd"

    const-string v2, "yyyy-MMMM-dd"

    const-string v3, "MMMM, dd"

    const-string v4, "yyyy/MMMM/dd"

    const-string v5, "yyyy/MM/dd"

    const-string v6, "MM/dd/yyyy"

    const-string v7, "MMMM/dd/yyyy"

    const-string v8, "MM-dd-yyyy"

    const-string v9, "MMMM dd, yyyy"

    const-string v10, "MMMM dd yyyy"

    const-string v11, "-/MM/dd"

    const-string v12, "--MM-dd"

    const-string v13, "-MM-dd"

    const-string v14, "MM-dd"

    const-string v15, "MM/dd/-"

    const-string v16, "MM/dd/"

    const-string v17, "/MM/dd"

    const-string v18, "MM/dd"

    .line 61
    filled-new-array/range {v1 .. v18}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/callapp/contacts/util/date/DateUtils;->b:[Ljava/lang/String;

    const-string v1, "yyyy-dd-MM"

    const-string v2, "yyyy-dd-MMMM"

    const-string v3, "dd, MMMM"

    const-string v4, "yyyy/dd/MMMM"

    const-string v5, "yyyy/dd/MM"

    const-string v6, "dd/MM/yyyy"

    const-string v7, "dd/MMMM/yyyy"

    const-string v8, "dd-MM-yyyy"

    const-string v9, "dd MMMM, yyyy"

    const-string v10, "dd MMMM yyyy"

    const-string v11, "-/dd/MM"

    const-string v12, "--dd-MM"

    const-string v13, "-dd-MM"

    const-string v14, "dd-MM"

    const-string v15, "dd/MM/-"

    const-string v16, "dd/MM/"

    const-string v17, "/dd/MM"

    const-string v18, "dd/MM"

    .line 81
    filled-new-array/range {v1 .. v18}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/callapp/contacts/util/date/DateUtils;->c:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/Date;Ljava/util/Date;Ljava/util/concurrent/TimeUnit;)J
    .locals 2

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 245
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide p0

    sub-long/2addr v0, p0

    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, v0, v1, p0}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p0

    return-wide p0

    :cond_0
    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method private static a(JI)Ljava/lang/CharSequence;
    .locals 11

    const-string v0, ""

    const-wide/16 v1, 0x0

    cmp-long v3, p0, v1

    if-nez v3, :cond_0

    return-object v0

    .line 288
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/32 v8, 0xea60

    move-wide v4, p0

    move v10, p2

    invoke-static/range {v4 .. v10}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJI)Ljava/lang/CharSequence;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 291
    const-class p1, Lcom/callapp/contacts/util/date/DateUtils;

    invoke-static {p1, p0, v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method public static a(JZ)Ljava/lang/CharSequence;
    .locals 1

    .line 266
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 267
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    .line 270
    invoke-virtual {v0, p2}, Ljava/util/Calendar;->get(I)I

    move-result p2

    const/16 v0, 0x7b2

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/high16 p2, 0x40000

    goto :goto_1

    :cond_1
    :goto_0
    const p2, 0x40008

    .line 274
    :goto_1
    invoke-static {p0, p1, p2}, Lcom/callapp/contacts/util/date/DateUtils;->a(JI)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/util/Date;)Ljava/lang/CharSequence;
    .locals 1

    const/4 v0, 0x1

    .line 104
    invoke-static {p0, v0}, Lcom/callapp/contacts/util/date/DateUtils;->a(Ljava/util/Date;Z)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/util/Date;Z)Ljava/lang/CharSequence;
    .locals 3

    .line 116
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/high16 v0, 0x40000

    if-eqz p1, :cond_1

    .line 119
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1262
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    .line 1278
    invoke-static {v1, v2, v0}, Lcom/callapp/contacts/util/date/DateUtils;->a(JI)Ljava/lang/CharSequence;

    move-result-object v0

    .line 119
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2262
    :cond_1
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide p0

    .line 2278
    invoke-static {p0, p1, v0}, Lcom/callapp/contacts/util/date/DateUtils;->a(JI)Ljava/lang/CharSequence;

    move-result-object p0

    .line 122
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(I)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 461
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v2, p0

    .line 462
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 v1, 0x0

    aput-object p0, v0, v1

    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 463
    invoke-virtual {p0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v4

    sget-object p0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 464
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v1

    sub-long/2addr v4, v1

    .line 463
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const-string p0, "%dm %ds"

    .line 461
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/callapp/common/model/json/JSONOpeningHours;)Ljava/lang/String;
    .locals 4

    if-eqz p0, :cond_2

    const/4 v0, -0x1

    .line 315
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v3, 0x1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x7

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x6

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x5

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x4

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_5
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_6
    const/4 v0, 0x1

    .line 346
    :goto_0
    invoke-virtual {p0, v0}, Lcom/callapp/common/model/json/JSONOpeningHours;->getHoursPerDay(I)Ljava/util/Collection;

    move-result-object p0

    .line 347
    invoke-static {p0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 350
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-string v0, "Today "

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v3, :cond_0

    .line 352
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ,"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    const/4 v3, 0x0

    .line 356
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    return-object v0

    :cond_2
    const/4 p0, 0x0

    return-object p0

    nop

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

.method public static a()Ljava/util/Calendar;
    .locals 8

    .line 230
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    const/4 v0, 0x1

    .line 231
    invoke-virtual {v7, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v0, 0x2

    invoke-virtual {v7, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v0, 0x5

    invoke-virtual {v7, v0}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    const/16 v0, 0xe

    const/4 v1, 0x0

    .line 232
    invoke-virtual {v7, v0, v1}, Ljava/util/Calendar;->set(II)V

    return-object v7
.end method

.method public static a(II)Ljava/util/Calendar;
    .locals 1

    .line 183
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 184
    invoke-virtual {v0, p1, p0}, Ljava/util/Calendar;->add(II)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/util/Date;
    .locals 1

    .line 142
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->bh:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->isNotNull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 143
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->bh:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/callapp/contacts/util/date/DateUtils;->b:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/callapp/contacts/util/date/DateUtils;->c:[Ljava/lang/String;

    goto :goto_0

    .line 145
    :cond_1
    sget-object v0, Lcom/callapp/contacts/util/date/DateUtils;->a:[Ljava/lang/String;

    .line 148
    :goto_0
    invoke-static {p0, v0}, Lcom/callapp/contacts/util/date/DateUtils;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Date;
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-nez v3, :cond_1

    .line 156
    array-length v5, p1

    if-ge v4, v5, :cond_1

    .line 158
    :try_start_0
    new-instance v5, Ljava/text/SimpleDateFormat;

    aget-object v6, p1, v4

    invoke-direct {v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 159
    invoke-virtual {v5, v1}, Ljava/text/SimpleDateFormat;->setLenient(Z)V

    .line 160
    new-instance v6, Ljava/text/ParsePosition;

    invoke-direct {v6, v1}, Ljava/text/ParsePosition;-><init>(I)V

    .line 161
    invoke-virtual {v5, p0, v6}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 162
    invoke-virtual {v6}, Ljava/text/ParsePosition;->getIndex()I

    move-result v5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v5, v6, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    const/4 v3, 0x0

    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    if-nez v3, :cond_2

    if-eqz v0, :cond_2

    .line 172
    const-class p0, Lcom/callapp/contacts/util/date/DateUtils;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    :cond_2
    return-object v2
.end method

.method public static a(J)Z
    .locals 2

    .line 213
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 214
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    .line 215
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 217
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    const/16 v0, 0xa

    const/16 v1, 0x30

    .line 218
    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 220
    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result p0

    return p0
.end method

.method public static a(Lcom/callapp/contacts/manager/preferences/prefs/DatePref;)Z
    .locals 3

    .line 539
    invoke-virtual {p0}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Date;

    if-eqz p0, :cond_0

    .line 541
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x5

    const/4 v2, -0x2

    .line 542
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 543
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Ljava/util/Calendar;Ljava/util/Calendar;)Z
    .locals 4

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 192
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    .line 193
    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_0

    const/4 v2, 0x6

    .line 194
    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result p0

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result p1

    if-ne p0, p1, :cond_0

    return v1

    :cond_0
    return v0

    .line 190
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The dates must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Ljava/util/Date;I)Z
    .locals 5

    .line 177
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/Singletons;->getApplication()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    .line 178
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    int-to-long p0, p1

    const-wide/16 v3, 0x3c

    mul-long p0, p0, v3

    const-wide/16 v3, 0x3e8

    mul-long p0, p0, v3

    add-long/2addr v1, p0

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 179
    new-instance p0, Ljava/util/Date;

    invoke-direct {p0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, p0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result p0

    return p0
.end method

.method public static a(Ljava/util/Date;Ljava/util/Date;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 3207
    :cond_0
    invoke-virtual {p0}, Ljava/util/Date;->getYear()I

    move-result v1

    invoke-virtual {p1}, Ljava/util/Date;->getYear()I

    move-result v2

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Ljava/util/Date;->getMonth()I

    move-result v1

    invoke-virtual {p1}, Ljava/util/Date;->getMonth()I

    move-result v2

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Ljava/util/Date;->getDate()I

    move-result p0

    invoke-virtual {p1}, Ljava/util/Date;->getDate()I

    move-result p1

    if-ne p0, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method public static b(Ljava/util/Date;Ljava/util/Date;)J
    .locals 2

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 484
    :cond_0
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide p0

    sub-long/2addr v0, p0

    const-wide/32 p0, 0x5265c00

    .line 485
    div-long/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide p0

    return-wide p0

    :cond_1
    :goto_0
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public static b(Ljava/util/Date;)Ljava/lang/CharSequence;
    .locals 1

    const/4 v0, 0x0

    .line 108
    invoke-static {p0, v0}, Lcom/callapp/contacts/util/date/DateUtils;->a(Ljava/util/Date;Z)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static b(I)Ljava/lang/String;
    .locals 6

    .line 468
    rem-int/lit8 v0, p0, 0x3c

    .line 469
    div-int/lit8 v1, p0, 0x3c

    rem-int/lit8 v1, v1, 0x3c

    .line 470
    div-int/lit16 p0, p0, 0xe10

    rem-int/lit8 p0, p0, 0x18

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-lez p0, :cond_0

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    .line 473
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v5, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v5, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v5, v4

    const-string p0, "%02d:%02d:%02d"

    invoke-static {p0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-array p0, v4, [Ljava/lang/Object;

    .line 475
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p0, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p0, v2

    const-string v0, "%02d:%02d"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lcom/callapp/common/model/json/JSONOpeningHours;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/common/model/json/JSONOpeningHours;",
            ")",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation

    .line 492
    invoke-static {}, Ljava/text/DateFormatSymbols;->getInstance()Ljava/text/DateFormatSymbols;

    move-result-object v0

    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getWeekdays()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p0, :cond_6

    .line 494
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x7

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 495
    invoke-virtual {p0}, Lcom/callapp/common/model/json/JSONOpeningHours;->getOpeningHoursMap()Ljava/util/Map;

    move-result-object p0

    .line 496
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    .line 497
    new-instance v6, Landroid/util/Pair;

    add-int/lit8 v7, v4, 0x1

    aget-object v8, v0, v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {p0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-direct {v6, v8, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v8, 0x0

    invoke-interface {v2, v8, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :goto_0
    if-ge v7, v3, :cond_0

    .line 503
    new-instance v6, Landroid/util/Pair;

    add-int/lit8 v9, v7, 0x1

    aget-object v10, v0, v9

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {p0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-direct {v6, v10, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v7, v9

    goto :goto_0

    :cond_0
    if-nez v4, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    if-ge v6, v4, :cond_2

    .line 509
    new-instance v7, Landroid/util/Pair;

    add-int/lit8 v9, v6, 0x1

    aget-object v10, v0, v9

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {p0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-direct {v7, v10, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v6, v9

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    const/4 v0, 0x0

    :goto_2
    if-ge p0, v3, :cond_4

    .line 516
    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    if-eqz v4, :cond_3

    .line 517
    iget-object v6, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/util/Collection;

    invoke-static {v6}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v6

    if-eqz v6, :cond_3

    add-int/lit8 v0, v0, 0x1

    move-object v1, v4

    if-gt v0, v5, :cond_4

    :cond_3
    add-int/lit8 p0, p0, 0x1

    goto :goto_2

    :cond_4
    if-ne v0, v5, :cond_5

    .line 527
    iget-object p0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/util/Collection;

    invoke-static {p0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result p0

    if-eqz p0, :cond_5

    iget-object p0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "00:00 - 00:00"

    invoke-static {p0, v0}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    :goto_3
    if-ge v8, v3, :cond_5

    .line 529
    new-instance p0, Landroid/util/Pair;

    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    const-string v4, "Open 24 hours"

    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {p0, v0, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v8, p0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_5
    move-object v1, v2

    :cond_6
    return-object v1
.end method

.method public static b(Ljava/util/Date;I)Z
    .locals 1

    .line 252
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/Singletons;->getApplication()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    neg-int p1, p1

    const/16 v0, 0xc

    .line 253
    invoke-static {p1, v0}, Lcom/callapp/contacts/util/date/DateUtils;->a(II)Ljava/util/Calendar;

    move-result-object p1

    .line 254
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result p0

    return p0
.end method

.method public static c(Ljava/util/Date;)Ljava/lang/CharSequence;
    .locals 2

    .line 262
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const/high16 p0, 0x40000

    .line 3278
    invoke-static {v0, v1, p0}, Lcom/callapp/contacts/util/date/DateUtils;->a(JI)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/util/Date;)Ljava/lang/String;
    .locals 11

    .line 367
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 368
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x5

    const/4 v3, -0x7

    .line 369
    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 371
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    const/4 v4, 0x7

    .line 372
    invoke-virtual {v3, v2, v4}, Ljava/util/Calendar;->add(II)V

    .line 374
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 375
    invoke-virtual {v2, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 379
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_0

    const-string v1, ""

    goto :goto_0

    .line 381
    :cond_0
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    const-wide/32 v9, 0x5265c00

    sub-long/2addr v7, v9

    invoke-static {v7, v8}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v5

    if-eqz v5, :cond_1

    const v1, 0x7f120725

    .line 382
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 383
    :cond_1
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    add-long/2addr v7, v9

    invoke-static {v7, v8}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v5

    if-eqz v5, :cond_2

    const v1, 0x7f12087a

    .line 384
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 385
    :cond_2
    invoke-virtual {v2, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x2

    .line 386
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v2, v4, v1, v3}, Ljava/util/Calendar;->getDisplayName(IILjava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 388
    :cond_3
    invoke-static {p0}, Lcom/callapp/contacts/util/date/DateUtils;->e(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x0

    .line 392
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v6, :cond_4

    .line 394
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    invoke-static {v1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    const-string v1, " "

    .line 395
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static e(Ljava/util/Date;)Ljava/lang/String;
    .locals 6

    .line 402
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    .line 405
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->formatToCharacterIterator(Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;

    move-result-object v1

    .line 406
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 408
    invoke-interface {v1}, Ljava/text/AttributedCharacterIterator;->current()C

    move-result v3

    :goto_0
    const v4, 0xffff

    if-eq v3, v4, :cond_1

    .line 410
    invoke-interface {v1}, Ljava/text/AttributedCharacterIterator;->getAttributes()Ljava/util/Map;

    move-result-object v4

    sget-object v5, Ljava/text/DateFormat$Field;->YEAR:Ljava/text/DateFormat$Field;

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 411
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 414
    :cond_0
    invoke-interface {v1}, Ljava/text/AttributedCharacterIterator;->next()C

    move-result v3

    goto :goto_0

    .line 418
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 420
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    const/4 v4, 0x0

    .line 421
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lcom/callapp/framework/util/StringUtils;->b(C)Z

    move-result v5

    if-nez v5, :cond_2

    const/4 v4, 0x1

    .line 425
    :cond_2
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lcom/callapp/framework/util/StringUtils;->b(C)Z

    move-result v5

    if-nez v5, :cond_3

    add-int/lit8 v2, v2, -0x1

    :cond_3
    add-int/2addr v2, v3

    .line 429
    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v1

    .line 433
    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 434
    const-class v3, Lcom/callapp/contacts/util/date/DateUtils;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "Error stripping year from date: "

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v1, v2}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 435
    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDateRangeForMeeting()Lcom/callapp/contacts/util/DateRange;
    .locals 7

    .line 298
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xc

    const/4 v2, 0x0

    .line 299
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xd

    .line 300
    invoke-virtual {v0, v3, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xe

    .line 301
    invoke-virtual {v0, v3, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xa

    const/4 v3, 0x2

    .line 302
    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 304
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 305
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v3, 0x1e

    .line 306
    invoke-virtual {v2, v1, v3}, Ljava/util/Calendar;->add(II)V

    .line 308
    new-instance v1, Lcom/callapp/contacts/util/DateRange;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/callapp/contacts/util/DateRange;-><init>(JJ)V

    return-object v1
.end method

.method public static getTodayStartTime()J
    .locals 2

    .line 225
    invoke-static {}, Lcom/callapp/contacts/util/date/DateUtils;->a()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 226
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public static setParseLocalDatePref(Ljava/lang/String;)V
    .locals 2

    .line 127
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->bh:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->isNull()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 128
    sget-object v0, Lcom/callapp/contacts/util/date/DateUtils;->b:[Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/callapp/contacts/util/date/DateUtils;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    const-string v1, "Settings"

    if-eqz v0, :cond_0

    .line 129
    sget-object p0, Lcom/callapp/contacts/manager/preferences/Prefs;->bh:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    .line 130
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p0

    const-string v0, "using event date month format"

    invoke-virtual {p0, v1, v0}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 131
    :cond_0
    sget-object v0, Lcom/callapp/contacts/util/date/DateUtils;->c:[Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/callapp/contacts/util/date/DateUtils;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 132
    sget-object p0, Lcom/callapp/contacts/manager/preferences/Prefs;->bh:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    .line 133
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p0

    const-string v0, "using event date day format"

    invoke-virtual {p0, v1, v0}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 135
    :cond_1
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p0

    const-string v0, "using event date general format"

    invoke-virtual {p0, v1, v0}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method
