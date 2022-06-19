.class public final Lcom/google/android/gms/internal/ads/bmo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# direct methods
.method public static a(Landroid/database/sqlite/SQLiteDatabase;I)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 17
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 25
    :goto_0
    return v0

    .line 19
    :cond_0
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/bmo;->c(Landroid/database/sqlite/SQLiteDatabase;I)Landroid/database/Cursor;

    move-result-object v1

    .line 21
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 22
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 23
    const-string/jumbo v0, "value"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 24
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/internal/ads/dwv$t$a;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 2
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v1, "serialized_proto_data"

    aput-object v1, v2, v0

    .line 3
    const-string/jumbo v1, "offline_signal_contents"

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    .line 4
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 5
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    const-string/jumbo v0, "serialized_proto_data"

    .line 7
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 8
    :try_start_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dwv$t$a;->a([B)Lcom/google/android/gms/internal/ads/dwv$t$a;

    move-result-object v0

    .line 9
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzeco; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 11
    :catch_0
    move-exception v0

    .line 12
    const-string/jumbo v2, "Unable to deserialize proto from offline signals database:"

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/uu;->c(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeco;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 15
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 16
    return-object v8
.end method

.method public static b(Landroid/database/sqlite/SQLiteDatabase;I)J
    .locals 6

    .prologue
    const-wide/16 v0, 0x0

    .line 26
    const/4 v2, 0x2

    invoke-static {p0, v2}, Lcom/google/android/gms/internal/ads/bmo;->c(Landroid/database/sqlite/SQLiteDatabase;I)Landroid/database/Cursor;

    move-result-object v2

    .line 28
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 29
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    .line 30
    const-string/jumbo v3, "value"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    add-long/2addr v0, v4

    .line 31
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 32
    return-wide v0
.end method

.method private static c(Landroid/database/sqlite/SQLiteDatabase;I)Landroid/database/Cursor;
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 33
    new-array v2, v4, [Ljava/lang/String;

    const-string/jumbo v0, "value"

    aput-object v0, v2, v1

    .line 34
    const-string/jumbo v3, "statistic_name = ?"

    .line 35
    new-array v4, v4, [Ljava/lang/String;

    .line 36
    packed-switch p1, :pswitch_data_0

    .line 42
    :goto_0
    const-string/jumbo v1, "offline_signal_statistics"

    move-object v0, p0

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 37
    :pswitch_0
    const-string/jumbo v0, "failed_requests"

    aput-object v0, v4, v1

    goto :goto_0

    .line 39
    :pswitch_1
    const-string/jumbo v0, "total_requests"

    aput-object v0, v4, v1

    goto :goto_0

    .line 41
    :pswitch_2
    const-string/jumbo v0, "last_successful_request_time"

    aput-object v0, v4, v1

    goto :goto_0

    .line 36
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
