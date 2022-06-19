.class public final Lcom/criteo/publisher/u;
.super Lcom/criteo/publisher/g;
.source "SourceFile"


# instance fields
.field private a:Lcom/criteo/publisher/d;

.field private final c:Lcom/criteo/publisher/e;

.field private final d:Lcom/criteo/publisher/model/n;

.field private final e:Lcom/criteo/publisher/c/a;

.field private final f:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lcom/criteo/publisher/d;Lcom/criteo/publisher/c/a;Lcom/criteo/publisher/e;Lcom/criteo/publisher/model/n;Lcom/criteo/publisher/k/a;)V
    .locals 1

    .line 68
    invoke-direct {p0, p2, p3, p5}, Lcom/criteo/publisher/g;-><init>(Lcom/criteo/publisher/c/a;Lcom/criteo/publisher/e;Lcom/criteo/publisher/k/a;)V

    .line 58
    new-instance p5, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p5, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p5, p0, Lcom/criteo/publisher/u;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 69
    iput-object p1, p0, Lcom/criteo/publisher/u;->a:Lcom/criteo/publisher/d;

    .line 70
    iput-object p2, p0, Lcom/criteo/publisher/u;->e:Lcom/criteo/publisher/c/a;

    .line 71
    iput-object p3, p0, Lcom/criteo/publisher/u;->c:Lcom/criteo/publisher/e;

    .line 72
    iput-object p4, p0, Lcom/criteo/publisher/u;->d:Lcom/criteo/publisher/model/n;

    return-void
.end method

.method private a(Lcom/criteo/publisher/model/s;)V
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/criteo/publisher/u;->c:Lcom/criteo/publisher/e;

    invoke-virtual {v0, p1}, Lcom/criteo/publisher/e;->a(Lcom/criteo/publisher/model/s;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/criteo/publisher/u;->c:Lcom/criteo/publisher/e;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/criteo/publisher/e;->a(Ljava/util/List;)V

    goto :goto_0

    .line 116
    :cond_0
    invoke-virtual {p1}, Lcom/criteo/publisher/model/s;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    iget-object v0, p0, Lcom/criteo/publisher/u;->a:Lcom/criteo/publisher/d;

    invoke-interface {v0, p1}, Lcom/criteo/publisher/d;->a(Lcom/criteo/publisher/model/s;)V

    .line 118
    iget-object v0, p0, Lcom/criteo/publisher/u;->e:Lcom/criteo/publisher/c/a;

    iget-object v1, p0, Lcom/criteo/publisher/u;->d:Lcom/criteo/publisher/model/n;

    invoke-interface {v0, v1, p1}, Lcom/criteo/publisher/c/a;->a(Lcom/criteo/publisher/model/n;Lcom/criteo/publisher/model/s;)V

    return-void

    .line 120
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/criteo/publisher/u;->a:Lcom/criteo/publisher/d;

    invoke-interface {p1}, Lcom/criteo/publisher/d;->a()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 140
    iget-object v0, p0, Lcom/criteo/publisher/u;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/criteo/publisher/u;->c:Lcom/criteo/publisher/e;

    iget-object v1, p0, Lcom/criteo/publisher/u;->d:Lcom/criteo/publisher/model/n;

    iget-object v2, p0, Lcom/criteo/publisher/u;->a:Lcom/criteo/publisher/d;

    invoke-virtual {v0, v1, v2}, Lcom/criteo/publisher/e;->a(Lcom/criteo/publisher/model/n;Lcom/criteo/publisher/d;)V

    const/4 v0, 0x0

    .line 142
    iput-object v0, p0, Lcom/criteo/publisher/u;->a:Lcom/criteo/publisher/d;

    :cond_0
    return-void
.end method

.method public final a(Lcom/criteo/publisher/model/o;Lcom/criteo/publisher/model/r;)V
    .locals 2

    .line 94
    invoke-super {p0, p1, p2}, Lcom/criteo/publisher/g;->a(Lcom/criteo/publisher/model/o;Lcom/criteo/publisher/model/r;)V

    .line 96
    invoke-virtual {p2}, Lcom/criteo/publisher/model/r;->b()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    .line 97
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "During a live request, only one bid will be fetched at a time."

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/criteo/publisher/m0/o;->a(Ljava/lang/Throwable;)V

    .line 100
    :cond_0
    iget-object p1, p0, Lcom/criteo/publisher/u;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 101
    invoke-virtual {p2}, Lcom/criteo/publisher/model/r;->b()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v0, :cond_1

    .line 102
    invoke-virtual {p2}, Lcom/criteo/publisher/model/r;->b()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/criteo/publisher/model/s;

    invoke-direct {p0, p1}, Lcom/criteo/publisher/u;->a(Lcom/criteo/publisher/model/s;)V

    goto :goto_0

    .line 104
    :cond_1
    iget-object p1, p0, Lcom/criteo/publisher/u;->a:Lcom/criteo/publisher/d;

    invoke-interface {p1}, Lcom/criteo/publisher/d;->a()V

    :goto_0
    const/4 p1, 0x0

    .line 106
    iput-object p1, p0, Lcom/criteo/publisher/u;->a:Lcom/criteo/publisher/d;

    return-void

    .line 108
    :cond_2
    iget-object p1, p0, Lcom/criteo/publisher/u;->c:Lcom/criteo/publisher/e;

    invoke-virtual {p2}, Lcom/criteo/publisher/model/r;->b()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/criteo/publisher/e;->a(Ljava/util/List;)V

    return-void
.end method

.method public final a(Lcom/criteo/publisher/model/o;Ljava/lang/Exception;)V
    .locals 0

    .line 130
    invoke-super {p0, p1, p2}, Lcom/criteo/publisher/g;->a(Lcom/criteo/publisher/model/o;Ljava/lang/Exception;)V

    .line 131
    invoke-virtual {p0}, Lcom/criteo/publisher/u;->a()V

    return-void
.end method
