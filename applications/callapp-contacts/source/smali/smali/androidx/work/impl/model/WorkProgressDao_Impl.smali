.class public final Landroidx/work/impl/model/WorkProgressDao_Impl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/work/impl/model/WorkProgressDao;


# instance fields
.field private final __db:Landroidx/room/h;

.field private final __insertionAdapterOfWorkProgress:Landroidx/room/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/a<",
            "Landroidx/work/impl/model/WorkProgress;",
            ">;"
        }
    .end annotation
.end field

.field private final __preparedStmtOfDelete:Landroidx/room/o;

.field private final __preparedStmtOfDeleteAll:Landroidx/room/o;


# direct methods
.method public constructor <init>(Landroidx/room/h;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Landroidx/work/impl/model/WorkProgressDao_Impl;->__db:Landroidx/room/h;

    .line 31
    new-instance v0, Landroidx/work/impl/model/WorkProgressDao_Impl$1;

    invoke-direct {v0, p0, p1}, Landroidx/work/impl/model/WorkProgressDao_Impl$1;-><init>(Landroidx/work/impl/model/WorkProgressDao_Impl;Landroidx/room/h;)V

    iput-object v0, p0, Landroidx/work/impl/model/WorkProgressDao_Impl;->__insertionAdapterOfWorkProgress:Landroidx/room/a;

    .line 53
    new-instance v0, Landroidx/work/impl/model/WorkProgressDao_Impl$2;

    invoke-direct {v0, p0, p1}, Landroidx/work/impl/model/WorkProgressDao_Impl$2;-><init>(Landroidx/work/impl/model/WorkProgressDao_Impl;Landroidx/room/h;)V

    iput-object v0, p0, Landroidx/work/impl/model/WorkProgressDao_Impl;->__preparedStmtOfDelete:Landroidx/room/o;

    .line 60
    new-instance v0, Landroidx/work/impl/model/WorkProgressDao_Impl$3;

    invoke-direct {v0, p0, p1}, Landroidx/work/impl/model/WorkProgressDao_Impl$3;-><init>(Landroidx/work/impl/model/WorkProgressDao_Impl;Landroidx/room/h;)V

    iput-object v0, p0, Landroidx/work/impl/model/WorkProgressDao_Impl;->__preparedStmtOfDeleteAll:Landroidx/room/o;

    return-void
.end method


# virtual methods
.method public final delete(Ljava/lang/String;)V
    .locals 2

    .line 83
    iget-object v0, p0, Landroidx/work/impl/model/WorkProgressDao_Impl;->__db:Landroidx/room/h;

    invoke-virtual {v0}, Landroidx/room/h;->d()V

    .line 84
    iget-object v0, p0, Landroidx/work/impl/model/WorkProgressDao_Impl;->__preparedStmtOfDelete:Landroidx/room/o;

    invoke-virtual {v0}, Landroidx/room/o;->acquire()Landroidx/sqlite/db/e;

    move-result-object v0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 87
    invoke-interface {v0, v1}, Landroidx/sqlite/db/e;->a(I)V

    goto :goto_0

    .line 89
    :cond_0
    invoke-interface {v0, v1, p1}, Landroidx/sqlite/db/e;->a(ILjava/lang/String;)V

    .line 91
    :goto_0
    iget-object p1, p0, Landroidx/work/impl/model/WorkProgressDao_Impl;->__db:Landroidx/room/h;

    invoke-virtual {p1}, Landroidx/room/h;->e()V

    .line 93
    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/e;->a()I

    .line 94
    iget-object p1, p0, Landroidx/work/impl/model/WorkProgressDao_Impl;->__db:Landroidx/room/h;

    invoke-virtual {p1}, Landroidx/room/h;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    iget-object p1, p0, Landroidx/work/impl/model/WorkProgressDao_Impl;->__db:Landroidx/room/h;

    invoke-virtual {p1}, Landroidx/room/h;->f()V

    .line 97
    iget-object p1, p0, Landroidx/work/impl/model/WorkProgressDao_Impl;->__preparedStmtOfDelete:Landroidx/room/o;

    invoke-virtual {p1, v0}, Landroidx/room/o;->release(Landroidx/sqlite/db/e;)V

    return-void

    :catchall_0
    move-exception p1

    .line 96
    iget-object v1, p0, Landroidx/work/impl/model/WorkProgressDao_Impl;->__db:Landroidx/room/h;

    invoke-virtual {v1}, Landroidx/room/h;->f()V

    .line 97
    iget-object v1, p0, Landroidx/work/impl/model/WorkProgressDao_Impl;->__preparedStmtOfDelete:Landroidx/room/o;

    invoke-virtual {v1, v0}, Landroidx/room/o;->release(Landroidx/sqlite/db/e;)V

    .line 98
    throw p1
.end method

.method public final deleteAll()V
    .locals 3

    .line 103
    iget-object v0, p0, Landroidx/work/impl/model/WorkProgressDao_Impl;->__db:Landroidx/room/h;

    invoke-virtual {v0}, Landroidx/room/h;->d()V

    .line 104
    iget-object v0, p0, Landroidx/work/impl/model/WorkProgressDao_Impl;->__preparedStmtOfDeleteAll:Landroidx/room/o;

    invoke-virtual {v0}, Landroidx/room/o;->acquire()Landroidx/sqlite/db/e;

    move-result-object v0

    .line 105
    iget-object v1, p0, Landroidx/work/impl/model/WorkProgressDao_Impl;->__db:Landroidx/room/h;

    invoke-virtual {v1}, Landroidx/room/h;->e()V

    .line 107
    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/e;->a()I

    .line 108
    iget-object v1, p0, Landroidx/work/impl/model/WorkProgressDao_Impl;->__db:Landroidx/room/h;

    invoke-virtual {v1}, Landroidx/room/h;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    iget-object v1, p0, Landroidx/work/impl/model/WorkProgressDao_Impl;->__db:Landroidx/room/h;

    invoke-virtual {v1}, Landroidx/room/h;->f()V

    .line 111
    iget-object v1, p0, Landroidx/work/impl/model/WorkProgressDao_Impl;->__preparedStmtOfDeleteAll:Landroidx/room/o;

    invoke-virtual {v1, v0}, Landroidx/room/o;->release(Landroidx/sqlite/db/e;)V

    return-void

    :catchall_0
    move-exception v1

    .line 110
    iget-object v2, p0, Landroidx/work/impl/model/WorkProgressDao_Impl;->__db:Landroidx/room/h;

    invoke-virtual {v2}, Landroidx/room/h;->f()V

    .line 111
    iget-object v2, p0, Landroidx/work/impl/model/WorkProgressDao_Impl;->__preparedStmtOfDeleteAll:Landroidx/room/o;

    invoke-virtual {v2, v0}, Landroidx/room/o;->release(Landroidx/sqlite/db/e;)V

    .line 112
    throw v1
.end method

.method public final getProgressForWorkSpecId(Ljava/lang/String;)Landroidx/work/d;
    .locals 3

    const-string v0, "SELECT progress FROM WorkProgress WHERE work_spec_id=?"

    const/4 v1, 0x1

    .line 118
    invoke-static {v0, v1}, Landroidx/room/k;->a(Ljava/lang/String;I)Landroidx/room/k;

    move-result-object v0

    if-nez p1, :cond_0

    .line 1234
    iget-object p1, v0, Landroidx/room/k;->e:[I

    aput v1, p1, v1

    goto :goto_0

    .line 123
    :cond_0
    invoke-virtual {v0, v1, p1}, Landroidx/room/k;->a(ILjava/lang/String;)V

    .line 125
    :goto_0
    iget-object p1, p0, Landroidx/work/impl/model/WorkProgressDao_Impl;->__db:Landroidx/room/h;

    invoke-virtual {p1}, Landroidx/room/h;->d()V

    .line 126
    iget-object p1, p0, Landroidx/work/impl/model/WorkProgressDao_Impl;->__db:Landroidx/room/h;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroidx/room/b/c;->a(Landroidx/room/h;Landroidx/sqlite/db/d;Z)Landroid/database/Cursor;

    move-result-object p1

    .line 129
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 131
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    .line 132
    invoke-static {v1}, Landroidx/work/d;->a([B)Landroidx/work/d;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 138
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 139
    invoke-virtual {v0}, Landroidx/room/k;->a()V

    return-object v1

    :catchall_0
    move-exception v1

    .line 138
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 139
    invoke-virtual {v0}, Landroidx/room/k;->a()V

    .line 140
    throw v1
.end method

.method public final getProgressForWorkSpecIds(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/work/d;",
            ">;"
        }
    .end annotation

    .line 145
    invoke-static {}, Landroidx/room/b/e;->a()Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "SELECT progress FROM WorkProgress WHERE work_spec_id IN ("

    .line 146
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 148
    invoke-static {v0, v1}, Landroidx/room/b/e;->a(Ljava/lang/StringBuilder;I)V

    const-string v2, ")"

    .line 149
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    add-int/2addr v1, v2

    .line 152
    invoke-static {v0, v1}, Landroidx/room/k;->a(Ljava/lang/String;I)Landroidx/room/k;

    move-result-object v0

    .line 154
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x1

    const/4 v3, 0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-nez v4, :cond_0

    .line 2234
    iget-object v4, v0, Landroidx/room/k;->e:[I

    aput v1, v4, v3

    goto :goto_1

    .line 158
    :cond_0
    invoke-virtual {v0, v3, v4}, Landroidx/room/k;->a(ILjava/lang/String;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 162
    :cond_1
    iget-object p1, p0, Landroidx/work/impl/model/WorkProgressDao_Impl;->__db:Landroidx/room/h;

    invoke-virtual {p1}, Landroidx/room/h;->d()V

    .line 163
    iget-object p1, p0, Landroidx/work/impl/model/WorkProgressDao_Impl;->__db:Landroidx/room/h;

    invoke-static {p1, v0, v2}, Landroidx/room/b/c;->a(Landroidx/room/h;Landroidx/sqlite/db/d;Z)Landroid/database/Cursor;

    move-result-object p1

    .line 165
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 166
    :goto_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 169
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    .line 170
    invoke-static {v3}, Landroidx/work/d;->a([B)Landroidx/work/d;

    move-result-object v3

    .line 171
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 175
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 176
    invoke-virtual {v0}, Landroidx/room/k;->a()V

    return-object v1

    :catchall_0
    move-exception v1

    .line 175
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 176
    invoke-virtual {v0}, Landroidx/room/k;->a()V

    .line 177
    throw v1
.end method

.method public final insert(Landroidx/work/impl/model/WorkProgress;)V
    .locals 1

    .line 71
    iget-object v0, p0, Landroidx/work/impl/model/WorkProgressDao_Impl;->__db:Landroidx/room/h;

    invoke-virtual {v0}, Landroidx/room/h;->d()V

    .line 72
    iget-object v0, p0, Landroidx/work/impl/model/WorkProgressDao_Impl;->__db:Landroidx/room/h;

    invoke-virtual {v0}, Landroidx/room/h;->e()V

    .line 74
    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/model/WorkProgressDao_Impl;->__insertionAdapterOfWorkProgress:Landroidx/room/a;

    invoke-virtual {v0, p1}, Landroidx/room/a;->insert(Ljava/lang/Object;)V

    .line 75
    iget-object p1, p0, Landroidx/work/impl/model/WorkProgressDao_Impl;->__db:Landroidx/room/h;

    invoke-virtual {p1}, Landroidx/room/h;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    iget-object p1, p0, Landroidx/work/impl/model/WorkProgressDao_Impl;->__db:Landroidx/room/h;

    invoke-virtual {p1}, Landroidx/room/h;->f()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Landroidx/work/impl/model/WorkProgressDao_Impl;->__db:Landroidx/room/h;

    invoke-virtual {v0}, Landroidx/room/h;->f()V

    .line 78
    throw p1
.end method
