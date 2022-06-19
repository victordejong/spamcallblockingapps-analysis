.class public final Landroidx/work/impl/model/SystemIdInfoDao_Impl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/work/impl/model/SystemIdInfoDao;


# instance fields
.field private final __db:Landroidx/room/h;

.field private final __insertionAdapterOfSystemIdInfo:Landroidx/room/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/a<",
            "Landroidx/work/impl/model/SystemIdInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final __preparedStmtOfRemoveSystemIdInfo:Landroidx/room/o;


# direct methods
.method public constructor <init>(Landroidx/room/h;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Landroidx/work/impl/model/SystemIdInfoDao_Impl;->__db:Landroidx/room/h;

    .line 27
    new-instance v0, Landroidx/work/impl/model/SystemIdInfoDao_Impl$1;

    invoke-direct {v0, p0, p1}, Landroidx/work/impl/model/SystemIdInfoDao_Impl$1;-><init>(Landroidx/work/impl/model/SystemIdInfoDao_Impl;Landroidx/room/h;)V

    iput-object v0, p0, Landroidx/work/impl/model/SystemIdInfoDao_Impl;->__insertionAdapterOfSystemIdInfo:Landroidx/room/a;

    .line 43
    new-instance v0, Landroidx/work/impl/model/SystemIdInfoDao_Impl$2;

    invoke-direct {v0, p0, p1}, Landroidx/work/impl/model/SystemIdInfoDao_Impl$2;-><init>(Landroidx/work/impl/model/SystemIdInfoDao_Impl;Landroidx/room/h;)V

    iput-object v0, p0, Landroidx/work/impl/model/SystemIdInfoDao_Impl;->__preparedStmtOfRemoveSystemIdInfo:Landroidx/room/o;

    return-void
.end method


# virtual methods
.method public final getSystemIdInfo(Ljava/lang/String;)Landroidx/work/impl/model/SystemIdInfo;
    .locals 4

    const-string v0, "SELECT `SystemIdInfo`.`work_spec_id` AS `work_spec_id`, `SystemIdInfo`.`system_id` AS `system_id` FROM SystemIdInfo WHERE work_spec_id=?"

    const/4 v1, 0x1

    .line 87
    invoke-static {v0, v1}, Landroidx/room/k;->a(Ljava/lang/String;I)Landroidx/room/k;

    move-result-object v0

    if-nez p1, :cond_0

    .line 1234
    iget-object p1, v0, Landroidx/room/k;->e:[I

    aput v1, p1, v1

    goto :goto_0

    .line 92
    :cond_0
    invoke-virtual {v0, v1, p1}, Landroidx/room/k;->a(ILjava/lang/String;)V

    .line 94
    :goto_0
    iget-object p1, p0, Landroidx/work/impl/model/SystemIdInfoDao_Impl;->__db:Landroidx/room/h;

    invoke-virtual {p1}, Landroidx/room/h;->d()V

    .line 95
    iget-object p1, p0, Landroidx/work/impl/model/SystemIdInfoDao_Impl;->__db:Landroidx/room/h;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroidx/room/b/c;->a(Landroidx/room/h;Landroidx/sqlite/db/d;Z)Landroid/database/Cursor;

    move-result-object p1

    :try_start_0
    const-string v1, "work_spec_id"

    .line 97
    invoke-static {p1, v1}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    const-string v2, "system_id"

    .line 98
    invoke-static {p1, v2}, Landroidx/room/b/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    .line 100
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 102
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 104
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 105
    new-instance v3, Landroidx/work/impl/model/SystemIdInfo;

    invoke-direct {v3, v1, v2}, Landroidx/work/impl/model/SystemIdInfo;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 111
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 112
    invoke-virtual {v0}, Landroidx/room/k;->a()V

    return-object v3

    :catchall_0
    move-exception v1

    .line 111
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 112
    invoke-virtual {v0}, Landroidx/room/k;->a()V

    .line 113
    throw v1
.end method

.method public final getWorkSpecIds()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "SELECT DISTINCT work_spec_id FROM SystemIdInfo"

    const/4 v1, 0x0

    .line 119
    invoke-static {v0, v1}, Landroidx/room/k;->a(Ljava/lang/String;I)Landroidx/room/k;

    move-result-object v0

    .line 120
    iget-object v2, p0, Landroidx/work/impl/model/SystemIdInfoDao_Impl;->__db:Landroidx/room/h;

    invoke-virtual {v2}, Landroidx/room/h;->d()V

    .line 121
    iget-object v2, p0, Landroidx/work/impl/model/SystemIdInfoDao_Impl;->__db:Landroidx/room/h;

    invoke-static {v2, v0, v1}, Landroidx/room/b/c;->a(Landroidx/room/h;Landroidx/sqlite/db/d;Z)Landroid/database/Cursor;

    move-result-object v2

    .line 123
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 124
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 126
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 127
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 131
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 132
    invoke-virtual {v0}, Landroidx/room/k;->a()V

    return-object v3

    :catchall_0
    move-exception v1

    .line 131
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 132
    invoke-virtual {v0}, Landroidx/room/k;->a()V

    .line 133
    throw v1
.end method

.method public final insertSystemIdInfo(Landroidx/work/impl/model/SystemIdInfo;)V
    .locals 1

    .line 54
    iget-object v0, p0, Landroidx/work/impl/model/SystemIdInfoDao_Impl;->__db:Landroidx/room/h;

    invoke-virtual {v0}, Landroidx/room/h;->d()V

    .line 55
    iget-object v0, p0, Landroidx/work/impl/model/SystemIdInfoDao_Impl;->__db:Landroidx/room/h;

    invoke-virtual {v0}, Landroidx/room/h;->e()V

    .line 57
    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/model/SystemIdInfoDao_Impl;->__insertionAdapterOfSystemIdInfo:Landroidx/room/a;

    invoke-virtual {v0, p1}, Landroidx/room/a;->insert(Ljava/lang/Object;)V

    .line 58
    iget-object p1, p0, Landroidx/work/impl/model/SystemIdInfoDao_Impl;->__db:Landroidx/room/h;

    invoke-virtual {p1}, Landroidx/room/h;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    iget-object p1, p0, Landroidx/work/impl/model/SystemIdInfoDao_Impl;->__db:Landroidx/room/h;

    invoke-virtual {p1}, Landroidx/room/h;->f()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Landroidx/work/impl/model/SystemIdInfoDao_Impl;->__db:Landroidx/room/h;

    invoke-virtual {v0}, Landroidx/room/h;->f()V

    .line 61
    throw p1
.end method

.method public final removeSystemIdInfo(Ljava/lang/String;)V
    .locals 2

    .line 66
    iget-object v0, p0, Landroidx/work/impl/model/SystemIdInfoDao_Impl;->__db:Landroidx/room/h;

    invoke-virtual {v0}, Landroidx/room/h;->d()V

    .line 67
    iget-object v0, p0, Landroidx/work/impl/model/SystemIdInfoDao_Impl;->__preparedStmtOfRemoveSystemIdInfo:Landroidx/room/o;

    invoke-virtual {v0}, Landroidx/room/o;->acquire()Landroidx/sqlite/db/e;

    move-result-object v0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 70
    invoke-interface {v0, v1}, Landroidx/sqlite/db/e;->a(I)V

    goto :goto_0

    .line 72
    :cond_0
    invoke-interface {v0, v1, p1}, Landroidx/sqlite/db/e;->a(ILjava/lang/String;)V

    .line 74
    :goto_0
    iget-object p1, p0, Landroidx/work/impl/model/SystemIdInfoDao_Impl;->__db:Landroidx/room/h;

    invoke-virtual {p1}, Landroidx/room/h;->e()V

    .line 76
    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/e;->a()I

    .line 77
    iget-object p1, p0, Landroidx/work/impl/model/SystemIdInfoDao_Impl;->__db:Landroidx/room/h;

    invoke-virtual {p1}, Landroidx/room/h;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    iget-object p1, p0, Landroidx/work/impl/model/SystemIdInfoDao_Impl;->__db:Landroidx/room/h;

    invoke-virtual {p1}, Landroidx/room/h;->f()V

    .line 80
    iget-object p1, p0, Landroidx/work/impl/model/SystemIdInfoDao_Impl;->__preparedStmtOfRemoveSystemIdInfo:Landroidx/room/o;

    invoke-virtual {p1, v0}, Landroidx/room/o;->release(Landroidx/sqlite/db/e;)V

    return-void

    :catchall_0
    move-exception p1

    .line 79
    iget-object v1, p0, Landroidx/work/impl/model/SystemIdInfoDao_Impl;->__db:Landroidx/room/h;

    invoke-virtual {v1}, Landroidx/room/h;->f()V

    .line 80
    iget-object v1, p0, Landroidx/work/impl/model/SystemIdInfoDao_Impl;->__preparedStmtOfRemoveSystemIdInfo:Landroidx/room/o;

    invoke-virtual {v1, v0}, Landroidx/room/o;->release(Landroidx/sqlite/db/e;)V

    .line 81
    throw p1
.end method
