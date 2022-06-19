.class Lcom/facebook/biddingkit/d/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile a:Lcom/facebook/biddingkit/d/f;


# instance fields
.field private final b:Lcom/facebook/biddingkit/d/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Lcom/facebook/biddingkit/d/d;

    const-string v1, "EventLogsDatabase.db"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/facebook/biddingkit/d/d;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object v0, p0, Lcom/facebook/biddingkit/d/f;->b:Lcom/facebook/biddingkit/d/d;

    return-void
.end method

.method private a()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .line 62
    :try_start_0
    iget-object v0, p0, Lcom/facebook/biddingkit/d/f;->b:Lcom/facebook/biddingkit/d/d;

    invoke-virtual {v0}, Lcom/facebook/biddingkit/d/d;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 1031
    :catchall_0
    invoke-static {}, Lcom/facebook/biddingkit/d/i;->a()Z

    const/4 v0, 0x0

    return-object v0
.end method

.method public static a(I)Ljava/util/List;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/facebook/biddingkit/d/e;",
            ">;"
        }
    .end annotation

    const-string v0, "latency_ms"

    const-string v1, "error"

    const-string v2, "cpm_cents"

    const-string v3, "result"

    .line 112
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 2087
    :try_start_0
    sget-object v5, Lcom/facebook/biddingkit/d/f;->a:Lcom/facebook/biddingkit/d/f;

    .line 114
    invoke-direct {v5}, Lcom/facebook/biddingkit/d/f;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    const-string v7, "EVENT_LOGS"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 115
    invoke-virtual/range {v6 .. v14}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    const-string v6, "exception"

    .line 124
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const-string v7, "auction_id"

    .line 125
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    const-string v8, "ID"

    .line 126
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    const-string v9, "bidder_data"

    .line 127
    invoke-interface {v5, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    move/from16 v10, p0

    .line 128
    :goto_0
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-eqz v11, :cond_d

    if-lez v10, :cond_d

    .line 129
    new-instance v11, Lcom/facebook/biddingkit/d/e;

    invoke-direct {v11}, Lcom/facebook/biddingkit/d/e;-><init>()V

    .line 131
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 3068
    iput-object v12, v11, Lcom/facebook/biddingkit/d/e;->d:Ljava/lang/String;

    .line 132
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 4060
    iput-object v12, v11, Lcom/facebook/biddingkit/d/e;->b:Ljava/lang/String;

    .line 133
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 4076
    iput-object v12, v11, Lcom/facebook/biddingkit/d/e;->a:Ljava/lang/String;

    .line 135
    new-instance v12, Lorg/json/JSONObject;

    invoke-interface {v5, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 136
    invoke-virtual {v12}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v13

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_c

    .line 137
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 139
    invoke-virtual {v12, v14}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    move/from16 v16, v6

    .line 142
    invoke-virtual {v15, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 4122
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_2

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_0

    goto :goto_3

    :cond_0
    move/from16 v17, v7

    .line 4125
    iget-object v7, v11, Lcom/facebook/biddingkit/d/e;->c:Ljava/util/Map;

    invoke-interface {v7, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    if-nez v7, :cond_1

    .line 4127
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    move/from16 v18, v8

    .line 4128
    iget-object v8, v11, Lcom/facebook/biddingkit/d/e;->c:Ljava/util/Map;

    invoke-interface {v8, v14, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_1
    move/from16 v18, v8

    .line 4131
    :goto_2
    invoke-interface {v7, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_2
    :goto_3
    move/from16 v17, v7

    move/from16 v18, v8

    .line 144
    :goto_4
    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 4143
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_5

    .line 4146
    :cond_3
    iget-object v7, v11, Lcom/facebook/biddingkit/d/e;->c:Ljava/util/Map;

    invoke-interface {v7, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    if-nez v7, :cond_4

    .line 4148
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 4149
    iget-object v8, v11, Lcom/facebook/biddingkit/d/e;->c:Ljava/util/Map;

    invoke-interface {v8, v14, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4152
    :cond_4
    invoke-interface {v7, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    :cond_5
    :goto_5
    invoke-virtual {v15, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 5084
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_8

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    goto :goto_6

    .line 5087
    :cond_6
    iget-object v7, v11, Lcom/facebook/biddingkit/d/e;->c:Ljava/util/Map;

    invoke-interface {v7, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    if-nez v7, :cond_7

    .line 5089
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 5090
    iget-object v8, v11, Lcom/facebook/biddingkit/d/e;->c:Ljava/util/Map;

    invoke-interface {v8, v14, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5093
    :cond_7
    invoke-interface {v7, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    :cond_8
    :goto_6
    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 5105
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_b

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_9

    goto :goto_7

    .line 5108
    :cond_9
    iget-object v7, v11, Lcom/facebook/biddingkit/d/e;->c:Ljava/util/Map;

    invoke-interface {v7, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    if-nez v7, :cond_a

    .line 5110
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 5111
    iget-object v8, v11, Lcom/facebook/biddingkit/d/e;->c:Ljava/util/Map;

    invoke-interface {v8, v14, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5114
    :cond_a
    invoke-interface {v7, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    :goto_7
    move/from16 v6, v16

    move/from16 v7, v17

    move/from16 v8, v18

    goto/16 :goto_1

    :cond_c
    move/from16 v16, v6

    move/from16 v17, v7

    move/from16 v18, v8

    .line 151
    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, -0x1

    move/from16 v6, v16

    move/from16 v7, v17

    move/from16 v8, v18

    goto/16 :goto_0

    .line 154
    :cond_d
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_8

    .line 6031
    :catchall_0
    invoke-static {}, Lcom/facebook/biddingkit/d/i;->a()Z

    :goto_8
    return-object v4
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    .line 76
    sget-object v0, Lcom/facebook/biddingkit/d/f;->a:Lcom/facebook/biddingkit/d/f;

    if-nez v0, :cond_1

    .line 78
    const-class v0, Lcom/facebook/biddingkit/d/f;

    monitor-enter v0

    .line 79
    :try_start_0
    sget-object v1, Lcom/facebook/biddingkit/d/f;->a:Lcom/facebook/biddingkit/d/f;

    if-nez v1, :cond_0

    .line 80
    new-instance v1, Lcom/facebook/biddingkit/d/f;

    invoke-direct {v1, p0}, Lcom/facebook/biddingkit/d/f;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/facebook/biddingkit/d/f;->a:Lcom/facebook/biddingkit/d/f;

    .line 82
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    return-void
.end method

.method public static a(Lcom/facebook/biddingkit/d/e;)V
    .locals 4

    .line 94
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "auction_id"

    .line 1064
    iget-object v2, p0, Lcom/facebook/biddingkit/d/e;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, ""

    if-eqz v2, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/facebook/biddingkit/d/e;->b:Ljava/lang/String;

    .line 96
    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "exception"

    .line 1072
    iget-object v2, p0, Lcom/facebook/biddingkit/d/e;->d:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/facebook/biddingkit/d/e;->d:Ljava/lang/String;

    .line 97
    :goto_1
    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "bidder_data"

    .line 98
    invoke-virtual {p0}, Lcom/facebook/biddingkit/d/e;->a()Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1087
    sget-object p0, Lcom/facebook/biddingkit/d/f;->a:Lcom/facebook/biddingkit/d/f;

    .line 101
    invoke-direct {p0}, Lcom/facebook/biddingkit/d/f;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    const-string v1, "EVENT_LOGS"

    const/4 v2, 0x0

    .line 102
    invoke-virtual {p0, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 103
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    .line 2031
    :catch_0
    invoke-static {}, Lcom/facebook/biddingkit/d/i;->a()Z

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 5

    .line 6087
    :try_start_0
    sget-object v0, Lcom/facebook/biddingkit/d/f;->a:Lcom/facebook/biddingkit/d/f;

    .line 165
    invoke-direct {v0}, Lcom/facebook/biddingkit/d/f;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "EVENT_LOGS"

    const-string v2, "ID=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    .line 166
    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 7031
    :catchall_0
    invoke-static {}, Lcom/facebook/biddingkit/d/i;->a()Z

    return-void
.end method


# virtual methods
.method public finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1052
    invoke-direct {p0}, Lcom/facebook/biddingkit/d/f;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1054
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 72
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method
