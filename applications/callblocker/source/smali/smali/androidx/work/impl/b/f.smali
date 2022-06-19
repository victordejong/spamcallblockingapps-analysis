.class public final Landroidx/work/impl/b/f;
.super Ljava/lang/Object;
.source "PreferenceDao_Impl.java"

# interfaces
.implements Landroidx/work/impl/b/e;


# instance fields
.field private final a:Landroidx/room/i;

.field private final b:Landroidx/room/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/b",
            "<",
            "Landroidx/work/impl/b/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/room/i;)V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Landroidx/work/impl/b/f;->a:Landroidx/room/i;

    .line 25
    new-instance v0, Landroidx/work/impl/b/f$1;

    invoke-direct {v0, p0, p1}, Landroidx/work/impl/b/f$1;-><init>(Landroidx/work/impl/b/f;Landroidx/room/i;)V

    iput-object v0, p0, Landroidx/work/impl/b/f;->b:Landroidx/room/b;

    .line 45
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/Long;
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 61
    const-string/jumbo v1, "SELECT long_value FROM Preference where `key`=?"

    .line 62
    const-string/jumbo v1, "SELECT long_value FROM Preference where `key`=?"

    invoke-static {v1, v2}, Landroidx/room/l;->a(Ljava/lang/String;I)Landroidx/room/l;

    move-result-object v1

    .line 64
    if-nez p1, :cond_1

    .line 65
    invoke-virtual {v1, v2}, Landroidx/room/l;->a(I)V

    .line 69
    :goto_0
    iget-object v2, p0, Landroidx/work/impl/b/f;->a:Landroidx/room/i;

    invoke-virtual {v2}, Landroidx/room/i;->f()V

    .line 70
    iget-object v2, p0, Landroidx/work/impl/b/f;->a:Landroidx/room/i;

    invoke-static {v2, v1, v3, v0}, Landroidx/room/b/c;->a(Landroidx/room/i;Landroidx/i/a/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    .line 73
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 74
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->isNull(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_2

    .line 84
    :cond_0
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 85
    invoke-virtual {v1}, Landroidx/room/l;->a()V

    .line 82
    return-object v0

    .line 67
    :cond_1
    invoke-virtual {v1, v2, p1}, Landroidx/room/l;->a(ILjava/lang/String;)V

    goto :goto_0

    .line 77
    :cond_2
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_1

    .line 84
    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 85
    invoke-virtual {v1}, Landroidx/room/l;->a()V

    .line 86
    throw v0
.end method

.method public a(Landroidx/work/impl/b/d;)V
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Landroidx/work/impl/b/f;->a:Landroidx/room/i;

    invoke-virtual {v0}, Landroidx/room/i;->f()V

    .line 50
    iget-object v0, p0, Landroidx/work/impl/b/f;->a:Landroidx/room/i;

    invoke-virtual {v0}, Landroidx/room/i;->g()V

    .line 52
    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/b/f;->b:Landroidx/room/b;

    invoke-virtual {v0, p1}, Landroidx/room/b;->a(Ljava/lang/Object;)V

    .line 53
    iget-object v0, p0, Landroidx/work/impl/b/f;->a:Landroidx/room/i;

    invoke-virtual {v0}, Landroidx/room/i;->j()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    iget-object v0, p0, Landroidx/work/impl/b/f;->a:Landroidx/room/i;

    invoke-virtual {v0}, Landroidx/room/i;->h()V

    .line 57
    return-void

    .line 55
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroidx/work/impl/b/f;->a:Landroidx/room/i;

    invoke-virtual {v1}, Landroidx/room/i;->h()V

    .line 56
    throw v0
.end method
