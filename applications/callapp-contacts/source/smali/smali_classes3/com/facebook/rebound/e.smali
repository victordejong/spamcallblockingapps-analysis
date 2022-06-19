.class public final Lcom/facebook/rebound/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/rebound/e$a;
    }
.end annotation


# static fields
.field private static l:I


# instance fields
.field public a:Lcom/facebook/rebound/g;

.field b:Z

.field final c:Ljava/lang/String;

.field public final d:Lcom/facebook/rebound/e$a;

.field final e:Lcom/facebook/rebound/e$a;

.field final f:Lcom/facebook/rebound/e$a;

.field g:D

.field public h:D

.field i:Z

.field j:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/facebook/rebound/i;",
            ">;"
        }
    .end annotation
.end field

.field k:D

.field private m:D

.field private n:D

.field private final o:Lcom/facebook/rebound/b;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lcom/facebook/rebound/b;)V
    .locals 2

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lcom/facebook/rebound/e$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/rebound/e$a;-><init>(Lcom/facebook/rebound/e$1;)V

    iput-object v0, p0, Lcom/facebook/rebound/e;->d:Lcom/facebook/rebound/e$a;

    .line 40
    new-instance v0, Lcom/facebook/rebound/e$a;

    invoke-direct {v0, v1}, Lcom/facebook/rebound/e$a;-><init>(Lcom/facebook/rebound/e$1;)V

    iput-object v0, p0, Lcom/facebook/rebound/e;->e:Lcom/facebook/rebound/e$a;

    .line 41
    new-instance v0, Lcom/facebook/rebound/e$a;

    invoke-direct {v0, v1}, Lcom/facebook/rebound/e$a;-><init>(Lcom/facebook/rebound/e$1;)V

    iput-object v0, p0, Lcom/facebook/rebound/e;->f:Lcom/facebook/rebound/e$a;

    const/4 v0, 0x1

    .line 44
    iput-boolean v0, p0, Lcom/facebook/rebound/e;->i:Z

    const-wide v0, 0x3f747ae147ae147bL    # 0.005

    .line 46
    iput-wide v0, p0, Lcom/facebook/rebound/e;->m:D

    .line 47
    iput-wide v0, p0, Lcom/facebook/rebound/e;->n:D

    .line 48
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/facebook/rebound/e;->j:Ljava/util/concurrent/CopyOnWriteArraySet;

    const-wide/16 v0, 0x0

    .line 49
    iput-wide v0, p0, Lcom/facebook/rebound/e;->k:D

    if-eqz p1, :cond_0

    .line 60
    iput-object p1, p0, Lcom/facebook/rebound/e;->o:Lcom/facebook/rebound/b;

    .line 61
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "spring:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v0, Lcom/facebook/rebound/e;->l:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/facebook/rebound/e;->l:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/rebound/e;->c:Ljava/lang/String;

    .line 62
    sget-object p1, Lcom/facebook/rebound/g;->c:Lcom/facebook/rebound/g;

    invoke-virtual {p0, p1}, Lcom/facebook/rebound/e;->a(Lcom/facebook/rebound/g;)Lcom/facebook/rebound/e;

    return-void

    .line 58
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Spring cannot be created outside of a BaseSpringSystem"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Lcom/facebook/rebound/e$a;)D
    .locals 4

    .line 170
    iget-wide v0, p0, Lcom/facebook/rebound/e;->h:D

    iget-wide v2, p1, Lcom/facebook/rebound/e$a;->a:D

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public final a(D)Lcom/facebook/rebound/e;
    .locals 1

    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    const/4 v0, 0x1

    .line 113
    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/rebound/e;->a(DZ)Lcom/facebook/rebound/e;

    move-result-object p1

    return-object p1
.end method

.method public final a(DZ)Lcom/facebook/rebound/e;
    .locals 1

    .line 128
    iput-wide p1, p0, Lcom/facebook/rebound/e;->g:D

    .line 129
    iget-object v0, p0, Lcom/facebook/rebound/e;->d:Lcom/facebook/rebound/e$a;

    iput-wide p1, v0, Lcom/facebook/rebound/e$a;->a:D

    .line 130
    iget-object p1, p0, Lcom/facebook/rebound/e;->o:Lcom/facebook/rebound/b;

    .line 1080
    iget-object p2, p0, Lcom/facebook/rebound/e;->c:Ljava/lang/String;

    .line 130
    invoke-virtual {p1, p2}, Lcom/facebook/rebound/b;->a(Ljava/lang/String;)V

    .line 131
    iget-object p1, p0, Lcom/facebook/rebound/e;->j:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/facebook/rebound/i;

    .line 132
    invoke-interface {p2, p0}, Lcom/facebook/rebound/i;->a(Lcom/facebook/rebound/e;)V

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    .line 135
    invoke-virtual {p0}, Lcom/facebook/rebound/e;->c()Lcom/facebook/rebound/e;

    :cond_1
    return-object p0
.end method

