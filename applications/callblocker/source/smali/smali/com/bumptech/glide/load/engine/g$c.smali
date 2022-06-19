.class Lcom/bumptech/glide/load/engine/g$c;
.super Ljava/lang/Object;
.source "DecodeJob.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Lcom/bumptech/glide/load/f;

.field private b:Lcom/bumptech/glide/load/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/j",
            "<TZ;>;"
        }
    .end annotation
.end field

.field private c:Lcom/bumptech/glide/load/engine/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/s",
            "<TZ;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 655
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a(Lcom/bumptech/glide/load/engine/g$d;Lcom/bumptech/glide/load/h;)V
    .locals 5

    .prologue
    .line 666
    const-string/jumbo v0, "DecodeJob.encode"

    invoke-static {v0}, Lcom/bumptech/glide/h/a/b;->a(Ljava/lang/String;)V

    .line 668
    :try_start_0
    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/g$d;->a()Lcom/bumptech/glide/load/engine/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/g$c;->a:Lcom/bumptech/glide/load/f;

    new-instance v2, Lcom/bumptech/glide/load/engine/d;

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/g$c;->b:Lcom/bumptech/glide/load/j;

    iget-object v4, p0, Lcom/bumptech/glide/load/engine/g$c;->c:Lcom/bumptech/glide/load/engine/s;

    invoke-direct {v2, v3, v4, p2}, Lcom/bumptech/glide/load/engine/d;-><init>(Lcom/bumptech/glide/load/d;Ljava/lang/Object;Lcom/bumptech/glide/load/h;)V

    invoke-interface {v0, v1, v2}, Lcom/bumptech/glide/load/engine/b/a;->a(Lcom/bumptech/glide/load/f;Lcom/bumptech/glide/load/engine/b/a$b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 671
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/g$c;->c:Lcom/bumptech/glide/load/engine/s;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/s;->a()V

    .line 672
    invoke-static {}, Lcom/bumptech/glide/h/a/b;->a()V

    .line 674
    return-void

    .line 671
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/g$c;->c:Lcom/bumptech/glide/load/engine/s;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/s;->a()V

    .line 672
    invoke-static {}, Lcom/bumptech/glide/h/a/b;->a()V

    throw v0
.end method

.method a(Lcom/bumptech/glide/load/f;Lcom/bumptech/glide/load/j;Lcom/bumptech/glide/load/engine/s;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/f;",
            "Lcom/bumptech/glide/load/j",
            "<TX;>;",
            "Lcom/bumptech/glide/load/engine/s",
            "<TX;>;)V"
        }
    .end annotation

    .prologue
    .line 660
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/g$c;->a:Lcom/bumptech/glide/load/f;

    .line 661
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/g$c;->b:Lcom/bumptech/glide/load/j;

    .line 662
    iput-object p3, p0, Lcom/bumptech/glide/load/engine/g$c;->c:Lcom/bumptech/glide/load/engine/s;

    .line 663
    return-void
.end method

.method a()Z
    .locals 1

    .prologue
    .line 677
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/g$c;->c:Lcom/bumptech/glide/load/engine/s;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 681
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/g$c;->a:Lcom/bumptech/glide/load/f;

    .line 682
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/g$c;->b:Lcom/bumptech/glide/load/j;

    .line 683
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/g$c;->c:Lcom/bumptech/glide/load/engine/s;

    .line 684
    return-void
.end method
