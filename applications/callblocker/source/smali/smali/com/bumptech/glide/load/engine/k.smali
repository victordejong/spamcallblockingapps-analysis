.class Lcom/bumptech/glide/load/engine/k;
.super Ljava/lang/Object;
.source "EngineJob.java"

# interfaces
.implements Lcom/bumptech/glide/h/a/a$c;
.implements Lcom/bumptech/glide/load/engine/g$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/engine/k$b;,
        Lcom/bumptech/glide/load/engine/k$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/h/a/a$c;",
        "Lcom/bumptech/glide/load/engine/g$a",
        "<TR;>;"
    }
.end annotation


# static fields
.field private static final a:Lcom/bumptech/glide/load/engine/k$a;

.field private static final b:Landroid/os/Handler;


# instance fields
.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bumptech/glide/f/f;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/bumptech/glide/h/a/c;

.field private final e:Landroidx/core/g/e$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/g/e$a",
            "<",
            "Lcom/bumptech/glide/load/engine/k",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final f:Lcom/bumptech/glide/load/engine/k$a;

.field private final g:Lcom/bumptech/glide/load/engine/l;

.field private final h:Lcom/bumptech/glide/load/engine/c/a;

.field private final i:Lcom/bumptech/glide/load/engine/c/a;

.field private final j:Lcom/bumptech/glide/load/engine/c/a;

.field private final k:Lcom/bumptech/glide/load/engine/c/a;

.field private l:Lcom/bumptech/glide/load/f;

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Lcom/bumptech/glide/load/engine/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/t",
            "<*>;"
        }
    .end annotation
.end field

.field private r:Lcom/bumptech/glide/load/a;

.field private s:Z

.field private t:Lcom/bumptech/glide/load/engine/GlideException;

.field private u:Z

.field private v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bumptech/glide/f/f;",
            ">;"
        }
    .end annotation
.end field

.field private w:Lcom/bumptech/glide/load/engine/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/o",
            "<*>;"
        }
    .end annotation
.end field

.field private x:Lcom/bumptech/glide/load/engine/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/g",
            "<TR;>;"
        }
    .end annotation
.end field

.field private volatile y:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 26
    new-instance v0, Lcom/bumptech/glide/load/engine/k$a;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/k$a;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/engine/k;->a:Lcom/bumptech/glide/load/engine/k$a;

    .line 27
    new-instance v0, Landroid/os/Handler;

    .line 28
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/bumptech/glide/load/engine/k$b;

    invoke-direct {v2}, Lcom/bumptech/glide/load/engine/k$b;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    sput-object v0, Lcom/bumptech/glide/load/engine/k;->b:Landroid/os/Handler;

    .line 27
    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/load/engine/c/a;Lcom/bumptech/glide/load/engine/c/a;Lcom/bumptech/glide/load/engine/c/a;Lcom/bumptech/glide/load/engine/c/a;Lcom/bumptech/glide/load/engine/l;Landroidx/core/g/e$a;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/c/a;",
            "Lcom/bumptech/glide/load/engine/c/a;",
            "Lcom/bumptech/glide/load/engine/c/a;",
            "Lcom/bumptech/glide/load/engine/c/a;",
            "Lcom/bumptech/glide/load/engine/l;",
            "Landroidx/core/g/e$a",
            "<",
            "Lcom/bumptech/glide/load/engine/k",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 72
    sget-object v7, Lcom/bumptech/glide/load/engine/k;->a:Lcom/bumptech/glide/load/engine/k$a;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/bumptech/glide/load/engine/k;-><init>(Lcom/bumptech/glide/load/engine/c/a;Lcom/bumptech/glide/load/engine/c/a;Lcom/bumptech/glide/load/engine/c/a;Lcom/bumptech/glide/load/engine/c/a;Lcom/bumptech/glide/load/engine/l;Landroidx/core/g/e$a;Lcom/bumptech/glide/load/engine/k$a;)V

    .line 80
    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/load/engine/c/a;Lcom/bumptech/glide/load/engine/c/a;Lcom/bumptech/glide/load/engine/c/a;Lcom/bumptech/glide/load/engine/c/a;Lcom/bumptech/glide/load/engine/l;Landroidx/core/g/e$a;Lcom/bumptech/glide/load/engine/k$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/c/a;",
            "Lcom/bumptech/glide/load/engine/c/a;",
            "Lcom/bumptech/glide/load/engine/c/a;",
            "Lcom/bumptech/glide/load/engine/c/a;",
            "Lcom/bumptech/glide/load/engine/l;",
            "Landroidx/core/g/e$a",
            "<",
            "Lcom/bumptech/glide/load/engine/k",
            "<*>;>;",
            "Lcom/bumptech/glide/load/engine/k$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/k;->c:Ljava/util/List;

    .line 37
    invoke-static {}, Lcom/bumptech/glide/h/a/c;->a()Lcom/bumptech/glide/h/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/k;->d:Lcom/bumptech/glide/h/a/c;

    .line 91
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/k;->h:Lcom/bumptech/glide/load/engine/c/a;

    .line 92
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/k;->i:Lcom/bumptech/glide/load/engine/c/a;

    .line 93
    iput-object p3, p0, Lcom/bumptech/glide/load/engine/k;->j:Lcom/bumptech/glide/load/engine/c/a;

    .line 94
    iput-object p4, p0, Lcom/bumptech/glide/load/engine/k;->k:Lcom/bumptech/glide/load/engine/c/a;

    .line 95
    iput-object p5, p0, Lcom/bumptech/glide/load/engine/k;->g:Lcom/bumptech/glide/load/engine/l;

    .line 96
    iput-object p6, p0, Lcom/bumptech/glide/load/engine/k;->e:Landroidx/core/g/e$a;

    .line 97
    iput-object p7, p0, Lcom/bumptech/glide/load/engine/k;->f:Lcom/bumptech/glide/load/engine/k$a;

    .line 98
    return-void
