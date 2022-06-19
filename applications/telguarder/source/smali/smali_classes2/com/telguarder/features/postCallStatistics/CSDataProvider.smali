.class public Lcom/telguarder/features/postCallStatistics/CSDataProvider;
.super Ljava/lang/Object;
.source "CSDataProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/telguarder/features/postCallStatistics/CSDataProvider$CompletionHandler;,
        Lcom/telguarder/features/postCallStatistics/CSDataProvider$ResultItemHandler;,
        Lcom/telguarder/features/postCallStatistics/CSDataProvider$CSDataProviderCallback;
    }
.end annotation


# static fields
.field private static mInstance:Lcom/telguarder/features/postCallStatistics/CSDataProvider;


# instance fields
.field private callDate:J

.field private days:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation
.end field

.field private firstChiDate:J

.field private incomingCount:I

.field private incomingDurations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation
.end field

.field private lastCallDate:J

.field private lastChiDate:J

.field private mCallType:I

.field private mCallback:Lcom/telguarder/features/postCallStatistics/CSDataProvider$CSDataProviderCallback;

.field private mE164Number:Ljava/lang/String;

.field private mLastCallduration:J

.field private mNationalNumber:Ljava/lang/String;

.field private mPhoneNumber:Ljava/lang/String;

.field private mSecondsIncoming:J

.field private mSecondsOutgoing:J

.field private missedCount:I

.field private outgoingCount:I

.field private outgoingDurations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation
.end field

.field private realm:Lio/realm/Realm;

.field private statMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/util/Date;",
            "Landroid/util/Pair<",
            "Ljava/lang/Number;",
            "Ljava/lang/Number;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSDataProvider;->realm:Lio/realm/Realm;

    const-wide/16 v0, 0x0

    .line 60
    iput-wide v0, p0, Lcom/telguarder/features/postCallStatistics/CSDataProvider;->callDate:J

    .line 61
    iput-wide v0, p0, Lcom/telguarder/features/postCallStatistics/CSDataProvider;->lastCallDate:J

    return-void
.end method

.method private addToRealmDb(JII)V
    .locals 8

    .line 161
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSDataProvider;->realm:Lio/realm/Realm;

    if-nez v0, :cond_0

    return-void

    .line 164
    :cond_0
    new-instance v7, Lcom/telguarder/features/postCallStatistics/-$$Lambda$CSDataProvider$A36BVrJaNFcYlQsrASwQyUy69es;

    move-object v1, v7

    move-object v2, p0

    move-wide v3, p1

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/telguarder/features/postCallStatistics/-$$Lambda$CSDataProvider$A36BVrJaNFcYlQsrASwQyUy69es;-><init>(Lcom/telguarder/features/postCallStatistics/CSDataProvider;JII)V

    invoke-virtual {v0, v7}, Lio/realm/Realm;->executeTransaction(Lio/realm/Realm$Transaction;)V

    return-void
.end method

