.class public Lcom/bumptech/glide/e/h;
.super Lcom/bumptech/glide/e/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/e/a<",
        "Lcom/bumptech/glide/e/h;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/bumptech/glide/e/a;-><init>()V

    return-void
.end method

.method public static b(Lcom/bumptech/glide/load/engine/j;)Lcom/bumptech/glide/e/h;
    .locals 1

    .line 52
    new-instance v0, Lcom/bumptech/glide/e/h;

    invoke-direct {v0}, Lcom/bumptech/glide/e/h;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/e/h;->a(Lcom/bumptech/glide/load/engine/j;)Lcom/bumptech/glide/e/a;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/e/h;

    return-object p0
.end method

.method public static b(Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/e/h;
    .locals 1

    .line 134
    new-instance v0, Lcom/bumptech/glide/e/h;

    invoke-direct {v0}, Lcom/bumptech/glide/e/h;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/e/h;->a(Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/e/a;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/e/h;

    return-object p0
.end method

.method public static b(Ljava/lang/Class;)Lcom/bumptech/glide/e/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/bumptech/glide/e/h;"
        }
    .end annotation

    .line 213
    new-instance v0, Lcom/bumptech/glide/e/h;

    invoke-direct {v0}, Lcom/bumptech/glide/e/h;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/e/h;->a(Ljava/lang/Class;)Lcom/bumptech/glide/e/a;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/e/h;

    return-object p0
.end method