.end method

.method private a(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 238
    invoke-static {}, Lcom/bumptech/glide/h/j;->a()V

    .line 239
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/k;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 240
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/k;->l:Lcom/bumptech/glide/load/f;

    .line 241
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/k;->w:Lcom/bumptech/glide/load/engine/o;

    .line 242
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/k;->q:Lcom/bumptech/glide/load/engine/t;

    .line 243
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/k;->v:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/k;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 246
    :cond_0
    iput-boolean v2, p0, Lcom/bumptech/glide/load/engine/k;->u:Z

    .line 247
    iput-boolean v2, p0, Lcom/bumptech/glide/load/engine/k;->y:Z

    .line 248
    iput-boolean v2, p0, Lcom/bumptech/glide/load/engine/k;->s:Z

    .line 249
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/k;->x:Lcom/bumptech/glide/load/engine/g;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/engine/g;->a(Z)V

    .line 250
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/k;->x:Lcom/bumptech/glide/load/engine/g;

    .line 251
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/k;->t:Lcom/bumptech/glide/load/engine/GlideException;

    .line 252
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/k;->r:Lcom/bumptech/glide/load/a;

    .line 253
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/k;->e:Landroidx/core/g/e$a;

    invoke-interface {v0, p0}, Landroidx/core/g/e$a;->a(Ljava/lang/Object;)Z

    .line 254
    return-void
.end method

.method private c(Lcom/bumptech/glide/f/f;)V
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/k;->v:Ljava/util/List;

    if-nez v0, :cond_0

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/k;->v:Ljava/util/List;

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/k;->v:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 167
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/k;->v:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    :cond_1
    return-void
.end method

.method private d(Lcom/bumptech/glide/f/f;)Z
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/k;->v:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/k;->v:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private g()Lcom/bumptech/glide/load/engine/c/a;
    .locals 1

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/k;->n:Z

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/k;->j:Lcom/bumptech/glide/load/engine/c/a;

    .line 153
    :goto_0
    return-object v0

    .line 154
    :cond_0
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/k;->o:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/k;->k:Lcom/bumptech/glide/load/engine/c/a;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/k;->i:Lcom/bumptech/glide/load/engine/c/a;

    goto :goto_0
.end method


# virtual methods
.method a(Lcom/bumptech/glide/load/f;ZZZZ)Lcom/bumptech/glide/load/engine/k;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/f;",
            "ZZZZ)",
            "Lcom/bumptech/glide/load/engine/k",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 107
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/k;->l:Lcom/bumptech/glide/load/f;

    .line 108
    iput-boolean p2, p0, Lcom/bumptech/glide/load/engine/k;->m:Z

    .line 109
    iput-boolean p3, p0, Lcom/bumptech/glide/load/engine/k;->n:Z

    .line 110
    iput-boolean p4, p0, Lcom/bumptech/glide/load/engine/k;->o:Z

    .line 111
    iput-boolean p5, p0, Lcom/bumptech/glide/load/engine/k;->p:Z

    .line 112
    return-object p0
.end method

.method a(Lcom/bumptech/glide/f/f;)V
    .locals 2

    .prologue
    .line 124
    invoke-static {}, Lcom/bumptech/glide/h/j;->a()V

    .line 125
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/k;->d:Lcom/bumptech/glide/h/a/c;

    invoke-virtual {v0}, Lcom/bumptech/glide/h/a/c;->b()V

    .line 126
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/k;->s:Z

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/k;->w:Lcom/bumptech/glide/load/engine/o;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/k;->r:Lcom/bumptech/glide/load/a;

    invoke-interface {p1, v0, v1}, Lcom/bumptech/glide/f/f;->a(Lcom/bumptech/glide/load/engine/t;Lcom/bumptech/glide/load/a;)V

    .line 133
    :goto_0
    return-void

    .line 128
    :cond_0
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/k;->u:Z

    if-eqz v0, :cond_1

    .line 129
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/k;->t:Lcom/bumptech/glide/load/engine/GlideException;

    invoke-interface {p1, v0}, Lcom/bumptech/glide/f/f;->a(Lcom/bumptech/glide/load/engine/GlideException;)V

    goto :goto_0

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/k;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public a(Lcom/bumptech/glide/load/engine/GlideException;)V
    .locals 2

    .prologue
    .line 265
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/k;->t:Lcom/bumptech/glide/load/engine/GlideException;

    .line 266
    sget-object v0, Lcom/bumptech/glide/load/engine/k;->b:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 267
    return-void
.end method

.method public a(Lcom/bumptech/glide/load/engine/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/g",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 273
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/k;->g()Lcom/bumptech/glide/load/engine/c/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/engine/c/a;->execute(Ljava/lang/Runnable;)V

    .line 274
    return-void
.end method

.method public a(Lcom/bumptech/glide/load/engine/t;Lcom/bumptech/glide/load/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/t",
            "<TR;>;",
            "Lcom/bumptech/glide/load/a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 258
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/k;->q:Lcom/bumptech/glide/load/engine/t;

    .line 259
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/k;->r:Lcom/bumptech/glide/load/a;

    .line 260
    sget-object v0, Lcom/bumptech/glide/load/engine/k;->b:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 261
    return-void
.end method

.method a()Z
    .locals 1

    .prologue
    .line 149
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/k;->p:Z

    return v0
.end method

.method b()V
    .locals 2

    .prologue
    .line 177
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/k;->u:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/k;->s:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/k;->y:Z

    if-eqz v0, :cond_1

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 181
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/k;->y:Z

    .line 182
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/k;->x:Lcom/bumptech/glide/load/engine/g;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/g;->b()V

    .line 185
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/k;->g:Lcom/bumptech/glide/load/engine/l;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/k;->l:Lcom/bumptech/glide/load/f;

    invoke-interface {v0, p0, v1}, Lcom/bumptech/glide/load/engine/l;->a(Lcom/bumptech/glide/load/engine/k;Lcom/bumptech/glide/load/f;)V

    goto :goto_0
.end method

.method b(Lcom/bumptech/glide/f/f;)V
    .locals 1

    .prologue
    .line 136
    invoke-static {}, Lcom/bumptech/glide/h/j;->a()V

    .line 137
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/k;->d:Lcom/bumptech/glide/h/a/c;

    invoke-virtual {v0}, Lcom/bumptech/glide/h/a/c;->b()V

    .line 138
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/k;->s:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/k;->u:Z

    if-eqz v0, :cond_2

    .line 139
    :cond_0
    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/engine/k;->c(Lcom/bumptech/glide/f/f;)V

    .line 146
    :cond_1
    :goto_0
    return-void

    .line 141
    :cond_2
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/k;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 142
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/k;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 143
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/k;->b()V

    goto :goto_0
.end method

.method public b(Lcom/bumptech/glide/load/engine/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/g",
            "<TR;>;)V"
        }
    .end annotation

    .prologue
    .line 116
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/k;->x:Lcom/bumptech/glide/load/engine/g;

    .line 117
    invoke-virtual {p1}, Lcom/bumptech/glide/load/engine/g;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/k;->h:Lcom/bumptech/glide/load/engine/c/a;

    .line 120
    :goto_0
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/engine/c/a;->execute(Ljava/lang/Runnable;)V

    .line 121
    return-void

    .line 119
    :cond_0
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/k;->g()Lcom/bumptech/glide/load/engine/c/a;

    move-result-object v0

    goto :goto_0
.end method

.method c()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 195
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/k;->d:Lcom/bumptech/glide/h/a/c;

    invoke-virtual {v0}, Lcom/bumptech/glide/h/a/c;->b()V

    .line 196
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/k;->y:Z

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/k;->q:Lcom/bumptech/glide/load/engine/t;

    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/t;->f()V

    .line 198
    invoke-direct {p0, v2}, Lcom/bumptech/glide/load/engine/k;->a(Z)V

    .line 225
    :goto_0
    return-void

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/k;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 201
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Received a resource without any callbacks to notify"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 202
    :cond_1
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/k;->s:Z

    if-eqz v0, :cond_2

    .line 203
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Already have resource"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 205
    :cond_2
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/k;->f:Lcom/bumptech/glide/load/engine/k$a;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/k;->q:Lcom/bumptech/glide/load/engine/t;

    iget-boolean v3, p0, Lcom/bumptech/glide/load/engine/k;->m:Z

    invoke-virtual {v0, v1, v3}, Lcom/bumptech/glide/load/engine/k$a;->a(Lcom/bumptech/glide/load/engine/t;Z)Lcom/bumptech/glide/load/engine/o;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/k;->w:Lcom/bumptech/glide/load/engine/o;

    .line 206
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/k;->s:Z

    .line 210
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/k;->w:Lcom/bumptech/glide/load/engine/o;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/o;->g()V

    .line 211
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/k;->g:Lcom/bumptech/glide/load/engine/l;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/k;->l:Lcom/bumptech/glide/load/f;

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/k;->w:Lcom/bumptech/glide/load/engine/o;

    invoke-interface {v0, p0, v1, v3}, Lcom/bumptech/glide/load/engine/l;->a(Lcom/bumptech/glide/load/engine/k;Lcom/bumptech/glide/load/f;Lcom/bumptech/glide/load/engine/o;)V

    .line 214
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/k;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    move v1, v2

    :goto_1
    if-ge v1, v3, :cond_4

    .line 215
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/k;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/f/f;

    .line 216
    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/engine/k;->d(Lcom/bumptech/glide/f/f;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 217
    iget-object v4, p0, Lcom/bumptech/glide/load/engine/k;->w:Lcom/bumptech/glide/load/engine/o;

    invoke-virtual {v4}, Lcom/bumptech/glide/load/engine/o;->g()V

    .line 218
    iget-object v4, p0, Lcom/bumptech/glide/load/engine/k;->w:Lcom/bumptech/glide/load/engine/o;

    iget-object v5, p0, Lcom/bumptech/glide/load/engine/k;->r:Lcom/bumptech/glide/load/a;

    invoke-interface {v0, v4, v5}, Lcom/bumptech/glide/f/f;->a(Lcom/bumptech/glide/load/engine/t;Lcom/bumptech/glide/load/a;)V

    .line 214
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 222
    :cond_4
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/k;->w:Lcom/bumptech/glide/load/engine/o;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/o;->h()V

    .line 224
    invoke-direct {p0, v2}, Lcom/bumptech/glide/load/engine/k;->a(Z)V

    goto :goto_0
.end method

.method public c_()Lcom/bumptech/glide/h/a/c;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/k;->d:Lcom/bumptech/glide/h/a/c;

    return-object v0
.end method

.method e()V
    .locals 2

    .prologue
    .line 229
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/k;->d:Lcom/bumptech/glide/h/a/c;

    invoke-virtual {v0}, Lcom/bumptech/glide/h/a/c;->b()V

    .line 230
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/k;->y:Z

    if-nez v0, :cond_0

    .line 231
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Not cancelled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/k;->g:Lcom/bumptech/glide/load/engine/l;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/k;->l:Lcom/bumptech/glide/load/f;

    invoke-interface {v0, p0, v1}, Lcom/bumptech/glide/load/engine/l;->a(Lcom/bumptech/glide/load/engine/k;Lcom/bumptech/glide/load/f;)V

    .line 234
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/engine/k;->a(Z)V

    .line 235
    return-void
.end method

.method f()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 278
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/k;->d:Lcom/bumptech/glide/h/a/c;

    invoke-virtual {v0}, Lcom/bumptech/glide/h/a/c;->b()V

    .line 279
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/k;->y:Z

    if-eqz v0, :cond_0

    .line 280
    invoke-direct {p0, v3}, Lcom/bumptech/glide/load/engine/k;->a(Z)V

    .line 298
    :goto_0
    return-void

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/k;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 283
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Received an exception without any callbacks to notify"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 284
    :cond_1
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/k;->u:Z

    if-eqz v0, :cond_2

    .line 285
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Already failed once"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 287
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/k;->u:Z

    .line 289
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/k;->g:Lcom/bumptech/glide/load/engine/l;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/k;->l:Lcom/bumptech/glide/load/f;

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/bumptech/glide/load/engine/l;->a(Lcom/bumptech/glide/load/engine/k;Lcom/bumptech/glide/load/f;Lcom/bumptech/glide/load/engine/o;)V

    .line 291
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/k;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/f/f;

    .line 292
    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/engine/k;->d(Lcom/bumptech/glide/f/f;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 293
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/k;->t:Lcom/bumptech/glide/load/engine/GlideException;

    invoke-interface {v0, v2}, Lcom/bumptech/glide/f/f;->a(Lcom/bumptech/glide/load/engine/GlideException;)V

    goto :goto_1

    .line 297
    :cond_4
    invoke-direct {p0, v3}, Lcom/bumptech/glide/load/engine/k;->a(Z)V

    goto :goto_0
.end method
