.class final Lcom/bumptech/glide/load/engine/h$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
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
.field a:Lcom/bumptech/glide/load/f;

.field b:Lcom/bumptech/glide/load/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/k<",
            "TZ;>;"
        }
    .end annotation
.end field

.field c:Lcom/bumptech/glide/load/engine/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/t<",
            "TZ;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .line 683
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method final a(Lcom/bumptech/glide/load/engine/h$d;Lcom/bumptech/glide/load/h;)V
    .locals 4

    .line 697
    :try_start_0
    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/h$d;->a()Lcom/bumptech/glide/load/engine/b/a;

    move-result-object p1

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/h$c;->a:Lcom/bumptech/glide/load/f;

    new-instance v1, Lcom/bumptech/glide/load/engine/e;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/h$c;->b:Lcom/bumptech/glide/load/k;

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/h$c;->c:Lcom/bumptech/glide/load/engine/t;

    invoke-direct {v1, v2, v3, p2}, Lcom/bumptech/glide/load/engine/e;-><init>(Lcom/bumptech/glide/load/d;Ljava/lang/Object;Lcom/bumptech/glide/load/h;)V

    .line 698
    invoke-interface {p1, v0, v1}, Lcom/bumptech/glide/load/engine/b/a;->a(Lcom/bumptech/glide/load/f;Lcom/bumptech/glide/load/engine/b/a$b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 700
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/h$c;->c:Lcom/bumptech/glide/load/engine/t;

    invoke-virtual {p1}, Lcom/bumptech/glide/load/engine/t;->e()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/bumptech/glide/load/engine/h$c;->c:Lcom/bumptech/glide/load/engine/t;

    invoke-virtual {p2}, Lcom/bumptech/glide/load/engine/t;->e()V

    .line 701
    throw p1
.end method

.method final a()Z
    .locals 1

    .line 706
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/h$c;->c:Lcom/bumptech/glide/load/engine/t;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final b()V
    .locals 1

    const/4 v0, 0x0

    .line 710
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/h$c;->a:Lcom/bumptech/glide/load/f;

    .line 711
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/h$c;->b:Lcom/bumptech/glide/load/k;

    .line 712
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/h$c;->c:Lcom/bumptech/glide/load/engine/t;

    return-void
.end method
