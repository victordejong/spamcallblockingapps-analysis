.class public final Landroidx/work/impl/model/WorkNameDao_Impl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/work/impl/model/WorkNameDao;


# instance fields
.field private final __db:Landroidx/room/h;

.field private final __insertionAdapterOfWorkName:Landroidx/room/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/a<",
            "Landroidx/work/impl/model/WorkName;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/room/h;)V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Landroidx/work/impl/model/WorkNameDao_Impl;->__db:Landroidx/room/h;

    .line 23
    new-instance v0, Landroidx/work/impl/model/WorkNameDao_Impl$1;

    invoke-direct {v0, p0, p1}, Landroidx/work/impl/model/WorkNameDao_Impl$1;-><init>(Landroidx/work/impl/model/WorkNameDao_Impl;Landroidx/room/h;)V

    iput-object v0, p0, Landroidx/work/impl/model/WorkNameDao_Impl;->__insertionAdapterOfWorkName:Landroidx/room/a;

    return-void
.end method


# virtual methods
.method public final getNamesForWorkSpecId(Ljava/lang/String;)Ljava/util/List;
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

    const-string v0, "SELECT name FROM workname WHERE work_spec_id=?"

    const/4 v1, 0x1

    .line 86
    invoke-static {v0, v1}, Landroidx/room/k;->a(Ljava/lang/String;I)Landroidx/room/k;

    move-result-object v0

    if-nez p1, :cond_0

    .line 2234
    iget-object p1, v0, Landroidx/room/k;->e:[I

    aput v1, p1, v1

    goto :goto_0

    .line 91
    :cond_0
    invoke-virtual {v0, v1, p1}, Landroidx/room/k;->a(ILjava/lang/String;)V

    .line 93
    :goto_0
    iget-object p1, p0, Landroidx/work/impl/model/WorkNameDao_Impl;->__db:Landroidx/room/h;

    invoke-virtual {p1}, Landroidx/room/h;->d()V

    .line 94
    iget-object p1, p0, Landroidx/work/impl/model/WorkNameDao_Impl;->__db:Landroidx/room/h;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroidx/room/b/c;->a(Landroidx/room/h;Landroidx/sqlite/db/d;Z)Landroid/database/Cursor;

    move-result-object p1

    .line 96
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 97
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 99
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 100
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 104
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 105
    invoke-virtual {v0}, Landroidx/room/k;->a()V

    return-object v2

    :catchall_0
    move-exception v1

    .line 104
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 105
    invoke-virtual {v0}, Landroidx/room/k;->a()V

    .line 106
    throw v1
.end method

.method public final getWorkSpecIdsWithName(Ljava/lang/String;)Ljava/util/List;
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

    const-string v0, "SELECT work_spec_id FROM workname WHERE name=?"

    const/4 v1, 0x1

    .line 60
    invoke-static {v0, v1}, Landroidx/room/k;->a(Ljava/lang/String;I)Landroidx/room/k;

    move-result-object v0

    if-nez p1, :cond_0

    .line 1234
    iget-object p1, v0, Landroidx/room/k;->e:[I

    aput v1, p1, v1

    goto :goto_0

    .line 65
    :cond_0
    invoke-virtual {v0, v1, p1}, Landroidx/room/k;->a(ILjava/lang/String;)V

    .line 67
    :goto_0
    iget-object p1, p0, Landroidx/work/impl/model/WorkNameDao_Impl;->__db:Landroidx/room/h;

    invoke-virtual {p1}, Landroidx/room/h;->d()V

    .line 68
    iget-object p1, p0, Landroidx/work/impl/model/WorkNameDao_Impl;->__db:Landroidx/room/h;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroidx/room/b/c;->a(Landroidx/room/h;Landroidx/sqlite/db/d;Z)Landroid/database/Cursor;

    move-result-object p1

    .line 70
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 71
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 73
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 74
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 78
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 79
    invoke-virtual {v0}, Landroidx/room/k;->a()V

    return-object v2

    :catchall_0
    move-exception v1

    .line 78
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 79
    invoke-virtual {v0}, Landroidx/room/k;->a()V

    .line 80
    throw v1
.end method

.method public final insert(Landroidx/work/impl/model/WorkName;)V
    .locals 1

    .line 47
    iget-object v0, p0, Landroidx/work/impl/model/WorkNameDao_Impl;->__db:Landroidx/room/h;

    invoke-virtual {v0}, Landroidx/room/h;->d()V

    .line 48
    iget-object v0, p0, Landroidx/work/impl/model/WorkNameDao_Impl;->__db:Landroidx/room/h;

    invoke-virtual {v0}, Landroidx/room/h;->e()V

    .line 50
    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/model/WorkNameDao_Impl;->__insertionAdapterOfWorkName:Landroidx/room/a;

    invoke-virtual {v0, p1}, Landroidx/room/a;->insert(Ljava/lang/Object;)V

    .line 51
    iget-object p1, p0, Landroidx/work/impl/model/WorkNameDao_Impl;->__db:Landroidx/room/h;

    invoke-virtual {p1}, Landroidx/room/h;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    iget-object p1, p0, Landroidx/work/impl/model/WorkNameDao_Impl;->__db:Landroidx/room/h;

    invoke-virtual {p1}, Landroidx/room/h;->f()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Landroidx/work/impl/model/WorkNameDao_Impl;->__db:Landroidx/room/h;

    invoke-virtual {v0}, Landroidx/room/h;->f()V

    .line 54
    throw p1
.end method
