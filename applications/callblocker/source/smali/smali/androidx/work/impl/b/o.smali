.class public final Landroidx/work/impl/b/o;
.super Ljava/lang/Object;
.source "WorkProgressDao_Impl.java"

# interfaces
.implements Landroidx/work/impl/b/n;


# instance fields
.field private final a:Landroidx/room/i;

.field private final b:Landroidx/room/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/b",
            "<",
            "Landroidx/work/impl/b/m;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Landroidx/room/o;

.field private final d:Landroidx/room/o;


# direct methods
.method public constructor <init>(Landroidx/room/i;)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Landroidx/work/impl/b/o;->a:Landroidx/room/i;

    .line 31
    new-instance v0, Landroidx/work/impl/b/o$1;

    invoke-direct {v0, p0, p1}, Landroidx/work/impl/b/o$1;-><init>(Landroidx/work/impl/b/o;Landroidx/room/i;)V

    iput-object v0, p0, Landroidx/work/impl/b/o;->b:Landroidx/room/b;

    .line 53
    new-instance v0, Landroidx/work/impl/b/o$2;

    invoke-direct {v0, p0, p1}, Landroidx/work/impl/b/o$2;-><init>(Landroidx/work/impl/b/o;Landroidx/room/i;)V

    iput-object v0, p0, Landroidx/work/impl/b/o;->c:Landroidx/room/o;

    .line 60
    new-instance v0, Landroidx/work/impl/b/o$3;

    invoke-direct {v0, p0, p1}, Landroidx/work/impl/b/o$3;-><init>(Landroidx/work/impl/b/o;Landroidx/room/i;)V

    iput-object v0, p0, Landroidx/work/impl/b/o;->d:Landroidx/room/o;

    .line 67
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 103
    iget-object v0, p0, Landroidx/work/impl/b/o;->a:Landroidx/room/i;

    invoke-virtual {v0}, Landroidx/room/i;->f()V

    .line 104
    iget-object v0, p0, Landroidx/work/impl/b/o;->d:Landroidx/room/o;

    invoke-virtual {v0}, Landroidx/room/o;->c()Landroidx/i/a/f;

    move-result-object v1

    .line 105
    iget-object v0, p0, Landroidx/work/impl/b/o;->a:Landroidx/room/i;

    invoke-virtual {v0}, Landroidx/room/i;->g()V

    .line 107
    :try_start_0
    invoke-interface {v1}, Landroidx/i/a/f;->a()I

    .line 108
    iget-object v0, p0, Landroidx/work/impl/b/o;->a:Landroidx/room/i;

    invoke-virtual {v0}, Landroidx/room/i;->j()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    iget-object v0, p0, Landroidx/work/impl/b/o;->a:Landroidx/room/i;

    invoke-virtual {v0}, Landroidx/room/i;->h()V

    .line 111
    iget-object v0, p0, Landroidx/work/impl/b/o;->d:Landroidx/room/o;

    invoke-virtual {v0, v1}, Landroidx/room/o;->a(Landroidx/i/a/f;)V

    .line 113
    return-void

    .line 110
    :catchall_0
    move-exception v0

    iget-object v2, p0, Landroidx/work/impl/b/o;->a:Landroidx/room/i;

    invoke-virtual {v2}, Landroidx/room/i;->h()V

    .line 111
    iget-object v2, p0, Landroidx/work/impl/b/o;->d:Landroidx/room/o;

    invoke-virtual {v2, v1}, Landroidx/room/o;->a(Landroidx/i/a/f;)V

    .line 112
    throw v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 83
    iget-object v0, p0, Landroidx/work/impl/b/o;->a:Landroidx/room/i;

    invoke-virtual {v0}, Landroidx/room/i;->f()V

    .line 84
    iget-object v0, p0, Landroidx/work/impl/b/o;->c:Landroidx/room/o;

    invoke-virtual {v0}, Landroidx/room/o;->c()Landroidx/i/a/f;

    move-result-object v1

    .line 85
    const/4 v0, 0x1

    .line 86
    if-nez p1, :cond_0

    .line 87
    invoke-interface {v1, v0}, Landroidx/i/a/f;->a(I)V

    .line 91
    :goto_0
    iget-object v0, p0, Landroidx/work/impl/b/o;->a:Landroidx/room/i;

    invoke-virtual {v0}, Landroidx/room/i;->g()V

    .line 93
    :try_start_0
    invoke-interface {v1}, Landroidx/i/a/f;->a()I

    .line 94
    iget-object v0, p0, Landroidx/work/impl/b/o;->a:Landroidx/room/i;

    invoke-virtual {v0}, Landroidx/room/i;->j()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    iget-object v0, p0, Landroidx/work/impl/b/o;->a:Landroidx/room/i;

    invoke-virtual {v0}, Landroidx/room/i;->h()V

    .line 97
    iget-object v0, p0, Landroidx/work/impl/b/o;->c:Landroidx/room/o;

    invoke-virtual {v0, v1}, Landroidx/room/o;->a(Landroidx/i/a/f;)V

    .line 99
    return-void

    .line 89
    :cond_0
    invoke-interface {v1, v0, p1}, Landroidx/i/a/f;->a(ILjava/lang/String;)V

    goto :goto_0

    .line 96
    :catchall_0
    move-exception v0

    iget-object v2, p0, Landroidx/work/impl/b/o;->a:Landroidx/room/i;

    invoke-virtual {v2}, Landroidx/room/i;->h()V

    .line 97
    iget-object v2, p0, Landroidx/work/impl/b/o;->c:Landroidx/room/o;

    invoke-virtual {v2, v1}, Landroidx/room/o;->a(Landroidx/i/a/f;)V

    .line 98
    throw v0
.end method
