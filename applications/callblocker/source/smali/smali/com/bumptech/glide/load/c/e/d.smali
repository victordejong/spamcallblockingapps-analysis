.class public Lcom/bumptech/glide/load/c/e/d;
.super Ljava/lang/Object;
.source "GifDrawableEncoder.java"

# interfaces
.implements Lcom/bumptech/glide/load/j;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/j",
        "<",
        "Lcom/bumptech/glide/load/c/e/c;",
        ">;"
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
.method public a(Lcom/bumptech/glide/load/h;)Lcom/bumptech/glide/load/c;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/bumptech/glide/load/c;->a:Lcom/bumptech/glide/load/c;

    return-object v0
.end method

.method public a(Lcom/bumptech/glide/load/engine/t;Ljava/io/File;Lcom/bumptech/glide/load/h;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/t",
            "<",
            "Lcom/bumptech/glide/load/c/e/c;",
            ">;",
            "Ljava/io/File;",
            "Lcom/bumptech/glide/load/h;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 29
    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/t;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/c/e/c;

    .line 30
    const/4 v1, 0x0

    .line 32
    :try_start_0
    invoke-virtual {v0}, Lcom/bumptech/glide/load/c/e/c;->c()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/bumptech/glide/h/a;->a(Ljava/nio/ByteBuffer;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    const/4 v0, 0x1

    .line 39
    :goto_0
    return v0

    .line 34
    :catch_0
    move-exception v0

    .line 35
    const-string/jumbo v2, "GifEncoder"

    const/4 v3, 0x5

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 36
    const-string/jumbo v2, "GifEncoder"

    const-string/jumbo v3, "Failed to encode GIF drawable data"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/io/File;Lcom/bumptech/glide/load/h;)Z
    .locals 1

    .prologue
    .line 17
    check-cast p1, Lcom/bumptech/glide/load/engine/t;

    invoke-virtual {p0, p1, p2, p3}, Lcom/bumptech/glide/load/c/e/d;->a(Lcom/bumptech/glide/load/engine/t;Ljava/io/File;Lcom/bumptech/glide/load/h;)Z

    move-result v0

    return v0
.end method
