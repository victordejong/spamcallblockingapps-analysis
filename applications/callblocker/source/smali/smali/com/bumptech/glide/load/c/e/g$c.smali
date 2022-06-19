.class Lcom/bumptech/glide/load/c/e/g$c;
.super Ljava/lang/Object;
.source "GifFrameLoader.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/c/e/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/bumptech/glide/load/c/e/g;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/c/e/g;)V
    .locals 0

    .prologue
    .line 292
    iput-object p1, p0, Lcom/bumptech/glide/load/c/e/g$c;->a:Lcom/bumptech/glide/load/c/e/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 296
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_0

    .line 297
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/bumptech/glide/load/c/e/g$a;

    .line 298
    iget-object v2, p0, Lcom/bumptech/glide/load/c/e/g$c;->a:Lcom/bumptech/glide/load/c/e/g;

    invoke-virtual {v2, v0}, Lcom/bumptech/glide/load/c/e/g;->a(Lcom/bumptech/glide/load/c/e/g$a;)V

    move v0, v1

    .line 304
    :goto_0
    return v0

    .line 300
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 301
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/bumptech/glide/load/c/e/g$a;

    .line 302
    iget-object v1, p0, Lcom/bumptech/glide/load/c/e/g$c;->a:Lcom/bumptech/glide/load/c/e/g;

    iget-object v1, v1, Lcom/bumptech/glide/load/c/e/g;->a:Lcom/bumptech/glide/i;

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/i;->a(Lcom/bumptech/glide/f/a/h;)V

    .line 304
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
