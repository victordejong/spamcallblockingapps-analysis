.class final Lcom/bumptech/glide/load/engine/a;
.super Ljava/lang/Object;
.source "ActiveResources.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/engine/a$b;,
        Lcom/bumptech/glide/load/engine/a$a;
    }
.end annotation


# instance fields
.field final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/bumptech/glide/load/f;",
            "Lcom/bumptech/glide/load/engine/a$b;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Z

.field private final c:Landroid/os/Handler;

.field private d:Lcom/bumptech/glide/load/engine/o$a;

.field private e:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Lcom/bumptech/glide/load/engine/o",
            "<*>;>;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/Thread;

.field private volatile g:Z

.field private volatile h:Lcom/bumptech/glide/load/engine/a$a;


# direct methods
.method constructor <init>(Z)V
    .locals 3

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/bumptech/glide/load/engine/a$1;

    invoke-direct {v2, p0}, Lcom/bumptech/glide/load/engine/a$1;-><init>(Lcom/bumptech/glide/load/engine/a;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/a;->c:Landroid/os/Handler;

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/a;->a:Ljava/util/Map;

    .line 55
    iput-boolean p1, p0, Lcom/bumptech/glide/load/engine/a;->b:Z

    .line 56
    return-void
.end method

.method private b()Ljava/lang/ref/ReferenceQueue;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Lcom/bumptech/glide/load/engine/o",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 112
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/a;->e:Ljava/lang/ref/ReferenceQueue;

    if-nez v0, :cond_0

    .line 113
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/a;->e:Ljava/lang/ref/ReferenceQueue;

    .line 114
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/bumptech/glide/load/engine/a$2;

    invoke-direct {v1, p0}, Lcom/bumptech/glide/load/engine/a$2;-><init>(Lcom/bumptech/glide/load/engine/a;)V

    const-string/jumbo v2, "glide-active-resources"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/a;->f:Ljava/lang/Thread;

    .line 122
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/a;->f:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/a;->e:Ljava/lang/ref/ReferenceQueue;

    return-object v0
.end method


# virtual methods
.method a()V
    .locals 3

    .prologue
    .line 129
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/a;->g:Z

    if-nez v0, :cond_1

    .line 131
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/a;->e:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->remove()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/engine/a$b;

    .line 132
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/a;->c:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 135
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/a;->h:Lcom/bumptech/glide/load/engine/a$a;

    .line 136
    if-eqz v0, :cond_0

    .line 137
    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/a$a;->a()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 140
    :catch_0
    move-exception v0

    .line 141
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 144
    :cond_1
    return-void
.end method

.method a(Lcom/bumptech/glide/load/engine/a$b;)V
    .locals 4

    .prologue
    .line 99
    invoke-static {}, Lcom/bumptech/glide/h/j;->a()V

    .line 100
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/a;->a:Ljava/util/Map;

    iget-object v1, p1, Lcom/bumptech/glide/load/engine/a$b;->a:Lcom/bumptech/glide/load/f;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    iget-boolean v0, p1, Lcom/bumptech/glide/load/engine/a$b;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/bumptech/glide/load/engine/a$b;->c:Lcom/bumptech/glide/load/engine/t;

    if-nez v0, :cond_1

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    new-instance v0, Lcom/bumptech/glide/load/engine/o;

    iget-object v1, p1, Lcom/bumptech/glide/load/engine/a$b;->c:Lcom/bumptech/glide/load/engine/t;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/bumptech/glide/load/engine/o;-><init>(Lcom/bumptech/glide/load/engine/t;ZZ)V

    .line 107
    iget-object v1, p1, Lcom/bumptech/glide/load/engine/a$b;->a:Lcom/bumptech/glide/load/f;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/a;->d:Lcom/bumptech/glide/load/engine/o$a;

    invoke-virtual {v0, v1, v2}, Lcom/bumptech/glide/load/engine/o;->a(Lcom/bumptech/glide/load/f;Lcom/bumptech/glide/load/engine/o$a;)V

    .line 108
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/a;->d:Lcom/bumptech/glide/load/engine/o$a;

    iget-object v2, p1, Lcom/bumptech/glide/load/engine/a$b;->a:Lcom/bumptech/glide/load/f;

    invoke-interface {v1, v2, v0}, Lcom/bumptech/glide/load/engine/o$a;->a(Lcom/bumptech/glide/load/f;Lcom/bumptech/glide/load/engine/o;)V

    goto :goto_0
.end method

.method a(Lcom/bumptech/glide/load/engine/o$a;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/a;->d:Lcom/bumptech/glide/load/engine/o$a;

    .line 60
    return-void
.end method

.method a(Lcom/bumptech/glide/load/f;)V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/a;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/engine/a$b;

    .line 78
    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/a$b;->a()V

    .line 81
    :cond_0
    return-void
.end method

.method a(Lcom/bumptech/glide/load/f;Lcom/bumptech/glide/load/engine/o;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/f;",
            "Lcom/bumptech/glide/load/engine/o",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 63
    new-instance v0, Lcom/bumptech/glide/load/engine/a$b;

    .line 67
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/a;->b()Ljava/lang/ref/ReferenceQueue;

    move-result-object v1

    iget-boolean v2, p0, Lcom/bumptech/glide/load/engine/a;->b:Z

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/bumptech/glide/load/engine/a$b;-><init>(Lcom/bumptech/glide/load/f;Lcom/bumptech/glide/load/engine/o;Ljava/lang/ref/ReferenceQueue;Z)V

    .line 70
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/a;->a:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/engine/a$b;

    .line 71
    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/a$b;->a()V

    .line 74
    :cond_0
    return-void
.end method

.method b(Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/load/engine/o;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/f;",
            ")",
            "Lcom/bumptech/glide/load/engine/o",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/a;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/engine/a$b;

    .line 86
    if-nez v0, :cond_1

    .line 87
    const/4 v1, 0x0

    .line 94
    :cond_0
    :goto_0
    return-object v1

    .line 90
    :cond_1
    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/a$b;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/load/engine/o;

    .line 91
    if-nez v1, :cond_0

    .line 92
    invoke-virtual {p0, v0}, Lcom/bumptech/glide/load/engine/a;->a(Lcom/bumptech/glide/load/engine/a$b;)V

    goto :goto_0
.end method
