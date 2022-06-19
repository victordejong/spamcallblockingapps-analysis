.class public final Landroidx/work/impl/model/RawWorkInfoDao_Impl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/work/impl/model/RawWorkInfoDao;


# instance fields
.field private final __db:Landroidx/room/h;


# direct methods
.method public constructor <init>(Landroidx/room/h;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Landroidx/work/impl/model/RawWorkInfoDao_Impl;->__db:Landroidx/room/h;

    return-void
.end method

.method private __fetchRelationshipWorkProgressAsandroidxWorkData(Landroidx/b/a;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/b/a<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroidx/work/d;",
            ">;>;)V"
        }
    .end annotation

    .line 259
    :goto_0
    invoke-virtual {p1}, Landroidx/b/a;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 260
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 264
    :cond_0
    invoke-virtual {p1}, Landroidx/b/a;->size()I

    move-result v1

    const/16 v2, 0x3e7

    const/4 v3, 0x0

    if-le v1, v2, :cond_4

    .line 265
    new-instance v0, Landroidx/b/a;

    invoke-direct {v0, v2}, Landroidx/b/a;-><init>(I)V

    .line 268
    invoke-virtual {p1}, Landroidx/b/a;->size()I

    move-result v1

    const/4 v4, 0x0

    :goto_1
    const/4 v5, 0x0

    :cond_1
    if-ge v4, v1, :cond_2

    .line 270
    invoke-virtual {p1, v4}, Landroidx/b/a;->b(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroidx/b/a;->c(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v0, v6, v7}, Landroidx/b/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v5, 0x1

    if-ne v5, v2, :cond_1

    .line 274
    invoke-direct {p0, v0}, Landroidx/work/impl/model/RawWorkInfoDao_Impl;->__fetchRelationshipWorkProgressAsandroidxWorkData(Landroidx/b/a;)V

    .line 275
    new-instance v0, Landroidx/b/a;

    invoke-direct {v0, v2}, Landroidx/b/a;-><init>(I)V

    goto :goto_1

    :cond_2
    if-lez v5, :cond_3

    move-object p1, v0

    goto :goto_0

    :cond_3
    return-void

    .line 284
    :cond_4
    invoke-static {}, Landroidx/room/b/e;->a()Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "SELECT `progress`,`work_spec_id` FROM `WorkProgress` WHERE `work_spec_id` IN ("

    .line 285
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    .line 287
    invoke-static {v1, v2}, Landroidx/room/b/e;->a(Ljava/lang/StringBuilder;I)V

    const-string v4, ")"

    .line 288
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/2addr v2, v3

    .line 291
    invoke-static {v1, v2}, Landroidx/room/k;->a(Ljava/lang/String;I)Landroidx/room/k;

    move-result-object v1

    .line 293
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x1

    const/4 v4, 0x1

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-nez v5, :cond_5

    .line 3234
    iget-object v5, v1, Landroidx/room/k;->e:[I

    aput v2, v5, v4

    goto :goto_3

    .line 297
    :cond_5
    invoke-virtual {v1, v4, v5}, Landroidx/room/k;->a(ILjava/lang/String;)V

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 301
    :cond_6
    iget-object v0, p0, Landroidx/work/impl/model/RawWorkInfoDao_Impl;->__db:Landroidx/room/h;

    invoke-static {v0, v1, v3}, Landroidx/room/b/c;->a(Landroidx/room/h;Landroidx/sqlite/db/d;Z)Landroid/database/Cursor;

    move-result-object v0

    :try_start_0
    const-string v1, "work_spec_id"

    .line 303
    invoke-static {v0, v1}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, -0x1

    if-ne v1, v2, :cond_7

    .line 321
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-void

    .line 307
    :cond_7
    :goto_4
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 308
    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_7

    .line 309
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 310
    invoke-virtual {p1, v2}, Landroidx/b/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-eqz v2, :cond_7

    .line 314
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    .line 315
    invoke-static {v4}, Landroidx/work/d;->a([B)Landroidx/work/d;

    move-result-object v4

    .line 316
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    .line 321
    :cond_8
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-void

    :catchall_0
    move-exception p1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 322
    throw p1
.end method

.method private __fetchRelationshipWorkTagAsjavaLangString(Landroidx/b/a;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/b/a<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 194
    :goto_0
    invoke-virtual {p1}, Landroidx/b/a;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 195
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 199
    :cond_0
    invoke-virtual {p1}, Landroidx/b/a;->size()I

    move-result v1

    const/16 v2, 0x3e7

    const/4 v3, 0x0

    if-le v1, v2, :cond_4

    .line 200
    new-instance v0, Landroidx/b/a;

    invoke-direct {v0, v2}, Landroidx/b/a;-><init>(I)V

    .line 203
    invoke-virtual {p1}, Landroidx/b/a;->size()I

    move-result v1

    const/4 v4, 0x0

    :goto_1
    const/4 v5, 0x0

    :cond_1
    if-ge v4, v1, :cond_2

    .line 205
    invoke-virtual {p1, v4}, Landroidx/b/a;->b(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroidx/b/a;->c(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v0, v6, v7}, Landroidx/b/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v5, 0x1

    if-ne v5, v2, :cond_1

    .line 209
    invoke-direct {p0, v0}, Landroidx/work/impl/model/RawWorkInfoDao_Impl;->__fetchRelationshipWorkTagAsjavaLangString(Landroidx/b/a;)V

    .line 210
    new-instance v0, Landroidx/b/a;

    invoke-direct {v0, v2}, Landroidx/b/a;-><init>(I)V

    goto :goto_1

    :cond_2
    if-lez v5, :cond_3

    move-object p1, v0

    goto :goto_0

    :cond_3
    return-void

    .line 219
    :cond_4
    invoke-static {}, Landroidx/room/b/e;->a()Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "SELECT `tag`,`work_spec_id` FROM `WorkTag` WHERE `work_spec_id` IN ("

    .line 220
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    .line 222
    invoke-static {v1, v2}, Landroidx/room/b/e;->a(Ljava/lang/StringBuilder;I)V

    const-string v4, ")"

    .line 223
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/2addr v2, v3

    .line 226
    invoke-static {v1, v2}, Landroidx/room/k;->a(Ljava/lang/String;I)Landroidx/room/k;

    move-result-object v1

    .line 228
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x1

    const/4 v4, 0x1

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-nez v5, :cond_5

    .line 2234
    iget-object v5, v1, Landroidx/room/k;->e:[I

    aput v2, v5, v4

    goto :goto_3

    .line 232
    :cond_5
    invoke-virtual {v1, v4, v5}, Landroidx/room/k;->a(ILjava/lang/String;)V

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 236
    :cond_6
    iget-object v0, p0, Landroidx/work/impl/model/RawWorkInfoDao_Impl;->__db:Landroidx/room/h;

    invoke-static {v0, v1, v3}, Landroidx/room/b/c;->a(Landroidx/room/h;Landroidx/sqlite/db/d;Z)Landroid/database/Cursor;

    move-result-object v0

    :try_start_0
    const-string v1, "work_spec_id"

    .line 238
    invoke-static {v0, v1}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, -0x1

    if-ne v1, v2, :cond_7

    .line 254
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-void

    .line 242
    :cond_7
    :goto_4
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 243
    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_7

    .line 244
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 245
    invoke-virtual {p1, v2}, Landroidx/b/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-eqz v2, :cond_7

    .line 248
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 249
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    .line 254
    :cond_8
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-void

    :catchall_0
    move-exception p1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 255
    throw p1
.end method

.method static synthetic access$000(Landroidx/work/impl/model/RawWorkInfoDao_Impl;)Landroidx/room/h;
    .locals 0

    .line 24
    iget-object p0, p0, Landroidx/work/impl/model/RawWorkInfoDao_Impl;->__db:Landroidx/room/h;

    return-object p0
.end method

.method static synthetic access$100(Landroidx/work/impl/model/RawWorkInfoDao_Impl;Landroidx/b/a;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Landroidx/work/impl/model/RawWorkInfoDao_Impl;->__fetchRelationshipWorkTagAsjavaLangString(Landroidx/b/a;)V

    return-void
.end method

.method static synthetic access$200(Landroidx/work/impl/model/RawWorkInfoDao_Impl;Landroidx/b/a;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Landroidx/work/impl/model/RawWorkInfoDao_Impl;->__fetchRelationshipWorkProgressAsandroidxWorkData(Landroidx/b/a;)V

    return-void
.end method


# virtual methods
.method public final getWorkInfoPojos(Landroidx/sqlite/db/d;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/sqlite/db/d;",
            ")",
            "Ljava/util/List<",
            "Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;",
            ">;"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Landroidx/work/impl/model/RawWorkInfoDao_Impl;->__db:Landroidx/room/h;

    invoke-virtual {v0}, Landroidx/room/h;->d()V

    .line 35
    iget-object v0, p0, Landroidx/work/impl/model/RawWorkInfoDao_Impl;->__db:Landroidx/room/h;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroidx/room/b/c;->a(Landroidx/room/h;Landroidx/sqlite/db/d;Z)Landroid/database/Cursor;

    move-result-object p1

    :try_start_0
    const-string v0, "id"

    .line 37
    invoke-static {p1, v0}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v1, "state"

    .line 38
    invoke-static {p1, v1}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    const-string v2, "output"

    .line 39
    invoke-static {p1, v2}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v3, "run_attempt_count"

    .line 40
    invoke-static {p1, v3}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    .line 41
    new-instance v4, Landroidx/b/a;

    invoke-direct {v4}, Landroidx/b/a;-><init>()V

    .line 42
    new-instance v5, Landroidx/b/a;

    invoke-direct {v5}, Landroidx/b/a;-><init>()V

    .line 43
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 44
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-nez v6, :cond_1

    .line 45
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 46
    invoke-virtual {v4, v6}, Landroidx/b/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    if-nez v7, :cond_1

    .line 48
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 49
    invoke-virtual {v4, v6, v7}, Landroidx/b/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    :cond_1
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 53
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 54
    invoke-virtual {v5, v6}, Landroidx/b/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    if-nez v7, :cond_0

    .line 56
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 57
    invoke-virtual {v5, v6, v7}, Landroidx/b/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    const/4 v6, -0x1

    .line 61
    invoke-interface {p1, v6}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 62
    invoke-direct {p0, v4}, Landroidx/work/impl/model/RawWorkInfoDao_Impl;->__fetchRelationshipWorkTagAsjavaLangString(Landroidx/b/a;)V

    .line 63
    invoke-direct {p0, v5}, Landroidx/work/impl/model/RawWorkInfoDao_Impl;->__fetchRelationshipWorkProgressAsandroidxWorkData(Landroidx/b/a;)V

    .line 64
    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 65
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_b

    .line 68
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    const/4 v9, 0x0

    if-nez v8, :cond_3

    .line 69
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 70
    invoke-virtual {v4, v8}, Landroidx/b/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    goto :goto_2

    :cond_3
    move-object v8, v9

    :goto_2
    if-nez v8, :cond_4

    .line 73
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 76
    :cond_4
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v10

    if-nez v10, :cond_5

    .line 77
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 78
    invoke-virtual {v5, v9}, Landroidx/b/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    :cond_5
    if-nez v9, :cond_6

    .line 81
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 83
    :cond_6
    new-instance v10, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;

    invoke-direct {v10}, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;-><init>()V

    if-eq v0, v6, :cond_7

    .line 85
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->id:Ljava/lang/String;

    :cond_7
    if-eq v1, v6, :cond_8

    .line 89
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 90
    invoke-static {v11}, Landroidx/work/impl/model/WorkTypeConverters;->intToState(I)Landroidx/work/t$a;

    move-result-object v11

    iput-object v11, v10, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->state:Landroidx/work/t$a;

    :cond_8
    if-eq v2, v6, :cond_9

    .line 94
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v11

    .line 95
    invoke-static {v11}, Landroidx/work/d;->a([B)Landroidx/work/d;

    move-result-object v11

    iput-object v11, v10, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->output:Landroidx/work/d;

    :cond_9
    if-eq v3, v6, :cond_a

    .line 98
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    iput v11, v10, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->runAttemptCount:I

    .line 100
    :cond_a
    iput-object v8, v10, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->tags:Ljava/util/List;

    .line 101
    iput-object v9, v10, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->progress:Ljava/util/List;

    .line 102
    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 106
    :cond_b
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v7

    :catchall_0
    move-exception v0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 107
    throw v0
.end method

.method public final getWorkInfoPojosLiveData(Landroidx/sqlite/db/d;)Landroidx/lifecycle/LiveData;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/sqlite/db/d;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;",
            ">;>;"
        }
    .end annotation

    .line 113
    iget-object v0, p0, Landroidx/work/impl/model/RawWorkInfoDao_Impl;->__db:Landroidx/room/h;

    .line 1465
    iget-object v0, v0, Landroidx/room/h;->e:Landroidx/room/e;

    const-string v1, "WorkTag"

    const-string v2, "WorkProgress"

    const-string v3, "WorkSpec"

    .line 113
    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroidx/work/impl/model/RawWorkInfoDao_Impl$1;

    invoke-direct {v2, p0, p1}, Landroidx/work/impl/model/RawWorkInfoDao_Impl$1;-><init>(Landroidx/work/impl/model/RawWorkInfoDao_Impl;Landroidx/sqlite/db/d;)V

    const/4 p1, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroidx/room/e;->a([Ljava/lang/String;ZLjava/util/concurrent/Callable;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method
