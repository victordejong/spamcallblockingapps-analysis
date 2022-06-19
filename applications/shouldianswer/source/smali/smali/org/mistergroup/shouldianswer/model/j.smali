.class public final Lorg/mistergroup/shouldianswer/model/j;
.super Ljava/lang/Object;
.source "CallLogs.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mistergroup/shouldianswer/model/j$b;,
        Lorg/mistergroup/shouldianswer/model/j$a;
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private final d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/mistergroup/shouldianswer/model/j$b;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroidx/c/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/c/d<",
            "Lorg/mistergroup/shouldianswer/model/j$b;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lorg/mistergroup/shouldianswer/model/j$b;

.field private g:I

.field private final h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/model/j;->h:Ljava/lang/String;

    const/16 p1, 0x28

    .line 34
    iput p1, p0, Lorg/mistergroup/shouldianswer/model/j;->a:I

    .line 40
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "calllog-"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/j;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/model/j;->b:Ljava/lang/String;

    .line 43
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/model/j;->d:Ljava/util/ArrayList;

    .line 44
    new-instance p1, Landroidx/c/d;

    invoke-direct {p1}, Landroidx/c/d;-><init>()V

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/model/j;->e:Landroidx/c/d;

    return-void
.end method

.method private final a(JLjava/lang/Long;Ljava/lang/Integer;)Ljava/util/ArrayList;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/ArrayList<",
            "Lorg/mistergroup/shouldianswer/model/j$b;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    .line 56
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/u;->a:Lorg/mistergroup/shouldianswer/utils/u;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/utils/u;->a()J

    move-result-wide v2

    .line 57
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    .line 61
    move-object v6, v5

    check-cast v6, Ljava/lang/String;

    if-eqz p3, :cond_0

    .line 64
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v6, "_id >= ?"

    goto :goto_0

    :cond_0
    const-wide/16 v7, 0x0

    cmp-long v7, p1, v7

    if-lez v7, :cond_1

    .line 68
    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v6, "_id < ?"

    :cond_1
    :goto_0
    const-string v7, "_id DESC"

    if-eqz p4, :cond_2

    .line 73
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " LIMIT "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :cond_2
    move-object v13, v7

    .line 75
    iget-object v7, v1, Lorg/mistergroup/shouldianswer/model/j;->c:Ljava/lang/String;

    if-eqz v7, :cond_4

    if-eqz v6, :cond_3

    const-string v8, " and "

    .line 76
    invoke-static {v6, v8}, Lkotlin/e/b/h;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_3
    const-string v6, ""

    :goto_1
    const-string v8, "number = ? "

    .line 77
    invoke-static {v6, v8}, Lkotlin/e/b/h;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    move-object v11, v6

    .line 79
    sget-object v6, Lorg/mistergroup/shouldianswer/utils/f;->a:Lorg/mistergroup/shouldianswer/utils/f;

    invoke-virtual {v6}, Lorg/mistergroup/shouldianswer/utils/f;->a()Ljava/lang/String;

    move-result-object v6

    .line 115
    :try_start_0
    sget-object v7, Lorg/mistergroup/shouldianswer/MyApp;->c:Lorg/mistergroup/shouldianswer/MyApp$a;

    invoke-virtual {v7}, Lorg/mistergroup/shouldianswer/MyApp$a;->b()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v9, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/4 v10, 0x0

    check-cast v0, Ljava/util/Collection;

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/String;

    .line 327
    invoke-interface {v0, v7}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_9

    move-object v12, v0

    check-cast v12, [Ljava/lang/String;

    .line 115
    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_8

    move-object v7, v0

    check-cast v7, Ljava/io/Closeable;

    move-object v0, v5

    check-cast v0, Ljava/lang/Throwable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    move-object v8, v7

    check-cast v8, Landroid/database/Cursor;

    .line 116
    sget-object v9, Lorg/mistergroup/shouldianswer/utils/g;->a:Lorg/mistergroup/shouldianswer/utils/g;

    const-string v10, "cursor"

    invoke-static {v8, v10}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "_id"

    invoke-virtual {v9, v8, v10}, Lorg/mistergroup/shouldianswer/utils/g;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    .line 117
    sget-object v10, Lorg/mistergroup/shouldianswer/utils/g;->a:Lorg/mistergroup/shouldianswer/utils/g;

    const-string v11, "number"

    invoke-virtual {v10, v8, v11}, Lorg/mistergroup/shouldianswer/utils/g;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    .line 119
    sget-object v11, Lorg/mistergroup/shouldianswer/utils/g;->a:Lorg/mistergroup/shouldianswer/utils/g;

    const-string v12, "numbertype"

    invoke-virtual {v11, v8, v12}, Lorg/mistergroup/shouldianswer/utils/g;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    .line 120
    sget-object v12, Lorg/mistergroup/shouldianswer/utils/g;->a:Lorg/mistergroup/shouldianswer/utils/g;

    const-string v13, "presentation"

    invoke-virtual {v12, v8, v13}, Lorg/mistergroup/shouldianswer/utils/g;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    .line 121
    sget-object v13, Lorg/mistergroup/shouldianswer/utils/g;->a:Lorg/mistergroup/shouldianswer/utils/g;

    const-string v14, "name"

    invoke-virtual {v13, v8, v14}, Lorg/mistergroup/shouldianswer/utils/g;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    .line 122
    sget-object v14, Lorg/mistergroup/shouldianswer/utils/g;->a:Lorg/mistergroup/shouldianswer/utils/g;

    const-string v15, "photo_id"

    invoke-virtual {v14, v8, v15}, Lorg/mistergroup/shouldianswer/utils/g;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    .line 123
    sget-object v15, Lorg/mistergroup/shouldianswer/utils/g;->a:Lorg/mistergroup/shouldianswer/utils/g;

    const-string v5, "lookup_uri"

    invoke-virtual {v15, v8, v5}, Lorg/mistergroup/shouldianswer/utils/g;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    .line 124
    sget-object v15, Lorg/mistergroup/shouldianswer/utils/g;->a:Lorg/mistergroup/shouldianswer/utils/g;

    move-object/from16 p1, v6

    const-string v6, "type"

    invoke-virtual {v15, v8, v6}, Lorg/mistergroup/shouldianswer/utils/g;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    .line 125
    sget-object v15, Lorg/mistergroup/shouldianswer/utils/g;->a:Lorg/mistergroup/shouldianswer/utils/g;

    const-string v1, "date"

    invoke-virtual {v15, v8, v1}, Lorg/mistergroup/shouldianswer/utils/g;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    .line 126
    sget-object v15, Lorg/mistergroup/shouldianswer/utils/g;->a:Lorg/mistergroup/shouldianswer/utils/g;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move-wide/from16 v16, v2

    :try_start_2
    const-string v2, "duration"

    invoke-virtual {v15, v8, v2}, Lorg/mistergroup/shouldianswer/utils/g;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    .line 127
    sget-object v3, Lorg/mistergroup/shouldianswer/utils/g;->a:Lorg/mistergroup/shouldianswer/utils/g;

    const-string v15, "countryiso"

    invoke-virtual {v3, v8, v15}, Lorg/mistergroup/shouldianswer/utils/g;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    .line 128
    sget-object v15, Lorg/mistergroup/shouldianswer/utils/g;->a:Lorg/mistergroup/shouldianswer/utils/g;

    move-object/from16 p2, v0

    const-string v0, "new"

    invoke-virtual {v15, v8, v0}, Lorg/mistergroup/shouldianswer/utils/g;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    .line 129
    sget-object v15, Lorg/mistergroup/shouldianswer/utils/g;->a:Lorg/mistergroup/shouldianswer/utils/g;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object/from16 p3, v7

    :try_start_3
    const-string v7, "is_read"

    invoke-virtual {v15, v8, v7}, Lorg/mistergroup/shouldianswer/utils/g;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    .line 130
    :goto_2
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v15

    if-eqz v15, :cond_7

    .line 131
    new-instance v15, Lorg/mistergroup/shouldianswer/model/j$b;

    invoke-direct {v15}, Lorg/mistergroup/shouldianswer/model/j$b;-><init>()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object/from16 v18, v4

    .line 132
    :try_start_4
    sget-object v4, Lorg/mistergroup/shouldianswer/utils/g;->a:Lorg/mistergroup/shouldianswer/utils/g;

    move/from16 p4, v5

    invoke-virtual {v4, v8, v9}, Lorg/mistergroup/shouldianswer/utils/g;->c(Landroid/database/Cursor;I)J

    move-result-wide v4

    invoke-virtual {v15, v4, v5}, Lorg/mistergroup/shouldianswer/model/j$b;->a(J)V

    .line 133
    sget-object v4, Lorg/mistergroup/shouldianswer/utils/g;->a:Lorg/mistergroup/shouldianswer/utils/g;

    invoke-virtual {v4, v8, v10}, Lorg/mistergroup/shouldianswer/utils/g;->a(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    goto :goto_3

    :cond_5
    const-string v4, "-1"

    :goto_3
    invoke-virtual {v15, v4}, Lorg/mistergroup/shouldianswer/model/j$b;->a(Ljava/lang/String;)V

    .line 135
    sget-object v4, Lorg/mistergroup/shouldianswer/utils/g;->a:Lorg/mistergroup/shouldianswer/utils/g;

    invoke-virtual {v4, v8, v3}, Lorg/mistergroup/shouldianswer/utils/g;->a(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    goto :goto_4

    :cond_6
    move-object/from16 v4, p1

    :goto_4
    invoke-virtual {v15, v4}, Lorg/mistergroup/shouldianswer/model/j$b;->b(Ljava/lang/String;)V

    .line 136
    sget-object v4, Lorg/mistergroup/shouldianswer/model/k;->i:Lorg/mistergroup/shouldianswer/model/k$a;

    sget-object v5, Lorg/mistergroup/shouldianswer/utils/g;->a:Lorg/mistergroup/shouldianswer/utils/g;

    invoke-virtual {v5, v8, v6}, Lorg/mistergroup/shouldianswer/utils/g;->b(Landroid/database/Cursor;I)I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/mistergroup/shouldianswer/model/k$a;->a(I)Lorg/mistergroup/shouldianswer/model/k;

    move-result-object v4

    invoke-virtual {v15, v4}, Lorg/mistergroup/shouldianswer/model/j$b;->a(Lorg/mistergroup/shouldianswer/model/k;)V

    .line 137
    sget-object v4, Lorg/mistergroup/shouldianswer/utils/g;->a:Lorg/mistergroup/shouldianswer/utils/g;

    invoke-virtual {v4, v8, v1}, Lorg/mistergroup/shouldianswer/utils/g;->c(Landroid/database/Cursor;I)J

    move-result-wide v4

    invoke-virtual {v15, v4, v5}, Lorg/mistergroup/shouldianswer/model/j$b;->b(J)V

    .line 138
    sget-object v4, Lorg/mistergroup/shouldianswer/utils/g;->a:Lorg/mistergroup/shouldianswer/utils/g;

    invoke-virtual {v4, v8, v14}, Lorg/mistergroup/shouldianswer/utils/g;->b(Landroid/database/Cursor;I)I

    move-result v4

    invoke-virtual {v15, v4}, Lorg/mistergroup/shouldianswer/model/j$b;->c(I)V

    .line 139
    sget-object v4, Lorg/mistergroup/shouldianswer/utils/g;->a:Lorg/mistergroup/shouldianswer/utils/g;

    invoke-virtual {v4, v8, v13}, Lorg/mistergroup/shouldianswer/utils/g;->a(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Lorg/mistergroup/shouldianswer/model/j$b;->c(Ljava/lang/String;)V

    .line 140
    sget-object v4, Lorg/mistergroup/shouldianswer/utils/g;->a:Lorg/mistergroup/shouldianswer/utils/g;

    invoke-virtual {v4, v8, v11}, Lorg/mistergroup/shouldianswer/utils/g;->b(Landroid/database/Cursor;I)I

    move-result v4

    invoke-virtual {v15, v4}, Lorg/mistergroup/shouldianswer/model/j$b;->a(I)V

    .line 141
    sget-object v4, Lorg/mistergroup/shouldianswer/utils/g;->a:Lorg/mistergroup/shouldianswer/utils/g;

    invoke-virtual {v4, v8, v12}, Lorg/mistergroup/shouldianswer/utils/g;->b(Landroid/database/Cursor;I)I

    move-result v4

    invoke-virtual {v15, v4}, Lorg/mistergroup/shouldianswer/model/j$b;->b(I)V

    .line 142
    sget-object v4, Lorg/mistergroup/shouldianswer/utils/g;->a:Lorg/mistergroup/shouldianswer/utils/g;

    move/from16 v5, p4

    invoke-virtual {v4, v8, v5}, Lorg/mistergroup/shouldianswer/utils/g;->a(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Lorg/mistergroup/shouldianswer/model/j$b;->d(Ljava/lang/String;)V

    .line 143
    sget-object v4, Lorg/mistergroup/shouldianswer/utils/g;->a:Lorg/mistergroup/shouldianswer/utils/g;

    invoke-virtual {v4, v8, v2}, Lorg/mistergroup/shouldianswer/utils/g;->b(Landroid/database/Cursor;I)I

    move-result v4

    invoke-virtual {v15, v4}, Lorg/mistergroup/shouldianswer/model/j$b;->d(I)V

    .line 144
    sget-object v4, Lorg/mistergroup/shouldianswer/utils/g;->a:Lorg/mistergroup/shouldianswer/utils/g;

    invoke-virtual {v4, v8, v0}, Lorg/mistergroup/shouldianswer/utils/g;->b(Landroid/database/Cursor;I)I

    move-result v4

    invoke-virtual {v15, v4}, Lorg/mistergroup/shouldianswer/model/j$b;->e(I)V

    .line 145
    sget-object v4, Lorg/mistergroup/shouldianswer/utils/g;->a:Lorg/mistergroup/shouldianswer/utils/g;

    invoke-virtual {v4, v8, v7}, Lorg/mistergroup/shouldianswer/utils/g;->b(Landroid/database/Cursor;I)I

    move-result v4

    invoke-virtual {v15, v4}, Lorg/mistergroup/shouldianswer/model/j$b;->f(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object/from16 v4, v18

    .line 146
    :try_start_5
    invoke-virtual {v4, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    move-object/from16 v4, v18

    goto :goto_5

    .line 148
    :cond_7
    sget-object v0, Lkotlin/o;->a:Lkotlin/o;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object/from16 v5, p2

    move-object/from16 v1, p3

    .line 115
    :try_start_6
    invoke-static {v1, v5}, Lkotlin/io/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_9

    :catchall_1
    move-exception v0

    :goto_5
    move-object/from16 v1, p3

    goto :goto_7

    :catchall_2
    move-exception v0

    goto :goto_6

    :catchall_3
    move-exception v0

    move-wide/from16 v16, v2

    :goto_6
    move-object v1, v7

    :goto_7
    move-object v2, v0

    :try_start_7
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :catchall_4
    move-exception v0

    move-object v3, v0

    :try_start_8
    invoke-static {v1, v2}, Lkotlin/io/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3

    :cond_8
    move-wide/from16 v16, v2

    goto :goto_9

    :cond_9
    move-wide/from16 v16, v2

    .line 327
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    move-exception v0

    goto :goto_8

    :catch_1
    move-exception v0

    move-wide/from16 v16, v2

    .line 150
    :goto_8
    sget-object v1, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v1, v0, v3, v2, v3}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    .line 153
    :goto_9
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 154
    sget-object v1, Lorg/mistergroup/shouldianswer/utils/u;->a:Lorg/mistergroup/shouldianswer/utils/u;

    move-wide/from16 v2, v16

    invoke-virtual {v1, v2, v3}, Lorg/mistergroup/shouldianswer/utils/u;->a(J)J

    move-result-wide v1

    .line 155
    sget-object v3, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CallLogs.readData readed="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " in "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p0

    iget-object v2, v1, Lorg/mistergroup/shouldianswer/model/j;->b:Ljava/lang/String;

    invoke-virtual {v3, v0, v2}, Lorg/mistergroup/shouldianswer/utils/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4
.end method

.method static synthetic a(Lorg/mistergroup/shouldianswer/model/j;JLjava/lang/Long;Ljava/lang/Integer;ILjava/lang/Object;)Ljava/util/ArrayList;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    const-wide/16 p1, 0x0

    :cond_0
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_1

    const/4 p4, 0x0

    .line 55
    check-cast p4, Ljava/lang/Integer;

    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/mistergroup/shouldianswer/model/j;->a(JLjava/lang/Long;Ljava/lang/Integer;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/util/ArrayList;Lkotlin/e/a/q;Lkotlin/c/c;)Ljava/lang/Object;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/mistergroup/shouldianswer/model/j$b;",
            ">;",
            "Lkotlin/e/a/q<",
            "-",
            "Lorg/mistergroup/shouldianswer/model/j$a;",
            "-",
            "Ljava/util/ArrayList<",
            "Lorg/mistergroup/shouldianswer/model/j$b;",
            ">;-",
            "Lkotlin/c/c<",
            "-",
            "Lkotlin/o;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/c/c<",
            "-",
            "Lkotlin/o;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    instance-of v2, v1, Lorg/mistergroup/shouldianswer/model/j$c;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lorg/mistergroup/shouldianswer/model/j$c;

    iget v3, v2, Lorg/mistergroup/shouldianswer/model/j$c;->b:I

    const/high16 v4, -0x80000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    iget v1, v2, Lorg/mistergroup/shouldianswer/model/j$c;->b:I

    sub-int/2addr v1, v4

    iput v1, v2, Lorg/mistergroup/shouldianswer/model/j$c;->b:I

    goto :goto_0

    :cond_0
    new-instance v2, Lorg/mistergroup/shouldianswer/model/j$c;

    invoke-direct {v2, v8, v1}, Lorg/mistergroup/shouldianswer/model/j$c;-><init>(Lorg/mistergroup/shouldianswer/model/j;Lkotlin/c/c;)V

    :goto_0
    move-object v9, v2

    iget-object v1, v9, Lorg/mistergroup/shouldianswer/model/j$c;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/c/a/b;->a()Ljava/lang/Object;

    move-result-object v10

    .line 173
    iget v2, v9, Lorg/mistergroup/shouldianswer/model/j$c;->b:I

    const/4 v11, 0x1

    const/4 v12, 0x2

    const/4 v13, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v11, :cond_2

    if-ne v2, v12, :cond_1

    iget-object v0, v9, Lorg/mistergroup/shouldianswer/model/j$c;->i:Ljava/lang/Object;

    check-cast v0, Lkotlin/e/b/m$c;

    iget-object v0, v9, Lorg/mistergroup/shouldianswer/model/j$c;->h:Ljava/lang/Object;

    check-cast v0, Landroidx/c/d;

    iget-object v0, v9, Lorg/mistergroup/shouldianswer/model/j$c;->g:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    iget-object v0, v9, Lorg/mistergroup/shouldianswer/model/j$c;->f:Ljava/lang/Object;

    check-cast v0, Lkotlin/e/a/q;

    iget-object v0, v9, Lorg/mistergroup/shouldianswer/model/j$c;->e:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    iget-object v0, v9, Lorg/mistergroup/shouldianswer/model/j$c;->d:Ljava/lang/Object;

    check-cast v0, Lorg/mistergroup/shouldianswer/model/j;

    :try_start_0
    invoke-static {v1}, Lkotlin/k;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_8

    :catch_0
    move-exception v0

    goto/16 :goto_7

    .line 222
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    :cond_2
    iget-object v0, v9, Lorg/mistergroup/shouldianswer/model/j$c;->j:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    iget-object v0, v9, Lorg/mistergroup/shouldianswer/model/j$c;->i:Ljava/lang/Object;

    check-cast v0, Lkotlin/e/b/m$c;

    iget-object v2, v9, Lorg/mistergroup/shouldianswer/model/j$c;->h:Ljava/lang/Object;

    check-cast v2, Landroidx/c/d;

    iget-object v3, v9, Lorg/mistergroup/shouldianswer/model/j$c;->g:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    iget-object v4, v9, Lorg/mistergroup/shouldianswer/model/j$c;->f:Ljava/lang/Object;

    check-cast v4, Lkotlin/e/a/q;

    iget-object v5, v9, Lorg/mistergroup/shouldianswer/model/j$c;->e:Ljava/lang/Object;

    check-cast v5, Ljava/util/ArrayList;

    iget-object v6, v9, Lorg/mistergroup/shouldianswer/model/j$c;->d:Ljava/lang/Object;

    check-cast v6, Lorg/mistergroup/shouldianswer/model/j;

    invoke-static {v1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    move-object v1, v0

    move-object v0, v4

    goto/16 :goto_3

    :cond_3
    invoke-static {v1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    const-wide/16 v2, 0x0

    .line 174
    iget-object v1, v8, Lorg/mistergroup/shouldianswer/model/j;->d:Ljava/util/ArrayList;

    check-cast v1, Ljava/util/List;

    invoke-static {v1}, Lkotlin/a/g;->e(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mistergroup/shouldianswer/model/j$b;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/model/j$b;->a()J

    move-result-wide v4

    invoke-static {v4, v5}, Lkotlin/c/b/a/b;->a(J)Ljava/lang/Long;

    move-result-object v1

    move-object v4, v1

    goto :goto_1

    :cond_4
    move-object v4, v13

    :goto_1
    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v7}, Lorg/mistergroup/shouldianswer/model/j;->a(Lorg/mistergroup/shouldianswer/model/j;JLjava/lang/Long;Ljava/lang/Integer;ILjava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v3

    .line 175
    new-instance v2, Landroidx/c/d;

    invoke-direct {v2}, Landroidx/c/d;-><init>()V

    .line 178
    new-instance v1, Lkotlin/e/b/m$c;

    invoke-direct {v1}, Lkotlin/e/b/m$c;-><init>()V

    move-object v4, v13

    check-cast v4, Ljava/util/ArrayList;

    iput-object v4, v1, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    .line 179
    move-object v4, v3

    check-cast v4, Ljava/lang/Iterable;

    .line 330
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/mistergroup/shouldianswer/model/j$b;

    .line 180
    invoke-virtual {v5}, Lorg/mistergroup/shouldianswer/model/j$b;->a()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7, v5}, Landroidx/c/d;->b(JLjava/lang/Object;)V

    .line 181
    iget-object v6, v8, Lorg/mistergroup/shouldianswer/model/j;->e:Landroidx/c/d;

    invoke-virtual {v5}, Lorg/mistergroup/shouldianswer/model/j$b;->a()J

    move-result-wide v14

    invoke-virtual {v6, v14, v15}, Landroidx/c/d;->e(J)Z

    move-result v6

    if-nez v6, :cond_5

    .line 182
    iget-object v6, v1, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    check-cast v6, Ljava/util/ArrayList;

    if-nez v6, :cond_6

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v1, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    .line 183
    :cond_6
    iget-object v6, v1, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    check-cast v6, Ljava/util/ArrayList;

    if-eqz v6, :cond_7

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v6

    invoke-static {v6}, Lkotlin/c/b/a/b;->a(Z)Ljava/lang/Boolean;

    .line 184
    :cond_7
    sget-object v6, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "CallLogs.update newList.add "

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v14, Lorg/mistergroup/shouldianswer/model/NumberInfo;->b:Lorg/mistergroup/shouldianswer/model/NumberInfo$a;

    invoke-virtual {v5}, Lorg/mistergroup/shouldianswer/model/j$b;->b()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lorg/mistergroup/shouldianswer/model/NumberInfo$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v13, v12, v13}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 185
    iget-object v6, v8, Lorg/mistergroup/shouldianswer/model/j;->d:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    iget-object v6, v8, Lorg/mistergroup/shouldianswer/model/j;->e:Landroidx/c/d;

    invoke-virtual {v5}, Lorg/mistergroup/shouldianswer/model/j$b;->a()J

    move-result-wide v14

    invoke-virtual {v6, v14, v15, v5}, Landroidx/c/d;->b(JLjava/lang/Object;)V

    goto :goto_2

    .line 189
    :cond_8
    iget-object v4, v1, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    if-eqz v4, :cond_9

    sget-object v5, Lorg/mistergroup/shouldianswer/model/j$a;->a:Lorg/mistergroup/shouldianswer/model/j$a;

    iput-object v8, v9, Lorg/mistergroup/shouldianswer/model/j$c;->d:Ljava/lang/Object;

    move-object/from16 v6, p1

    iput-object v6, v9, Lorg/mistergroup/shouldianswer/model/j$c;->e:Ljava/lang/Object;

    iput-object v0, v9, Lorg/mistergroup/shouldianswer/model/j$c;->f:Ljava/lang/Object;

    iput-object v3, v9, Lorg/mistergroup/shouldianswer/model/j$c;->g:Ljava/lang/Object;

    iput-object v2, v9, Lorg/mistergroup/shouldianswer/model/j$c;->h:Ljava/lang/Object;

    iput-object v1, v9, Lorg/mistergroup/shouldianswer/model/j$c;->i:Ljava/lang/Object;

    iput-object v4, v9, Lorg/mistergroup/shouldianswer/model/j$c;->j:Ljava/lang/Object;

    iput v11, v9, Lorg/mistergroup/shouldianswer/model/j$c;->b:I

    invoke-interface {v0, v5, v4, v9}, Lkotlin/e/a/q;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v10, :cond_a

    return-object v10

    :cond_9
    move-object/from16 v6, p1

    :cond_a
    move-object v5, v6

    move-object v6, v8

    :goto_3
    if-eqz v5, :cond_e

    .line 191
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_e

    .line 193
    :try_start_1
    move-object v4, v5

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lkotlin/a/g;->a(Ljava/util/List;)I

    move-result v4

    :goto_4
    if-ltz v4, :cond_d

    .line 194
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    const-string v11, "deletedItems[deletedItemsIndex]"

    invoke-static {v7, v11}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Lorg/mistergroup/shouldianswer/model/j$b;

    .line 195
    invoke-virtual {v7}, Lorg/mistergroup/shouldianswer/model/j$b;->a()J

    move-result-wide v14

    .line 196
    iget-object v7, v6, Lorg/mistergroup/shouldianswer/model/j;->e:Landroidx/c/d;

    invoke-virtual {v7, v14, v15}, Landroidx/c/d;->d(J)I

    move-result v7

    if-ltz v7, :cond_c

    .line 198
    iget-object v11, v6, Lorg/mistergroup/shouldianswer/model/j;->e:Landroidx/c/d;

    invoke-virtual {v11, v7}, Landroidx/c/d;->a(I)V

    const/4 v7, 0x0

    .line 199
    iget-object v11, v6, Lorg/mistergroup/shouldianswer/model/j;->d:Ljava/util/ArrayList;

    check-cast v11, Ljava/util/List;

    invoke-static {v11}, Lkotlin/a/g;->a(Ljava/util/List;)I

    move-result v11

    if-ltz v11, :cond_c

    .line 200
    :goto_5
    iget-object v13, v6, Lorg/mistergroup/shouldianswer/model/j;->d:Ljava/util/ArrayList;

    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/mistergroup/shouldianswer/model/j$b;

    invoke-virtual {v13}, Lorg/mistergroup/shouldianswer/model/j$b;->a()J

    move-result-wide v16

    cmp-long v13, v16, v14

    if-nez v13, :cond_b

    .line 201
    iget-object v11, v6, Lorg/mistergroup/shouldianswer/model/j;->d:Ljava/util/ArrayList;

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_6

    :cond_b
    if-eq v7, v11, :cond_c

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_c
    :goto_6
    add-int/lit8 v4, v4, -0x1

    const/4 v13, 0x0

    goto :goto_4

    .line 207
    :cond_d
    sget-object v4, Lorg/mistergroup/shouldianswer/model/j$a;->b:Lorg/mistergroup/shouldianswer/model/j$a;

    iput-object v6, v9, Lorg/mistergroup/shouldianswer/model/j$c;->d:Ljava/lang/Object;

    iput-object v5, v9, Lorg/mistergroup/shouldianswer/model/j$c;->e:Ljava/lang/Object;

    iput-object v0, v9, Lorg/mistergroup/shouldianswer/model/j$c;->f:Ljava/lang/Object;

    iput-object v3, v9, Lorg/mistergroup/shouldianswer/model/j$c;->g:Ljava/lang/Object;

    iput-object v2, v9, Lorg/mistergroup/shouldianswer/model/j$c;->h:Ljava/lang/Object;

    iput-object v1, v9, Lorg/mistergroup/shouldianswer/model/j$c;->i:Ljava/lang/Object;

    iput v12, v9, Lorg/mistergroup/shouldianswer/model/j$c;->b:I

    invoke-interface {v0, v4, v5, v9}, Lkotlin/e/a/q;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-ne v0, v10, :cond_e

    return-object v10

    .line 209
    :goto_7
    sget-object v1, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2, v12, v2}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    .line 222
    :cond_e
    :goto_8
    sget-object v0, Lkotlin/o;->a:Lkotlin/o;

    return-object v0
.end method

.method public final a(Lkotlin/c/c;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/c/c<",
            "-",
            "Lorg/mistergroup/shouldianswer/model/j$b;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 160
    iget p1, p0, Lorg/mistergroup/shouldianswer/model/j;->g:I

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/j;->d:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lkotlin/a/g;->a(Ljava/util/List;)I

    move-result v0

    const/4 v1, 0x0

    if-le p1, v0, :cond_1

    .line 161
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/model/j;->d:Ljava/util/ArrayList;

    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Lkotlin/a/g;->e(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/mistergroup/shouldianswer/model/j$b;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/model/j$b;->a()J

    move-result-wide v2

    invoke-static {v2, v3}, Lkotlin/c/b/a/b;->a(J)Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    .line 162
    :goto_0
    iget p1, p0, Lorg/mistergroup/shouldianswer/model/j;->a:I

    invoke-static {p1}, Lkotlin/c/b/a/b;->a(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v2, v3, v1, p1}, Lorg/mistergroup/shouldianswer/model/j;->a(JLjava/lang/Long;Ljava/lang/Integer;)Ljava/util/ArrayList;

    move-result-object p1

    .line 163
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/j;->d:Ljava/util/ArrayList;

    move-object v2, p1

    check-cast v2, Ljava/util/Collection;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 164
    check-cast p1, Ljava/lang/Iterable;

    .line 328
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mistergroup/shouldianswer/model/j$b;

    .line 164
    iget-object v2, p0, Lorg/mistergroup/shouldianswer/model/j;->e:Landroidx/c/d;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/model/j$b;->a()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4, v0}, Landroidx/c/d;->b(JLjava/lang/Object;)V

    goto :goto_1

    .line 166
    :cond_1
    iget p1, p0, Lorg/mistergroup/shouldianswer/model/j;->g:I

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/j;->d:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lkotlin/a/g;->a(Ljava/util/List;)I

    move-result v0

    if-gt p1, v0, :cond_2

    .line 167
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/model/j;->d:Ljava/util/ArrayList;

    iget v0, p0, Lorg/mistergroup/shouldianswer/model/j;->g:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/mistergroup/shouldianswer/model/j;->g:I

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/mistergroup/shouldianswer/model/j$b;

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/model/j;->f:Lorg/mistergroup/shouldianswer/model/j$b;

    .line 168
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/model/j;->f:Lorg/mistergroup/shouldianswer/model/j$b;

    return-object p1

    :cond_2
    return-object v1
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/model/j;->c:Ljava/lang/String;

    return-void
.end method
