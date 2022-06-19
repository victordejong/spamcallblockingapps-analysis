.class public final Lz1/c;
.super Lz1/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lz1/a<",
        "TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lz1/a;-><init>()V

    return-void
.end method


# virtual methods
.method public j(Lcom/google/common/util/concurrent/ListenableFuture;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "+TV;>;)Z"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lz1/a;->j(Lcom/google/common/util/concurrent/ListenableFuture;)Z

    move-result p1

    return p1
.end method

.method public k(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Lz1/a;->g:Ljava/lang/Object;

    .line 2
    :cond_0
    sget-object v0, Lz1/a;->f:Lz1/a$b;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Lz1/a$b;->b(Lz1/a;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    invoke-static {p0}, Lz1/a;->c(Lz1/a;)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public l(Ljava/lang/Throwable;)Z
    .locals 2

    .line 1
    new-instance v0, Lz1/a$d;

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-direct {v0, p1}, Lz1/a$d;-><init>(Ljava/lang/Throwable;)V

    .line 4
    sget-object p1, Lz1/a;->f:Lz1/a$b;

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v1, v0}, Lz1/a$b;->b(Lz1/a;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    invoke-static {p0}, Lz1/a;->c(Lz1/a;)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
