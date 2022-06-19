.class Lcom/bumptech/glide/i$1;
.super Ljava/lang/Object;
.source "RequestManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bumptech/glide/i;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/i;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/bumptech/glide/i$1;->a:Lcom/bumptech/glide/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/bumptech/glide/i$1;->a:Lcom/bumptech/glide/i;

    iget-object v0, v0, Lcom/bumptech/glide/i;->c:Lcom/bumptech/glide/c/h;

    iget-object v1, p0, Lcom/bumptech/glide/i$1;->a:Lcom/bumptech/glide/i;

    invoke-interface {v0, v1}, Lcom/bumptech/glide/c/h;->a(Lcom/bumptech/glide/c/i;)V

    .line 68
    return-void
.end method
