.class public final Landroidx/work/impl/model/DependencyDao_Impl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/work/impl/model/DependencyDao;


# instance fields
.field private final __db:Landroidx/room/h;

.field private final __insertionAdapterOfDependency:Landroidx/room/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/a<",
            "Landroidx/work/impl/model/Dependency;",
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
    iput-object p1, p0, Landroidx/work/impl/model/DependencyDao_Impl;->__db:Landroidx/room/h;

    .line 23
    new-instance v0, Landroidx/work/impl/model/DependencyDao_Impl$1;

    invoke-direct {v0, p0, p1}, Landroidx/work/impl/model/DependencyDao_Impl$1;-><init>(Landroidx/work/impl/model/DependencyDao_Impl;Landroidx/room/h;)V

    iput-object v0, p0, Landroidx/work/impl/model/DependencyDao_Impl;->__insertionAdapterOfDependency:Landroidx/room/a;

    return-void
.end method


# virtual methods
.method public final getDependentWorkIds(Ljava/lang/String;)Ljava/util/List;
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

    const-string v0, "SELECT work_spec_id FROM dependency WHERE prerequisite_id=?"

    const/4 v1, 0x1

    .line 114
    invoke-static {v0, v1}, Landroidx/room/k;->a(Ljava/lang/String;I)Landroidx/room/k;

    move-result-object v0

    if-nez p1, :cond_0

    .line 3234
    iget-object p1, v0, Landroidx/room/k;->e:[I

    aput v1, p1, v1

    goto :goto_0

    .line 119
    :cond_0
    invoke-virtual {v0, v1, p1}, Landroidx/room/k;->a(ILjava/lang/String;)V

    .line 121
    :goto_0
    iget-object p1, p0, Landroidx/work/impl/model/DependencyDao_Impl;->__db:Landroidx/room/h;

    invoke-virtual {p1}, Landroidx/room/h;->d()V

    .line 122
    iget-object p1, p0, Landroidx/work/impl/model/DependencyDao_Impl;->__db:Landroidx/room/h;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroidx/room/b/c;->a(Landroidx/room/h;Landroidx/sqlite/db/d;Z)Landroid/database/Cursor;

    move-result-object p1

    .line 124
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 125
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 127
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 128
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 132
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 133
    invoke-virtual {v0}, Landroidx/room/k;->a()V

    return-object v2

    :catchall_0
    move-exception v1

    .line 132
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 133
    invoke-virtual {v0}, Landroidx/room/k;->a()V

    .line 134
    throw v1
.end method

.method public final getPrerequisites(Ljava/lang/String;)Ljava/util/List;
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

    const-string v0, "SELECT prerequisite_id FROM dependency WHERE work_spec_id=?"

    const/4 v1, 0x1

    .line 88
    invoke-static {v0, v1}, Landroidx/room/k;->a(Ljava/lang/String;I)Landroidx/room/k;

    move-result-object v0

    if-nez p1, :cond_0

    .line 2234
    iget-object p1, v0, Landroidx/room/k;->e:[I

    aput v1, p1, v1

    goto :goto_0

    .line 93
    :cond_0
    invoke-virtual {v0, v1, p1}, Landroidx/room/k;->a(ILjava/lang/String;)V

    .line 95
    :goto_0
    iget-object p1, p0, Landroidx/work/impl/model/DependencyDao_Impl;->__db:Landroidx/room/h;

    invoke-virtual {p1}, Landroidx/room/h;->d()V

    .line 96
    iget-object p1, p0, Landroidx/work/impl/model/DependencyDao_Impl;->__db:Landroidx/room/h;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroidx/room/b/c;->a(Landroidx/room/h;Landroidx/sqlite/db/d;Z)Landroid/database/Cursor;

    move-result-object p1

    .line 98
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 99
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 101
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 102
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 106
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 107
    invoke-virtual {v0}, Landroidx/room/k;->a()V

    return-object v2

    :catchall_0
    move-exception v1

    .line 106
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 107
    invoke-virtual {v0}, Landroidx/room/k;->a()V

    .line 108
    throw v1
.end method

.method public final hasCompletedAllPrerequisites(Ljava/lang/String;)Z
    .locals 4

    const-string v0, "SELECT COUNT(*)=0 FROM dependency WHERE work_spec_id=? AND prerequisite_id IN (SELECT id FROM workspec WHERE state!=2)"

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
    iget-object p1, p0, Landroidx/work/impl/model/DependencyDao_Impl;->__db:Landroidx/room/h;

    invoke-virtual {p1}, Landroidx/room/h;->d()V

    .line 68
    iget-object p1, p0, Landroidx/work/impl/model/DependencyDao_Impl;->__db:Landroidx/room/h;

    const/4 v2, 0x0

    invoke-static {p1, v0, v2}, Landroidx/room/b/c;->a(Landroidx/room/h;Landroidx/sqlite/db/d;Z)Landroid/database/Cursor;

    move-result-object p1

    .line 71
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 73
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    move v2, v1

    .line 80
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 81
    invoke-virtual {v0}, Landroidx/room/k;->a()V

    return v2

    :catchall_0
    move-exception v1

    .line 80
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 81
    invoke-virtual {v0}, Landroidx/room/k;->a()V

    .line 82
    throw v1
.end method

.method public final hasDependents(Ljava/lang/String;)Z
    .locals 4

    const-string v0, "SELECT COUNT(*)>0 FROM dependency WHERE prerequisite_id=?"

    const/4 v1, 0x1

    .line 140
    invoke-static {v0, v1}, Landroidx/room/k;->a(Ljava/lang/String;I)Landroidx/room/k;

    move-result-object v0

    if-nez p1, :cond_0

    .line 4234
    iget-object p1, v0, Landroidx/room/k;->e:[I

    aput v1, p1, v1

    goto :goto_0

    .line 145
    :cond_0
    invoke-virtual {v0, v1, p1}, Landroidx/room/k;->a(ILjava/lang/String;)V

    .line 147
    :goto_0
    iget-object p1, p0, Landroidx/work/impl/model/DependencyDao_Impl;->__db:Landroidx/room/h;

    invoke-virtual {p1}, Landroidx/room/h;->d()V

    .line 148
    iget-object p1, p0, Landroidx/work/impl/model/DependencyDao_Impl;->__db:Landroidx/room/h;

    const/4 v2, 0x0

    invoke-static {p1, v0, v2}, Landroidx/room/b/c;->a(Landroidx/room/h;Landroidx/sqlite/db/d;Z)Landroid/database/Cursor;

    move-result-object p1

    .line 151
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 153
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    move v2, v1

    .line 160
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 161
    invoke-virtual {v0}, Landroidx/room/k;->a()V

    return v2

    :catchall_0
    move-exception v1

    .line 160
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 161
    invoke-virtual {v0}, Landroidx/room/k;->a()V

    .line 162
    throw v1
.end method

.method public final insertDependency(Landroidx/work/impl/model/Dependency;)V
    .locals 1

    .line 47
    iget-object v0, p0, Landroidx/work/impl/model/DependencyDao_Impl;->__db:Landroidx/room/h;

    invoke-virtual {v0}, Landroidx/room/h;->d()V

    .line 48
    iget-object v0, p0, Landroidx/work/impl/model/DependencyDao_Impl;->__db:Landroidx/room/h;

    invoke-virtual {v0}, Landroidx/room/h;->e()V

    .line 50
    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/model/DependencyDao_Impl;->__insertionAdapterOfDependency:Landroidx/room/a;

    invoke-virtual {v0, p1}, Landroidx/room/a;->insert(Ljava/lang/Object;)V

    .line 51
    iget-object p1, p0, Landroidx/work/impl/model/DependencyDao_Impl;->__db:Landroidx/room/h;

    invoke-virtual {p1}, Landroidx/room/h;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    iget-object p1, p0, Landroidx/work/impl/model/DependencyDao_Impl;->__db:Landroidx/room/h;

    invoke-virtual {p1}, Landroidx/room/h;->f()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Landroidx/work/impl/model/DependencyDao_Impl;->__db:Landroidx/room/h;

    invoke-virtual {v0}, Landroidx/room/h;->f()V

    .line 54
    throw p1
.end method
