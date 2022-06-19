.class final Lcom/bumptech/glide/load/engine/a$b;
.super Ljava/lang/ref/WeakReference;
.source "ActiveResources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/WeakReference",
        "<",
        "Lcom/bumptech/glide/load/engine/o",
        "<*>;>;"
    }
.end annotation


# instance fields
.field final a:Lcom/bumptech/glide/load/f;

.field final b:Z

.field c:Lcom/bumptech/glide/load/engine/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/t",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/f;Lcom/bumptech/glide/load/engine/o;Ljava/lang/ref/ReferenceQueue;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/f;",
            "Lcom/bumptech/glide/load/engine/o",
            "<*>;",
            "Ljava/lang/ref/ReferenceQueue",
            "<-",
            "Lcom/bumptech/glide/load/engine/o",
            "<*>;>;Z)V"
        }
    .end annotation

    .prologue
    .line 188
    invoke-direct {p0, p2, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 189
    invoke-static {p1}, Lcom/bumptech/glide/h/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/f;

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/a$b;->a:Lcom/bumptech/glide/load/f;

    .line 191
    invoke-virtual {p2}, Lcom/bumptech/glide/load/engine/o;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p4, :cond_0

    .line 192
    invoke-virtual {p2}, Lcom/bumptech/glide/load/engine/o;->a()Lcom/bumptech/glide/load/engine/t;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/h/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/engine/t;

    :goto_0
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/a$b;->c:Lcom/bumptech/glide/load/engine/t;

    .line 193
    invoke-virtual {p2}, Lcom/bumptech/glide/load/engine/o;->b()Z

    move-result v0

    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/a$b;->b:Z

    .line 194
    return-void

    .line 192
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method a()V
    .locals 1

    .prologue
    .line 197
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/a$b;->c:Lcom/bumptech/glide/load/engine/t;

    .line 198
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/a$b;->clear()V

    .line 199
    return-void
.end method
