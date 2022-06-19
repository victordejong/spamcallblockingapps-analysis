.class public abstract Landroidx/room/b;
.super Landroidx/room/o;
.source "EntityInsertionAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/room/o;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroidx/room/i;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0, p1}, Landroidx/room/o;-><init>(Landroidx/room/i;)V

    .line 44
    return-void
.end method


# virtual methods
.method protected abstract a(Landroidx/i/a/f;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/i/a/f;",
            "TT;)V"
        }
    .end annotation
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 61
    invoke-virtual {p0}, Landroidx/room/b;->c()Landroidx/i/a/f;

    move-result-object v1

    .line 63
    :try_start_0
    invoke-virtual {p0, v1, p1}, Landroidx/room/b;->a(Landroidx/i/a/f;Ljava/lang/Object;)V

    .line 64
    invoke-interface {v1}, Landroidx/i/a/f;->b()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    invoke-virtual {p0, v1}, Landroidx/room/b;->a(Landroidx/i/a/f;)V

    .line 68
    return-void

    .line 66
    :catchall_0
    move-exception v0

    invoke-virtual {p0, v1}, Landroidx/room/b;->a(Landroidx/i/a/f;)V

    .line 67
    throw v0
.end method
