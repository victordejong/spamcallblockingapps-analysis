.class public Lcom/bumptech/glide/load/c/f/d;
.super Ljava/lang/Object;
.source "GifDrawableBytesTranscoder.java"

# interfaces
.implements Lcom/bumptech/glide/load/c/f/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/c/f/e",
        "<",
        "Lcom/bumptech/glide/load/c/e/c;",
        "[B>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/load/engine/t;Lcom/bumptech/glide/load/h;)Lcom/bumptech/glide/load/engine/t;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/t",
            "<",
            "Lcom/bumptech/glide/load/c/e/c;",
            ">;",
            "Lcom/bumptech/glide/load/h;",
            ")",
            "Lcom/bumptech/glide/load/engine/t",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 22
    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/t;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/c/e/c;

    .line 23
    invoke-virtual {v0}, Lcom/bumptech/glide/load/c/e/c;->c()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 24
    new-instance v1, Lcom/bumptech/glide/load/c/b/b;

    invoke-static {v0}, Lcom/bumptech/glide/h/a;->a(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/bumptech/glide/load/c/b/b;-><init>([B)V

    return-object v1
.end method
