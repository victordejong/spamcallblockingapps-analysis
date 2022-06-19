.class public final Landroidx/work/impl/model/WorkSpecDao_Impl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/work/impl/model/WorkSpecDao;


# instance fields
.field private final __db:Landroidx/room/h;

.field private final __insertionAdapterOfWorkSpec:Landroidx/room/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/a<",
            "Landroidx/work/impl/model/WorkSpec;",
            ">;"
        }
    .end annotation
.end field

.field private final __preparedStmtOfDelete:Landroidx/room/o;

.field private final __preparedStmtOfIncrementWorkSpecRunAttemptCount:Landroidx/room/o;

.field private final __preparedStmtOfMarkWorkSpecScheduled:Landroidx/room/o;

.field private final __preparedStmtOfPruneFinishedWorkWithZeroDependentsIgnoringKeepForAtLeast:Landroidx/room/o;

.field private final __preparedStmtOfResetScheduledState:Landroidx/room/o;

.field private final __preparedStmtOfResetWorkSpecRunAttemptCount:Landroidx/room/o;

.field private final __preparedStmtOfSetOutput:Landroidx/room/o;

.field private final __preparedStmtOfSetPeriodStartTime:Landroidx/room/o;


# direct methods
.method public constructor <init>(Landroidx/room/h;)V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/h;

    .line 54
    new-instance v0, Landroidx/work/impl/model/WorkSpecDao_Impl$1;

    invoke-direct {v0, p0, p1}, Landroidx/work/impl/model/WorkSpecDao_Impl$1;-><init>(Landroidx/work/impl/model/WorkSpecDao_Impl;Landroidx/room/h;)V

    iput-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__insertionAdapterOfWorkSpec:Landroidx/room/a;

    .line 146
    new-instance v0, Landroidx/work/impl/model/WorkSpecDao_Impl$2;

    invoke-direct {v0, p0, p1}, Landroidx/work/impl/model/WorkSpecDao_Impl$2;-><init>(Landroidx/work/impl/model/WorkSpecDao_Impl;Landroidx/room/h;)V

    iput-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfDelete:Landroidx/room/o;

    .line 153
    new-instance v0, Landroidx/work/impl/model/WorkSpecDao_Impl$3;

    invoke-direct {v0, p0, p1}, Landroidx/work/impl/model/WorkSpecDao_Impl$3;-><init>(Landroidx/work/impl/model/WorkSpecDao_Impl;Landroidx/room/h;)V

    iput-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfSetOutput:Landroidx/room/o;

    .line 160
    new-instance v0, Landroidx/work/impl/model/WorkSpecDao_Impl$4;

    invoke-direct {v0, p0, p1}, Landroidx/work/impl/model/WorkSpecDao_Impl$4;-><init>(Landroidx/work/impl/model/WorkSpecDao_Impl;Landroidx/room/h;)V

    iput-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfSetPeriodStartTime:Landroidx/room/o;

    .line 167
    new-instance v0, Landroidx/work/impl/model/WorkSpecDao_Impl$5;

    invoke-direct {v0, p0, p1}, Landroidx/work/impl/model/WorkSpecDao_Impl$5;-><init>(Landroidx/work/impl/model/WorkSpecDao_Impl;Landroidx/room/h;)V

    iput-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfIncrementWorkSpecRunAttemptCount:Landroidx/room/o;

    .line 174
    new-instance v0, Landroidx/work/impl/model/WorkSpecDao_Impl$6;

    invoke-direct {v0, p0, p1}, Landroidx/work/impl/model/WorkSpecDao_Impl$6;-><init>(Landroidx/work/impl/model/WorkSpecDao_Impl;Landroidx/room/h;)V

    iput-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfResetWorkSpecRunAttemptCount:Landroidx/room/o;

    .line 181
    new-instance v0, Landroidx/work/impl/model/WorkSpecDao_Impl$7;

    invoke-direct {v0, p0, p1}, Landroidx/work/impl/model/WorkSpecDao_Impl$7;-><init>(Landroidx/work/impl/model/WorkSpecDao_Impl;Landroidx/room/h;)V

    iput-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfMarkWorkSpecScheduled:Landroidx/room/o;

    .line 188
    new-instance v0, Landroidx/work/impl/model/WorkSpecDao_Impl$8;

    invoke-direct {v0, p0, p1}, Landroidx/work/impl/model/WorkSpecDao_Impl$8;-><init>(Landroidx/work/impl/model/WorkSpecDao_Impl;Landroidx/room/h;)V

    iput-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfResetScheduledState:Landroidx/room/o;

    .line 195
    new-instance v0, Landroidx/work/impl/model/WorkSpecDao_Impl$9;

    invoke-direct {v0, p0, p1}, Landroidx/work/impl/model/WorkSpecDao_Impl$9;-><init>(Landroidx/work/impl/model/WorkSpecDao_Impl;Landroidx/room/h;)V

    iput-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfPruneFinishedWorkWithZeroDependentsIgnoringKeepForAtLeast:Landroidx/room/o;

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

    .line 2178
    :goto_0
    invoke-virtual {p1}, Landroidx/b/a;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 2179
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 2183
    :cond_0
    invoke-virtual {p1}, Landroidx/b/a;->size()I

    move-result v1

    const/16 v2, 0x3e7

    const/4 v3, 0x0

    if-le v1, v2, :cond_4

    .line 2184
    new-instance v0, Landroidx/b/a;

    invoke-direct {v0, v2}, Landroidx/b/a;-><init>(I)V

    .line 2187
    invoke-virtual {p1}, Landroidx/b/a;->size()I

    move-result v1

    const/4 v4, 0x0

    :goto_1
    const/4 v5, 0x0

    :cond_1
    if-ge v4, v1, :cond_2

    .line 2189
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

    .line 2193
    invoke-direct {p0, v0}, Landroidx/work/impl/model/WorkSpecDao_Impl;->__fetchRelationshipWorkProgressAsandroidxWorkData(Landroidx/b/a;)V

    .line 2194
    new-instance v0, Landroidx/b/a;

    invoke-direct {v0, v2}, Landroidx/b/a;-><init>(I)V

    goto :goto_1

    :cond_2
    if-lez v5, :cond_3

    move-object p1, v0

    goto :goto_0

    :cond_3
    return-void

    .line 2203
    :cond_4
    invoke-static {}, Landroidx/room/b/e;->a()Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "SELECT `progress`,`work_spec_id` FROM `WorkProgress` WHERE `work_spec_id` IN ("

    .line 2204
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2205
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    .line 2206
    invoke-static {v1, v2}, Landroidx/room/b/e;->a(Ljava/lang/StringBuilder;I)V

    const-string v4, ")"

    .line 2207
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2208
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/2addr v2, v3

    .line 2210
    invoke-static {v1, v2}, Landroidx/room/k;->a(Ljava/lang/String;I)Landroidx/room/k;

    move-result-object v1

    .line 2212
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

    .line 23234
    iget-object v5, v1, Landroidx/room/k;->e:[I

    aput v2, v5, v4

    goto :goto_3

    .line 2216
    :cond_5
    invoke-virtual {v1, v4, v5}, Landroidx/room/k;->a(ILjava/lang/String;)V

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 2220
    :cond_6
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/h;

    invoke-static {v0, v1, v3}, Landroidx/room/b/c;->a(Landroidx/room/h;Landroidx/sqlite/db/d;Z)Landroid/database/Cursor;

    move-result-object v0

    :try_start_0
    const-string v1, "work_spec_id"

    .line 2222
    invoke-static {v0, v1}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, -0x1

    if-ne v1, v2, :cond_7

    .line 2240
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-void

    .line 2226
    :cond_7
    :goto_4
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 2227
    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_7

    .line 2228
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2229
    invoke-virtual {p1, v2}, Landroidx/b/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-eqz v2, :cond_7

    .line 2233
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    .line 2234
    invoke-static {v4}, Landroidx/work/d;->a([B)Landroidx/work/d;

    move-result-object v4

    .line 2235
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    .line 2240
    :cond_8
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-void

    :catchall_0
    move-exception p1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2241
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

    .line 2113
    :goto_0
    invoke-virtual {p1}, Landroidx/b/a;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 2114
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 2118
    :cond_0
    invoke-virtual {p1}, Landroidx/b/a;->size()I

    move-result v1

    const/16 v2, 0x3e7

    const/4 v3, 0x0

    if-le v1, v2, :cond_4

    .line 2119
    new-instance v0, Landroidx/b/a;

    invoke-direct {v0, v2}, Landroidx/b/a;-><init>(I)V

    .line 2122
    invoke-virtual {p1}, Landroidx/b/a;->size()I

    move-result v1

    const/4 v4, 0x0

    :goto_1
    const/4 v5, 0x0

    :cond_1
    if-ge v4, v1, :cond_2

    .line 2124
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

    .line 2128
    invoke-direct {p0, v0}, Landroidx/work/impl/model/WorkSpecDao_Impl;->__fetchRelationshipWorkTagAsjavaLangString(Landroidx/b/a;)V

    .line 2129
    new-instance v0, Landroidx/b/a;

    invoke-direct {v0, v2}, Landroidx/b/a;-><init>(I)V

    goto :goto_1

    :cond_2
    if-lez v5, :cond_3

    move-object p1, v0

    goto :goto_0

    :cond_3
    return-void

    .line 2138
    :cond_4
    invoke-static {}, Landroidx/room/b/e;->a()Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "SELECT `tag`,`work_spec_id` FROM `WorkTag` WHERE `work_spec_id` IN ("

    .line 2139
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2140
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    .line 2141
    invoke-static {v1, v2}, Landroidx/room/b/e;->a(Ljava/lang/StringBuilder;I)V

    const-string v4, ")"

    .line 2142
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2143
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/2addr v2, v3

    .line 2145
    invoke-static {v1, v2}, Landroidx/room/k;->a(Ljava/lang/String;I)Landroidx/room/k;

    move-result-object v1

    .line 2147
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

    .line 22234
    iget-object v5, v1, Landroidx/room/k;->e:[I

    aput v2, v5, v4

    goto :goto_3

    .line 2151
    :cond_5
    invoke-virtual {v1, v4, v5}, Landroidx/room/k;->a(ILjava/lang/String;)V

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 2155
    :cond_6
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/h;

    invoke-static {v0, v1, v3}, Landroidx/room/b/c;->a(Landroidx/room/h;Landroidx/sqlite/db/d;Z)Landroid/database/Cursor;

    move-result-object v0

    :try_start_0
    const-string v1, "work_spec_id"

    .line 2157
    invoke-static {v0, v1}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, -0x1

    if-ne v1, v2, :cond_7

    .line 2173
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-void

    .line 2161
    :cond_7
    :goto_4
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 2162
    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_7

    .line 2163
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2164
    invoke-virtual {p1, v2}, Landroidx/b/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-eqz v2, :cond_7

    .line 2167
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2168
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    .line 2173
    :cond_8
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-void

    :catchall_0
    move-exception p1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2174
    throw p1
.end method

.method static synthetic access$000(Landroidx/work/impl/model/WorkSpecDao_Impl;)Landroidx/room/h;
    .locals 0

    .line 31
    iget-object p0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/h;

    return-object p0
.end method

.method static synthetic access$100(Landroidx/work/impl/model/WorkSpecDao_Impl;Landroidx/b/a;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Landroidx/work/impl/model/WorkSpecDao_Impl;->__fetchRelationshipWorkTagAsjavaLangString(Landroidx/b/a;)V

    return-void
.end method

.method static synthetic access$200(Landroidx/work/impl/model/WorkSpecDao_Impl;Landroidx/b/a;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Landroidx/work/impl/model/WorkSpecDao_Impl;->__fetchRelationshipWorkProgressAsandroidxWorkData(Landroidx/b/a;)V

    return-void
.end method


# virtual methods
.method public final delete(Ljava/lang/String;)V
    .locals 2

    .line 218
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/h;

    invoke-virtual {v0}, Landroidx/room/h;->d()V

    .line 219
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfDelete:Landroidx/room/o;

    invoke-virtual {v0}, Landroidx/room/o;->acquire()Landroidx/sqlite/db/e;

    move-result-object v0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 222
    invoke-interface {v0, v1}, Landroidx/sqlite/db/e;->a(I)V

    goto :goto_0

    .line 224
    :cond_0
    invoke-interface {v0, v1, p1}, Landroidx/sqlite/db/e;->a(ILjava/lang/String;)V

    .line 226
    :goto_0
    iget-object p1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/h;

    invoke-virtual {p1}, Landroidx/room/h;->e()V

    .line 228
    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/e;->a()I

    .line 229
    iget-object p1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/h;

    invoke-virtual {p1}, Landroidx/room/h;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    iget-object p1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/h;

    invoke-virtual {p1}, Landroidx/room/h;->f()V

    .line 232
    iget-object p1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfDelete:Landroidx/room/o;

    invoke-virtual {p1, v0}, Landroidx/room/o;->release(Landroidx/sqlite/db/e;)V

    return-void

    :catchall_0
    move-exception p1

    .line 231
    iget-object v1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/h;

    invoke-virtual {v1}, Landroidx/room/h;->f()V

    .line 232
    iget-object v1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfDelete:Landroidx/room/o;

    invoke-virtual {v1, v0}, Landroidx/room/o;->release(Landroidx/sqlite/db/e;)V

    .line 233
    throw p1
.end method

.method public final getAllEligibleWorkSpecsForScheduling(I)Ljava/util/List;
    .locals 33
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroidx/work/impl/model/WorkSpec;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v0, "SELECT `required_network_type`, `requires_charging`, `requires_device_idle`, `requires_battery_not_low`, `requires_storage_not_low`, `trigger_content_update_delay`, `trigger_max_content_delay`, `content_uri_triggers`, `WorkSpec`.`id` AS `id`, `WorkSpec`.`state` AS `state`, `WorkSpec`.`worker_class_name` AS `worker_class_name`, `WorkSpec`.`input_merger_class_name` AS `input_merger_class_name`, `WorkSpec`.`input` AS `input`, `WorkSpec`.`output` AS `output`, `WorkSpec`.`initial_delay` AS `initial_delay`, `WorkSpec`.`interval_duration` AS `interval_duration`, `WorkSpec`.`flex_duration` AS `flex_duration`, `WorkSpec`.`run_attempt_count` AS `run_attempt_count`, `WorkSpec`.`backoff_policy` AS `backoff_policy`, `WorkSpec`.`backoff_delay_duration` AS `backoff_delay_duration`, `WorkSpec`.`period_start_time` AS `period_start_time`, `WorkSpec`.`minimum_retention_duration` AS `minimum_retention_duration`, `WorkSpec`.`schedule_requested_at` AS `schedule_requested_at`, `WorkSpec`.`run_in_foreground` AS `run_in_foreground` FROM workspec WHERE state=0 ORDER BY period_start_time LIMIT ?"

    const/4 v2, 0x1

    .line 1632
    invoke-static {v0, v2}, Landroidx/room/k;->a(Ljava/lang/String;I)Landroidx/room/k;

    move-result-object v3

    move/from16 v0, p1

    int-to-long v4, v0

    .line 1634
    invoke-virtual {v3, v2, v4, v5}, Landroidx/room/k;->a(IJ)V

    .line 1635
    iget-object v0, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/h;

    invoke-virtual {v0}, Landroidx/room/h;->d()V

    .line 1636
    iget-object v0, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/h;

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Landroidx/room/b/c;->a(Landroidx/room/h;Landroidx/sqlite/db/d;Z)Landroid/database/Cursor;

    move-result-object v5

    :try_start_0
    const-string v0, "required_network_type"

    .line 1638
    invoke-static {v5, v0}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v6, "requires_charging"

    .line 1639
    invoke-static {v5, v6}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "requires_device_idle"

    .line 1640
    invoke-static {v5, v7}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "requires_battery_not_low"

    .line 1641
    invoke-static {v5, v8}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "requires_storage_not_low"

    .line 1642
    invoke-static {v5, v9}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "trigger_content_update_delay"

    .line 1643
    invoke-static {v5, v10}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "trigger_max_content_delay"

    .line 1644
    invoke-static {v5, v11}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "content_uri_triggers"

    .line 1645
    invoke-static {v5, v12}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "id"

    .line 1646
    invoke-static {v5, v13}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "state"

    .line 1647
    invoke-static {v5, v14}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "worker_class_name"

    .line 1648
    invoke-static {v5, v15}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v2, "input_merger_class_name"

    .line 1649
    invoke-static {v5, v2}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v4, "input"

    .line 1650
    invoke-static {v5, v4}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v1, "output"

    .line 1651
    invoke-static {v5, v1}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v3

    :try_start_1
    const-string v3, "initial_delay"

    .line 1652
    invoke-static {v5, v3}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v17, v3

    const-string v3, "interval_duration"

    .line 1653
    invoke-static {v5, v3}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v18, v3

    const-string v3, "flex_duration"

    .line 1654
    invoke-static {v5, v3}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v19, v3

    const-string v3, "run_attempt_count"

    .line 1655
    invoke-static {v5, v3}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v20, v3

    const-string v3, "backoff_policy"

    .line 1656
    invoke-static {v5, v3}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v21, v3

    const-string v3, "backoff_delay_duration"

    .line 1657
    invoke-static {v5, v3}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v22, v3

    const-string v3, "period_start_time"

    .line 1658
    invoke-static {v5, v3}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v23, v3

    const-string v3, "minimum_retention_duration"

    .line 1659
    invoke-static {v5, v3}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v24, v3

    const-string v3, "schedule_requested_at"

    .line 1660
    invoke-static {v5, v3}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v25, v3

    const-string v3, "run_in_foreground"

    .line 1661
    invoke-static {v5, v3}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v26, v3

    .line 1662
    new-instance v3, Ljava/util/ArrayList;

    move/from16 v27, v1

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1663
    :goto_0
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1666
    invoke-interface {v5, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move/from16 v28, v13

    .line 1668
    invoke-interface {v5, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    move/from16 v29, v15

    .line 1670
    new-instance v15, Landroidx/work/b;

    invoke-direct {v15}, Landroidx/work/b;-><init>()V

    .line 1673
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v30

    move/from16 v31, v0

    .line 1674
    invoke-static/range {v30 .. v30}, Landroidx/work/impl/model/WorkTypeConverters;->intToNetworkType(I)Landroidx/work/l;

    move-result-object v0

    .line 19114
    iput-object v0, v15, Landroidx/work/b;->b:Landroidx/work/l;

    .line 1678
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 19130
    :goto_1
    iput-boolean v0, v15, Landroidx/work/b;->c:Z

    .line 1683
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    .line 19148
    :goto_2
    iput-boolean v0, v15, Landroidx/work/b;->d:Z

    .line 1688
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_3

    :cond_2
    const/4 v0, 0x0

    .line 19164
    :goto_3
    iput-boolean v0, v15, Landroidx/work/b;->e:Z

    .line 1693
    invoke-interface {v5, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_4

    :cond_3
    const/4 v0, 0x0

    .line 19180
    :goto_4
    iput-boolean v0, v15, Landroidx/work/b;->f:Z

    move v0, v6

    move/from16 v30, v7

    .line 1697
    invoke-interface {v5, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 19198
    iput-wide v6, v15, Landroidx/work/b;->g:J

    .line 1700
    invoke-interface {v5, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 19216
    iput-wide v6, v15, Landroidx/work/b;->h:J

    .line 1704
    invoke-interface {v5, v12}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    .line 1705
    invoke-static {v6}, Landroidx/work/impl/model/WorkTypeConverters;->byteArrayToContentUriTriggers([B)Landroidx/work/c;

    move-result-object v6

    .line 19226
    iput-object v6, v15, Landroidx/work/b;->i:Landroidx/work/c;

    .line 1707
    new-instance v6, Landroidx/work/impl/model/WorkSpec;

    invoke-direct {v6, v1, v13}, Landroidx/work/impl/model/WorkSpec;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1709
    invoke-interface {v5, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 1710
    invoke-static {v1}, Landroidx/work/impl/model/WorkTypeConverters;->intToState(I)Landroidx/work/t$a;

    move-result-object v1

    iput-object v1, v6, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/t$a;

    .line 1711
    invoke-interface {v5, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Landroidx/work/impl/model/WorkSpec;->inputMergerClassName:Ljava/lang/String;

    .line 1713
    invoke-interface {v5, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    .line 1714
    invoke-static {v1}, Landroidx/work/d;->a([B)Landroidx/work/d;

    move-result-object v1

    iput-object v1, v6, Landroidx/work/impl/model/WorkSpec;->input:Landroidx/work/d;

    move/from16 v1, v27

    .line 1716
    invoke-interface {v5, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v7

    .line 1717
    invoke-static {v7}, Landroidx/work/d;->a([B)Landroidx/work/d;

    move-result-object v7

    iput-object v7, v6, Landroidx/work/impl/model/WorkSpec;->output:Landroidx/work/d;

    move v13, v0

    move/from16 v27, v1

    move/from16 v7, v17

    .line 1718
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v6, Landroidx/work/impl/model/WorkSpec;->initialDelay:J

    move/from16 v17, v2

    move/from16 v0, v18

    .line 1719
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v6, Landroidx/work/impl/model/WorkSpec;->intervalDuration:J

    move/from16 v18, v7

    move v2, v8

    move/from16 v1, v19

    .line 1720
    invoke-interface {v5, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iput-wide v7, v6, Landroidx/work/impl/model/WorkSpec;->flexDuration:J

    move/from16 v7, v20

    .line 1721
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    iput v8, v6, Landroidx/work/impl/model/WorkSpec;->runAttemptCount:I

    move/from16 v8, v21

    .line 1723
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    move/from16 v20, v0

    .line 1724
    invoke-static/range {v19 .. v19}, Landroidx/work/impl/model/WorkTypeConverters;->intToBackoffPolicy(I)Landroidx/work/a;

    move-result-object v0

    iput-object v0, v6, Landroidx/work/impl/model/WorkSpec;->backoffPolicy:Landroidx/work/a;

    move/from16 v19, v1

    move/from16 v21, v2

    move/from16 v0, v22

    .line 1725
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v6, Landroidx/work/impl/model/WorkSpec;->backoffDelayDuration:J

    move v2, v7

    move/from16 v22, v8

    move/from16 v1, v23

    .line 1726
    invoke-interface {v5, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iput-wide v7, v6, Landroidx/work/impl/model/WorkSpec;->periodStartTime:J

    move v8, v0

    move/from16 v23, v1

    move/from16 v7, v24

    .line 1727
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v6, Landroidx/work/impl/model/WorkSpec;->minimumRetentionDuration:J

    move/from16 v24, v2

    move/from16 v0, v25

    .line 1728
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v6, Landroidx/work/impl/model/WorkSpec;->scheduleRequestedAt:J

    move/from16 v1, v26

    .line 1730
    invoke-interface {v5, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    goto :goto_5

    :cond_4
    const/4 v2, 0x0

    .line 1731
    :goto_5
    iput-boolean v2, v6, Landroidx/work/impl/model/WorkSpec;->runInForeground:Z

    .line 1732
    iput-object v15, v6, Landroidx/work/impl/model/WorkSpec;->constraints:Landroidx/work/b;

    .line 1733
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v25, v0

    move/from16 v26, v1

    move v6, v13

    move/from16 v2, v17

    move/from16 v17, v18

    move/from16 v18, v20

    move/from16 v20, v24

    move/from16 v13, v28

    move/from16 v15, v29

    move/from16 v0, v31

    move/from16 v24, v7

    move/from16 v7, v30

    move/from16 v32, v22

    move/from16 v22, v8

    move/from16 v8, v21

    move/from16 v21, v32

    goto/16 :goto_0

    .line 1737
    :cond_5
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 1738
    invoke-virtual/range {v16 .. v16}, Landroidx/room/k;->a()V

    return-object v3

    :catchall_0
    move-exception v0

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object/from16 v16, v3

    .line 1737
    :goto_6
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 1738
    invoke-virtual/range {v16 .. v16}, Landroidx/room/k;->a()V

    .line 1739
    throw v0
.end method

.method public final getAllUnfinishedWork()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "SELECT id FROM workspec WHERE state NOT IN (2, 3, 5)"

    const/4 v1, 0x0

    .line 1461
    invoke-static {v0, v1}, Landroidx/room/k;->a(Ljava/lang/String;I)Landroidx/room/k;

    move-result-object v0

    .line 1462
    iget-object v2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/h;

    invoke-virtual {v2}, Landroidx/room/h;->d()V

    .line 1463
    iget-object v2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/h;

    invoke-static {v2, v0, v1}, Landroidx/room/b/c;->a(Landroidx/room/h;Landroidx/sqlite/db/d;Z)Landroid/database/Cursor;

    move-result-object v2

    .line 1465
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1466
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1468
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1469
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1473
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1474
    invoke-virtual {v0}, Landroidx/room/k;->a()V

    return-object v3

    :catchall_0
    move-exception v1

    .line 1473
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1474
    invoke-virtual {v0}, Landroidx/room/k;->a()V

    .line 1475
    throw v1
.end method

.method public final getAllWorkSpecIds()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "SELECT id FROM workspec"

    const/4 v1, 0x0

    .line 662
    invoke-static {v0, v1}, Landroidx/room/k;->a(Ljava/lang/String;I)Landroidx/room/k;

    move-result-object v0

    .line 663
    iget-object v2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/h;

    invoke-virtual {v2}, Landroidx/room/h;->d()V

    .line 664
    iget-object v2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/h;

    invoke-static {v2, v0, v1}, Landroidx/room/b/c;->a(Landroidx/room/h;Landroidx/sqlite/db/d;Z)Landroid/database/Cursor;

    move-result-object v2

    .line 666
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 667
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 669
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 670
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 674
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 675
    invoke-virtual {v0}, Landroidx/room/k;->a()V

    return-object v3

    :catchall_0
    move-exception v1

    .line 674
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 675
    invoke-virtual {v0}, Landroidx/room/k;->a()V

    .line 676
    throw v1
.end method

.method public final getAllWorkSpecIdsLiveData()Landroidx/lifecycle/LiveData;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const-string v0, "SELECT id FROM workspec"

    const/4 v1, 0x0

    .line 682
    invoke-static {v0, v1}, Landroidx/room/k;->a(Ljava/lang/String;I)Landroidx/room/k;

    move-result-object v0

    .line 683
    iget-object v1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/h;

    .line 5465
    iget-object v1, v1, Landroidx/room/h;->e:Landroidx/room/e;

    const-string v2, "workspec"

    .line 683
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroidx/work/impl/model/WorkSpecDao_Impl$10;

    invoke-direct {v3, p0, v0}, Landroidx/work/impl/model/WorkSpecDao_Impl$10;-><init>(Landroidx/work/impl/model/WorkSpecDao_Impl;Landroidx/room/k;)V

    const/4 v0, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroidx/room/e;->a([Ljava/lang/String;ZLjava/util/concurrent/Callable;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    return-object v0
.end method

.method public final getEligibleWorkForScheduling(I)Ljava/util/List;
    .locals 33
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroidx/work/impl/model/WorkSpec;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v0, "SELECT `required_network_type`, `requires_charging`, `requires_device_idle`, `requires_battery_not_low`, `requires_storage_not_low`, `trigger_content_update_delay`, `trigger_max_content_delay`, `content_uri_triggers`, `WorkSpec`.`id` AS `id`, `WorkSpec`.`state` AS `state`, `WorkSpec`.`worker_class_name` AS `worker_class_name`, `WorkSpec`.`input_merger_class_name` AS `input_merger_class_name`, `WorkSpec`.`input` AS `input`, `WorkSpec`.`output` AS `output`, `WorkSpec`.`initial_delay` AS `initial_delay`, `WorkSpec`.`interval_duration` AS `interval_duration`, `WorkSpec`.`flex_duration` AS `flex_duration`, `WorkSpec`.`run_attempt_count` AS `run_attempt_count`, `WorkSpec`.`backoff_policy` AS `backoff_policy`, `WorkSpec`.`backoff_delay_duration` AS `backoff_delay_duration`, `WorkSpec`.`period_start_time` AS `period_start_time`, `WorkSpec`.`minimum_retention_duration` AS `minimum_retention_duration`, `WorkSpec`.`schedule_requested_at` AS `schedule_requested_at`, `WorkSpec`.`run_in_foreground` AS `run_in_foreground` FROM workspec WHERE state=0 AND schedule_requested_at=-1 ORDER BY period_start_time LIMIT (SELECT MAX(?-COUNT(*), 0) FROM workspec WHERE schedule_requested_at<>-1 AND state NOT IN (2, 3, 5))"

    const/4 v2, 0x1

    .line 1519
    invoke-static {v0, v2}, Landroidx/room/k;->a(Ljava/lang/String;I)Landroidx/room/k;

    move-result-object v3

    move/from16 v0, p1

    int-to-long v4, v0

    .line 1521
    invoke-virtual {v3, v2, v4, v5}, Landroidx/room/k;->a(IJ)V

    .line 1522
    iget-object v0, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/h;

    invoke-virtual {v0}, Landroidx/room/h;->d()V

    .line 1523
    iget-object v0, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/h;

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Landroidx/room/b/c;->a(Landroidx/room/h;Landroidx/sqlite/db/d;Z)Landroid/database/Cursor;

    move-result-object v5

    :try_start_0
    const-string v0, "required_network_type"

    .line 1525
    invoke-static {v5, v0}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v6, "requires_charging"

    .line 1526
    invoke-static {v5, v6}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "requires_device_idle"

    .line 1527
    invoke-static {v5, v7}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "requires_battery_not_low"

    .line 1528
    invoke-static {v5, v8}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "requires_storage_not_low"

    .line 1529
    invoke-static {v5, v9}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "trigger_content_update_delay"

    .line 1530
    invoke-static {v5, v10}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "trigger_max_content_delay"

    .line 1531
    invoke-static {v5, v11}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "content_uri_triggers"

    .line 1532
    invoke-static {v5, v12}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "id"

    .line 1533
    invoke-static {v5, v13}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "state"

    .line 1534
    invoke-static {v5, v14}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "worker_class_name"

    .line 1535
    invoke-static {v5, v15}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v2, "input_merger_class_name"

    .line 1536
    invoke-static {v5, v2}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v4, "input"

    .line 1537
    invoke-static {v5, v4}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v1, "output"

    .line 1538
    invoke-static {v5, v1}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v3

    :try_start_1
    const-string v3, "initial_delay"

    .line 1539
    invoke-static {v5, v3}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v17, v3

    const-string v3, "interval_duration"

    .line 1540
    invoke-static {v5, v3}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v18, v3

    const-string v3, "flex_duration"

    .line 1541
    invoke-static {v5, v3}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v19, v3

    const-string v3, "run_attempt_count"

    .line 1542
    invoke-static {v5, v3}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v20, v3

    const-string v3, "backoff_policy"

    .line 1543
    invoke-static {v5, v3}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v21, v3

    const-string v3, "backoff_delay_duration"

    .line 1544
    invoke-static {v5, v3}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v22, v3

    const-string v3, "period_start_time"

    .line 1545
    invoke-static {v5, v3}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v23, v3

    const-string v3, "minimum_retention_duration"

    .line 1546
    invoke-static {v5, v3}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v24, v3

    const-string v3, "schedule_requested_at"

    .line 1547
    invoke-static {v5, v3}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v25, v3

    const-string v3, "run_in_foreground"

    .line 1548
    invoke-static {v5, v3}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v26, v3

    .line 1549
    new-instance v3, Ljava/util/ArrayList;

    move/from16 v27, v1

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1550
    :goto_0
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1553
    invoke-interface {v5, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move/from16 v28, v13

    .line 1555
    invoke-interface {v5, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    move/from16 v29, v15

    .line 1557
    new-instance v15, Landroidx/work/b;

    invoke-direct {v15}, Landroidx/work/b;-><init>()V

    .line 1560
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v30

    move/from16 v31, v0

    .line 1561
    invoke-static/range {v30 .. v30}, Landroidx/work/impl/model/WorkTypeConverters;->intToNetworkType(I)Landroidx/work/l;

    move-result-object v0

    .line 18114
    iput-object v0, v15, Landroidx/work/b;->b:Landroidx/work/l;

    .line 1565
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 18130
    :goto_1
    iput-boolean v0, v15, Landroidx/work/b;->c:Z

    .line 1570
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    .line 18148
    :goto_2
    iput-boolean v0, v15, Landroidx/work/b;->d:Z

    .line 1575
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_3

    :cond_2
    const/4 v0, 0x0

    .line 18164
    :goto_3
    iput-boolean v0, v15, Landroidx/work/b;->e:Z

    .line 1580
    invoke-interface {v5, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_4

    :cond_3
    const/4 v0, 0x0

    .line 18180
    :goto_4
    iput-boolean v0, v15, Landroidx/work/b;->f:Z

    move v0, v6

    move/from16 v30, v7

    .line 1584
    invoke-interface {v5, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 18198
    iput-wide v6, v15, Landroidx/work/b;->g:J

    .line 1587
    invoke-interface {v5, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 18216
    iput-wide v6, v15, Landroidx/work/b;->h:J

    .line 1591
    invoke-interface {v5, v12}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    .line 1592
    invoke-static {v6}, Landroidx/work/impl/model/WorkTypeConverters;->byteArrayToContentUriTriggers([B)Landroidx/work/c;

    move-result-object v6

    .line 18226
    iput-object v6, v15, Landroidx/work/b;->i:Landroidx/work/c;

    .line 1594
    new-instance v6, Landroidx/work/impl/model/WorkSpec;

    invoke-direct {v6, v1, v13}, Landroidx/work/impl/model/WorkSpec;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1596
    invoke-interface {v5, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 1597
    invoke-static {v1}, Landroidx/work/impl/model/WorkTypeConverters;->intToState(I)Landroidx/work/t$a;

    move-result-object v1

    iput-object v1, v6, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/t$a;

    .line 1598
    invoke-interface {v5, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Landroidx/work/impl/model/WorkSpec;->inputMergerClassName:Ljava/lang/String;

    .line 1600
    invoke-interface {v5, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    .line 1601
    invoke-static {v1}, Landroidx/work/d;->a([B)Landroidx/work/d;

    move-result-object v1

    iput-object v1, v6, Landroidx/work/impl/model/WorkSpec;->input:Landroidx/work/d;

    move/from16 v1, v27

    .line 1603
    invoke-interface {v5, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v7

    .line 1604
    invoke-static {v7}, Landroidx/work/d;->a([B)Landroidx/work/d;

    move-result-object v7

    iput-object v7, v6, Landroidx/work/impl/model/WorkSpec;->output:Landroidx/work/d;

    move v13, v0

    move/from16 v27, v1

    move/from16 v7, v17

    .line 1605
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v6, Landroidx/work/impl/model/WorkSpec;->initialDelay:J

    move/from16 v17, v2

    move/from16 v0, v18

    .line 1606
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v6, Landroidx/work/impl/model/WorkSpec;->intervalDuration:J

    move/from16 v18, v7

    move v2, v8

    move/from16 v1, v19

    .line 1607
    invoke-interface {v5, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iput-wide v7, v6, Landroidx/work/impl/model/WorkSpec;->flexDuration:J

    move/from16 v7, v20

    .line 1608
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    iput v8, v6, Landroidx/work/impl/model/WorkSpec;->runAttemptCount:I

    move/from16 v8, v21

    .line 1610
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    move/from16 v20, v0

    .line 1611
    invoke-static/range {v19 .. v19}, Landroidx/work/impl/model/WorkTypeConverters;->intToBackoffPolicy(I)Landroidx/work/a;

    move-result-object v0

    iput-object v0, v6, Landroidx/work/impl/model/WorkSpec;->backoffPolicy:Landroidx/work/a;

    move/from16 v19, v1

    move/from16 v21, v2

    move/from16 v0, v22

    .line 1612
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v6, Landroidx/work/impl/model/WorkSpec;->backoffDelayDuration:J

    move v2, v7

    move/from16 v22, v8

    move/from16 v1, v23

    .line 1613
    invoke-interface {v5, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iput-wide v7, v6, Landroidx/work/impl/model/WorkSpec;->periodStartTime:J

    move v8, v0

    move/from16 v23, v1

    move/from16 v7, v24

    .line 1614
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v6, Landroidx/work/impl/model/WorkSpec;->minimumRetentionDuration:J

    move/from16 v24, v2

    move/from16 v0, v25

    .line 1615
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v6, Landroidx/work/impl/model/WorkSpec;->scheduleRequestedAt:J

    move/from16 v1, v26

    .line 1617
    invoke-interface {v5, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    goto :goto_5

    :cond_4
    const/4 v2, 0x0

    .line 1618
    :goto_5
    iput-boolean v2, v6, Landroidx/work/impl/model/WorkSpec;->runInForeground:Z

    .line 1619
    iput-object v15, v6, Landroidx/work/impl/model/WorkSpec;->constraints:Landroidx/work/b;

    .line 1620
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v25, v0

    move/from16 v26, v1

    move v6, v13

    move/from16 v2, v17

    move/from16 v17, v18

    move/from16 v18, v20

    move/from16 v20, v24

    move/from16 v13, v28

    move/from16 v15, v29

    move/from16 v0, v31

    move/from16 v24, v7

    move/from16 v7, v30

    move/from16 v32, v22

    move/from16 v22, v8

    move/from16 v8, v21

    move/from16 v21, v32

    goto/16 :goto_0

    .line 1624
    :cond_5
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 1625
    invoke-virtual/range {v16 .. v16}, Landroidx/room/k;->a()V

    return-object v3

    :catchall_0
    move-exception v0

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object/from16 v16, v3

    .line 1624
    :goto_6
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 1625
    invoke-virtual/range {v16 .. v16}, Landroidx/room/k;->a()V

    .line 1626
    throw v0
.end method

.method public final getInputsFromPrerequisites(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroidx/work/d;",
            ">;"
        }
    .end annotation

    const-string v0, "SELECT output FROM workspec WHERE id IN (SELECT prerequisite_id FROM dependency WHERE work_spec_id=?)"

    const/4 v1, 0x1

    .line 1381
    invoke-static {v0, v1}, Landroidx/room/k;->a(Ljava/lang/String;I)Landroidx/room/k;

    move-result-object v0

    if-nez p1, :cond_0

    .line 14234
    iget-object p1, v0, Landroidx/room/k;->e:[I

    aput v1, p1, v1

    goto :goto_0

    .line 1386
    :cond_0
    invoke-virtual {v0, v1, p1}, Landroidx/room/k;->a(ILjava/lang/String;)V

    .line 1388
    :goto_0
    iget-object p1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/h;

    invoke-virtual {p1}, Landroidx/room/h;->d()V

    .line 1389
    iget-object p1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/h;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroidx/room/b/c;->a(Landroidx/room/h;Landroidx/sqlite/db/d;Z)Landroid/database/Cursor;

    move-result-object p1

    .line 1391
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1392
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1395
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    .line 1396
    invoke-static {v3}, Landroidx/work/d;->a([B)Landroidx/work/d;

    move-result-object v3

    .line 1397
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1401
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 1402
    invoke-virtual {v0}, Landroidx/room/k;->a()V

    return-object v2

    :catchall_0
    move-exception v1

    .line 1401
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 1402
    invoke-virtual {v0}, Landroidx/room/k;->a()V

    .line 1403
    throw v1
.end method

.method public final getRecentlyCompletedWork(J)Ljava/util/List;
    .locals 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Landroidx/work/impl/model/WorkSpec;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v0, "SELECT `required_network_type`, `requires_charging`, `requires_device_idle`, `requires_battery_not_low`, `requires_storage_not_low`, `trigger_content_update_delay`, `trigger_max_content_delay`, `content_uri_triggers`, `WorkSpec`.`id` AS `id`, `WorkSpec`.`state` AS `state`, `WorkSpec`.`worker_class_name` AS `worker_class_name`, `WorkSpec`.`input_merger_class_name` AS `input_merger_class_name`, `WorkSpec`.`input` AS `input`, `WorkSpec`.`output` AS `output`, `WorkSpec`.`initial_delay` AS `initial_delay`, `WorkSpec`.`interval_duration` AS `interval_duration`, `WorkSpec`.`flex_duration` AS `flex_duration`, `WorkSpec`.`run_attempt_count` AS `run_attempt_count`, `WorkSpec`.`backoff_policy` AS `backoff_policy`, `WorkSpec`.`backoff_delay_duration` AS `backoff_delay_duration`, `WorkSpec`.`period_start_time` AS `period_start_time`, `WorkSpec`.`minimum_retention_duration` AS `minimum_retention_duration`, `WorkSpec`.`schedule_requested_at` AS `schedule_requested_at`, `WorkSpec`.`run_in_foreground` AS `run_in_foreground` FROM workspec WHERE period_start_time >= ? AND state IN (2, 3, 5) ORDER BY period_start_time DESC"

    const/4 v2, 0x1

    .line 1967
    invoke-static {v0, v2}, Landroidx/room/k;->a(Ljava/lang/String;I)Landroidx/room/k;

    move-result-object v3

    move-wide/from16 v4, p1

    .line 1969
    invoke-virtual {v3, v2, v4, v5}, Landroidx/room/k;->a(IJ)V

    .line 1970
    iget-object v0, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/h;

    invoke-virtual {v0}, Landroidx/room/h;->d()V

    .line 1971
    iget-object v0, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/h;

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Landroidx/room/b/c;->a(Landroidx/room/h;Landroidx/sqlite/db/d;Z)Landroid/database/Cursor;

    move-result-object v5

    :try_start_0
    const-string v0, "required_network_type"

    .line 1973
    invoke-static {v5, v0}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v6, "requires_charging"

    .line 1974
    invoke-static {v5, v6}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "requires_device_idle"

    .line 1975
    invoke-static {v5, v7}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "requires_battery_not_low"

    .line 1976
    invoke-static {v5, v8}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "requires_storage_not_low"

    .line 1977
    invoke-static {v5, v9}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "trigger_content_update_delay"

    .line 1978
    invoke-static {v5, v10}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "trigger_max_content_delay"

    .line 1979
    invoke-static {v5, v11}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "content_uri_triggers"

    .line 1980
    invoke-static {v5, v12}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "id"

    .line 1981
    invoke-static {v5, v13}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "state"

    .line 1982
    invoke-static {v5, v14}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "worker_class_name"

    .line 1983
    invoke-static {v5, v15}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v2, "input_merger_class_name"

    .line 1984
    invoke-static {v5, v2}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v4, "input"

    .line 1985
    invoke-static {v5, v4}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v1, "output"

    .line 1986
    invoke-static {v5, v1}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v3

    :try_start_1
    const-string v3, "initial_delay"

    .line 1987
    invoke-static {v5, v3}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 p2, v3

    const-string v3, "interval_duration"

    .line 1988
    invoke-static {v5, v3}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v17, v3

    const-string v3, "flex_duration"

    .line 1989
    invoke-static {v5, v3}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v18, v3

    const-string v3, "run_attempt_count"

    .line 1990
    invoke-static {v5, v3}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v19, v3

    const-string v3, "backoff_policy"

    .line 1991
    invoke-static {v5, v3}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v20, v3

    const-string v3, "backoff_delay_duration"

    .line 1992
    invoke-static {v5, v3}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v21, v3

    const-string v3, "period_start_time"

    .line 1993
    invoke-static {v5, v3}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v22, v3

    const-string v3, "minimum_retention_duration"

    .line 1994
    invoke-static {v5, v3}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v23, v3

    const-string v3, "schedule_requested_at"

    .line 1995
    invoke-static {v5, v3}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v24, v3

    const-string v3, "run_in_foreground"

    .line 1996
    invoke-static {v5, v3}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v25, v3

    .line 1997
    new-instance v3, Ljava/util/ArrayList;

    move/from16 v26, v1

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1998
    :goto_0
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2001
    invoke-interface {v5, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move/from16 v27, v13

    .line 2003
    invoke-interface {v5, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    move/from16 v28, v15

    .line 2005
    new-instance v15, Landroidx/work/b;

    invoke-direct {v15}, Landroidx/work/b;-><init>()V

    .line 2008
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    move/from16 v30, v0

    .line 2009
    invoke-static/range {v29 .. v29}, Landroidx/work/impl/model/WorkTypeConverters;->intToNetworkType(I)Landroidx/work/l;

    move-result-object v0

    .line 22114
    iput-object v0, v15, Landroidx/work/b;->b:Landroidx/work/l;

    .line 2013
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 22130
    :goto_1
    iput-boolean v0, v15, Landroidx/work/b;->c:Z

    .line 2018
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    .line 22148
    :goto_2
    iput-boolean v0, v15, Landroidx/work/b;->d:Z

    .line 2023
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_3

    :cond_2
    const/4 v0, 0x0

    .line 22164
    :goto_3
    iput-boolean v0, v15, Landroidx/work/b;->e:Z

    .line 2028
    invoke-interface {v5, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_4

    :cond_3
    const/4 v0, 0x0

    .line 22180
    :goto_4
    iput-boolean v0, v15, Landroidx/work/b;->f:Z

    move v0, v6

    move/from16 v29, v7

    .line 2032
    invoke-interface {v5, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 22198
    iput-wide v6, v15, Landroidx/work/b;->g:J

    .line 2035
    invoke-interface {v5, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 22216
    iput-wide v6, v15, Landroidx/work/b;->h:J

    .line 2039
    invoke-interface {v5, v12}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    .line 2040
    invoke-static {v6}, Landroidx/work/impl/model/WorkTypeConverters;->byteArrayToContentUriTriggers([B)Landroidx/work/c;

    move-result-object v6

    .line 22226
    iput-object v6, v15, Landroidx/work/b;->i:Landroidx/work/c;

    .line 2042
    new-instance v6, Landroidx/work/impl/model/WorkSpec;

    invoke-direct {v6, v1, v13}, Landroidx/work/impl/model/WorkSpec;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2044
    invoke-interface {v5, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 2045
    invoke-static {v1}, Landroidx/work/impl/model/WorkTypeConverters;->intToState(I)Landroidx/work/t$a;

    move-result-object v1

    iput-object v1, v6, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/t$a;

    .line 2046
    invoke-interface {v5, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Landroidx/work/impl/model/WorkSpec;->inputMergerClassName:Ljava/lang/String;

    .line 2048
    invoke-interface {v5, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    .line 2049
    invoke-static {v1}, Landroidx/work/d;->a([B)Landroidx/work/d;

    move-result-object v1

    iput-object v1, v6, Landroidx/work/impl/model/WorkSpec;->input:Landroidx/work/d;

    move/from16 v1, v26

    .line 2051
    invoke-interface {v5, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v7

    .line 2052
    invoke-static {v7}, Landroidx/work/d;->a([B)Landroidx/work/d;

    move-result-object v7

    iput-object v7, v6, Landroidx/work/impl/model/WorkSpec;->output:Landroidx/work/d;

    move/from16 v7, p2

    move/from16 p2, v0

    move/from16 v26, v1

    .line 2053
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v6, Landroidx/work/impl/model/WorkSpec;->initialDelay:J

    move v13, v2

    move/from16 v0, v17

    .line 2054
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v6, Landroidx/work/impl/model/WorkSpec;->intervalDuration:J

    move/from16 v17, v7

    move v2, v8

    move/from16 v1, v18

    .line 2055
    invoke-interface {v5, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iput-wide v7, v6, Landroidx/work/impl/model/WorkSpec;->flexDuration:J

    move/from16 v7, v19

    .line 2056
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    iput v8, v6, Landroidx/work/impl/model/WorkSpec;->runAttemptCount:I

    move/from16 v8, v20

    .line 2058
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    move/from16 v19, v0

    .line 2059
    invoke-static/range {v18 .. v18}, Landroidx/work/impl/model/WorkTypeConverters;->intToBackoffPolicy(I)Landroidx/work/a;

    move-result-object v0

    iput-object v0, v6, Landroidx/work/impl/model/WorkSpec;->backoffPolicy:Landroidx/work/a;

    move/from16 v18, v1

    move/from16 v20, v2

    move/from16 v0, v21

    .line 2060
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v6, Landroidx/work/impl/model/WorkSpec;->backoffDelayDuration:J

    move v2, v7

    move/from16 v21, v8

    move/from16 v1, v22

    .line 2061
    invoke-interface {v5, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iput-wide v7, v6, Landroidx/work/impl/model/WorkSpec;->periodStartTime:J

    move v8, v0

    move/from16 v22, v1

    move/from16 v7, v23

    .line 2062
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v6, Landroidx/work/impl/model/WorkSpec;->minimumRetentionDuration:J

    move/from16 v23, v2

    move/from16 v0, v24

    .line 2063
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v6, Landroidx/work/impl/model/WorkSpec;->scheduleRequestedAt:J

    move/from16 v1, v25

    .line 2065
    invoke-interface {v5, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    goto :goto_5

    :cond_4
    const/4 v2, 0x0

    .line 2066
    :goto_5
    iput-boolean v2, v6, Landroidx/work/impl/model/WorkSpec;->runInForeground:Z

    .line 2067
    iput-object v15, v6, Landroidx/work/impl/model/WorkSpec;->constraints:Landroidx/work/b;

    .line 2068
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v6, p2

    move/from16 v24, v0

    move/from16 v25, v1

    move v2, v13

    move/from16 p2, v17

    move/from16 v17, v19

    move/from16 v19, v23

    move/from16 v13, v27

    move/from16 v15, v28

    move/from16 v0, v30

    move/from16 v23, v7

    move/from16 v7, v29

    move/from16 v31, v21

    move/from16 v21, v8

    move/from16 v8, v20

    move/from16 v20, v31

    goto/16 :goto_0

    .line 2072
    :cond_5
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 2073
    invoke-virtual/range {v16 .. v16}, Landroidx/room/k;->a()V

    return-object v3

    :catchall_0
    move-exception v0

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object/from16 v16, v3

    .line 2072
    :goto_6
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 2073
    invoke-virtual/range {v16 .. v16}, Landroidx/room/k;->a()V

    .line 2074
    throw v0
.end method

.method public final getRunningWork()Ljava/util/List;
    .locals 34
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/work/impl/model/WorkSpec;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v0, "SELECT `required_network_type`, `requires_charging`, `requires_device_idle`, `requires_battery_not_low`, `requires_storage_not_low`, `trigger_content_update_delay`, `trigger_max_content_delay`, `content_uri_triggers`, `WorkSpec`.`id` AS `id`, `WorkSpec`.`state` AS `state`, `WorkSpec`.`worker_class_name` AS `worker_class_name`, `WorkSpec`.`input_merger_class_name` AS `input_merger_class_name`, `WorkSpec`.`input` AS `input`, `WorkSpec`.`output` AS `output`, `WorkSpec`.`initial_delay` AS `initial_delay`, `WorkSpec`.`interval_duration` AS `interval_duration`, `WorkSpec`.`flex_duration` AS `flex_duration`, `WorkSpec`.`run_attempt_count` AS `run_attempt_count`, `WorkSpec`.`backoff_policy` AS `backoff_policy`, `WorkSpec`.`backoff_delay_duration` AS `backoff_delay_duration`, `WorkSpec`.`period_start_time` AS `period_start_time`, `WorkSpec`.`minimum_retention_duration` AS `minimum_retention_duration`, `WorkSpec`.`schedule_requested_at` AS `schedule_requested_at`, `WorkSpec`.`run_in_foreground` AS `run_in_foreground` FROM workspec WHERE state=1"

    const/4 v2, 0x0

    .line 1856
    invoke-static {v0, v2}, Landroidx/room/k;->a(Ljava/lang/String;I)Landroidx/room/k;

    move-result-object v3

    .line 1857
    iget-object v0, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/h;

    invoke-virtual {v0}, Landroidx/room/h;->d()V

    .line 1858
    iget-object v0, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/h;

    invoke-static {v0, v3, v2}, Landroidx/room/b/c;->a(Landroidx/room/h;Landroidx/sqlite/db/d;Z)Landroid/database/Cursor;

    move-result-object v4

    :try_start_0
    const-string v0, "required_network_type"

    .line 1860
    invoke-static {v4, v0}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v5, "requires_charging"

    .line 1861
    invoke-static {v4, v5}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "requires_device_idle"

    .line 1862
    invoke-static {v4, v6}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "requires_battery_not_low"

    .line 1863
    invoke-static {v4, v7}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "requires_storage_not_low"

    .line 1864
    invoke-static {v4, v8}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "trigger_content_update_delay"

    .line 1865
    invoke-static {v4, v9}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "trigger_max_content_delay"

    .line 1866
    invoke-static {v4, v10}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "content_uri_triggers"

    .line 1867
    invoke-static {v4, v11}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "id"

    .line 1868
    invoke-static {v4, v12}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "state"

    .line 1869
    invoke-static {v4, v13}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "worker_class_name"

    .line 1870
    invoke-static {v4, v14}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "input_merger_class_name"

    .line 1871
    invoke-static {v4, v15}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v2, "input"

    .line 1872
    invoke-static {v4, v2}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v1, "output"

    .line 1873
    invoke-static {v4, v1}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v3

    :try_start_1
    const-string v3, "initial_delay"

    .line 1874
    invoke-static {v4, v3}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v17, v3

    const-string v3, "interval_duration"

    .line 1875
    invoke-static {v4, v3}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v18, v3

    const-string v3, "flex_duration"

    .line 1876
    invoke-static {v4, v3}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v19, v3

    const-string v3, "run_attempt_count"

    .line 1877
    invoke-static {v4, v3}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v20, v3

    const-string v3, "backoff_policy"

    .line 1878
    invoke-static {v4, v3}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v21, v3

    const-string v3, "backoff_delay_duration"

    .line 1879
    invoke-static {v4, v3}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v22, v3

    const-string v3, "period_start_time"

    .line 1880
    invoke-static {v4, v3}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v23, v3

    const-string v3, "minimum_retention_duration"

    .line 1881
    invoke-static {v4, v3}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v24, v3

    const-string v3, "schedule_requested_at"

    .line 1882
    invoke-static {v4, v3}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v25, v3

    const-string v3, "run_in_foreground"

    .line 1883
    invoke-static {v4, v3}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v26, v3

    .line 1884
    new-instance v3, Ljava/util/ArrayList;

    move/from16 v27, v1

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1885
    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1888
    invoke-interface {v4, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move/from16 v28, v12

    .line 1890
    invoke-interface {v4, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    move/from16 v29, v14

    .line 1892
    new-instance v14, Landroidx/work/b;

    invoke-direct {v14}, Landroidx/work/b;-><init>()V

    .line 1895
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v30

    move/from16 v31, v0

    .line 1896
    invoke-static/range {v30 .. v30}, Landroidx/work/impl/model/WorkTypeConverters;->intToNetworkType(I)Landroidx/work/l;

    move-result-object v0

    .line 21114
    iput-object v0, v14, Landroidx/work/b;->b:Landroidx/work/l;

    .line 1900
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/16 v30, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 21130
    :goto_1
    iput-boolean v0, v14, Landroidx/work/b;->c:Z

    .line 1905
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    .line 21148
    :goto_2
    iput-boolean v0, v14, Landroidx/work/b;->d:Z

    .line 1910
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_3

    :cond_2
    const/4 v0, 0x0

    .line 21164
    :goto_3
    iput-boolean v0, v14, Landroidx/work/b;->e:Z

    .line 1915
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_4

    :cond_3
    const/4 v0, 0x0

    .line 21180
    :goto_4
    iput-boolean v0, v14, Landroidx/work/b;->f:Z

    move v0, v5

    move/from16 v32, v6

    .line 1919
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 21198
    iput-wide v5, v14, Landroidx/work/b;->g:J

    .line 1922
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 21216
    iput-wide v5, v14, Landroidx/work/b;->h:J

    .line 1926
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v5

    .line 1927
    invoke-static {v5}, Landroidx/work/impl/model/WorkTypeConverters;->byteArrayToContentUriTriggers([B)Landroidx/work/c;

    move-result-object v5

    .line 21226
    iput-object v5, v14, Landroidx/work/b;->i:Landroidx/work/c;

    .line 1929
    new-instance v5, Landroidx/work/impl/model/WorkSpec;

    invoke-direct {v5, v1, v12}, Landroidx/work/impl/model/WorkSpec;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1931
    invoke-interface {v4, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 1932
    invoke-static {v1}, Landroidx/work/impl/model/WorkTypeConverters;->intToState(I)Landroidx/work/t$a;

    move-result-object v1

    iput-object v1, v5, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/t$a;

    .line 1933
    invoke-interface {v4, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v5, Landroidx/work/impl/model/WorkSpec;->inputMergerClassName:Ljava/lang/String;

    .line 1935
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    .line 1936
    invoke-static {v1}, Landroidx/work/d;->a([B)Landroidx/work/d;

    move-result-object v1

    iput-object v1, v5, Landroidx/work/impl/model/WorkSpec;->input:Landroidx/work/d;

    move/from16 v1, v27

    .line 1938
    invoke-interface {v4, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    .line 1939
    invoke-static {v6}, Landroidx/work/d;->a([B)Landroidx/work/d;

    move-result-object v6

    iput-object v6, v5, Landroidx/work/impl/model/WorkSpec;->output:Landroidx/work/d;

    move v12, v0

    move/from16 v27, v1

    move/from16 v6, v17

    .line 1940
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v5, Landroidx/work/impl/model/WorkSpec;->initialDelay:J

    move/from16 v17, v2

    move/from16 v0, v18

    .line 1941
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v5, Landroidx/work/impl/model/WorkSpec;->intervalDuration:J

    move/from16 v18, v6

    move v2, v7

    move/from16 v1, v19

    .line 1942
    invoke-interface {v4, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v5, Landroidx/work/impl/model/WorkSpec;->flexDuration:J

    move/from16 v6, v20

    .line 1943
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    iput v7, v5, Landroidx/work/impl/model/WorkSpec;->runAttemptCount:I

    move/from16 v7, v21

    .line 1945
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    move/from16 v20, v0

    .line 1946
    invoke-static/range {v19 .. v19}, Landroidx/work/impl/model/WorkTypeConverters;->intToBackoffPolicy(I)Landroidx/work/a;

    move-result-object v0

    iput-object v0, v5, Landroidx/work/impl/model/WorkSpec;->backoffPolicy:Landroidx/work/a;

    move/from16 v19, v1

    move/from16 v21, v2

    move/from16 v0, v22

    .line 1947
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v5, Landroidx/work/impl/model/WorkSpec;->backoffDelayDuration:J

    move v2, v6

    move/from16 v22, v7

    move/from16 v1, v23

    .line 1948
    invoke-interface {v4, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v5, Landroidx/work/impl/model/WorkSpec;->periodStartTime:J

    move v7, v0

    move/from16 v23, v1

    move/from16 v6, v24

    .line 1949
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v5, Landroidx/work/impl/model/WorkSpec;->minimumRetentionDuration:J

    move/from16 v24, v2

    move/from16 v0, v25

    .line 1950
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v5, Landroidx/work/impl/model/WorkSpec;->scheduleRequestedAt:J

    move/from16 v1, v26

    .line 1952
    invoke-interface {v4, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    goto :goto_5

    :cond_4
    const/4 v2, 0x0

    .line 1953
    :goto_5
    iput-boolean v2, v5, Landroidx/work/impl/model/WorkSpec;->runInForeground:Z

    .line 1954
    iput-object v14, v5, Landroidx/work/impl/model/WorkSpec;->constraints:Landroidx/work/b;

    .line 1955
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v25, v0

    move/from16 v26, v1

    move v5, v12

    move/from16 v2, v17

    move/from16 v17, v18

    move/from16 v18, v20

    move/from16 v20, v24

    move/from16 v12, v28

    move/from16 v14, v29

    move/from16 v0, v31

    move/from16 v24, v6

    move/from16 v6, v32

    move/from16 v33, v22

    move/from16 v22, v7

    move/from16 v7, v21

    move/from16 v21, v33

    goto/16 :goto_0

    .line 1959
    :cond_5
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 1960
    invoke-virtual/range {v16 .. v16}, Landroidx/room/k;->a()V

    return-object v3

    :catchall_0
    move-exception v0

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object/from16 v16, v3

    .line 1959
    :goto_6
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 1960
    invoke-virtual/range {v16 .. v16}, Landroidx/room/k;->a()V

    .line 1961
    throw v0
.end method

.method public final getScheduleRequestedAtLiveData(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const-string v0, "SELECT schedule_requested_at FROM workspec WHERE id=?"

    const/4 v1, 0x1

    .line 1481
    invoke-static {v0, v1}, Landroidx/room/k;->a(Ljava/lang/String;I)Landroidx/room/k;

    move-result-object v0

    if-nez p1, :cond_0

    .line 17234
    iget-object p1, v0, Landroidx/room/k;->e:[I

    aput v1, p1, v1

    goto :goto_0

    .line 1486
    :cond_0
    invoke-virtual {v0, v1, p1}, Landroidx/room/k;->a(ILjava/lang/String;)V

    .line 1488
    :goto_0
    iget-object p1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/h;

    .line 17465
    iget-object p1, p1, Landroidx/room/h;->e:Landroidx/room/e;

    const-string v1, "workspec"

    .line 1488
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Landroidx/work/impl/model/WorkSpecDao_Impl$14;

    invoke-direct {v3, p0, v0}, Landroidx/work/impl/model/WorkSpecDao_Impl$14;-><init>(Landroidx/work/impl/model/WorkSpecDao_Impl;Landroidx/room/k;)V

    invoke-virtual {p1, v1, v2, v3}, Landroidx/room/e;->a([Ljava/lang/String;ZLjava/util/concurrent/Callable;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method

.method public final getScheduledWork()Ljava/util/List;
    .locals 34
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/work/impl/model/WorkSpec;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v0, "SELECT `required_network_type`, `requires_charging`, `requires_device_idle`, `requires_battery_not_low`, `requires_storage_not_low`, `trigger_content_update_delay`, `trigger_max_content_delay`, `content_uri_triggers`, `WorkSpec`.`id` AS `id`, `WorkSpec`.`state` AS `state`, `WorkSpec`.`worker_class_name` AS `worker_class_name`, `WorkSpec`.`input_merger_class_name` AS `input_merger_class_name`, `WorkSpec`.`input` AS `input`, `WorkSpec`.`output` AS `output`, `WorkSpec`.`initial_delay` AS `initial_delay`, `WorkSpec`.`interval_duration` AS `interval_duration`, `WorkSpec`.`flex_duration` AS `flex_duration`, `WorkSpec`.`run_attempt_count` AS `run_attempt_count`, `WorkSpec`.`backoff_policy` AS `backoff_policy`, `WorkSpec`.`backoff_delay_duration` AS `backoff_delay_duration`, `WorkSpec`.`period_start_time` AS `period_start_time`, `WorkSpec`.`minimum_retention_duration` AS `minimum_retention_duration`, `WorkSpec`.`schedule_requested_at` AS `schedule_requested_at`, `WorkSpec`.`run_in_foreground` AS `run_in_foreground` FROM workspec WHERE state=0 AND schedule_requested_at<>-1"

    const/4 v2, 0x0

    .line 1745
    invoke-static {v0, v2}, Landroidx/room/k;->a(Ljava/lang/String;I)Landroidx/room/k;

    move-result-object v3

    .line 1746
    iget-object v0, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/h;

    invoke-virtual {v0}, Landroidx/room/h;->d()V

    .line 1747
    iget-object v0, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/h;

    invoke-static {v0, v3, v2}, Landroidx/room/b/c;->a(Landroidx/room/h;Landroidx/sqlite/db/d;Z)Landroid/database/Cursor;

    move-result-object v4

    :try_start_0
    const-string v0, "required_network_type"

    .line 1749
    invoke-static {v4, v0}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v5, "requires_charging"

    .line 1750
    invoke-static {v4, v5}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "requires_device_idle"

    .line 1751
    invoke-static {v4, v6}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "requires_battery_not_low"

    .line 1752
    invoke-static {v4, v7}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "requires_storage_not_low"

    .line 1753
    invoke-static {v4, v8}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "trigger_content_update_delay"

    .line 1754
    invoke-static {v4, v9}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "trigger_max_content_delay"

    .line 1755
    invoke-static {v4, v10}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "content_uri_triggers"

    .line 1756
    invoke-static {v4, v11}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "id"

    .line 1757
    invoke-static {v4, v12}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "state"

    .line 1758
    invoke-static {v4, v13}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "worker_class_name"

    .line 1759
    invoke-static {v4, v14}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "input_merger_class_name"

    .line 1760
    invoke-static {v4, v15}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v2, "input"

    .line 1761
    invoke-static {v4, v2}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v1, "output"

    .line 1762
    invoke-static {v4, v1}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v3

    :try_start_1
    const-string v3, "initial_delay"

    .line 1763
    invoke-static {v4, v3}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v17, v3

    const-string v3, "interval_duration"

    .line 1764
    invoke-static {v4, v3}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v18, v3

    const-string v3, "flex_duration"

    .line 1765
    invoke-static {v4, v3}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v19, v3

    const-string v3, "run_attempt_count"

    .line 1766
    invoke-static {v4, v3}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v20, v3

    const-string v3, "backoff_policy"

    .line 1767
    invoke-static {v4, v3}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v21, v3

    const-string v3, "backoff_delay_duration"

    .line 1768
    invoke-static {v4, v3}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v22, v3

    const-string v3, "period_start_time"

    .line 1769
    invoke-static {v4, v3}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v23, v3

    const-string v3, "minimum_retention_duration"

    .line 1770
    invoke-static {v4, v3}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v24, v3

    const-string v3, "schedule_requested_at"

    .line 1771
    invoke-static {v4, v3}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v25, v3

    const-string v3, "run_in_foreground"

    .line 1772
    invoke-static {v4, v3}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v26, v3

    .line 1773
    new-instance v3, Ljava/util/ArrayList;

    move/from16 v27, v1

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1774
    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1777
    invoke-interface {v4, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move/from16 v28, v12

    .line 1779
    invoke-interface {v4, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    move/from16 v29, v14

    .line 1781
    new-instance v14, Landroidx/work/b;

    invoke-direct {v14}, Landroidx/work/b;-><init>()V

    .line 1784
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v30

    move/from16 v31, v0

    .line 1785
    invoke-static/range {v30 .. v30}, Landroidx/work/impl/model/WorkTypeConverters;->intToNetworkType(I)Landroidx/work/l;

    move-result-object v0

    .line 20114
    iput-object v0, v14, Landroidx/work/b;->b:Landroidx/work/l;

    .line 1789
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/16 v30, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 20130
    :goto_1
    iput-boolean v0, v14, Landroidx/work/b;->c:Z

    .line 1794
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    .line 20148
    :goto_2
    iput-boolean v0, v14, Landroidx/work/b;->d:Z

    .line 1799
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_3

    :cond_2
    const/4 v0, 0x0

    .line 20164
    :goto_3
    iput-boolean v0, v14, Landroidx/work/b;->e:Z

    .line 1804
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_4

    :cond_3
    const/4 v0, 0x0

    .line 20180
    :goto_4
    iput-boolean v0, v14, Landroidx/work/b;->f:Z

    move v0, v5

    move/from16 v32, v6

    .line 1808
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 20198
    iput-wide v5, v14, Landroidx/work/b;->g:J

    .line 1811
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 20216
    iput-wide v5, v14, Landroidx/work/b;->h:J

    .line 1815
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v5

    .line 1816
    invoke-static {v5}, Landroidx/work/impl/model/WorkTypeConverters;->byteArrayToContentUriTriggers([B)Landroidx/work/c;

    move-result-object v5

    .line 20226
    iput-object v5, v14, Landroidx/work/b;->i:Landroidx/work/c;

    .line 1818
    new-instance v5, Landroidx/work/impl/model/WorkSpec;

    invoke-direct {v5, v1, v12}, Landroidx/work/impl/model/WorkSpec;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1820
    invoke-interface {v4, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 1821
    invoke-static {v1}, Landroidx/work/impl/model/WorkTypeConverters;->intToState(I)Landroidx/work/t$a;

    move-result-object v1

    iput-object v1, v5, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/t$a;

    .line 1822
    invoke-interface {v4, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v5, Landroidx/work/impl/model/WorkSpec;->inputMergerClassName:Ljava/lang/String;

    .line 1824
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    .line 1825
    invoke-static {v1}, Landroidx/work/d;->a([B)Landroidx/work/d;

    move-result-object v1

    iput-object v1, v5, Landroidx/work/impl/model/WorkSpec;->input:Landroidx/work/d;

    move/from16 v1, v27

    .line 1827
    invoke-interface {v4, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    .line 1828
    invoke-static {v6}, Landroidx/work/d;->a([B)Landroidx/work/d;

    move-result-object v6

    iput-object v6, v5, Landroidx/work/impl/model/WorkSpec;->output:Landroidx/work/d;

    move v12, v0

    move/from16 v27, v1

    move/from16 v6, v17

    .line 1829
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v5, Landroidx/work/impl/model/WorkSpec;->initialDelay:J

    move/from16 v17, v2

    move/from16 v0, v18

    .line 1830
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v5, Landroidx/work/impl/model/WorkSpec;->intervalDuration:J

    move/from16 v18, v6

    move v2, v7

    move/from16 v1, v19

    .line 1831
    invoke-interface {v4, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v5, Landroidx/work/impl/model/WorkSpec;->flexDuration:J

    move/from16 v6, v20

    .line 1832
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    iput v7, v5, Landroidx/work/impl/model/WorkSpec;->runAttemptCount:I

    move/from16 v7, v21

    .line 1834
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    move/from16 v20, v0

    .line 1835
    invoke-static/range {v19 .. v19}, Landroidx/work/impl/model/WorkTypeConverters;->intToBackoffPolicy(I)Landroidx/work/a;

    move-result-object v0

    iput-object v0, v5, Landroidx/work/impl/model/WorkSpec;->backoffPolicy:Landroidx/work/a;

    move/from16 v19, v1

    move/from16 v21, v2

    move/from16 v0, v22

    .line 1836
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v5, Landroidx/work/impl/model/WorkSpec;->backoffDelayDuration:J

    move v2, v6

    move/from16 v22, v7

    move/from16 v1, v23

    .line 1837
    invoke-interface {v4, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v5, Landroidx/work/impl/model/WorkSpec;->periodStartTime:J

    move v7, v0

    move/from16 v23, v1

    move/from16 v6, v24

    .line 1838
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v5, Landroidx/work/impl/model/WorkSpec;->minimumRetentionDuration:J

    move/from16 v24, v2

    move/from16 v0, v25

    .line 1839
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v5, Landroidx/work/impl/model/WorkSpec;->scheduleRequestedAt:J

    move/from16 v1, v26

    .line 1841
    invoke-interface {v4, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    goto :goto_5

    :cond_4
    const/4 v2, 0x0

    .line 1842
    :goto_5
    iput-boolean v2, v5, Landroidx/work/impl/model/WorkSpec;->runInForeground:Z

    .line 1843
    iput-object v14, v5, Landroidx/work/impl/model/WorkSpec;->constraints:Landroidx/work/b;

    .line 1844
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v25, v0

    move/from16 v26, v1

    move v5, v12

    move/from16 v2, v17

    move/from16 v17, v18

    move/from16 v18, v20

    move/from16 v20, v24

    move/from16 v12, v28

    move/from16 v14, v29

    move/from16 v0, v31

    move/from16 v24, v6

    move/from16 v6, v32

    move/from16 v33, v22

    move/from16 v22, v7

    move/from16 v7, v21

    move/from16 v21, v33

    goto/16 :goto_0

    .line 1848
    :cond_5
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 1849
    invoke-virtual/range {v16 .. v16}, Landroidx/room/k;->a()V

    return-object v3

    :catchall_0
    move-exception v0

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object/from16 v16, v3

    .line 1848
    :goto_6
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 1849
    invoke-virtual/range {v16 .. v16}, Landroidx/room/k;->a()V

    .line 1850
    throw v0
.end method

.method public final getState(Ljava/lang/String;)Landroidx/work/t$a;
    .locals 3

    const-string v0, "SELECT state FROM workspec WHERE id=?"

    const/4 v1, 0x1

    .line 716
    invoke-static {v0, v1}, Landroidx/room/k;->a(Ljava/lang/String;I)Landroidx/room/k;

    move-result-object v0

    if-nez p1, :cond_0

    .line 6234
    iget-object p1, v0, Landroidx/room/k;->e:[I

    aput v1, p1, v1

    goto :goto_0

    .line 721
    :cond_0
    invoke-virtual {v0, v1, p1}, Landroidx/room/k;->a(ILjava/lang/String;)V

    .line 723
    :goto_0
    iget-object p1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/h;

    invoke-virtual {p1}, Landroidx/room/h;->d()V

    .line 724
    iget-object p1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/h;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroidx/room/b/c;->a(Landroidx/room/h;Landroidx/sqlite/db/d;Z)Landroid/database/Cursor;

    move-result-object p1

    .line 727
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 729
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 730
    invoke-static {v1}, Landroidx/work/impl/model/WorkTypeConverters;->intToState(I)Landroidx/work/t$a;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 736
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 737
    invoke-virtual {v0}, Landroidx/room/k;->a()V

    return-object v1

    :catchall_0
    move-exception v1

    .line 736
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 737
    invoke-virtual {v0}, Landroidx/room/k;->a()V

    .line 738
    throw v1
.end method

.method public final getUnfinishedWorkWithName(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "SELECT id FROM workspec WHERE state NOT IN (2, 3, 5) AND id IN (SELECT work_spec_id FROM workname WHERE name=?)"

    const/4 v1, 0x1

    .line 1435
    invoke-static {v0, v1}, Landroidx/room/k;->a(Ljava/lang/String;I)Landroidx/room/k;

    move-result-object v0

    if-nez p1, :cond_0

    .line 16234
    iget-object p1, v0, Landroidx/room/k;->e:[I

    aput v1, p1, v1

    goto :goto_0

    .line 1440
    :cond_0
    invoke-virtual {v0, v1, p1}, Landroidx/room/k;->a(ILjava/lang/String;)V

    .line 1442
    :goto_0
    iget-object p1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/h;

    invoke-virtual {p1}, Landroidx/room/h;->d()V

    .line 1443
    iget-object p1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/h;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroidx/room/b/c;->a(Landroidx/room/h;Landroidx/sqlite/db/d;Z)Landroid/database/Cursor;

    move-result-object p1

    .line 1445
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1446
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1448
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1449
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1453
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 1454
    invoke-virtual {v0}, Landroidx/room/k;->a()V

    return-object v2

    :catchall_0
    move-exception v1

    .line 1453
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 1454
    invoke-virtual {v0}, Landroidx/room/k;->a()V

    .line 1455
    throw v1
.end method

.method public final getUnfinishedWorkWithTag(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "SELECT id FROM workspec WHERE state NOT IN (2, 3, 5) AND id IN (SELECT work_spec_id FROM worktag WHERE tag=?)"

    const/4 v1, 0x1

    .line 1409
    invoke-static {v0, v1}, Landroidx/room/k;->a(Ljava/lang/String;I)Landroidx/room/k;

    move-result-object v0

    if-nez p1, :cond_0

    .line 15234
    iget-object p1, v0, Landroidx/room/k;->e:[I

    aput v1, p1, v1

    goto :goto_0

    .line 1414
    :cond_0
    invoke-virtual {v0, v1, p1}, Landroidx/room/k;->a(ILjava/lang/String;)V

    .line 1416
    :goto_0
    iget-object p1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/h;

    invoke-virtual {p1}, Landroidx/room/h;->d()V

    .line 1417
    iget-object p1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/h;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroidx/room/b/c;->a(Landroidx/room/h;Landroidx/sqlite/db/d;Z)Landroid/database/Cursor;

    move-result-object p1

    .line 1419
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1420
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1422
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1423
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1427
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 1428
    invoke-virtual {v0}, Landroidx/room/k;->a()V

    return-object v2

    :catchall_0
    move-exception v1

    .line 1427
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 1428
    invoke-virtual {v0}, Landroidx/room/k;->a()V

    .line 1429
    throw v1
.end method

.method public final getWorkSpec(Ljava/lang/String;)Landroidx/work/impl/model/WorkSpec;
    .locals 27

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "SELECT `required_network_type`, `requires_charging`, `requires_device_idle`, `requires_battery_not_low`, `requires_storage_not_low`, `trigger_content_update_delay`, `trigger_max_content_delay`, `content_uri_triggers`, `WorkSpec`.`id` AS `id`, `WorkSpec`.`state` AS `state`, `WorkSpec`.`worker_class_name` AS `worker_class_name`, `WorkSpec`.`input_merger_class_name` AS `input_merger_class_name`, `WorkSpec`.`input` AS `input`, `WorkSpec`.`output` AS `output`, `WorkSpec`.`initial_delay` AS `initial_delay`, `WorkSpec`.`interval_duration` AS `interval_duration`, `WorkSpec`.`flex_duration` AS `flex_duration`, `WorkSpec`.`run_attempt_count` AS `run_attempt_count`, `WorkSpec`.`backoff_policy` AS `backoff_policy`, `WorkSpec`.`backoff_delay_duration` AS `backoff_delay_duration`, `WorkSpec`.`period_start_time` AS `period_start_time`, `WorkSpec`.`minimum_retention_duration` AS `minimum_retention_duration`, `WorkSpec`.`schedule_requested_at` AS `schedule_requested_at`, `WorkSpec`.`run_in_foreground` AS `run_in_foreground` FROM workspec WHERE id=?"

    const/4 v3, 0x1

    .line 383
    invoke-static {v2, v3}, Landroidx/room/k;->a(Ljava/lang/String;I)Landroidx/room/k;

    move-result-object v2

    if-nez v0, :cond_0

    .line 3234
    iget-object v0, v2, Landroidx/room/k;->e:[I

    aput v3, v0, v3

    goto :goto_0

    .line 388
    :cond_0
    invoke-virtual {v2, v3, v0}, Landroidx/room/k;->a(ILjava/lang/String;)V

    .line 390
    :goto_0
    iget-object v0, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/h;

    invoke-virtual {v0}, Landroidx/room/h;->d()V

    .line 391
    iget-object v0, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/h;

    const/4 v4, 0x0

    invoke-static {v0, v2, v4}, Landroidx/room/b/c;->a(Landroidx/room/h;Landroidx/sqlite/db/d;Z)Landroid/database/Cursor;

    move-result-object v5

    :try_start_0
    const-string v0, "required_network_type"

    .line 393
    invoke-static {v5, v0}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v6, "requires_charging"

    .line 394
    invoke-static {v5, v6}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "requires_device_idle"

    .line 395
    invoke-static {v5, v7}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "requires_battery_not_low"

    .line 396
    invoke-static {v5, v8}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "requires_storage_not_low"

    .line 397
    invoke-static {v5, v9}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "trigger_content_update_delay"

    .line 398
    invoke-static {v5, v10}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "trigger_max_content_delay"

    .line 399
    invoke-static {v5, v11}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "content_uri_triggers"

    .line 400
    invoke-static {v5, v12}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "id"

    .line 401
    invoke-static {v5, v13}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "state"

    .line 402
    invoke-static {v5, v14}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "worker_class_name"

    .line 403
    invoke-static {v5, v15}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v3, "input_merger_class_name"

    .line 404
    invoke-static {v5, v3}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string v4, "input"

    .line 405
    invoke-static {v5, v4}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v1, "output"

    .line 406
    invoke-static {v5, v1}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v2

    :try_start_1
    const-string v2, "initial_delay"

    .line 407
    invoke-static {v5, v2}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v17, v2

    const-string v2, "interval_duration"

    .line 408
    invoke-static {v5, v2}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v18, v2

    const-string v2, "flex_duration"

    .line 409
    invoke-static {v5, v2}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v19, v2

    const-string v2, "run_attempt_count"

    .line 410
    invoke-static {v5, v2}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v20, v2

    const-string v2, "backoff_policy"

    .line 411
    invoke-static {v5, v2}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v21, v2

    const-string v2, "backoff_delay_duration"

    .line 412
    invoke-static {v5, v2}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v22, v2

    const-string v2, "period_start_time"

    .line 413
    invoke-static {v5, v2}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v23, v2

    const-string v2, "minimum_retention_duration"

    .line 414
    invoke-static {v5, v2}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v24, v2

    const-string v2, "schedule_requested_at"

    .line 415
    invoke-static {v5, v2}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v25, v2

    const-string v2, "run_in_foreground"

    .line 416
    invoke-static {v5, v2}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    .line 418
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v26

    if-eqz v26, :cond_6

    .line 420
    invoke-interface {v5, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 422
    invoke-interface {v5, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    move/from16 v26, v2

    .line 424
    new-instance v2, Landroidx/work/b;

    invoke-direct {v2}, Landroidx/work/b;-><init>()V

    .line 427
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 428
    invoke-static {v0}, Landroidx/work/impl/model/WorkTypeConverters;->intToNetworkType(I)Landroidx/work/l;

    move-result-object v0

    .line 4114
    iput-object v0, v2, Landroidx/work/b;->b:Landroidx/work/l;

    .line 432
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 4130
    :goto_1
    iput-boolean v0, v2, Landroidx/work/b;->c:Z

    .line 437
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    .line 4148
    :goto_2
    iput-boolean v0, v2, Landroidx/work/b;->d:Z

    .line 442
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    .line 4164
    :goto_3
    iput-boolean v0, v2, Landroidx/work/b;->e:Z

    .line 447
    invoke-interface {v5, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    .line 4180
    :goto_4
    iput-boolean v0, v2, Landroidx/work/b;->f:Z

    .line 451
    invoke-interface {v5, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 4198
    iput-wide v6, v2, Landroidx/work/b;->g:J

    .line 454
    invoke-interface {v5, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 4216
    iput-wide v6, v2, Landroidx/work/b;->h:J

    .line 458
    invoke-interface {v5, v12}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 459
    invoke-static {v0}, Landroidx/work/impl/model/WorkTypeConverters;->byteArrayToContentUriTriggers([B)Landroidx/work/c;

    move-result-object v0

    .line 4226
    iput-object v0, v2, Landroidx/work/b;->i:Landroidx/work/c;

    .line 461
    new-instance v0, Landroidx/work/impl/model/WorkSpec;

    invoke-direct {v0, v13, v15}, Landroidx/work/impl/model/WorkSpec;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    invoke-interface {v5, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 464
    invoke-static {v6}, Landroidx/work/impl/model/WorkTypeConverters;->intToState(I)Landroidx/work/t$a;

    move-result-object v6

    iput-object v6, v0, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/t$a;

    .line 465
    invoke-interface {v5, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroidx/work/impl/model/WorkSpec;->inputMergerClassName:Ljava/lang/String;

    .line 467
    invoke-interface {v5, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    .line 468
    invoke-static {v3}, Landroidx/work/d;->a([B)Landroidx/work/d;

    move-result-object v3

    iput-object v3, v0, Landroidx/work/impl/model/WorkSpec;->input:Landroidx/work/d;

    .line 470
    invoke-interface {v5, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    .line 471
    invoke-static {v1}, Landroidx/work/d;->a([B)Landroidx/work/d;

    move-result-object v1

    iput-object v1, v0, Landroidx/work/impl/model/WorkSpec;->output:Landroidx/work/d;

    move/from16 v1, v17

    .line 472
    invoke-interface {v5, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v0, Landroidx/work/impl/model/WorkSpec;->initialDelay:J

    move/from16 v1, v18

    .line 473
    invoke-interface {v5, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v0, Landroidx/work/impl/model/WorkSpec;->intervalDuration:J

    move/from16 v1, v19

    .line 474
    invoke-interface {v5, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v0, Landroidx/work/impl/model/WorkSpec;->flexDuration:J

    move/from16 v1, v20

    .line 475
    invoke-interface {v5, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Landroidx/work/impl/model/WorkSpec;->runAttemptCount:I

    move/from16 v1, v21

    .line 477
    invoke-interface {v5, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 478
    invoke-static {v1}, Landroidx/work/impl/model/WorkTypeConverters;->intToBackoffPolicy(I)Landroidx/work/a;

    move-result-object v1

    iput-object v1, v0, Landroidx/work/impl/model/WorkSpec;->backoffPolicy:Landroidx/work/a;

    move/from16 v1, v22

    .line 479
    invoke-interface {v5, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v0, Landroidx/work/impl/model/WorkSpec;->backoffDelayDuration:J

    move/from16 v1, v23

    .line 480
    invoke-interface {v5, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v0, Landroidx/work/impl/model/WorkSpec;->periodStartTime:J

    move/from16 v1, v24

    .line 481
    invoke-interface {v5, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v0, Landroidx/work/impl/model/WorkSpec;->minimumRetentionDuration:J

    move/from16 v1, v25

    .line 482
    invoke-interface {v5, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v0, Landroidx/work/impl/model/WorkSpec;->scheduleRequestedAt:J

    move/from16 v1, v26

    .line 484
    invoke-interface {v5, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_5

    const/4 v3, 0x1

    goto :goto_5

    :cond_5
    const/4 v3, 0x0

    .line 485
    :goto_5
    iput-boolean v3, v0, Landroidx/work/impl/model/WorkSpec;->runInForeground:Z

    .line 486
    iput-object v2, v0, Landroidx/work/impl/model/WorkSpec;->constraints:Landroidx/work/b;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_6

    :cond_6
    const/4 v0, 0x0

    .line 492
    :goto_6
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 493
    invoke-virtual/range {v16 .. v16}, Landroidx/room/k;->a()V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_7

    :catchall_1
    move-exception v0

    move-object/from16 v16, v2

    .line 492
    :goto_7
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 493
    invoke-virtual/range {v16 .. v16}, Landroidx/room/k;->a()V

    .line 494
    throw v0
.end method

.method public final getWorkSpecIdAndStatesForName(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroidx/work/impl/model/WorkSpec$IdAndState;",
            ">;"
        }
    .end annotation

    const-string v0, "SELECT id, state FROM workspec WHERE id IN (SELECT work_spec_id FROM workname WHERE name=?)"

    const/4 v1, 0x1

    .line 630
    invoke-static {v0, v1}, Landroidx/room/k;->a(Ljava/lang/String;I)Landroidx/room/k;

    move-result-object v0

    if-nez p1, :cond_0

    .line 5234
    iget-object p1, v0, Landroidx/room/k;->e:[I

    aput v1, p1, v1

    goto :goto_0

    .line 635
    :cond_0
    invoke-virtual {v0, v1, p1}, Landroidx/room/k;->a(ILjava/lang/String;)V

    .line 637
    :goto_0
    iget-object p1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/h;

    invoke-virtual {p1}, Landroidx/room/h;->d()V

    .line 638
    iget-object p1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/h;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroidx/room/b/c;->a(Landroidx/room/h;Landroidx/sqlite/db/d;Z)Landroid/database/Cursor;

    move-result-object p1

    :try_start_0
    const-string v1, "id"

    .line 640
    invoke-static {p1, v1}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    const-string v2, "state"

    .line 641
    invoke-static {p1, v2}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    .line 642
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 643
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 645
    new-instance v4, Landroidx/work/impl/model/WorkSpec$IdAndState;

    invoke-direct {v4}, Landroidx/work/impl/model/WorkSpec$IdAndState;-><init>()V

    .line 646
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroidx/work/impl/model/WorkSpec$IdAndState;->id:Ljava/lang/String;

    .line 648
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 649
    invoke-static {v5}, Landroidx/work/impl/model/WorkTypeConverters;->intToState(I)Landroidx/work/t$a;

    move-result-object v5

    iput-object v5, v4, Landroidx/work/impl/model/WorkSpec$IdAndState;->state:Landroidx/work/t$a;

    .line 650
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 654
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 655
    invoke-virtual {v0}, Landroidx/room/k;->a()V

    return-object v3

    :catchall_0
    move-exception v1

    .line 654
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 655
    invoke-virtual {v0}, Landroidx/room/k;->a()V

    .line 656
    throw v1
.end method

.method public final getWorkSpecs(Ljava/util/List;)[Landroidx/work/impl/model/WorkSpec;
    .locals 34
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)[",
            "Landroidx/work/impl/model/WorkSpec;"
        }
    .end annotation

    move-object/from16 v1, p0

    .line 499
    invoke-static {}, Landroidx/room/b/e;->a()Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "SELECT "

    .line 500
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "*"

    .line 501
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " FROM workspec WHERE id IN ("

    .line 502
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    .line 504
    invoke-static {v0, v2}, Landroidx/room/b/e;->a(Ljava/lang/StringBuilder;I)V

    const-string v3, ")"

    .line 505
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    add-int/2addr v2, v3

    .line 508
    invoke-static {v0, v2}, Landroidx/room/k;->a(Ljava/lang/String;I)Landroidx/room/k;

    move-result-object v2

    .line 510
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v4, 0x1

    const/4 v5, 0x1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-nez v6, :cond_0

    .line 4234
    iget-object v6, v2, Landroidx/room/k;->e:[I

    aput v4, v6, v5

    goto :goto_1

    .line 514
    :cond_0
    invoke-virtual {v2, v5, v6}, Landroidx/room/k;->a(ILjava/lang/String;)V

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 518
    :cond_1
    iget-object v0, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/h;

    invoke-virtual {v0}, Landroidx/room/h;->d()V

    .line 519
    iget-object v0, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/h;

    invoke-static {v0, v2, v3}, Landroidx/room/b/c;->a(Landroidx/room/h;Landroidx/sqlite/db/d;Z)Landroid/database/Cursor;

    move-result-object v5

    :try_start_0
    const-string v0, "required_network_type"

    .line 521
    invoke-static {v5, v0}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v6, "requires_charging"

    .line 522
    invoke-static {v5, v6}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "requires_device_idle"

    .line 523
    invoke-static {v5, v7}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "requires_battery_not_low"

    .line 524
    invoke-static {v5, v8}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "requires_storage_not_low"

    .line 525
    invoke-static {v5, v9}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "trigger_content_update_delay"

    .line 526
    invoke-static {v5, v10}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "trigger_max_content_delay"

    .line 527
    invoke-static {v5, v11}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "content_uri_triggers"

    .line 528
    invoke-static {v5, v12}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "id"

    .line 529
    invoke-static {v5, v13}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "state"

    .line 530
    invoke-static {v5, v14}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "worker_class_name"

    .line 531
    invoke-static {v5, v15}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v3, "input_merger_class_name"

    .line 532
    invoke-static {v5, v3}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string v4, "input"

    .line 533
    invoke-static {v5, v4}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v1, "output"

    .line 534
    invoke-static {v5, v1}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v2

    :try_start_1
    const-string v2, "initial_delay"

    .line 535
    invoke-static {v5, v2}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v17, v2

    const-string v2, "interval_duration"

    .line 536
    invoke-static {v5, v2}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v18, v2

    const-string v2, "flex_duration"

    .line 537
    invoke-static {v5, v2}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v19, v2

    const-string v2, "run_attempt_count"

    .line 538
    invoke-static {v5, v2}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v20, v2

    const-string v2, "backoff_policy"

    .line 539
    invoke-static {v5, v2}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v21, v2

    const-string v2, "backoff_delay_duration"

    .line 540
    invoke-static {v5, v2}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v22, v2

    const-string v2, "period_start_time"

    .line 541
    invoke-static {v5, v2}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v23, v2

    const-string v2, "minimum_retention_duration"

    .line 542
    invoke-static {v5, v2}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v24, v2

    const-string v2, "schedule_requested_at"

    .line 543
    invoke-static {v5, v2}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v25, v2

    const-string v2, "run_in_foreground"

    .line 544
    invoke-static {v5, v2}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v26, v2

    .line 545
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v2

    new-array v2, v2, [Landroidx/work/impl/model/WorkSpec;

    const/16 v27, 0x0

    .line 547
    :goto_2
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v28

    if-eqz v28, :cond_7

    move-object/from16 v28, v2

    .line 550
    invoke-interface {v5, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move/from16 v29, v13

    .line 552
    invoke-interface {v5, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    move/from16 v30, v15

    .line 554
    new-instance v15, Landroidx/work/b;

    invoke-direct {v15}, Landroidx/work/b;-><init>()V

    .line 557
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v31

    move/from16 v32, v0

    .line 558
    invoke-static/range {v31 .. v31}, Landroidx/work/impl/model/WorkTypeConverters;->intToNetworkType(I)Landroidx/work/l;

    move-result-object v0

    .line 5114
    iput-object v0, v15, Landroidx/work/b;->b:Landroidx/work/l;

    .line 562
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_3

    :cond_2
    const/4 v0, 0x0

    .line 5130
    :goto_3
    iput-boolean v0, v15, Landroidx/work/b;->c:Z

    .line 567
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_4

    :cond_3
    const/4 v0, 0x0

    .line 5148
    :goto_4
    iput-boolean v0, v15, Landroidx/work/b;->d:Z

    .line 572
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    .line 5164
    :goto_5
    iput-boolean v0, v15, Landroidx/work/b;->e:Z

    .line 577
    invoke-interface {v5, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    .line 5180
    :goto_6
    iput-boolean v0, v15, Landroidx/work/b;->f:Z

    move v0, v6

    move/from16 v31, v7

    .line 581
    invoke-interface {v5, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 5198
    iput-wide v6, v15, Landroidx/work/b;->g:J

    .line 584
    invoke-interface {v5, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 5216
    iput-wide v6, v15, Landroidx/work/b;->h:J

    .line 588
    invoke-interface {v5, v12}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    .line 589
    invoke-static {v6}, Landroidx/work/impl/model/WorkTypeConverters;->byteArrayToContentUriTriggers([B)Landroidx/work/c;

    move-result-object v6

    .line 5226
    iput-object v6, v15, Landroidx/work/b;->i:Landroidx/work/c;

    .line 591
    new-instance v6, Landroidx/work/impl/model/WorkSpec;

    invoke-direct {v6, v2, v13}, Landroidx/work/impl/model/WorkSpec;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    invoke-interface {v5, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 594
    invoke-static {v2}, Landroidx/work/impl/model/WorkTypeConverters;->intToState(I)Landroidx/work/t$a;

    move-result-object v2

    iput-object v2, v6, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/t$a;

    .line 595
    invoke-interface {v5, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v6, Landroidx/work/impl/model/WorkSpec;->inputMergerClassName:Ljava/lang/String;

    .line 597
    invoke-interface {v5, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    .line 598
    invoke-static {v2}, Landroidx/work/d;->a([B)Landroidx/work/d;

    move-result-object v2

    iput-object v2, v6, Landroidx/work/impl/model/WorkSpec;->input:Landroidx/work/d;

    .line 600
    invoke-interface {v5, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    .line 601
    invoke-static {v2}, Landroidx/work/d;->a([B)Landroidx/work/d;

    move-result-object v2

    iput-object v2, v6, Landroidx/work/impl/model/WorkSpec;->output:Landroidx/work/d;

    move v13, v0

    move v7, v1

    move/from16 v2, v17

    .line 602
    invoke-interface {v5, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v6, Landroidx/work/impl/model/WorkSpec;->initialDelay:J

    move/from16 v17, v2

    move/from16 v0, v18

    .line 603
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v6, Landroidx/work/impl/model/WorkSpec;->intervalDuration:J

    move/from16 v18, v3

    move/from16 v1, v19

    .line 604
    invoke-interface {v5, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v6, Landroidx/work/impl/model/WorkSpec;->flexDuration:J

    move/from16 v2, v20

    .line 605
    invoke-interface {v5, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v6, Landroidx/work/impl/model/WorkSpec;->runAttemptCount:I

    move/from16 v3, v21

    .line 607
    invoke-interface {v5, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    move/from16 v20, v0

    .line 608
    invoke-static/range {v19 .. v19}, Landroidx/work/impl/model/WorkTypeConverters;->intToBackoffPolicy(I)Landroidx/work/a;

    move-result-object v0

    iput-object v0, v6, Landroidx/work/impl/model/WorkSpec;->backoffPolicy:Landroidx/work/a;

    move/from16 v19, v1

    move/from16 v21, v2

    move/from16 v0, v22

    .line 609
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v6, Landroidx/work/impl/model/WorkSpec;->backoffDelayDuration:J

    move/from16 v22, v3

    move/from16 v1, v23

    .line 610
    invoke-interface {v5, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v6, Landroidx/work/impl/model/WorkSpec;->periodStartTime:J

    move v3, v0

    move/from16 v23, v1

    move/from16 v2, v24

    .line 611
    invoke-interface {v5, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v6, Landroidx/work/impl/model/WorkSpec;->minimumRetentionDuration:J

    move/from16 v24, v2

    move/from16 v0, v25

    .line 612
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v6, Landroidx/work/impl/model/WorkSpec;->scheduleRequestedAt:J

    move/from16 v1, v26

    .line 614
    invoke-interface {v5, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    goto :goto_7

    :cond_6
    const/4 v2, 0x0

    .line 615
    :goto_7
    iput-boolean v2, v6, Landroidx/work/impl/model/WorkSpec;->runInForeground:Z

    .line 616
    iput-object v15, v6, Landroidx/work/impl/model/WorkSpec;->constraints:Landroidx/work/b;

    .line 617
    aput-object v6, v28, v27
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v27, v27, 0x1

    move/from16 v25, v0

    move/from16 v26, v1

    move v1, v7

    move v6, v13

    move-object/from16 v2, v28

    move/from16 v13, v29

    move/from16 v15, v30

    move/from16 v7, v31

    move/from16 v0, v32

    move/from16 v33, v22

    move/from16 v22, v3

    move/from16 v3, v18

    move/from16 v18, v20

    move/from16 v20, v21

    move/from16 v21, v33

    goto/16 :goto_2

    :cond_7
    move-object/from16 v28, v2

    .line 622
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 623
    invoke-virtual/range {v16 .. v16}, Landroidx/room/k;->a()V

    return-object v28

    :catchall_0
    move-exception v0

    goto :goto_8

    :catchall_1
    move-exception v0

    move-object/from16 v16, v2

    .line 622
    :goto_8
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 623
    invoke-virtual/range {v16 .. v16}, Landroidx/room/k;->a()V

    .line 624
    throw v0
.end method

.method public final getWorkStatusPojoForId(Ljava/lang/String;)Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;
    .locals 9

    const-string v0, "SELECT id, state, output, run_attempt_count FROM workspec WHERE id=?"

    const/4 v1, 0x1

    .line 744
    invoke-static {v0, v1}, Landroidx/room/k;->a(Ljava/lang/String;I)Landroidx/room/k;

    move-result-object v0

    if-nez p1, :cond_0

    .line 7234
    iget-object p1, v0, Landroidx/room/k;->e:[I

    aput v1, p1, v1

    goto :goto_0

    .line 749
    :cond_0
    invoke-virtual {v0, v1, p1}, Landroidx/room/k;->a(ILjava/lang/String;)V

    .line 751
    :goto_0
    iget-object p1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/h;

    invoke-virtual {p1}, Landroidx/room/h;->d()V

    .line 752
    iget-object p1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/h;

    invoke-virtual {p1}, Landroidx/room/h;->e()V

    .line 754
    :try_start_0
    iget-object p1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/h;

    invoke-static {p1, v0, v1}, Landroidx/room/b/c;->a(Landroidx/room/h;Landroidx/sqlite/db/d;Z)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v1, "id"

    .line 756
    invoke-static {p1, v1}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    const-string v2, "state"

    .line 757
    invoke-static {p1, v2}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v3, "output"

    .line 758
    invoke-static {p1, v3}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string v4, "run_attempt_count"

    .line 759
    invoke-static {p1, v4}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 760
    new-instance v5, Landroidx/b/a;

    invoke-direct {v5}, Landroidx/b/a;-><init>()V

    .line 761
    new-instance v6, Landroidx/b/a;

    invoke-direct {v6}, Landroidx/b/a;-><init>()V

    .line 762
    :cond_1
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 763
    invoke-interface {p1, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-nez v7, :cond_2

    .line 764
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 765
    invoke-virtual {v5, v7}, Landroidx/b/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    if-nez v8, :cond_2

    .line 767
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 768
    invoke-virtual {v5, v7, v8}, Landroidx/b/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 771
    :cond_2
    invoke-interface {p1, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-nez v7, :cond_1

    .line 772
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 773
    invoke-virtual {v6, v7}, Landroidx/b/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    if-nez v8, :cond_1

    .line 775
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 776
    invoke-virtual {v6, v7, v8}, Landroidx/b/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    const/4 v7, -0x1

    .line 780
    invoke-interface {p1, v7}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 781
    invoke-direct {p0, v5}, Landroidx/work/impl/model/WorkSpecDao_Impl;->__fetchRelationshipWorkTagAsjavaLangString(Landroidx/b/a;)V

    .line 782
    invoke-direct {p0, v6}, Landroidx/work/impl/model/WorkSpecDao_Impl;->__fetchRelationshipWorkProgressAsandroidxWorkData(Landroidx/b/a;)V

    .line 784
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_8

    .line 786
    invoke-interface {p1, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-nez v7, :cond_4

    .line 787
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 788
    invoke-virtual {v5, v7}, Landroidx/b/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    goto :goto_2

    :cond_4
    move-object v5, v8

    :goto_2
    if-nez v5, :cond_5

    .line 791
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 794
    :cond_5
    invoke-interface {p1, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-nez v7, :cond_6

    .line 795
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 796
    invoke-virtual {v6, v7}, Landroidx/b/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v8, v6

    check-cast v8, Ljava/util/ArrayList;

    :cond_6
    if-nez v8, :cond_7

    .line 799
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 801
    :cond_7
    new-instance v6, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;

    invoke-direct {v6}, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;-><init>()V

    .line 802
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->id:Ljava/lang/String;

    .line 804
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 805
    invoke-static {v1}, Landroidx/work/impl/model/WorkTypeConverters;->intToState(I)Landroidx/work/t$a;

    move-result-object v1

    iput-object v1, v6, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->state:Landroidx/work/t$a;

    .line 807
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    .line 808
    invoke-static {v1}, Landroidx/work/d;->a([B)Landroidx/work/d;

    move-result-object v1

    iput-object v1, v6, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->output:Landroidx/work/d;

    .line 809
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v6, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->runAttemptCount:I

    .line 810
    iput-object v5, v6, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->tags:Ljava/util/List;

    .line 811
    iput-object v8, v6, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->progress:Ljava/util/List;

    move-object v8, v6

    .line 815
    :cond_8
    iget-object v1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/h;

    invoke-virtual {v1}, Landroidx/room/h;->g()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 818
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 819
    invoke-virtual {v0}, Landroidx/room/k;->a()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 822
    iget-object p1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/h;

    invoke-virtual {p1}, Landroidx/room/h;->f()V

    return-object v8

    :catchall_0
    move-exception v1

    .line 818
    :try_start_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 819
    invoke-virtual {v0}, Landroidx/room/k;->a()V

    .line 820
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    .line 822
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/h;

    invoke-virtual {v0}, Landroidx/room/h;->f()V

    .line 823
    throw p1
.end method

.method public final getWorkStatusPojoForIds(Ljava/util/List;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;",
            ">;"
        }
    .end annotation

    .line 828
    invoke-static {}, Landroidx/room/b/e;->a()Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "SELECT id, state, output, run_attempt_count FROM workspec WHERE id IN ("

    .line 829
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 830
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 831
    invoke-static {v0, v1}, Landroidx/room/b/e;->a(Ljava/lang/StringBuilder;I)V

    const-string v2, ")"

    .line 832
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 833
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x0

    .line 835
    invoke-static {v0, v1}, Landroidx/room/k;->a(Ljava/lang/String;I)Landroidx/room/k;

    move-result-object v0

    .line 837
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x1

    const/4 v2, 0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_0

    .line 8234
    iget-object v3, v0, Landroidx/room/k;->e:[I

    aput v1, v3, v2

    goto :goto_1

    .line 841
    :cond_0
    invoke-virtual {v0, v2, v3}, Landroidx/room/k;->a(ILjava/lang/String;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 845
    :cond_1
    iget-object p1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/h;

    invoke-virtual {p1}, Landroidx/room/h;->d()V

    .line 846
    iget-object p1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/h;

    invoke-virtual {p1}, Landroidx/room/h;->e()V

    .line 848
    :try_start_0
    iget-object p1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/h;

    invoke-static {p1, v0, v1}, Landroidx/room/b/c;->a(Landroidx/room/h;Landroidx/sqlite/db/d;Z)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v1, "id"

    .line 850
    invoke-static {p1, v1}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    const-string v2, "state"

    .line 851
    invoke-static {p1, v2}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v3, "output"

    .line 852
    invoke-static {p1, v3}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string v4, "run_attempt_count"

    .line 853
    invoke-static {p1, v4}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 854
    new-instance v5, Landroidx/b/a;

    invoke-direct {v5}, Landroidx/b/a;-><init>()V

    .line 855
    new-instance v6, Landroidx/b/a;

    invoke-direct {v6}, Landroidx/b/a;-><init>()V

    .line 856
    :cond_2
    :goto_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 857
    invoke-interface {p1, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-nez v7, :cond_3

    .line 858
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 859
    invoke-virtual {v5, v7}, Landroidx/b/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    if-nez v8, :cond_3

    .line 861
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 862
    invoke-virtual {v5, v7, v8}, Landroidx/b/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 865
    :cond_3
    invoke-interface {p1, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-nez v7, :cond_2

    .line 866
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 867
    invoke-virtual {v6, v7}, Landroidx/b/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    if-nez v8, :cond_2

    .line 869
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 870
    invoke-virtual {v6, v7, v8}, Landroidx/b/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_4
    const/4 v7, -0x1

    .line 874
    invoke-interface {p1, v7}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 875
    invoke-direct {p0, v5}, Landroidx/work/impl/model/WorkSpecDao_Impl;->__fetchRelationshipWorkTagAsjavaLangString(Landroidx/b/a;)V

    .line 876
    invoke-direct {p0, v6}, Landroidx/work/impl/model/WorkSpecDao_Impl;->__fetchRelationshipWorkProgressAsandroidxWorkData(Landroidx/b/a;)V

    .line 877
    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 878
    :goto_3
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 881
    invoke-interface {p1, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    const/4 v9, 0x0

    if-nez v8, :cond_5

    .line 882
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 883
    invoke-virtual {v5, v8}, Landroidx/b/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    goto :goto_4

    :cond_5
    move-object v8, v9

    :goto_4
    if-nez v8, :cond_6

    .line 886
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 889
    :cond_6
    invoke-interface {p1, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v10

    if-nez v10, :cond_7

    .line 890
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 891
    invoke-virtual {v6, v9}, Landroidx/b/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    :cond_7
    if-nez v9, :cond_8

    .line 894
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 896
    :cond_8
    new-instance v10, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;

    invoke-direct {v10}, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;-><init>()V

    .line 897
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->id:Ljava/lang/String;

    .line 899
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 900
    invoke-static {v11}, Landroidx/work/impl/model/WorkTypeConverters;->intToState(I)Landroidx/work/t$a;

    move-result-object v11

    iput-object v11, v10, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->state:Landroidx/work/t$a;

    .line 902
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v11

    .line 903
    invoke-static {v11}, Landroidx/work/d;->a([B)Landroidx/work/d;

    move-result-object v11

    iput-object v11, v10, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->output:Landroidx/work/d;

    .line 904
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    iput v11, v10, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->runAttemptCount:I

    .line 905
    iput-object v8, v10, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->tags:Ljava/util/List;

    .line 906
    iput-object v9, v10, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->progress:Ljava/util/List;

    .line 907
    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 909
    :cond_9
    iget-object v1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/h;

    invoke-virtual {v1}, Landroidx/room/h;->g()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 912
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 913
    invoke-virtual {v0}, Landroidx/room/k;->a()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 916
    iget-object p1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/h;

    invoke-virtual {p1}, Landroidx/room/h;->f()V

    return-object v7

    :catchall_0
    move-exception v1

    .line 912
    :try_start_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 913
    invoke-virtual {v0}, Landroidx/room/k;->a()V

    .line 914
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    .line 916
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/h;

    invoke-virtual {v0}, Landroidx/room/h;->f()V

    .line 917
    throw p1
.end method

.method public final getWorkStatusPojoForName(Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;",
            ">;"
        }
    .end annotation

    const-string v0, "SELECT id, state, output, run_attempt_count FROM workspec WHERE id IN (SELECT work_spec_id FROM workname WHERE name=?)"

    const/4 v1, 0x1

    .line 1203
    invoke-static {v0, v1}, Landroidx/room/k;->a(Ljava/lang/String;I)Landroidx/room/k;

    move-result-object v0

    if-nez p1, :cond_0

    .line 12234
    iget-object p1, v0, Landroidx/room/k;->e:[I

    aput v1, p1, v1

    goto :goto_0

    .line 1208
    :cond_0
    invoke-virtual {v0, v1, p1}, Landroidx/room/k;->a(ILjava/lang/String;)V

    .line 1210
    :goto_0
    iget-object p1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/h;

    invoke-virtual {p1}, Landroidx/room/h;->d()V

    .line 1211
    iget-object p1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/h;

    invoke-virtual {p1}, Landroidx/room/h;->e()V

    .line 1213
    :try_start_0
    iget-object p1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/h;

    invoke-static {p1, v0, v1}, Landroidx/room/b/c;->a(Landroidx/room/h;Landroidx/sqlite/db/d;Z)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v1, "id"

    .line 1215
    invoke-static {p1, v1}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    const-string v2, "state"

    .line 1216
    invoke-static {p1, v2}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v3, "output"

    .line 1217
    invoke-static {p1, v3}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string v4, "run_attempt_count"

    .line 1218
    invoke-static {p1, v4}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 1219
    new-instance v5, Landroidx/b/a;

    invoke-direct {v5}, Landroidx/b/a;-><init>()V

    .line 1220
    new-instance v6, Landroidx/b/a;

    invoke-direct {v6}, Landroidx/b/a;-><init>()V

    .line 1221
    :cond_1
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1222
    invoke-interface {p1, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-nez v7, :cond_2

    .line 1223
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1224
    invoke-virtual {v5, v7}, Landroidx/b/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    if-nez v8, :cond_2

    .line 1226
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1227
    invoke-virtual {v5, v7, v8}, Landroidx/b/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1230
    :cond_2
    invoke-interface {p1, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1231
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1232
    invoke-virtual {v6, v7}, Landroidx/b/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    if-nez v8, :cond_1

    .line 1234
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1235
    invoke-virtual {v6, v7, v8}, Landroidx/b/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    const/4 v7, -0x1

    .line 1239
    invoke-interface {p1, v7}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1240
    invoke-direct {p0, v5}, Landroidx/work/impl/model/WorkSpecDao_Impl;->__fetchRelationshipWorkTagAsjavaLangString(Landroidx/b/a;)V

    .line 1241
    invoke-direct {p0, v6}, Landroidx/work/impl/model/WorkSpecDao_Impl;->__fetchRelationshipWorkProgressAsandroidxWorkData(Landroidx/b/a;)V

    .line 1242
    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 1243
    :goto_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 1246
    invoke-interface {p1, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    const/4 v9, 0x0

    if-nez v8, :cond_4

    .line 1247
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1248
    invoke-virtual {v5, v8}, Landroidx/b/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    goto :goto_3

    :cond_4
    move-object v8, v9

    :goto_3
    if-nez v8, :cond_5

    .line 1251
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1254
    :cond_5
    invoke-interface {p1, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v10

    if-nez v10, :cond_6

    .line 1255
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1256
    invoke-virtual {v6, v9}, Landroidx/b/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    :cond_6
    if-nez v9, :cond_7

    .line 1259
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1261
    :cond_7
    new-instance v10, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;

    invoke-direct {v10}, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;-><init>()V

    .line 1262
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->id:Ljava/lang/String;

    .line 1264
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 1265
    invoke-static {v11}, Landroidx/work/impl/model/WorkTypeConverters;->intToState(I)Landroidx/work/t$a;

    move-result-object v11

    iput-object v11, v10, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->state:Landroidx/work/t$a;

    .line 1267
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v11

    .line 1268
    invoke-static {v11}, Landroidx/work/d;->a([B)Landroidx/work/d;

    move-result-object v11

    iput-object v11, v10, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->output:Landroidx/work/d;

    .line 1269
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    iput v11, v10, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->runAttemptCount:I

    .line 1270
    iput-object v8, v10, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->tags:Ljava/util/List;

    .line 1271
    iput-object v9, v10, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->progress:Ljava/util/List;

    .line 1272
    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1274
    :cond_8
    iget-object v1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/h;

    invoke-virtual {v1}, Landroidx/room/h;->g()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1277
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 1278
    invoke-virtual {v0}, Landroidx/room/k;->a()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1281
    iget-object p1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/h;

    invoke-virtual {p1}, Landroidx/room/h;->f()V

    return-object v7

    :catchall_0
    move-exception v1

    .line 1277
    :try_start_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 1278
    invoke-virtual {v0}, Landroidx/room/k;->a()V

    .line 1279
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    .line 1281
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/h;

    invoke-virtual {v0}, Landroidx/room/h;->f()V

    .line 1282
    throw p1
.end method

.method public final getWorkStatusPojoForTag(Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;",
            ">;"
        }
    .end annotation

    const-string v0, "SELECT id, state, output, run_attempt_count FROM workspec WHERE id IN (SELECT work_spec_id FROM worktag WHERE tag=?)"

    const/4 v1, 0x1

    .line 1025
    invoke-static {v0, v1}, Landroidx/room/k;->a(Ljava/lang/String;I)Landroidx/room/k;

    move-result-object v0

    if-nez p1, :cond_0

    .line 10234
    iget-object p1, v0, Landroidx/room/k;->e:[I

    aput v1, p1, v1

    goto :goto_0

    .line 1030
    :cond_0
    invoke-virtual {v0, v1, p1}, Landroidx/room/k;->a(ILjava/lang/String;)V

    .line 1032
    :goto_0
    iget-object p1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/h;

    invoke-virtual {p1}, Landroidx/room/h;->d()V

    .line 1033
    iget-object p1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/h;

    invoke-virtual {p1}, Landroidx/room/h;->e()V

    .line 1035
    :try_start_0
    iget-object p1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/h;

    invoke-static {p1, v0, v1}, Landroidx/room/b/c;->a(Landroidx/room/h;Landroidx/sqlite/db/d;Z)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v1, "id"

    .line 1037
    invoke-static {p1, v1}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    const-string v2, "state"

    .line 1038
    invoke-static {p1, v2}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v3, "output"

    .line 1039
    invoke-static {p1, v3}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string v4, "run_attempt_count"

    .line 1040
    invoke-static {p1, v4}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 1041
    new-instance v5, Landroidx/b/a;

    invoke-direct {v5}, Landroidx/b/a;-><init>()V

    .line 1042
    new-instance v6, Landroidx/b/a;

    invoke-direct {v6}, Landroidx/b/a;-><init>()V

    .line 1043
    :cond_1
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1044
    invoke-interface {p1, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-nez v7, :cond_2

    .line 1045
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1046
    invoke-virtual {v5, v7}, Landroidx/b/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    if-nez v8, :cond_2

    .line 1048
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1049
    invoke-virtual {v5, v7, v8}, Landroidx/b/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1052
    :cond_2
    invoke-interface {p1, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1053
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1054
    invoke-virtual {v6, v7}, Landroidx/b/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    if-nez v8, :cond_1

    .line 1056
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1057
    invoke-virtual {v6, v7, v8}, Landroidx/b/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    const/4 v7, -0x1

    .line 1061
    invoke-interface {p1, v7}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1062
    invoke-direct {p0, v5}, Landroidx/work/impl/model/WorkSpecDao_Impl;->__fetchRelationshipWorkTagAsjavaLangString(Landroidx/b/a;)V

    .line 1063
    invoke-direct {p0, v6}, Landroidx/work/impl/model/WorkSpecDao_Impl;->__fetchRelationshipWorkProgressAsandroidxWorkData(Landroidx/b/a;)V

    .line 1064
    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 1065
    :goto_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 1068
    invoke-interface {p1, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    const/4 v9, 0x0

    if-nez v8, :cond_4

    .line 1069
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1070
    invoke-virtual {v5, v8}, Landroidx/b/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    goto :goto_3

    :cond_4
    move-object v8, v9

    :goto_3
    if-nez v8, :cond_5

    .line 1073
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1076
    :cond_5
    invoke-interface {p1, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v10

    if-nez v10, :cond_6

    .line 1077
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1078
    invoke-virtual {v6, v9}, Landroidx/b/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    :cond_6
    if-nez v9, :cond_7

    .line 1081
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1083
    :cond_7
    new-instance v10, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;

    invoke-direct {v10}, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;-><init>()V

    .line 1084
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->id:Ljava/lang/String;

    .line 1086
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 1087
    invoke-static {v11}, Landroidx/work/impl/model/WorkTypeConverters;->intToState(I)Landroidx/work/t$a;

    move-result-object v11

    iput-object v11, v10, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->state:Landroidx/work/t$a;

    .line 1089
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v11

    .line 1090
    invoke-static {v11}, Landroidx/work/d;->a([B)Landroidx/work/d;

    move-result-object v11

    iput-object v11, v10, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->output:Landroidx/work/d;

    .line 1091
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    iput v11, v10, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->runAttemptCount:I

    .line 1092
    iput-object v8, v10, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->tags:Ljava/util/List;

    .line 1093
    iput-object v9, v10, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->progress:Ljava/util/List;

    .line 1094
    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1096
    :cond_8
    iget-object v1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/h;

    invoke-virtual {v1}, Landroidx/room/h;->g()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1099
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 1100
    invoke-virtual {v0}, Landroidx/room/k;->a()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1103
    iget-object p1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/h;

    invoke-virtual {p1}, Landroidx/room/h;->f()V

    return-object v7

    :catchall_0
    move-exception v1

    .line 1099
    :try_start_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 1100
    invoke-virtual {v0}, Landroidx/room/k;->a()V

    .line 1101
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    .line 1103
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/h;

    invoke-virtual {v0}, Landroidx/room/h;->f()V

    .line 1104
    throw p1
.end method

.method public final getWorkStatusPojoLiveDataForIds(Ljava/util/List;)Landroidx/lifecycle/LiveData;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;",
            ">;>;"
        }
    .end annotation

    .line 922
    invoke-static {}, Landroidx/room/b/e;->a()Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "SELECT id, state, output, run_attempt_count FROM workspec WHERE id IN ("

    .line 923
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 924
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 925
    invoke-static {v0, v1}, Landroidx/room/b/e;->a(Ljava/lang/StringBuilder;I)V

    const-string v2, ")"

    .line 926
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 927
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x0

    .line 929
    invoke-static {v0, v1}, Landroidx/room/k;->a(Ljava/lang/String;I)Landroidx/room/k;

    move-result-object v0

    .line 931
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x1

    const/4 v2, 0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_0

    .line 9234
    iget-object v3, v0, Landroidx/room/k;->e:[I

    aput v1, v3, v2

    goto :goto_1

    .line 935
    :cond_0
    invoke-virtual {v0, v2, v3}, Landroidx/room/k;->a(ILjava/lang/String;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 939
    :cond_1
    iget-object p1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/h;

    .line 9465
    iget-object p1, p1, Landroidx/room/h;->e:Landroidx/room/e;

    const-string v2, "WorkTag"

    const-string v3, "WorkProgress"

    const-string v4, "workspec"

    .line 939
    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroidx/work/impl/model/WorkSpecDao_Impl$11;

    invoke-direct {v3, p0, v0}, Landroidx/work/impl/model/WorkSpecDao_Impl$11;-><init>(Landroidx/work/impl/model/WorkSpecDao_Impl;Landroidx/room/k;)V

    invoke-virtual {p1, v2, v1, v3}, Landroidx/room/e;->a([Ljava/lang/String;ZLjava/util/concurrent/Callable;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method

.method public final getWorkStatusPojoLiveDataForName(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;",
            ">;>;"
        }
    .end annotation

    const-string v0, "SELECT id, state, output, run_attempt_count FROM workspec WHERE id IN (SELECT work_spec_id FROM workname WHERE name=?)"

    const/4 v1, 0x1

    .line 1288
    invoke-static {v0, v1}, Landroidx/room/k;->a(Ljava/lang/String;I)Landroidx/room/k;

    move-result-object v0

    if-nez p1, :cond_0

    .line 13234
    iget-object p1, v0, Landroidx/room/k;->e:[I

    aput v1, p1, v1

    goto :goto_0

    .line 1293
    :cond_0
    invoke-virtual {v0, v1, p1}, Landroidx/room/k;->a(ILjava/lang/String;)V

    .line 1295
    :goto_0
    iget-object p1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/h;

    .line 13465
    iget-object p1, p1, Landroidx/room/h;->e:Landroidx/room/e;

    const-string v2, "WorkTag"

    const-string v3, "WorkProgress"

    const-string v4, "workspec"

    const-string v5, "workname"

    .line 1295
    filled-new-array {v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroidx/work/impl/model/WorkSpecDao_Impl$13;

    invoke-direct {v3, p0, v0}, Landroidx/work/impl/model/WorkSpecDao_Impl$13;-><init>(Landroidx/work/impl/model/WorkSpecDao_Impl;Landroidx/room/k;)V

    invoke-virtual {p1, v2, v1, v3}, Landroidx/room/e;->a([Ljava/lang/String;ZLjava/util/concurrent/Callable;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method

.method public final getWorkStatusPojoLiveDataForTag(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;",
            ">;>;"
        }
    .end annotation

    const-string v0, "SELECT id, state, output, run_attempt_count FROM workspec WHERE id IN (SELECT work_spec_id FROM worktag WHERE tag=?)"

    const/4 v1, 0x1

    .line 1110
    invoke-static {v0, v1}, Landroidx/room/k;->a(Ljava/lang/String;I)Landroidx/room/k;

    move-result-object v0

    if-nez p1, :cond_0

    .line 11234
    iget-object p1, v0, Landroidx/room/k;->e:[I

    aput v1, p1, v1

    goto :goto_0

    .line 1115
    :cond_0
    invoke-virtual {v0, v1, p1}, Landroidx/room/k;->a(ILjava/lang/String;)V

    .line 1117
    :goto_0
    iget-object p1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/h;

    .line 11465
    iget-object p1, p1, Landroidx/room/h;->e:Landroidx/room/e;

    const-string v2, "WorkTag"

    const-string v3, "WorkProgress"

    const-string v4, "workspec"

    const-string v5, "worktag"

    .line 1117
    filled-new-array {v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroidx/work/impl/model/WorkSpecDao_Impl$12;

    invoke-direct {v3, p0, v0}, Landroidx/work/impl/model/WorkSpecDao_Impl$12;-><init>(Landroidx/work/impl/model/WorkSpecDao_Impl;Landroidx/room/k;)V

    invoke-virtual {p1, v2, v1, v3}, Landroidx/room/e;->a([Ljava/lang/String;ZLjava/util/concurrent/Callable;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method

.method public final incrementWorkSpecRunAttemptCount(Ljava/lang/String;)I
    .locals 2

    .line 288
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/h;

    invoke-virtual {v0}, Landroidx/room/h;->d()V

    .line 289
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfIncrementWorkSpecRunAttemptCount:Landroidx/room/o;

    invoke-virtual {v0}, Landroidx/room/o;->acquire()Landroidx/sqlite/db/e;

    move-result-object v0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 292
    invoke-interface {v0, v1}, Landroidx/sqlite/db/e;->a(I)V

    goto :goto_0

    .line 294
    :cond_0
    invoke-interface {v0, v1, p1}, Landroidx/sqlite/db/e;->a(ILjava/lang/String;)V

    .line 296
    :goto_0
    iget-object p1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/h;

    invoke-virtual {p1}, Landroidx/room/h;->e()V

    .line 298
    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/e;->a()I

    move-result p1

    .line 299
    iget-object v1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/h;

    invoke-virtual {v1}, Landroidx/room/h;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 302
    iget-object v1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/h;

    invoke-virtual {v1}, Landroidx/room/h;->f()V

    .line 303
    iget-object v1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfIncrementWorkSpecRunAttemptCount:Landroidx/room/o;

    invoke-virtual {v1, v0}, Landroidx/room/o;->release(Landroidx/sqlite/db/e;)V

    return p1

    :catchall_0
    move-exception p1

    .line 302
    iget-object v1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/h;

    invoke-virtual {v1}, Landroidx/room/h;->f()V

    .line 303
    iget-object v1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfIncrementWorkSpecRunAttemptCount:Landroidx/room/o;

    invoke-virtual {v1, v0}, Landroidx/room/o;->release(Landroidx/sqlite/db/e;)V

    .line 304
    throw p1
.end method

.method public final insertWorkSpec(Landroidx/work/impl/model/WorkSpec;)V
    .locals 1

    .line 206
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/h;

    invoke-virtual {v0}, Landroidx/room/h;->d()V

    .line 207
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/h;

    invoke-virtual {v0}, Landroidx/room/h;->e()V

    .line 209
    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__insertionAdapterOfWorkSpec:Landroidx/room/a;

    invoke-virtual {v0, p1}, Landroidx/room/a;->insert(Ljava/lang/Object;)V

    .line 210
    iget-object p1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/h;

    invoke-virtual {p1}, Landroidx/room/h;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    iget-object p1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/h;

    invoke-virtual {p1}, Landroidx/room/h;->f()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/h;

    invoke-virtual {v0}, Landroidx/room/h;->f()V

    .line 213
    throw p1
.end method

.method public final markWorkSpecScheduled(Ljava/lang/String;J)I
    .locals 2

    .line 330
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/h;

    invoke-virtual {v0}, Landroidx/room/h;->d()V

    .line 331
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfMarkWorkSpecScheduled:Landroidx/room/o;

    invoke-virtual {v0}, Landroidx/room/o;->acquire()Landroidx/sqlite/db/e;

    move-result-object v0

    const/4 v1, 0x1

    .line 333
    invoke-interface {v0, v1, p2, p3}, Landroidx/sqlite/db/e;->a(IJ)V

    const/4 p2, 0x2

    if-nez p1, :cond_0

    .line 336
    invoke-interface {v0, p2}, Landroidx/sqlite/db/e;->a(I)V

    goto :goto_0

    .line 338
    :cond_0
    invoke-interface {v0, p2, p1}, Landroidx/sqlite/db/e;->a(ILjava/lang/String;)V

    .line 340
    :goto_0
    iget-object p1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/h;

    invoke-virtual {p1}, Landroidx/room/h;->e()V

    .line 342
    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/e;->a()I

    move-result p1

    .line 343
    iget-object p2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/h;

    invoke-virtual {p2}, Landroidx/room/h;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 346
    iget-object p2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/h;

    invoke-virtual {p2}, Landroidx/room/h;->f()V

    .line 347
    iget-object p2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfMarkWorkSpecScheduled:Landroidx/room/o;

    invoke-virtual {p2, v0}, Landroidx/room/o;->release(Landroidx/sqlite/db/e;)V

    return p1

    :catchall_0
    move-exception p1

    .line 346
    iget-object p2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/h;

    invoke-virtual {p2}, Landroidx/room/h;->f()V

    .line 347
    iget-object p2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfMarkWorkSpecScheduled:Landroidx/room/o;

    invoke-virtual {p2, v0}, Landroidx/room/o;->release(Landroidx/sqlite/db/e;)V

    .line 348
    throw p1
.end method

.method public final pruneFinishedWorkWithZeroDependentsIgnoringKeepForAtLeast()V
    .locals 3

    .line 368
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/h;

    invoke-virtual {v0}, Landroidx/room/h;->d()V

    .line 369
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfPruneFinishedWorkWithZeroDependentsIgnoringKeepForAtLeast:Landroidx/room/o;

    invoke-virtual {v0}, Landroidx/room/o;->acquire()Landroidx/sqlite/db/e;

    move-result-object v0

    .line 370
    iget-object v1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/h;

    invoke-virtual {v1}, Landroidx/room/h;->e()V

    .line 372
    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/e;->a()I

    .line 373
    iget-object v1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/h;

    invoke-virtual {v1}, Landroidx/room/h;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 375
    iget-object v1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/h;

    invoke-virtual {v1}, Landroidx/room/h;->f()V

    .line 376
    iget-object v1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfPruneFinishedWorkWithZeroDependentsIgnoringKeepForAtLeast:Landroidx/room/o;

    invoke-virtual {v1, v0}, Landroidx/room/o;->release(Landroidx/sqlite/db/e;)V

    return-void

    :catchall_0
    move-exception v1

    .line 375
    iget-object v2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/h;

    invoke-virtual {v2}, Landroidx/room/h;->f()V

    .line 376
    iget-object v2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfPruneFinishedWorkWithZeroDependentsIgnoringKeepForAtLeast:Landroidx/room/o;

    invoke-virtual {v2, v0}, Landroidx/room/o;->release(Landroidx/sqlite/db/e;)V

    .line 377
    throw v1
.end method

.method public final resetScheduledState()I
    .locals 3

    .line 353
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/h;

    invoke-virtual {v0}, Landroidx/room/h;->d()V

    .line 354
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfResetScheduledState:Landroidx/room/o;

    invoke-virtual {v0}, Landroidx/room/o;->acquire()Landroidx/sqlite/db/e;

    move-result-object v0

    .line 355
    iget-object v1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/h;

    invoke-virtual {v1}, Landroidx/room/h;->e()V

    .line 357
    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/e;->a()I

    move-result v1

    .line 358
    iget-object v2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/h;

    invoke-virtual {v2}, Landroidx/room/h;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 361
    iget-object v2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/h;

    invoke-virtual {v2}, Landroidx/room/h;->f()V

    .line 362
    iget-object v2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfResetScheduledState:Landroidx/room/o;

    invoke-virtual {v2, v0}, Landroidx/room/o;->release(Landroidx/sqlite/db/e;)V

    return v1

    :catchall_0
    move-exception v1

    .line 361
    iget-object v2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/h;

    invoke-virtual {v2}, Landroidx/room/h;->f()V

    .line 362
    iget-object v2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfResetScheduledState:Landroidx/room/o;

    invoke-virtual {v2, v0}, Landroidx/room/o;->release(Landroidx/sqlite/db/e;)V

    .line 363
    throw v1
.end method

.method public final resetWorkSpecRunAttemptCount(Ljava/lang/String;)I
    .locals 2

    .line 309
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/h;

    invoke-virtual {v0}, Landroidx/room/h;->d()V

    .line 310
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfResetWorkSpecRunAttemptCount:Landroidx/room/o;

    invoke-virtual {v0}, Landroidx/room/o;->acquire()Landroidx/sqlite/db/e;

    move-result-object v0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 313
    invoke-interface {v0, v1}, Landroidx/sqlite/db/e;->a(I)V

    goto :goto_0

    .line 315
    :cond_0
    invoke-interface {v0, v1, p1}, Landroidx/sqlite/db/e;->a(ILjava/lang/String;)V

    .line 317
    :goto_0
    iget-object p1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/h;

    invoke-virtual {p1}, Landroidx/room/h;->e()V

    .line 319
    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/e;->a()I

    move-result p1

    .line 320
    iget-object v1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/h;

    invoke-virtual {v1}, Landroidx/room/h;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 323
    iget-object v1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/h;

    invoke-virtual {v1}, Landroidx/room/h;->f()V

    .line 324
    iget-object v1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfResetWorkSpecRunAttemptCount:Landroidx/room/o;

    invoke-virtual {v1, v0}, Landroidx/room/o;->release(Landroidx/sqlite/db/e;)V

    return p1

    :catchall_0
    move-exception p1

    .line 323
    iget-object v1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/h;

    invoke-virtual {v1}, Landroidx/room/h;->f()V

    .line 324
    iget-object v1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfResetWorkSpecRunAttemptCount:Landroidx/room/o;

    invoke-virtual {v1, v0}, Landroidx/room/o;->release(Landroidx/sqlite/db/e;)V

    .line 325
    throw p1
.end method

.method public final setOutput(Ljava/lang/String;Landroidx/work/d;)V
    .locals 2

    .line 238
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/h;

    invoke-virtual {v0}, Landroidx/room/h;->d()V

    .line 239
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfSetOutput:Landroidx/room/o;

    invoke-virtual {v0}, Landroidx/room/o;->acquire()Landroidx/sqlite/db/e;

    move-result-object v0

    .line 242
    invoke-static {p2}, Landroidx/work/d;->a(Landroidx/work/d;)[B

    move-result-object p2

    const/4 v1, 0x1

    if-nez p2, :cond_0

    .line 244
    invoke-interface {v0, v1}, Landroidx/sqlite/db/e;->a(I)V

    goto :goto_0

    .line 246
    :cond_0
    invoke-interface {v0, v1, p2}, Landroidx/sqlite/db/e;->a(I[B)V

    :goto_0
    const/4 p2, 0x2

    if-nez p1, :cond_1

    .line 250
    invoke-interface {v0, p2}, Landroidx/sqlite/db/e;->a(I)V

    goto :goto_1

    .line 252
    :cond_1
    invoke-interface {v0, p2, p1}, Landroidx/sqlite/db/e;->a(ILjava/lang/String;)V

    .line 254
    :goto_1
    iget-object p1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/h;

    invoke-virtual {p1}, Landroidx/room/h;->e()V

    .line 256
    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/e;->a()I

    .line 257
    iget-object p1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/h;

    invoke-virtual {p1}, Landroidx/room/h;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    iget-object p1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/h;

    invoke-virtual {p1}, Landroidx/room/h;->f()V

    .line 260
    iget-object p1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfSetOutput:Landroidx/room/o;

    invoke-virtual {p1, v0}, Landroidx/room/o;->release(Landroidx/sqlite/db/e;)V

    return-void

    :catchall_0
    move-exception p1

    .line 259
    iget-object p2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/h;

    invoke-virtual {p2}, Landroidx/room/h;->f()V

    .line 260
    iget-object p2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfSetOutput:Landroidx/room/o;

    invoke-virtual {p2, v0}, Landroidx/room/o;->release(Landroidx/sqlite/db/e;)V

    .line 261
    throw p1
.end method

.method public final setPeriodStartTime(Ljava/lang/String;J)V
    .locals 2

    .line 266
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/h;

    invoke-virtual {v0}, Landroidx/room/h;->d()V

    .line 267
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfSetPeriodStartTime:Landroidx/room/o;

    invoke-virtual {v0}, Landroidx/room/o;->acquire()Landroidx/sqlite/db/e;

    move-result-object v0

    const/4 v1, 0x1

    .line 269
    invoke-interface {v0, v1, p2, p3}, Landroidx/sqlite/db/e;->a(IJ)V

    const/4 p2, 0x2

    if-nez p1, :cond_0

    .line 272
    invoke-interface {v0, p2}, Landroidx/sqlite/db/e;->a(I)V

    goto :goto_0

    .line 274
    :cond_0
    invoke-interface {v0, p2, p1}, Landroidx/sqlite/db/e;->a(ILjava/lang/String;)V

    .line 276
    :goto_0
    iget-object p1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/h;

    invoke-virtual {p1}, Landroidx/room/h;->e()V

    .line 278
    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/e;->a()I

    .line 279
    iget-object p1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/h;

    invoke-virtual {p1}, Landroidx/room/h;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 281
    iget-object p1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/h;

    invoke-virtual {p1}, Landroidx/room/h;->f()V

    .line 282
    iget-object p1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfSetPeriodStartTime:Landroidx/room/o;

    invoke-virtual {p1, v0}, Landroidx/room/o;->release(Landroidx/sqlite/db/e;)V

    return-void

    :catchall_0
    move-exception p1

    .line 281
    iget-object p2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/h;

    invoke-virtual {p2}, Landroidx/room/h;->f()V

    .line 282
    iget-object p2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfSetPeriodStartTime:Landroidx/room/o;

    invoke-virtual {p2, v0}, Landroidx/room/o;->release(Landroidx/sqlite/db/e;)V

    .line 283
    throw p1
.end method

.method public final varargs setState(Landroidx/work/t$a;[Ljava/lang/String;)I
    .locals 4

    .line 2079
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/h;

    invoke-virtual {v0}, Landroidx/room/h;->d()V

    .line 2080
    invoke-static {}, Landroidx/room/b/e;->a()Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "UPDATE workspec SET state="

    .line 2081
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?"

    .line 2082
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " WHERE id IN ("

    .line 2083
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2084
    array-length v1, p2

    .line 2085
    invoke-static {v0, v1}, Landroidx/room/b/e;->a(Ljava/lang/StringBuilder;I)V

    const-string v1, ")"

    .line 2086
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2087
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2088
    iget-object v1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/h;

    invoke-virtual {v1, v0}, Landroidx/room/h;->a(Ljava/lang/String;)Landroidx/sqlite/db/e;

    move-result-object v0

    .line 2091
    invoke-static {p1}, Landroidx/work/impl/model/WorkTypeConverters;->stateToInt(Landroidx/work/t$a;)I

    move-result p1

    int-to-long v1, p1

    const/4 p1, 0x1

    .line 2092
    invoke-interface {v0, p1, v1, v2}, Landroidx/sqlite/db/e;->a(IJ)V

    .line 2094
    array-length p1, p2

    const/4 v1, 0x2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_1

    aget-object v3, p2, v2

    if-nez v3, :cond_0

    .line 2096
    invoke-interface {v0, v1}, Landroidx/sqlite/db/e;->a(I)V

    goto :goto_1

    .line 2098
    :cond_0
    invoke-interface {v0, v1, v3}, Landroidx/sqlite/db/e;->a(ILjava/lang/String;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2102
    :cond_1
    iget-object p1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/h;

    invoke-virtual {p1}, Landroidx/room/h;->e()V

    .line 2104
    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/e;->a()I

    move-result p1

    .line 2105
    iget-object p2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/h;

    invoke-virtual {p2}, Landroidx/room/h;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2108
    iget-object p2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/h;

    invoke-virtual {p2}, Landroidx/room/h;->f()V

    return p1

    :catchall_0
    move-exception p1

    iget-object p2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/h;

    invoke-virtual {p2}, Landroidx/room/h;->f()V

    .line 2109
    throw p1
.end method
