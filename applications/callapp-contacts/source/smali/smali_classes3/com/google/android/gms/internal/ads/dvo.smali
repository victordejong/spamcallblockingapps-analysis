.class final Lcom/google/android/gms/internal/ads/dvo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dvl;


# instance fields
.field final a:Lcom/google/android/gms/internal/ads/ebv;

.field final b:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/google/android/gms/internal/ads/dvk;",
            ">;"
        }
    .end annotation
.end field

.field c:Z

.field d:I

.field e:I

.field f:I

.field g:Z

.field h:Lcom/google/android/gms/internal/ads/dwe;

.field i:Ljava/lang/Object;

.field j:Lcom/google/android/gms/internal/ads/ebi;

.field k:Lcom/google/android/gms/internal/ads/ebw;

.field l:Lcom/google/android/gms/internal/ads/dvz;

.field m:Lcom/google/android/gms/internal/ads/dvr;

.field private final n:[Lcom/google/android/gms/internal/ads/dvy;

.field private final o:Lcom/google/android/gms/internal/ads/ebw;

.field private final p:Landroid/os/Handler;

.field private final q:Lcom/google/android/gms/internal/ads/dvp;

.field private final r:Lcom/google/android/gms/internal/ads/dwf;

.field private final s:Lcom/google/android/gms/internal/ads/dwg;

.field private t:Z

.field private u:I

.field private v:I

.field private w:I

.field private x:J


# direct methods
.method public constructor <init>([Lcom/google/android/gms/internal/ads/dvy;Lcom/google/android/gms/internal/ads/ebv;Lcom/google/android/gms/internal/ads/dvx;)V
    .locals 12

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/ede;->e:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Init ExoPlayerLib/2.4.2 ["

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    array-length v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ecr;->b(Z)V

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ecr;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/dvy;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dvo;->n:[Lcom/google/android/gms/internal/ads/dvy;

    .line 5
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/ecr;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/ebv;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dvo;->a:Lcom/google/android/gms/internal/ads/ebv;

    .line 6
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/dvo;->t:Z

    .line 7
    iput v2, p0, Lcom/google/android/gms/internal/ads/dvo;->u:I

    .line 8
    iput v1, p0, Lcom/google/android/gms/internal/ads/dvo;->d:I

    .line 9
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dvo;->b:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 10
    new-instance v0, Lcom/google/android/gms/internal/ads/ebw;

    array-length v1, p1

    new-array v1, v1, [Lcom/google/android/gms/internal/ads/ebu;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/ebw;-><init>([Lcom/google/android/gms/internal/ads/ebu;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dvo;->o:Lcom/google/android/gms/internal/ads/ebw;

    .line 11
    sget-object v1, Lcom/google/android/gms/internal/ads/dwe;->a:Lcom/google/android/gms/internal/ads/dwe;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/dvo;->h:Lcom/google/android/gms/internal/ads/dwe;

    .line 12
    new-instance v1, Lcom/google/android/gms/internal/ads/dwf;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/dwf;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/dvo;->r:Lcom/google/android/gms/internal/ads/dwf;

    .line 13
    new-instance v1, Lcom/google/android/gms/internal/ads/dwg;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/dwg;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/dvo;->s:Lcom/google/android/gms/internal/ads/dwg;

    .line 14
    sget-object v1, Lcom/google/android/gms/internal/ads/ebi;->a:Lcom/google/android/gms/internal/ads/ebi;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/dvo;->j:Lcom/google/android/gms/internal/ads/ebi;

    .line 15
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dvo;->k:Lcom/google/android/gms/internal/ads/ebw;

    .line 16
    sget-object v0, Lcom/google/android/gms/internal/ads/dvz;->a:Lcom/google/android/gms/internal/ads/dvz;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dvo;->l:Lcom/google/android/gms/internal/ads/dvz;

    .line 17
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    .line 18
    :goto_1
    new-instance v9, Lcom/google/android/gms/internal/ads/dvq;

    invoke-direct {v9, p0, v0}, Lcom/google/android/gms/internal/ads/dvq;-><init>(Lcom/google/android/gms/internal/ads/dvo;Landroid/os/Looper;)V

    iput-object v9, p0, Lcom/google/android/gms/internal/ads/dvo;->p:Landroid/os/Handler;

    .line 19
    new-instance v10, Lcom/google/android/gms/internal/ads/dvr;

    const-wide/16 v0, 0x0

    invoke-direct {v10, v2, v0, v1}, Lcom/google/android/gms/internal/ads/dvr;-><init>(IJ)V

    iput-object v10, p0, Lcom/google/android/gms/internal/ads/dvo;->m:Lcom/google/android/gms/internal/ads/dvr;

    .line 20
    new-instance v0, Lcom/google/android/gms/internal/ads/dvp;

    iget-boolean v7, p0, Lcom/google/android/gms/internal/ads/dvo;->t:Z

    const/4 v8, 0x0

    move-object v3, v0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v11, p0

    invoke-direct/range {v3 .. v11}, Lcom/google/android/gms/internal/ads/dvp;-><init>([Lcom/google/android/gms/internal/ads/dvy;Lcom/google/android/gms/internal/ads/ebv;Lcom/google/android/gms/internal/ads/dvx;ZILandroid/os/Handler;Lcom/google/android/gms/internal/ads/dvr;Lcom/google/android/gms/internal/ads/dvl;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dvo;->q:Lcom/google/android/gms/internal/ads/dvp;

    return-void
.end method

.method private final j()I
    .locals 4

    .line 90
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dvo;->h:Lcom/google/android/gms/internal/ads/dwe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dwe;->c()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/ads/dvo;->e:I

    if-lez v0, :cond_0

    goto :goto_0

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dvo;->h:Lcom/google/android/gms/internal/ads/dwe;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dvo;->m:Lcom/google/android/gms/internal/ads/dvr;

    iget v1, v1, Lcom/google/android/gms/internal/ads/dvr;->a:I

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dvo;->s:Lcom/google/android/gms/internal/ads/dwg;

    const/4 v3, 0x0

    .line 93
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/dwe;->a(ILcom/google/android/gms/internal/ads/dwg;Z)Lcom/google/android/gms/internal/ads/dwg;

    return v3

    .line 91
    :cond_1
    :goto_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/dvo;->v:I

    return v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 26
    iget v0, p0, Lcom/google/android/gms/internal/ads/dvo;->d:I

    return v0
.end method

.method public final a(I)V
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dvo;->q:Lcom/google/android/gms/internal/ads/dvp;

    .line 4557
    iput p1, v0, Lcom/google/android/gms/internal/ads/dvp;->e:I

    return-void
.end method

.method public final a(J)V
    .locals 6

    .line 53
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dvo;->j()I

    move-result v0

    if-ltz v0, :cond_5

    .line 54
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dvo;->h:Lcom/google/android/gms/internal/ads/dwe;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/dwe;->c()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dvo;->h:Lcom/google/android/gms/internal/ads/dwe;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/dwe;->a()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 56
    :cond_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/dvo;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/dvo;->e:I

    .line 57
    iput v0, p0, Lcom/google/android/gms/internal/ads/dvo;->v:I

    .line 58
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dvo;->h:Lcom/google/android/gms/internal/ads/dwe;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/dwe;->c()Z

    move-result v1

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v4, 0x0

    if-nez v1, :cond_2

    .line 59
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dvo;->h:Lcom/google/android/gms/internal/ads/dwe;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/dvo;->r:Lcom/google/android/gms/internal/ads/dwf;

    .line 2003
    invoke-virtual {v1, v0, v5}, Lcom/google/android/gms/internal/ads/dwe;->a(ILcom/google/android/gms/internal/ads/dwf;)Lcom/google/android/gms/internal/ads/dwf;

    cmp-long v1, p1, v2

    if-eqz v1, :cond_1

    .line 63
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/dvj;->b(J)J

    .line 66
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dvo;->h:Lcom/google/android/gms/internal/ads/dwe;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/dvo;->s:Lcom/google/android/gms/internal/ads/dwg;

    .line 67
    invoke-virtual {v1, v4, v5, v4}, Lcom/google/android/gms/internal/ads/dwe;->a(ILcom/google/android/gms/internal/ads/dwg;Z)Lcom/google/android/gms/internal/ads/dwg;

    .line 71
    :cond_2
    iput v4, p0, Lcom/google/android/gms/internal/ads/dvo;->w:I

    cmp-long v1, p1, v2

    if-nez v1, :cond_3

    const-wide/16 p1, 0x0

    .line 73
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/dvo;->x:J

    .line 74
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/dvo;->q:Lcom/google/android/gms/internal/ads/dvp;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/dvo;->h:Lcom/google/android/gms/internal/ads/dwe;

    invoke-virtual {p1, p2, v0, v2, v3}, Lcom/google/android/gms/internal/ads/dvp;->a(Lcom/google/android/gms/internal/ads/dwe;IJ)V

    return-void

    .line 75
    :cond_3
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/dvo;->x:J

    .line 76
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dvo;->q:Lcom/google/android/gms/internal/ads/dvp;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dvo;->h:Lcom/google/android/gms/internal/ads/dwe;

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/dvj;->b(J)J

    move-result-wide p1

    invoke-virtual {v1, v2, v0, p1, p2}, Lcom/google/android/gms/internal/ads/dvp;->a(Lcom/google/android/gms/internal/ads/dwe;IJ)V

    .line 77
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/dvo;->b:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_4
    return-void

    .line 55
    :cond_5
    new-instance v1, Lcom/google/android/gms/internal/ads/zzhu;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dvo;->h:Lcom/google/android/gms/internal/ads/dwe;

    invoke-direct {v1, v2, v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzhu;-><init>(Lcom/google/android/gms/internal/ads/dwe;IJ)V

    throw v1
.end method

.method public final a(Lcom/google/android/gms/internal/ads/dvk;)V
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dvo;->b:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/eau;)V
    .locals 3

    .line 28
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dvo;->h:Lcom/google/android/gms/internal/ads/dwe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dwe;->c()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dvo;->i:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 29
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/dwe;->a:Lcom/google/android/gms/internal/ads/dwe;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dvo;->h:Lcom/google/android/gms/internal/ads/dwe;

    .line 30
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/dvo;->i:Ljava/lang/Object;

    .line 31
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dvo;->b:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    .line 34
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dvo;->c:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 35
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/dvo;->c:Z

    .line 36
    sget-object v0, Lcom/google/android/gms/internal/ads/ebi;->a:Lcom/google/android/gms/internal/ads/ebi;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dvo;->j:Lcom/google/android/gms/internal/ads/ebi;

    .line 37
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dvo;->o:Lcom/google/android/gms/internal/ads/ebw;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dvo;->k:Lcom/google/android/gms/internal/ads/ebw;

    .line 38
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dvo;->a:Lcom/google/android/gms/internal/ads/ebv;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ebv;->a(Ljava/lang/Object;)V

    .line 39
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dvo;->b:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_1

    .line 42
    :cond_2
    iget v0, p0, Lcom/google/android/gms/internal/ads/dvo;->f:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/dvo;->f:I

    .line 43
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dvo;->q:Lcom/google/android/gms/internal/ads/dvp;

    .line 1028
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/dvp;->a:Landroid/os/Handler;

    invoke-virtual {v0, v2, v1, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1029
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final a(Z)V
    .locals 3

    .line 45
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dvo;->t:Z

    if-eq v0, p1, :cond_0

    .line 46
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/dvo;->t:Z

    .line 47
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dvo;->q:Lcom/google/android/gms/internal/ads/dvp;

    .line 1031
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/dvp;->a:Landroid/os/Handler;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 48
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/dvo;->b:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dvk;

    .line 49
    iget v1, p0, Lcom/google/android/gms/internal/ads/dvo;->d:I

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/dvk;->b(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final varargs a([Lcom/google/android/gms/internal/ads/dvm;)V
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dvo;->q:Lcom/google/android/gms/internal/ads/dvp;

    .line 2038
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/dvp;->b:Z

    if-eqz v1, :cond_0

    const-string p1, "ExoPlayerImplInternal"

    const-string v0, "Ignoring messages sent after release."

    .line 2039
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2041
    :cond_0
    iget v1, v0, Lcom/google/android/gms/internal/ads/dvp;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/gms/internal/ads/dvp;->c:I

    .line 2042
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/dvp;->a:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final b(I)V
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dvo;->q:Lcom/google/android/gms/internal/ads/dvp;

    .line 4559
    iput p1, v0, Lcom/google/android/gms/internal/ads/dvp;->f:I

    return-void
.end method

.method public final b(Lcom/google/android/gms/internal/ads/dvk;)V
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dvo;->b:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final varargs b([Lcom/google/android/gms/internal/ads/dvm;)V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dvo;->q:Lcom/google/android/gms/internal/ads/dvp;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/dvp;->a([Lcom/google/android/gms/internal/ads/dvm;)V

    return-void
.end method

.method public final b()Z
    .locals 1

    .line 52
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dvo;->t:Z

    return v0
.end method

.method public final c()V
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dvo;->q:Lcom/google/android/gms/internal/ads/dvp;

    .line 2036
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/dvp;->a:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final d()V
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dvo;->q:Lcom/google/android/gms/internal/ads/dvp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dvp;->a()V

    .line 84
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dvo;->p:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public final e()I
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dvo;->n:[Lcom/google/android/gms/internal/ads/dvy;

    array-length v0, v0

    return v0
.end method

.method public final f()J
    .locals 3

    .line 95
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dvo;->h:Lcom/google/android/gms/internal/ads/dwe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dwe;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dvo;->h:Lcom/google/android/gms/internal/ads/dwe;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dvo;->j()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dvo;->r:Lcom/google/android/gms/internal/ads/dwf;

    .line 3003
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/dwe;->a(ILcom/google/android/gms/internal/ads/dwf;)Lcom/google/android/gms/internal/ads/dwf;

    move-result-object v0

    .line 99
    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/dwf;->i:J

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/dvj;->a(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final g()J
    .locals 4

    .line 101
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dvo;->h:Lcom/google/android/gms/internal/ads/dwe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dwe;->c()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/ads/dvo;->e:I

    if-lez v0, :cond_0

    goto :goto_0

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dvo;->h:Lcom/google/android/gms/internal/ads/dwe;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dvo;->m:Lcom/google/android/gms/internal/ads/dvr;

    iget v1, v1, Lcom/google/android/gms/internal/ads/dvr;->a:I

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dvo;->s:Lcom/google/android/gms/internal/ads/dwg;

    const/4 v3, 0x0

    .line 104
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/dwe;->a(ILcom/google/android/gms/internal/ads/dwg;Z)Lcom/google/android/gms/internal/ads/dwg;

    .line 105
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dvo;->s:Lcom/google/android/gms/internal/ads/dwg;

    .line 3009
    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/dwg;->f:J

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/dvj;->a(J)J

    move-result-wide v0

    .line 105
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dvo;->m:Lcom/google/android/gms/internal/ads/dvr;

    iget-wide v2, v2, Lcom/google/android/gms/internal/ads/dvr;->c:J

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/dvj;->a(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0

    .line 102
    :cond_1
    :goto_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/dvo;->x:J

    return-wide v0
.end method

.method public final h()J
    .locals 4

    .line 106
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dvo;->h:Lcom/google/android/gms/internal/ads/dwe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dwe;->c()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/ads/dvo;->e:I

    if-lez v0, :cond_0

    goto :goto_0

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dvo;->h:Lcom/google/android/gms/internal/ads/dwe;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dvo;->m:Lcom/google/android/gms/internal/ads/dvr;

    iget v1, v1, Lcom/google/android/gms/internal/ads/dvr;->a:I

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dvo;->s:Lcom/google/android/gms/internal/ads/dwg;

    const/4 v3, 0x0

    .line 109
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/dwe;->a(ILcom/google/android/gms/internal/ads/dwg;Z)Lcom/google/android/gms/internal/ads/dwg;

    .line 110
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dvo;->s:Lcom/google/android/gms/internal/ads/dwg;

    .line 4009
    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/dwg;->f:J

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/dvj;->a(J)J

    move-result-wide v0

    .line 110
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dvo;->m:Lcom/google/android/gms/internal/ads/dvr;

    iget-wide v2, v2, Lcom/google/android/gms/internal/ads/dvr;->d:J

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/dvj;->a(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0

    .line 107
    :cond_1
    :goto_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/dvo;->x:J

    return-wide v0
.end method

.method public final i()V
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dvo;->q:Lcom/google/android/gms/internal/ads/dvp;

    const/4 v1, 0x1

    .line 4026
    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/dvp;->d:Z

    return-void
.end method
