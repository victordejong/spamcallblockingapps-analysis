.class public final Landroidx/work/impl/b/i;
.super Ljava/lang/Object;
.source "SystemIdInfoDao_Impl.java"

# interfaces
.implements Landroidx/work/impl/b/h;


# instance fields
.field private final a:Landroidx/room/i;

.field private final b:Landroidx/room/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/b",
            "<",
            "Landroidx/work/impl/b/g;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Landroidx/room/o;


# direct methods
.method public constructor <init>(Landroidx/room/i;)V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Landroidx/work/impl/b/i;->a:Landroidx/room/i;

    .line 25
    new-instance v0, Landroidx/work/impl/b/i$1;

    invoke-direct {v0, p0, p1}, Landroidx/work/impl/b/i$1;-><init>(Landroidx/work/impl/b/i;Landroidx/room/i;)V

    iput-object v0, p0, Landroidx/work/impl/b/i;->b:Landroidx/room/b;

    .line 41
    new-instance v0, Landroidx/work/impl/b/i$2;

    invoke-direct {v0, p0, p1}, Landroidx/work/impl/b/i$2;-><init>(Landroidx/work/impl/b/i;Landroidx/room/i;)V

    iput-object v0, p0, Landroidx/work/impl/b/i;->c:Landroidx/room/o;

    .line 48
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Landroidx/work/impl/b/g;
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 84
    const-string/jumbo v1, "SELECT `SystemIdInfo`.`work_spec_id` AS `work_spec_id`, `SystemIdInfo`.`system_id` AS `system_id` FROM SystemIdInfo WHERE work_spec_id=?"

    .line 85
    const-string/jumbo v1, "SELECT `SystemIdInfo`.`work_spec_id` AS `work_spec_id`, `SystemIdInfo`.`system_id` AS `system_id` FROM SystemIdInfo WHERE work_spec_id=?"

    invoke-static {v1, v2}, Landroidx/room/l;->a(Ljava/lang/String;I)Landroidx/room/l;

    move-result-object v1

    .line 87
    if-nez p1, :cond_1

    .line 88
    invoke-virtual {v1, v2}, Landroidx/room/l;->a(I)V

    .line 92
    :goto_0
    iget-object v2, p0, Landroidx/work/impl/b/i;->a:Landroidx/room/i;

    invoke-virtual {v2}, Landroidx/room/i;->f()V

    .line 93
    iget-object v2, p0, Landroidx/work/impl/b/i;->a:Landroidx/room/i;

    const/4 v3, 0x0

    invoke-static {v2, v1, v3, v0}, Landroidx/room/b/c;->a(Landroidx/room/i;Landroidx/i/a/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    .line 95
    :try_start_0
    const-string/jumbo v3, "work_spec_id"

    invoke-static {v2, v3}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    .line 96
    const-string/jumbo v4, "system_id"

    invoke-static {v2, v4}, Landroidx/room/b/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 98
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 100
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 102
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 103
    new-instance v0, Landroidx/work/impl/b/g;

    invoke-direct {v0, v3, v4}, Landroidx/work/impl/b/g;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 110
    invoke-virtual {v1}, Landroidx/room/l;->a()V

    .line 107
    return-object v0

    .line 90
    :cond_1
    invoke-virtual {v1, v2, p1}, Landroidx/room/l;->a(ILjava/lang/String;)V

    goto :goto_0

    .line 109
    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 110
    invoke-virtual {v1}, Landroidx/room/l;->a()V

    .line 111
    throw v0
.end method

.method public a(Landroidx/work/impl/b/g;)V
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Landroidx/work/impl/b/i;->a:Landroidx/room/i;

    invoke-virtual {v0}, Landroidx/room/i;->f()V

    .line 53
    iget-object v0, p0, Landroidx/work/impl/b/i;->a:Landroidx/room/i;

    invoke-virtual {v0}, Landroidx/room/i;->g()V

    .line 55
    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/b/i;->b:Landroidx/room/b;

    invoke-virtual {v0, p1}, Landroidx/room/b;->a(Ljava/lang/Object;)V

    .line 56
    iget-object v0, p0, Landroidx/work/impl/b/i;->a:Landroidx/room/i;

    invoke-virtual {v0}, Landroidx/room/i;->j()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    iget-object v0, p0, Landroidx/work/impl/b/i;->a:Landroidx/room/i;

    invoke-virtual {v0}, Landroidx/room/i;->h()V

    .line 60
    return-void

    .line 58
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroidx/work/impl/b/i;->a:Landroidx/room/i;

    invoke-virtual {v1}, Landroidx/room/i;->h()V

    .line 59
    throw v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 64
    iget-object v0, p0, Landroidx/work/impl/b/i;->a:Landroidx/room/i;

    invoke-virtual {v0}, Landroidx/room/i;->f()V

    .line 65
    iget-object v0, p0, Landroidx/work/impl/b/i;->c:Landroidx/room/o;

    invoke-virtual {v0}, Landroidx/room/o;->c()Landroidx/i/a/f;

    move-result-object v1

    .line 66
    const/4 v0, 0x1

    .line 67
    if-nez p1, :cond_0

    .line 68
    invoke-interface {v1, v0}, Landroidx/i/a/f;->a(I)V

    .line 72
    :goto_0
    iget-object v0, p0, Landroidx/work/impl/b/i;->a:Landroidx/room/i;

    invoke-virtual {v0}, Landroidx/room/i;->g()V

    .line 74
    :try_start_0
    invoke-interface {v1}, Landroidx/i/a/f;->a()I

    .line 75
    iget-object v0, p0, Landroidx/work/impl/b/i;->a:Landroidx/room/i;

    invoke-virtual {v0}, Landroidx/room/i;->j()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    iget-object v0, p0, Landroidx/work/impl/b/i;->a:Landroidx/room/i;

    invoke-virtual {v0}, Landroidx/room/i;->h()V

    .line 78
    iget-object v0, p0, Landroidx/work/impl/b/i;->c:Landroidx/room/o;

    invoke-virtual {v0, v1}, Landroidx/room/o;->a(Landroidx/i/a/f;)V

    .line 80
    return-void

    .line 70
    :cond_0
    invoke-interface {v1, v0, p1}, Landroidx/i/a/f;->a(ILjava/lang/String;)V

    goto :goto_0

    .line 77
    :catchall_0
    move-exception v0

    iget-object v2, p0, Landroidx/work/impl/b/i;->a:Landroidx/room/i;

    invoke-virtual {v2}, Landroidx/room/i;->h()V

    .line 78
    iget-object v2, p0, Landroidx/work/impl/b/i;->c:Landroidx/room/o;

    invoke-virtual {v2, v1}, Landroidx/room/o;->a(Landroidx/i/a/f;)V

    .line 79
    throw v0
.end method
