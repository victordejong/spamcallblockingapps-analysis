.class public final Lcom/google/android/exoplayer2/util/m;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/util/m$c;,
        Lcom/google/android/exoplayer2/util/m$b;,
        Lcom/google/android/exoplayer2/util/m$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "E:",
        "Lcom/google/android/exoplayer2/util/r;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Lcom/google/android/exoplayer2/util/c;

.field public final b:Lcom/google/android/exoplayer2/util/k;

.field public final c:Lcom/google/common/base/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/q<",
            "TE;>;"
        }
    .end annotation
.end field

.field public final d:Lcom/google/android/exoplayer2/util/m$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/util/m$b<",
            "TT;TE;>;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/google/android/exoplayer2/util/m$c<",
            "TT;TE;>;>;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private h:Z


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/google/android/exoplayer2/util/c;Lcom/google/common/base/q;Lcom/google/android/exoplayer2/util/m$b;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "Lcom/google/android/exoplayer2/util/c;",
            "Lcom/google/common/base/q<",
            "TE;>;",
            "Lcom/google/android/exoplayer2/util/m$b<",
            "TT;TE;>;)V"
        }
    .end annotation

    .line 100
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/util/m;-><init>(Ljava/util/concurrent/CopyOnWriteArraySet;Landroid/os/Looper;Lcom/google/android/exoplayer2/util/c;Lcom/google/common/base/q;Lcom/google/android/exoplayer2/util/m$b;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/CopyOnWriteArraySet;Landroid/os/Looper;Lcom/google/android/exoplayer2/util/c;Lcom/google/common/base/q;Lcom/google/android/exoplayer2/util/m$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/google/android/exoplayer2/util/m$c<",
            "TT;TE;>;>;",
            "Landroid/os/Looper;",
            "Lcom/google/android/exoplayer2/util/c;",
            "Lcom/google/common/base/q<",
            "TE;>;",
            "Lcom/google/android/exoplayer2/util/m$b<",
            "TT;TE;>;)V"
        }
    .end annotation

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-object p3, p0, Lcom/google/android/exoplayer2/util/m;->a:Lcom/google/android/exoplayer2/util/c;

    .line 115
    iput-object p1, p0, Lcom/google/android/exoplayer2/util/m;->e:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 116
    iput-object p4, p0, Lcom/google/android/exoplayer2/util/m;->c:Lcom/google/common/base/q;

    .line 117
    iput-object p5, p0, Lcom/google/android/exoplayer2/util/m;->d:Lcom/google/android/exoplayer2/util/m$b;

    .line 118
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/util/m;->f:Ljava/util/ArrayDeque;

    .line 119
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/util/m;->g:Ljava/util/ArrayDeque;

    .line 122
    new-instance p1, Lcom/google/android/exoplayer2/util/-$$Lambda$m$0PgCPd8u7b07hjACVP1_KgPVHgg;

    invoke-direct {p1, p0}, Lcom/google/android/exoplayer2/util/-$$Lambda$m$0PgCPd8u7b07hjACVP1_KgPVHgg;-><init>(Lcom/google/android/exoplayer2/util/m;)V

    invoke-interface {p3, p2, p1}, Lcom/google/android/exoplayer2/util/c;->a(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lcom/google/android/exoplayer2/util/k;

    move-result-object p1

    .line 123
    iput-object p1, p0, Lcom/google/android/exoplayer2/util/m;->b:Lcom/google/android/exoplayer2/util/k;

    return-void
.end method

.method private static synthetic a(Ljava/util/concurrent/CopyOnWriteArraySet;ILcom/google/android/exoplayer2/util/m$a;)V
    .locals 3

    .line 183
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/util/m$c;

    .line 2292
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/util/m$c;->d:Z

    if-nez v1, :cond_0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eq p1, v1, :cond_1

    .line 2294
    iget-object v1, v0, Lcom/google/android/exoplayer2/util/m$c;->b:Lcom/google/android/exoplayer2/util/r;

    .line 3047
    iget-object v1, v1, Lcom/google/android/exoplayer2/util/r;->b:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 2296
    :cond_1
    iput-boolean v2, v0, Lcom/google/android/exoplayer2/util/m$c;->c:Z

    .line 2297
    iget-object v0, v0, Lcom/google/android/exoplayer2/util/m$c;->a:Ljava/lang/Object;

    invoke-interface {p2, v0}, Lcom/google/android/exoplayer2/util/m$a;->invoke(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private a(Landroid/os/Message;)Z
    .locals 5

    .line 251
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 252
    iget-object p1, p0, Lcom/google/android/exoplayer2/util/m;->e:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/util/m$c;

    .line 253
    iget-object v2, p0, Lcom/google/android/exoplayer2/util/m;->c:Lcom/google/common/base/q;

    iget-object v3, p0, Lcom/google/android/exoplayer2/util/m;->d:Lcom/google/android/exoplayer2/util/m$b;

    .line 1303
    iget-boolean v4, v0, Lcom/google/android/exoplayer2/util/m$c;->d:Z

    if-nez v4, :cond_1

    iget-boolean v4, v0, Lcom/google/android/exoplayer2/util/m$c;->c:Z

    if-eqz v4, :cond_1

    .line 1306
    iget-object v4, v0, Lcom/google/android/exoplayer2/util/m$c;->b:Lcom/google/android/exoplayer2/util/r;

    .line 1307
    invoke-interface {v2}, Lcom/google/common/base/q;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/util/r;

    iput-object v2, v0, Lcom/google/android/exoplayer2/util/m$c;->b:Lcom/google/android/exoplayer2/util/r;

    const/4 v2, 0x0

    .line 1308
    iput-boolean v2, v0, Lcom/google/android/exoplayer2/util/m$c;->c:Z

    .line 1309
    iget-object v0, v0, Lcom/google/android/exoplayer2/util/m$c;->a:Ljava/lang/Object;

    invoke-interface {v3, v0, v4}, Lcom/google/android/exoplayer2/util/m$b;->invoke(Ljava/lang/Object;Lcom/google/android/exoplayer2/util/r;)V

    .line 254
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/m;->b:Lcom/google/android/exoplayer2/util/k;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/util/k;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 261
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_3

    .line 262
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 264
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/exoplayer2/util/m$a;

    .line 265
    invoke-virtual {p0, v0, p1}, Lcom/google/android/exoplayer2/util/m;->b(ILcom/google/android/exoplayer2/util/m$a;)V

    .line 266
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/m;->b()V

    :cond_3
    :goto_0
    return v1
.end method

.method public static synthetic lambda$0PgCPd8u7b07hjACVP1_KgPVHgg(Lcom/google/android/exoplayer2/util/m;Landroid/os/Message;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/util/m;->a(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$qIxuIzs1M1Sxq7nfu7AKvLAU8o8(Ljava/util/concurrent/CopyOnWriteArraySet;ILcom/google/android/exoplayer2/util/m$a;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/util/m;->a(Ljava/util/concurrent/CopyOnWriteArraySet;ILcom/google/android/exoplayer2/util/m$a;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 191
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/m;->g:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/m;->b:Lcom/google/android/exoplayer2/util/k;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/util/k;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 195
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/m;->b:Lcom/google/android/exoplayer2/util/k;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/util/k;->a(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 197
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/m;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 198
    iget-object v1, p0, Lcom/google/android/exoplayer2/util/m;->f:Ljava/util/ArrayDeque;

    iget-object v2, p0, Lcom/google/android/exoplayer2/util/m;->g:Ljava/util/ArrayDeque;

    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    .line 199
    iget-object v1, p0, Lcom/google/android/exoplayer2/util/m;->g:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->clear()V

    if-eqz v0, :cond_2

    return-void

    .line 204
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/m;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 205
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/m;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 206
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/m;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final a(ILcom/google/android/exoplayer2/util/m$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/exoplayer2/util/m$a<",
            "TT;>;)V"
        }
    .end annotation

    .line 179
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    iget-object v1, p0, Lcom/google/android/exoplayer2/util/m;->e:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>(Ljava/util/Collection;)V

    .line 181
    iget-object v1, p0, Lcom/google/android/exoplayer2/util/m;->g:Ljava/util/ArrayDeque;

    new-instance v2, Lcom/google/android/exoplayer2/util/-$$Lambda$m$qIxuIzs1M1Sxq7nfu7AKvLAU8o8;

    invoke-direct {v2, v0, p1, p2}, Lcom/google/android/exoplayer2/util/-$$Lambda$m$qIxuIzs1M1Sxq7nfu7AKvLAU8o8;-><init>(Ljava/util/concurrent/CopyOnWriteArraySet;ILcom/google/android/exoplayer2/util/m$a;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 148
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/util/m;->h:Z

    if-eqz v0, :cond_0

    return-void

    .line 151
    :cond_0
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/m;->e:Ljava/util/concurrent/CopyOnWriteArraySet;

    new-instance v1, Lcom/google/android/exoplayer2/util/m$c;

    iget-object v2, p0, Lcom/google/android/exoplayer2/util/m;->c:Lcom/google/common/base/q;

    invoke-direct {v1, p1, v2}, Lcom/google/android/exoplayer2/util/m$c;-><init>(Ljava/lang/Object;Lcom/google/common/base/q;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b()V
    .locals 3

    .line 229
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/m;->e:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/util/m$c;

    .line 230
    iget-object v2, p0, Lcom/google/android/exoplayer2/util/m;->d:Lcom/google/android/exoplayer2/util/m$b;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/util/m$c;->a(Lcom/google/android/exoplayer2/util/m$b;)V

    goto :goto_0

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/m;->e:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    const/4 v0, 0x1

    .line 233
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/util/m;->h:Z

    return-void
.end method

.method public final b(ILcom/google/android/exoplayer2/util/m$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/exoplayer2/util/m$a<",
            "TT;>;)V"
        }
    .end annotation

    .line 219
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/util/m;->a(ILcom/google/android/exoplayer2/util/m$a;)V

    .line 220
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/m;->a()V

    return-void
.end method
