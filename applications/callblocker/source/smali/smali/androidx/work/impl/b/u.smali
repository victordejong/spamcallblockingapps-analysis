.class public final Landroidx/work/impl/b/u;
.super Ljava/lang/Object;
.source "WorkTagDao_Impl.java"

# interfaces
.implements Landroidx/work/impl/b/t;


# instance fields
.field private final a:Landroidx/room/i;

.field private final b:Landroidx/room/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/b",
            "<",
            "Landroidx/work/impl/b/s;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/room/i;)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Landroidx/work/impl/b/u;->a:Landroidx/room/i;

    .line 23
    new-instance v0, Landroidx/work/impl/b/u$1;

    invoke-direct {v0, p0, p1}, Landroidx/work/impl/b/u$1;-><init>(Landroidx/work/impl/b/u;Landroidx/room/i;)V

    iput-object v0, p0, Landroidx/work/impl/b/u;->b:Landroidx/room/b;

    .line 43
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 85
    const-string/jumbo v0, "SELECT DISTINCT tag FROM worktag WHERE work_spec_id=?"

    .line 86
    const-string/jumbo v0, "SELECT DISTINCT tag FROM worktag WHERE work_spec_id=?"

    invoke-static {v0, v2}, Landroidx/room/l;->a(Ljava/lang/String;I)Landroidx/room/l;

    move-result-object v1

    .line 88
    if-nez p1, :cond_0

    .line 89
    invoke-virtual {v1, v2}, Landroidx/room/l;->a(I)V

    .line 93
    :goto_0
    iget-object v0, p0, Landroidx/work/impl/b/u;->a:Landroidx/room/i;

    invoke-virtual {v0}, Landroidx/room/i;->f()V

    .line 94
    iget-object v0, p0, Landroidx/work/impl/b/u;->a:Landroidx/room/i;

    const/4 v2, 0x0

    invoke-static {v0, v1, v3, v2}, Landroidx/room/b/c;->a(Landroidx/room/i;Landroidx/i/a/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    .line 96
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 97
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 99
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 100
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 104
    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 105
    invoke-virtual {v1}, Landroidx/room/l;->a()V

    .line 106
    throw v0

    .line 91
    :cond_0
    invoke-virtual {v1, v2, p1}, Landroidx/room/l;->a(ILjava/lang/String;)V

    goto :goto_0

    .line 104
    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 105
    invoke-virtual {v1}, Landroidx/room/l;->a()V

    .line 102
    return-object v0
.end method

.method public a(Landroidx/work/impl/b/s;)V
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Landroidx/work/impl/b/u;->a:Landroidx/room/i;

    invoke-virtual {v0}, Landroidx/room/i;->f()V

    .line 48
    iget-object v0, p0, Landroidx/work/impl/b/u;->a:Landroidx/room/i;

    invoke-virtual {v0}, Landroidx/room/i;->g()V

    .line 50
    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/b/u;->b:Landroidx/room/b;

    invoke-virtual {v0, p1}, Landroidx/room/b;->a(Ljava/lang/Object;)V

    .line 51
    iget-object v0, p0, Landroidx/work/impl/b/u;->a:Landroidx/room/i;

    invoke-virtual {v0}, Landroidx/room/i;->j()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    iget-object v0, p0, Landroidx/work/impl/b/u;->a:Landroidx/room/i;

    invoke-virtual {v0}, Landroidx/room/i;->h()V

    .line 55
    return-void

    .line 53
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroidx/work/impl/b/u;->a:Landroidx/room/i;

    invoke-virtual {v1}, Landroidx/room/i;->h()V

    .line 54
    throw v0
.end method
