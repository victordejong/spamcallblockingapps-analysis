.class public abstract Ls00;
.super Ld10;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ld10;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lz00;)V
    .locals 0

    invoke-direct {p0, p1}, Ld10;-><init>(Lz00;)V

    return-void
.end method


# virtual methods
.method public abstract g(Lr10;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr10;",
            "TT;)V"
        }
    .end annotation
.end method

.method public final h(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-virtual {p0}, Ld10;->a()Lr10;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0, v0, p1}, Ls00;->g(Lr10;Ljava/lang/Object;)V

    invoke-interface {v0}, Lr10;->n()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v0}, Ld10;->f(Lr10;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0, v0}, Ld10;->f(Lr10;)V

    throw p1
.end method