.method public final a(Lcom/facebook/rebound/g;)Lcom/facebook/rebound/e;
    .locals 1

    if-eqz p1, :cond_0

    .line 92
    iput-object p1, p0, Lcom/facebook/rebound/e;->a:Lcom/facebook/rebound/g;

    return-object p0

    .line 90
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "springConfig is required"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Lcom/facebook/rebound/i;)Lcom/facebook/rebound/e;
    .locals 1

    if-eqz p1, :cond_0

    .line 510
    iget-object v0, p0, Lcom/facebook/rebound/e;->j:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-object p0

    .line 508
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "newListener is required"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a()V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/facebook/rebound/e;->j:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    .line 72
    iget-object v0, p0, Lcom/facebook/rebound/e;->o:Lcom/facebook/rebound/b;

    invoke-virtual {v0, p0}, Lcom/facebook/rebound/b;->a(Lcom/facebook/rebound/e;)V

    return-void
.end method

.method public final b(D)Lcom/facebook/rebound/e;
    .locals 3

    .line 179
    iget-wide v0, p0, Lcom/facebook/rebound/e;->h:D

    cmpl-double v2, v0, p1

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/facebook/rebound/e;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 1153
    :cond_0
    iget-object v0, p0, Lcom/facebook/rebound/e;->d:Lcom/facebook/rebound/e$a;

    iget-wide v0, v0, Lcom/facebook/rebound/e$a;->a:D

    .line 182
    iput-wide v0, p0, Lcom/facebook/rebound/e;->g:D

    .line 183
    iput-wide p1, p0, Lcom/facebook/rebound/e;->h:D

    .line 184
    iget-object p1, p0, Lcom/facebook/rebound/e;->o:Lcom/facebook/rebound/b;

    .line 2080
    iget-object p2, p0, Lcom/facebook/rebound/e;->c:Ljava/lang/String;

    .line 184
    invoke-virtual {p1, p2}, Lcom/facebook/rebound/b;->a(Ljava/lang/String;)V

    .line 185
    iget-object p1, p0, Lcom/facebook/rebound/e;->j:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/facebook/rebound/i;

    .line 186
    invoke-interface {p2, p0}, Lcom/facebook/rebound/i;->d(Lcom/facebook/rebound/e;)V

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public final b(Lcom/facebook/rebound/i;)Lcom/facebook/rebound/e;
    .locals 1

    if-eqz p1, :cond_0

    .line 523
    iget-object v0, p0, Lcom/facebook/rebound/e;->j:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    return-object p0

    .line 521
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "listenerToRemove is required"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b()Z
    .locals 5

    .line 473
    iget-object v0, p0, Lcom/facebook/rebound/e;->d:Lcom/facebook/rebound/e$a;

    iget-wide v0, v0, Lcom/facebook/rebound/e$a;->b:D

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    iget-wide v2, p0, Lcom/facebook/rebound/e;->m:D

    cmpg-double v4, v0, v2

    if-gtz v4, :cond_1

    iget-object v0, p0, Lcom/facebook/rebound/e;->d:Lcom/facebook/rebound/e$a;

    invoke-direct {p0, v0}, Lcom/facebook/rebound/e;->a(Lcom/facebook/rebound/e$a;)D

    move-result-wide v0

    iget-wide v2, p0, Lcom/facebook/rebound/e;->n:D

    cmpg-double v4, v0, v2

    if-lez v4, :cond_0

    iget-object v0, p0, Lcom/facebook/rebound/e;->a:Lcom/facebook/rebound/g;

    iget-wide v0, v0, Lcom/facebook/rebound/g;->b:D

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final c()Lcom/facebook/rebound/e;
    .locals 3

    .line 483
    iget-object v0, p0, Lcom/facebook/rebound/e;->d:Lcom/facebook/rebound/e$a;

    iget-wide v0, v0, Lcom/facebook/rebound/e$a;->a:D

    iput-wide v0, p0, Lcom/facebook/rebound/e;->h:D

    .line 484
    iget-object v0, p0, Lcom/facebook/rebound/e;->f:Lcom/facebook/rebound/e$a;

    iget-object v1, p0, Lcom/facebook/rebound/e;->d:Lcom/facebook/rebound/e$a;

    iget-wide v1, v1, Lcom/facebook/rebound/e$a;->a:D

    iput-wide v1, v0, Lcom/facebook/rebound/e$a;->a:D

    .line 485
    iget-object v0, p0, Lcom/facebook/rebound/e;->d:Lcom/facebook/rebound/e$a;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/facebook/rebound/e$a;->b:D

    return-object p0
.end method

.method public final c(D)Lcom/facebook/rebound/e;
    .locals 3

    .line 204
    iget-object v0, p0, Lcom/facebook/rebound/e;->d:Lcom/facebook/rebound/e$a;

    iget-wide v0, v0, Lcom/facebook/rebound/e$a;->b:D

    cmpl-double v2, p1, v0

    if-nez v2, :cond_0

    return-object p0

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/facebook/rebound/e;->d:Lcom/facebook/rebound/e$a;

    iput-wide p1, v0, Lcom/facebook/rebound/e$a;->b:D

    .line 208
    iget-object p1, p0, Lcom/facebook/rebound/e;->o:Lcom/facebook/rebound/b;

    .line 3080
    iget-object p2, p0, Lcom/facebook/rebound/e;->c:Ljava/lang/String;

    .line 208
    invoke-virtual {p1, p2}, Lcom/facebook/rebound/b;->a(Ljava/lang/String;)V

    return-object p0
.end method

.method public final d()Lcom/facebook/rebound/e;
    .locals 1

    .line 532
    iget-object v0, p0, Lcom/facebook/rebound/e;->j:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    return-object p0
.end method