.method private getCallItemsFromPhoneHistory(Landroid/content/Context;Ljava/lang/Long;Ljava/lang/Long;Lcom/telguarder/features/postCallStatistics/CSDataProvider$ResultItemHandler;Lcom/telguarder/features/postCallStatistics/CSDataProvider$CompletionHandler;)V
    .locals 14

    move-object v1, p0

    move-object/from16 v0, p4

    move-object/from16 v2, p5

    const-string v3, "_id"

    const-string v4, "number"

    const-string v5, "type"

    const-string v6, "date"

    const-string v7, "duration"

    .line 292
    filled-new-array {v3, v4, v5, v6, v7}, [Ljava/lang/String;

    move-result-object v10

    const/4 v3, 0x4

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x3

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/String;

    .line 297
    iget-object v9, v1, Lcom/telguarder/features/postCallStatistics/CSDataProvider;->mPhoneNumber:Ljava/lang/String;

    aput-object v9, v8, v6

    iget-object v6, v1, Lcom/telguarder/features/postCallStatistics/CSDataProvider;->mE164Number:Ljava/lang/String;

    aput-object v6, v8, v5

    iget-object v5, v1, Lcom/telguarder/features/postCallStatistics/CSDataProvider;->mNationalNumber:Ljava/lang/String;

    aput-object v5, v8, v4

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v7

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v3

    const-string v3, "(number == ? OR number == ? OR number == ?) AND DATE > ? AND DATE <= ?"

    move-object v11, v3

    move-object v12, v8

    goto :goto_1

    :cond_0
    if-nez p2, :cond_1

    if-eqz p3, :cond_1

    new-array v3, v3, [Ljava/lang/String;

    .line 300
    iget-object v8, v1, Lcom/telguarder/features/postCallStatistics/CSDataProvider;->mPhoneNumber:Ljava/lang/String;

    aput-object v8, v3, v6

    iget-object v6, v1, Lcom/telguarder/features/postCallStatistics/CSDataProvider;->mE164Number:Ljava/lang/String;

    aput-object v6, v3, v5

    iget-object v5, v1, Lcom/telguarder/features/postCallStatistics/CSDataProvider;->mNationalNumber:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    const-string v4, "(number == ? OR number == ? OR number == ?) AND DATE < ?"

    goto :goto_0

    :cond_1
    new-array v3, v7, [Ljava/lang/String;

    .line 303
    iget-object v7, v1, Lcom/telguarder/features/postCallStatistics/CSDataProvider;->mPhoneNumber:Ljava/lang/String;

    aput-object v7, v3, v6

    iget-object v6, v1, Lcom/telguarder/features/postCallStatistics/CSDataProvider;->mE164Number:Ljava/lang/String;

    aput-object v6, v3, v5

    iget-object v5, v1, Lcom/telguarder/features/postCallStatistics/CSDataProvider;->mNationalNumber:Ljava/lang/String;

    aput-object v5, v3, v4

    const-string v4, "(number == ? OR number == ? OR number == ?)"

    :goto_0
    move-object v12, v3

    move-object v11, v4

    :goto_1
    const-wide/16 v3, 0x0

    .line 306
    iput-wide v3, v1, Lcom/telguarder/features/postCallStatistics/CSDataProvider;->callDate:J

    .line 307
    iput-wide v3, v1, Lcom/telguarder/features/postCallStatistics/CSDataProvider;->lastCallDate:J

    const-string v3, "android.permission.READ_CALL_LOG"

    move-object v4, p1

    .line 308
    invoke-static {p1, v3}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_3

    invoke-static {}, Lcom/telguarder/helpers/preferences/PreferencesManager;->getInstance()Lcom/telguarder/helpers/preferences/PreferencesManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/telguarder/helpers/preferences/PreferencesManager;->getUserConsentForPolicy2018()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 309
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v9, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const-string v13, "date DESC"

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 312
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 313
    invoke-direct {p0, v3, v0}, Lcom/telguarder/features/postCallStatistics/CSDataProvider;->getCursorData(Landroid/database/Cursor;Lcom/telguarder/features/postCallStatistics/CSDataProvider$ResultItemHandler;)V

    .line 314
    :goto_2
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 315
    invoke-direct {p0, v3, v0}, Lcom/telguarder/features/postCallStatistics/CSDataProvider;->getCursorData(Landroid/database/Cursor;Lcom/telguarder/features/postCallStatistics/CSDataProvider$ResultItemHandler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 321
    :cond_2
    :goto_3
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_5

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 319
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/telguarder/helpers/log/Logger;->error(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 321
    :goto_4
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 322
    throw v0

    :cond_3
    :goto_5
    if-eqz v2, :cond_4

    .line 326
    iget-wide v3, v1, Lcom/telguarder/features/postCallStatistics/CSDataProvider;->callDate:J

    iget-wide v5, v1, Lcom/telguarder/features/postCallStatistics/CSDataProvider;->lastCallDate:J

    invoke-interface {v2, v3, v4, v5, v6}, Lcom/telguarder/features/postCallStatistics/CSDataProvider$CompletionHandler;->handle(JJ)V

    :cond_4
    return-void
.end method

.method private getCursorData(Landroid/database/Cursor;Lcom/telguarder/features/postCallStatistics/CSDataProvider$ResultItemHandler;)V
    .locals 7

    const-string v0, "date"

    .line 332
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/telguarder/features/postCallStatistics/CSDataProvider;->callDate:J

    .line 333
    invoke-interface {p1}, Landroid/database/Cursor;->isFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/telguarder/features/postCallStatistics/CSDataProvider;->callDate:J

    iput-wide v0, p0, Lcom/telguarder/features/postCallStatistics/CSDataProvider;->lastCallDate:J

    :cond_0
    const-string v0, "type"

    .line 334
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const-string v0, "duration"

    .line 335
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eqz p2, :cond_1

    .line 337
    iget-wide v2, p0, Lcom/telguarder/features/postCallStatistics/CSDataProvider;->callDate:J

    invoke-interface {p1}, Landroid/database/Cursor;->isFirst()Z

    move-result v6

    move-object v1, p2

    invoke-interface/range {v1 .. v6}, Lcom/telguarder/features/postCallStatistics/CSDataProvider$ResultItemHandler;->handle(JIIZ)V

    :cond_1
    return-void
.end method

.method private getDateOnly(Ljava/util/Date;I)Ljava/util/Date;
    .locals 2

    .line 267
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 268
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 p1, 0x9

    const/4 v1, 0x0

    .line 269
    invoke-virtual {v0, p1, v1}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xa

    .line 270
    invoke-virtual {v0, p1, v1}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xc

    .line 271
    invoke-virtual {v0, p1, v1}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xd

    .line 272
    invoke-virtual {v0, p1, v1}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xe

    .line 273
    invoke-virtual {v0, p1, v1}, Ljava/util/Calendar;->set(II)V

    if-eqz p2, :cond_0

    const/4 p1, 0x5

    .line 275
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->add(II)V

    .line 277
    :cond_0
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    return-object p1
.end method

.method public static declared-synchronized getInstance()Lcom/telguarder/features/postCallStatistics/CSDataProvider;
    .locals 2

    const-class v0, Lcom/telguarder/features/postCallStatistics/CSDataProvider;

    monitor-enter v0

    .line 76
    :try_start_0
    sget-object v1, Lcom/telguarder/features/postCallStatistics/CSDataProvider;->mInstance:Lcom/telguarder/features/postCallStatistics/CSDataProvider;

    if-nez v1, :cond_0

    .line 77
    new-instance v1, Lcom/telguarder/features/postCallStatistics/CSDataProvider;

    invoke-direct {v1}, Lcom/telguarder/features/postCallStatistics/CSDataProvider;-><init>()V

    sput-object v1, Lcom/telguarder/features/postCallStatistics/CSDataProvider;->mInstance:Lcom/telguarder/features/postCallStatistics/CSDataProvider;

    .line 79
    :cond_0
    sget-object v1, Lcom/telguarder/features/postCallStatistics/CSDataProvider;->mInstance:Lcom/telguarder/features/postCallStatistics/CSDataProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private handleCallItem(JIIZLcom/telguarder/features/postCallStatistics/CSDataProvider$CSDataProviderCallback;)V
    .locals 8

    if-eqz p5, :cond_0

    .line 176
    iput p3, p0, Lcom/telguarder/features/postCallStatistics/CSDataProvider;->mCallType:I

    int-to-long v2, p4

    .line 177
    iput-wide v2, p0, Lcom/telguarder/features/postCallStatistics/CSDataProvider;->mLastCallduration:J

    .line 178
    iget-wide v4, p0, Lcom/telguarder/features/postCallStatistics/CSDataProvider;->mSecondsIncoming:J

    iget-wide v6, p0, Lcom/telguarder/features/postCallStatistics/CSDataProvider;->mSecondsOutgoing:J

    move-object v0, p6

    move v1, p3

    invoke-interface/range {v0 .. v7}, Lcom/telguarder/features/postCallStatistics/CSDataProvider$CSDataProviderCallback;->updateDuration(IJJJ)V

    .line 180
    :cond_0
    invoke-interface {p6, p1, p2, p3, p4}, Lcom/telguarder/features/postCallStatistics/CSDataProvider$CSDataProviderCallback;->addCallHistoryRow(JII)V

    const/4 p5, 0x1

    if-eq p3, p5, :cond_6

    const/4 p6, 0x2

    if-eq p3, p6, :cond_5

    const/4 p1, 0x3

    if-eq p3, p1, :cond_4

    const/4 p1, 0x5

    if-eq p3, p1, :cond_3

    const/4 p1, 0x6

    if-eq p3, p1, :cond_2

    const/4 p1, 0x7

    if-eq p3, p1, :cond_1

    goto :goto_0

    .line 200
    :cond_1
    iget p1, p0, Lcom/telguarder/features/postCallStatistics/CSDataProvider;->incomingCount:I

    add-int/2addr p1, p5

    iput p1, p0, Lcom/telguarder/features/postCallStatistics/CSDataProvider;->incomingCount:I

    goto :goto_0

    .line 197
    :cond_2
    iget p1, p0, Lcom/telguarder/features/postCallStatistics/CSDataProvider;->incomingCount:I

    add-int/2addr p1, p5

    iput p1, p0, Lcom/telguarder/features/postCallStatistics/CSDataProvider;->incomingCount:I

    goto :goto_0

    .line 194
    :cond_3
    iget p1, p0, Lcom/telguarder/features/postCallStatistics/CSDataProvider;->incomingCount:I

    add-int/2addr p1, p5

    iput p1, p0, Lcom/telguarder/features/postCallStatistics/CSDataProvider;->incomingCount:I

    goto :goto_0

    .line 191
    :cond_4
    iget p1, p0, Lcom/telguarder/features/postCallStatistics/CSDataProvider;->missedCount:I

    add-int/2addr p1, p5

    iput p1, p0, Lcom/telguarder/features/postCallStatistics/CSDataProvider;->missedCount:I

    goto :goto_0

    .line 187
    :cond_5
    iget p6, p0, Lcom/telguarder/features/postCallStatistics/CSDataProvider;->outgoingCount:I

    add-int/2addr p6, p5

    iput p6, p0, Lcom/telguarder/features/postCallStatistics/CSDataProvider;->outgoingCount:I

    .line 188
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/telguarder/features/postCallStatistics/CSDataProvider;->updateDurations(JII)V

    goto :goto_0

    .line 183
    :cond_6
    iget p6, p0, Lcom/telguarder/features/postCallStatistics/CSDataProvider;->incomingCount:I

    add-int/2addr p6, p5

    iput p6, p0, Lcom/telguarder/features/postCallStatistics/CSDataProvider;->incomingCount:I

    .line 184
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/telguarder/features/postCallStatistics/CSDataProvider;->updateDurations(JII)V

    :goto_0
    return-void
.end method

.method private handleSummaries(Lcom/telguarder/features/postCallStatistics/CSDataProvider$CSDataProviderCallback;JJ)V
    .locals 8

    .line 233
    iget v1, p0, Lcom/telguarder/features/postCallStatistics/CSDataProvider;->mCallType:I

    iget-wide v2, p0, Lcom/telguarder/features/postCallStatistics/CSDataProvider;->mLastCallduration:J

    iget-wide v4, p0, Lcom/telguarder/features/postCallStatistics/CSDataProvider;->mSecondsIncoming:J

    iget-wide v6, p0, Lcom/telguarder/features/postCallStatistics/CSDataProvider;->mSecondsOutgoing:J

    move-object v0, p1

    invoke-interface/range {v0 .. v7}, Lcom/telguarder/features/postCallStatistics/CSDataProvider$CSDataProviderCallback;->updateDuration(IJJJ)V

    .line 234
    iget v0, p0, Lcom/telguarder/features/postCallStatistics/CSDataProvider;->incomingCount:I

    iget v1, p0, Lcom/telguarder/features/postCallStatistics/CSDataProvider;->outgoingCount:I

    iget v2, p0, Lcom/telguarder/features/postCallStatistics/CSDataProvider;->missedCount:I

    invoke-interface {p1, v0, v1, v2}, Lcom/telguarder/features/postCallStatistics/CSDataProvider$CSDataProviderCallback;->updateCount(III)V

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_3

    cmp-long v2, p4, v0

    if-lez v2, :cond_3

    sub-long v0, p4, p2

    const-wide/32 v2, 0x5265c00

    .line 236
    div-long/2addr v0, v2

    const-wide/16 v2, 0x1c

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 238
    new-instance p2, Ljava/util/Date;

    invoke-direct {p2, p4, p5}, Ljava/util/Date;-><init>(J)V

    const/16 p3, -0x1c

    invoke-direct {p0, p2, p3}, Lcom/telguarder/features/postCallStatistics/CSDataProvider;->getDateOnly(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object p2

    new-instance p3, Ljava/util/Date;

    invoke-direct {p3, p4, p5}, Ljava/util/Date;-><init>(J)V

    iget-object p4, p0, Lcom/telguarder/features/postCallStatistics/CSDataProvider;->days:Ljava/util/ArrayList;

    invoke-virtual {p0, p2, p3, p4}, Lcom/telguarder/features/postCallStatistics/CSDataProvider;->populateDateList(Ljava/util/Date;Ljava/util/Date;Ljava/util/List;)V

    goto :goto_0

    .line 240
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p2, p3}, Ljava/util/Date;-><init>(J)V

    new-instance p2, Ljava/util/Date;

    invoke-direct {p2, p4, p5}, Ljava/util/Date;-><init>(J)V

    iget-object p3, p0, Lcom/telguarder/features/postCallStatistics/CSDataProvider;->days:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, p2, p3}, Lcom/telguarder/features/postCallStatistics/CSDataProvider;->populateDateList(Ljava/util/Date;Ljava/util/Date;Ljava/util/List;)V

    .line 242
    :goto_0
    iget-object p2, p0, Lcom/telguarder/features/postCallStatistics/CSDataProvider;->days:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Date;

    .line 243
    iget-object p4, p0, Lcom/telguarder/features/postCallStatistics/CSDataProvider;->statMap:Ljava/util/Map;

    invoke-interface {p4, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1

    .line 244
    iget-object p4, p0, Lcom/telguarder/features/postCallStatistics/CSDataProvider;->statMap:Ljava/util/Map;

    invoke-interface {p4, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/util/Pair;

    .line 245
    iget-object p4, p0, Lcom/telguarder/features/postCallStatistics/CSDataProvider;->incomingDurations:Ljava/util/ArrayList;

    iget-object p5, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p4, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    iget-object p4, p0, Lcom/telguarder/features/postCallStatistics/CSDataProvider;->outgoingDurations:Ljava/util/ArrayList;

    iget-object p3, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 248
    :cond_1
    iget-object p3, p0, Lcom/telguarder/features/postCallStatistics/CSDataProvider;->incomingDurations:Ljava/util/ArrayList;

    const/4 p4, 0x0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-virtual {p3, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    iget-object p3, p0, Lcom/telguarder/features/postCallStatistics/CSDataProvider;->outgoingDurations:Ljava/util/ArrayList;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 252
    :cond_2
    iget-object p2, p0, Lcom/telguarder/features/postCallStatistics/CSDataProvider;->days:Ljava/util/ArrayList;

    iget-object p3, p0, Lcom/telguarder/features/postCallStatistics/CSDataProvider;->incomingDurations:Ljava/util/ArrayList;

    iget-object p4, p0, Lcom/telguarder/features/postCallStatistics/CSDataProvider;->outgoingDurations:Ljava/util/ArrayList;

    invoke-interface {p1, p2, p3, p4}, Lcom/telguarder/features/postCallStatistics/CSDataProvider$CSDataProviderCallback;->updateDailyStat(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_3
    return-void
.end method

.method private updateDurations(JII)V
    .locals 5

    if-nez p4, :cond_0

    return-void

    .line 212
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Lcom/telguarder/features/postCallStatistics/CSDataProvider;->getDateOnly(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object p2

    .line 213
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSDataProvider;->statMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    const/4 v1, 0x1

    if-ne p3, v1, :cond_2

    .line 215
    iget-wide v1, p0, Lcom/telguarder/features/postCallStatistics/CSDataProvider;->mSecondsIncoming:J

    int-to-long v3, p4

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/telguarder/features/postCallStatistics/CSDataProvider;->mSecondsIncoming:J

    if-nez v0, :cond_1

    .line 217
    iget-object p3, p0, Lcom/telguarder/features/postCallStatistics/CSDataProvider;->statMap:Ljava/util/Map;

    new-instance v0, Landroid/util/Pair;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v0, p4, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p3, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 219
    :cond_1
    iget-object p1, p0, Lcom/telguarder/features/postCallStatistics/CSDataProvider;->statMap:Ljava/util/Map;

    new-instance p3, Landroid/util/Pair;

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    add-int/2addr v1, p4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-direct {p3, p4, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    if-ne p3, v1, :cond_4

    .line 222
    iget-wide v1, p0, Lcom/telguarder/features/postCallStatistics/CSDataProvider;->mSecondsOutgoing:J

    int-to-long v3, p4

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/telguarder/features/postCallStatistics/CSDataProvider;->mSecondsOutgoing:J

    if-nez v0, :cond_3

    .line 224
    iget-object p3, p0, Lcom/telguarder/features/postCallStatistics/CSDataProvider;->statMap:Ljava/util/Map;

    new-instance v0, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-direct {v0, p1, p4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p3, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 226
    :cond_3
    iget-object p1, p0, Lcom/telguarder/features/postCallStatistics/CSDataProvider;->statMap:Ljava/util/Map;

    new-instance p3, Landroid/util/Pair;

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    add-int/2addr v0, p4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-direct {p3, v1, p4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public getData(Landroid/content/Context;Ljava/lang/String;ILcom/telguarder/features/postCallStatistics/CSDataProvider$CSDataProviderCallback;)V
    .locals 1

    .line 84
    iput-object p4, p0, Lcom/telguarder/features/postCallStatistics/CSDataProvider;->mCallback:Lcom/telguarder/features/postCallStatistics/CSDataProvider$CSDataProviderCallback;

    .line 85
    iput-object p2, p0, Lcom/telguarder/features/postCallStatistics/CSDataProvider;->mPhoneNumber:Ljava/lang/String;

    const/4 p4, 0x0

    .line 86
    invoke-static {p1, p2, p4}, Lcom/telguarder/helpers/contact/ContactUtils;->getE164NUmberIfPossible(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSDataProvider;->mE164Number:Ljava/lang/String;

    .line 87
    invoke-static {p1, v0, p4}, Lcom/telguarder/helpers/contact/ContactUtils;->getNationalNumberIfPossible(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lcom/telguarder/features/postCallStatistics/CSDataProvider;->mNationalNumber:Ljava/lang/String;

    .line 88
    iput p3, p0, Lcom/telguarder/features/postCallStatistics/CSDataProvider;->mCallType:I

    const-wide/16 p3, 0x0

    .line 89
    iput-wide p3, p0, Lcom/telguarder/features/postCallStatistics/CSDataProvider;->mLastCallduration:J

    .line 90
    iput-wide p3, p0, Lcom/telguarder/features/postCallStatistics/CSDataProvider;->mSecondsIncoming:J

    .line 91
    iput-wide p3, p0, Lcom/telguarder/features/postCallStatistics/CSDataProvider;->mSecondsOutgoing:J

    .line 92
    iput-wide p3, p0, Lcom/telguarder/features/postCallStatistics/CSDataProvider;->firstChiDate:J

    .line 93
    iput-wide p3, p0, Lcom/telguarder/features/postCallStatistics/CSDataProvider;->lastChiDate:J

    const/4 p3, 0x0

    .line 94
    iput p3, p0, Lcom/telguarder/features/postCallStatistics/CSDataProvider;->incomingCount:I

    .line 95
    iput p3, p0, Lcom/telguarder/features/postCallStatistics/CSDataProvider;->outgoingCount:I

    .line 96
    iput p3, p0, Lcom/telguarder/features/postCallStatistics/CSDataProvider;->missedCount:I

    .line 97
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/telguarder/features/postCallStatistics/CSDataProvider;->days:Ljava/util/ArrayList;

    .line 98
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/telguarder/features/postCallStatistics/CSDataProvider;->incomingDurations:Ljava/util/ArrayList;

    .line 99
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/telguarder/features/postCallStatistics/CSDataProvider;->outgoingDurations:Ljava/util/ArrayList;

    .line 100
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    iput-object p3, p0, Lcom/telguarder/features/postCallStatistics/CSDataProvider;->statMap:Ljava/util/Map;

    .line 102
    iget-object p3, p0, Lcom/telguarder/features/postCallStatistics/CSDataProvider;->mPhoneNumber:Ljava/lang/String;

    if-nez p3, :cond_0

    return-void

    .line 106
    :cond_0
    new-instance p3, Landroid/os/Handler;

    invoke-direct {p3}, Landroid/os/Handler;-><init>()V

    new-instance p4, Lcom/telguarder/features/postCallStatistics/-$$Lambda$CSDataProvider$DiB8qQemZL8-oIaQIdOqC4h38Cs;

    invoke-direct {p4, p0, p2, p1}, Lcom/telguarder/features/postCallStatistics/-$$Lambda$CSDataProvider$DiB8qQemZL8-oIaQIdOqC4h38Cs;-><init>(Lcom/telguarder/features/postCallStatistics/CSDataProvider;Ljava/lang/String;Landroid/content/Context;)V

    const-wide/16 p1, 0x1f4

    invoke-virtual {p3, p4, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public synthetic lambda$addToRealmDb$8$CSDataProvider(JIILio/realm/Realm;)V
    .locals 1

    .line 165
    const-class v0, Lcom/telguarder/features/postCallStatistics/CallHistoryItem;

    invoke-virtual {p5, v0}, Lio/realm/Realm;->createObject(Ljava/lang/Class;)Lio/realm/RealmModel;

    move-result-object p5

    check-cast p5, Lcom/telguarder/features/postCallStatistics/CallHistoryItem;

    .line 166
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSDataProvider;->mE164Number:Ljava/lang/String;

    invoke-virtual {p5, v0}, Lcom/telguarder/features/postCallStatistics/CallHistoryItem;->setNumber(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p5, p1, p2}, Lcom/telguarder/features/postCallStatistics/CallHistoryItem;->setDate(J)V

    .line 168
    invoke-virtual {p5, p3}, Lcom/telguarder/features/postCallStatistics/CallHistoryItem;->setType(I)V

    .line 169
    invoke-virtual {p5, p4}, Lcom/telguarder/features/postCallStatistics/CallHistoryItem;->setDuration(I)V

    return-void
.end method

.method public synthetic lambda$getData$7$CSDataProvider(Ljava/lang/String;Landroid/content/Context;)V
    .locals 2

    .line 106
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/telguarder/features/postCallStatistics/-$$Lambda$CSDataProvider$Q0CezM9wSg5zQ33xv8ci1njzlxk;

    invoke-direct {v1, p0, p1, p2}, Lcom/telguarder/features/postCallStatistics/-$$Lambda$CSDataProvider$Q0CezM9wSg5zQ33xv8ci1njzlxk;-><init>(Lcom/telguarder/features/postCallStatistics/CSDataProvider;Ljava/lang/String;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 156
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public synthetic lambda$null$0$CSDataProvider(Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler$PhoneStateCallData;JIIZ)V
    .locals 7

    if-eqz p1, :cond_0

    if-eqz p6, :cond_0

    .line 118
    iget-wide v0, p1, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler$PhoneStateCallData;->lastCallTimestamp:J

    sub-long/2addr v0, p2

    const-wide/16 v2, 0x2710

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 119
    iget-wide p2, p1, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler$PhoneStateCallData;->lastCallDuration:J

    const-wide/16 p4, 0x3e8

    div-long/2addr p2, p4

    long-to-int p3, p2

    .line 120
    iget-wide v1, p1, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler$PhoneStateCallData;->lastCallTimestamp:J

    iget v3, p1, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler$PhoneStateCallData;->lastCallType:I

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/telguarder/features/postCallStatistics/CSDataProvider;->mCallback:Lcom/telguarder/features/postCallStatistics/CSDataProvider$CSDataProviderCallback;

    move-object v0, p0

    move v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/telguarder/features/postCallStatistics/CSDataProvider;->handleCallItem(JIIZLcom/telguarder/features/postCallStatistics/CSDataProvider$CSDataProviderCallback;)V

    .line 121
    iget-wide p4, p1, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler$PhoneStateCallData;->lastCallTimestamp:J

    iget p1, p1, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler$PhoneStateCallData;->lastCallType:I

    invoke-direct {p0, p4, p5, p1, p3}, Lcom/telguarder/features/postCallStatistics/CSDataProvider;->addToRealmDb(JII)V

    goto :goto_0

    .line 123
    :cond_0
    iget-object v6, p0, Lcom/telguarder/features/postCallStatistics/CSDataProvider;->mCallback:Lcom/telguarder/features/postCallStatistics/CSDataProvider$CSDataProviderCallback;

    move-object v0, p0

    move-wide v1, p2

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v6}, Lcom/telguarder/features/postCallStatistics/CSDataProvider;->handleCallItem(JIIZLcom/telguarder/features/postCallStatistics/CSDataProvider$CSDataProviderCallback;)V

    .line 124
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/telguarder/features/postCallStatistics/CSDataProvider;->addToRealmDb(JII)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$null$1$CSDataProvider(JJ)V
    .locals 6

    .line 126
    iget-object v1, p0, Lcom/telguarder/features/postCallStatistics/CSDataProvider;->mCallback:Lcom/telguarder/features/postCallStatistics/CSDataProvider$CSDataProviderCallback;

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/telguarder/features/postCallStatistics/CSDataProvider;->handleSummaries(Lcom/telguarder/features/postCallStatistics/CSDataProvider$CSDataProviderCallback;JJ)V

    return-void
.end method

.method public synthetic lambda$null$2$CSDataProvider(Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler$PhoneStateCallData;JIIZ)V
    .locals 4

    if-eqz p1, :cond_0

    if-eqz p6, :cond_0

    .line 130
    iget-wide v0, p1, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler$PhoneStateCallData;->lastCallTimestamp:J

    sub-long/2addr v0, p2

    const-wide/16 v2, 0x2710

    cmp-long p6, v0, v2

    if-lez p6, :cond_0

    .line 131
    iget-wide p2, p1, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler$PhoneStateCallData;->lastCallDuration:J

    const-wide/16 p4, 0x3e8

    div-long/2addr p2, p4

    long-to-int p3, p2

    .line 132
    iget-wide p4, p1, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler$PhoneStateCallData;->lastCallTimestamp:J

    iget p1, p1, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler$PhoneStateCallData;->lastCallType:I

    invoke-direct {p0, p4, p5, p1, p3}, Lcom/telguarder/features/postCallStatistics/CSDataProvider;->addToRealmDb(JII)V

    goto :goto_0

    .line 134
    :cond_0
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/telguarder/features/postCallStatistics/CSDataProvider;->addToRealmDb(JII)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$null$3$CSDataProvider(JIIZ)V
    .locals 7

    .line 146
    iget-object v6, p0, Lcom/telguarder/features/postCallStatistics/CSDataProvider;->mCallback:Lcom/telguarder/features/postCallStatistics/CSDataProvider$CSDataProviderCallback;

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/telguarder/features/postCallStatistics/CSDataProvider;->handleCallItem(JIIZLcom/telguarder/features/postCallStatistics/CSDataProvider$CSDataProviderCallback;)V

    .line 147
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/telguarder/features/postCallStatistics/CSDataProvider;->addToRealmDb(JII)V

    return-void
.end method

.method public synthetic lambda$null$4$CSDataProvider(JJ)V
    .locals 6

    .line 148
    iget-object v1, p0, Lcom/telguarder/features/postCallStatistics/CSDataProvider;->mCallback:Lcom/telguarder/features/postCallStatistics/CSDataProvider$CSDataProviderCallback;

    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-nez v0, :cond_0

    iget-wide p1, p0, Lcom/telguarder/features/postCallStatistics/CSDataProvider;->lastChiDate:J

    :cond_0
    cmp-long v0, p3, v2

    if-nez v0, :cond_1

    iget-wide p3, p0, Lcom/telguarder/features/postCallStatistics/CSDataProvider;->firstChiDate:J

    :cond_1
    move-wide v4, p3

    move-object v0, p0

    move-wide v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/telguarder/features/postCallStatistics/CSDataProvider;->handleSummaries(Lcom/telguarder/features/postCallStatistics/CSDataProvider$CSDataProviderCallback;JJ)V

    return-void
.end method

.method public synthetic lambda$null$5$CSDataProvider(Lio/realm/RealmResults;Landroid/content/Context;JJ)V
    .locals 7

    .line 138
    invoke-virtual {p1}, Lio/realm/RealmResults;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p3, 0x1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/telguarder/features/postCallStatistics/CallHistoryItem;

    .line 139
    invoke-virtual {p4}, Lcom/telguarder/features/postCallStatistics/CallHistoryItem;->getDate()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/telguarder/features/postCallStatistics/CSDataProvider;->lastChiDate:J

    .line 140
    invoke-virtual {p4}, Lcom/telguarder/features/postCallStatistics/CallHistoryItem;->getType()I

    move-result v3

    invoke-virtual {p4}, Lcom/telguarder/features/postCallStatistics/CallHistoryItem;->getDuration()I

    move-result v4

    iget-object v6, p0, Lcom/telguarder/features/postCallStatistics/CSDataProvider;->mCallback:Lcom/telguarder/features/postCallStatistics/CSDataProvider$CSDataProviderCallback;

    move-object v0, p0

    move v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/telguarder/features/postCallStatistics/CSDataProvider;->handleCallItem(JIIZLcom/telguarder/features/postCallStatistics/CSDataProvider$CSDataProviderCallback;)V

    if-eqz p3, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 145
    iget-wide p3, p0, Lcom/telguarder/features/postCallStatistics/CSDataProvider;->lastChiDate:J

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    new-instance v4, Lcom/telguarder/features/postCallStatistics/-$$Lambda$CSDataProvider$6AdpG863320lHj3tAePptUSV6Z4;

    invoke-direct {v4, p0}, Lcom/telguarder/features/postCallStatistics/-$$Lambda$CSDataProvider$6AdpG863320lHj3tAePptUSV6Z4;-><init>(Lcom/telguarder/features/postCallStatistics/CSDataProvider;)V

    new-instance v5, Lcom/telguarder/features/postCallStatistics/-$$Lambda$CSDataProvider$xnrzc2NIKh7BiRWyykinPrvw_ro;

    invoke-direct {v5, p0}, Lcom/telguarder/features/postCallStatistics/-$$Lambda$CSDataProvider$xnrzc2NIKh7BiRWyykinPrvw_ro;-><init>(Lcom/telguarder/features/postCallStatistics/CSDataProvider;)V

    move-object v0, p0

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Lcom/telguarder/features/postCallStatistics/CSDataProvider;->getCallItemsFromPhoneHistory(Landroid/content/Context;Ljava/lang/Long;Ljava/lang/Long;Lcom/telguarder/features/postCallStatistics/CSDataProvider$ResultItemHandler;Lcom/telguarder/features/postCallStatistics/CSDataProvider$CompletionHandler;)V

    return-void
.end method

.method public synthetic lambda$null$6$CSDataProvider(Ljava/lang/String;Landroid/content/Context;)V
    .locals 9

    .line 109
    :try_start_0
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v0

    iput-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSDataProvider;->realm:Lio/realm/Realm;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    .line 111
    :catch_0
    :try_start_1
    new-instance v0, Lio/realm/RealmConfiguration$Builder;

    invoke-direct {v0}, Lio/realm/RealmConfiguration$Builder;-><init>()V

    invoke-virtual {v0}, Lio/realm/RealmConfiguration$Builder;->deleteRealmIfMigrationNeeded()Lio/realm/RealmConfiguration$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmConfiguration$Builder;->build()Lio/realm/RealmConfiguration;

    move-result-object v0

    .line 112
    invoke-static {v0}, Lio/realm/Realm;->getInstance(Lio/realm/RealmConfiguration;)Lio/realm/Realm;

    move-result-object v0

    iput-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSDataProvider;->realm:Lio/realm/Realm;

    .line 114
    :goto_0
    invoke-static {}, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler;->getInstance()Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler;->getPhoneStateCallData(Ljava/lang/String;)Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler$PhoneStateCallData;

    move-result-object p1

    .line 115
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSDataProvider;->realm:Lio/realm/Realm;

    const-class v1, Lcom/telguarder/features/postCallStatistics/CallHistoryItem;

    invoke-virtual {v0, v1}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v0

    const-string v1, "number"

    iget-object v2, p0, Lcom/telguarder/features/postCallStatistics/CSDataProvider;->mE164Number:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmQuery;

    move-result-object v0

    const-string v1, "date"

    sget-object v2, Lio/realm/Sort;->DESCENDING:Lio/realm/Sort;

    invoke-virtual {v0, v1, v2}, Lio/realm/RealmQuery;->sort(Ljava/lang/String;Lio/realm/Sort;)Lio/realm/RealmQuery;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object v0

    .line 116
    invoke-virtual {v0}, Lio/realm/RealmResults;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 117
    new-instance v6, Lcom/telguarder/features/postCallStatistics/-$$Lambda$CSDataProvider$6ICTo2kzkhOCbSNltWfmJavFS44;

    invoke-direct {v6, p0, p1}, Lcom/telguarder/features/postCallStatistics/-$$Lambda$CSDataProvider$6ICTo2kzkhOCbSNltWfmJavFS44;-><init>(Lcom/telguarder/features/postCallStatistics/CSDataProvider;Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler$PhoneStateCallData;)V

    new-instance v7, Lcom/telguarder/features/postCallStatistics/-$$Lambda$CSDataProvider$My2KRGrMcejGxVtgsEeAqmlKo2g;

    invoke-direct {v7, p0}, Lcom/telguarder/features/postCallStatistics/-$$Lambda$CSDataProvider$My2KRGrMcejGxVtgsEeAqmlKo2g;-><init>(Lcom/telguarder/features/postCallStatistics/CSDataProvider;)V

    move-object v2, p0

    move-object v3, p2

    invoke-direct/range {v2 .. v7}, Lcom/telguarder/features/postCallStatistics/CSDataProvider;->getCallItemsFromPhoneHistory(Landroid/content/Context;Ljava/lang/Long;Ljava/lang/Long;Lcom/telguarder/features/postCallStatistics/CSDataProvider$ResultItemHandler;Lcom/telguarder/features/postCallStatistics/CSDataProvider$CompletionHandler;)V

    goto :goto_1

    .line 128
    :cond_0
    invoke-virtual {v0}, Lio/realm/RealmResults;->first()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/telguarder/features/postCallStatistics/CallHistoryItem;

    invoke-virtual {v1}, Lcom/telguarder/features/postCallStatistics/CallHistoryItem;->getDate()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/telguarder/features/postCallStatistics/CSDataProvider;->firstChiDate:J

    .line 129
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    new-instance v7, Lcom/telguarder/features/postCallStatistics/-$$Lambda$CSDataProvider$IN8mkKwRHbPw6fYD6kB4_6IiVFg;

    invoke-direct {v7, p0, p1}, Lcom/telguarder/features/postCallStatistics/-$$Lambda$CSDataProvider$IN8mkKwRHbPw6fYD6kB4_6IiVFg;-><init>(Lcom/telguarder/features/postCallStatistics/CSDataProvider;Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler$PhoneStateCallData;)V

    new-instance v8, Lcom/telguarder/features/postCallStatistics/-$$Lambda$CSDataProvider$2_Rg9MUxWIijuItUNlzozObiEYg;

    invoke-direct {v8, p0, v0, p2}, Lcom/telguarder/features/postCallStatistics/-$$Lambda$CSDataProvider$2_Rg9MUxWIijuItUNlzozObiEYg;-><init>(Lcom/telguarder/features/postCallStatistics/CSDataProvider;Lio/realm/RealmResults;Landroid/content/Context;)V

    move-object v3, p0

    move-object v4, p2

    invoke-direct/range {v3 .. v8}, Lcom/telguarder/features/postCallStatistics/CSDataProvider;->getCallItemsFromPhoneHistory(Landroid/content/Context;Ljava/lang/Long;Ljava/lang/Long;Lcom/telguarder/features/postCallStatistics/CSDataProvider$ResultItemHandler;Lcom/telguarder/features/postCallStatistics/CSDataProvider$CompletionHandler;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 152
    :goto_1
    iget-object p1, p0, Lcom/telguarder/features/postCallStatistics/CSDataProvider;->realm:Lio/realm/Realm;

    if-eqz p1, :cond_1

    .line 153
    invoke-virtual {p1}, Lio/realm/Realm;->close()V

    :cond_1
    return-void

    .line 152
    :goto_2
    iget-object p2, p0, Lcom/telguarder/features/postCallStatistics/CSDataProvider;->realm:Lio/realm/Realm;

    if-eqz p2, :cond_2

    .line 153
    invoke-virtual {p2}, Lio/realm/Realm;->close()V

    .line 155
    :cond_2
    throw p1
.end method

.method public populateDateList(Ljava/util/Date;Ljava/util/Date;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            "Ljava/util/List<",
            "Ljava/util/Date;",
            ">;)V"
        }
    .end annotation

    .line 259
    :goto_0
    invoke-virtual {p1, p2}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 260
    invoke-direct {p0, p1, v0}, Lcom/telguarder/features/postCallStatistics/CSDataProvider;->getDateOnly(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    .line 261
    invoke-direct {p0, p1, v0}, Lcom/telguarder/features/postCallStatistics/CSDataProvider;->getDateOnly(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object p1

    goto :goto_0

    :cond_0
    return-void
.end method
