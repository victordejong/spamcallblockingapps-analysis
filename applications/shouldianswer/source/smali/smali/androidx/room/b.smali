.class public abstract Landroidx/room/b;
.super Landroidx/room/p;
.source "EntityDeletionOrUpdateAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/room/p;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroidx/room/j;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Landroidx/room/p;-><init>(Landroidx/room/j;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 67
    invoke-virtual {p0}, Landroidx/room/b;->c()Landroidx/i/a/f;

    move-result-object v0

    .line 69
    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroidx/room/b;->a(Landroidx/i/a/f;Ljava/lang/Object;)V

    .line 70
    invoke-interface {v0}, Landroidx/i/a/f;->a()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    invoke-virtual {p0, v0}, Landroidx/room/b;->a(Landroidx/i/a/f;)V

    return p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0, v0}, Landroidx/room/b;->a(Landroidx/i/a/f;)V

    .line 73
    throw p1
.end method

.method protected abstract a()Ljava/lang/String;
.end method

.method protected abstract a(Landroidx/i/a/f;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/i/a/f;",
            "TT;)V"
        }
    .end annotation
.end method
