.class public final Lwv$g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field public final a:Lwv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lwv<",
            "TV;>;"
        }
    .end annotation
.end field

.field public final b:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "+TV;>;"
        }
    .end annotation
.end field


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lwv$g;->a:Lwv;

    iget-object v0, v0, Lwv;->a:Ljava/lang/Object;

    if-eq v0, p0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lwv$g;->b:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-static {v0}, Lwv;->i(Lcom/google/common/util/concurrent/ListenableFuture;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lwv;->g:Lwv$b;

    iget-object v2, p0, Lwv$g;->a:Lwv;

    invoke-virtual {v1, v2, p0, v0}, Lwv$b;->b(Lwv;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lwv$g;->a:Lwv;

    invoke-static {v0}, Lwv;->f(Lwv;)V

    :cond_1
    return-void
.end method
