.class final Lcom/google/android/gms/internal/ads/dkw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dkt;


# instance fields
.field private final a:[Lcom/google/android/gms/internal/ads/dli;

.field private final b:Lcom/google/android/gms/internal/ads/drj;

.field private final c:Lcom/google/android/gms/internal/ads/drg;

.field private final d:Lcom/google/android/gms/internal/ads/cnz;

.field private final e:Lcom/google/android/gms/internal/ads/dky;

.field private final f:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet",
            "<",
            "Lcom/google/android/gms/internal/ads/dks;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcom/google/android/gms/internal/ads/dlo;

.field private final h:Lcom/google/android/gms/internal/ads/dlp;

.field private i:Z

.field private j:Z

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:Z

.field private p:Lcom/google/android/gms/internal/ads/dln;

.field private q:Ljava/lang/Object;

.field private r:Lcom/google/android/gms/internal/ads/dqv;

.field private s:Lcom/google/android/gms/internal/ads/drg;

.field private t:Lcom/google/android/gms/internal/ads/dlj;

.field private u:Lcom/google/android/gms/internal/ads/dla;

.field private v:I

.field private w:I

.field private x:J


# direct methods
.method public constructor <init>([Lcom/google/android/gms/internal/ads/dli;Lcom/google/android/gms/internal/ads/drj;Lcom/google/android/gms/internal/ads/dlh;)V
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string/jumbo v0, "ExoPlayerImpl"

    sget-object v2, Lcom/google/android/gms/internal/ads/dsn;->e:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1a

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "Init ExoPlayerLib/2.4.2 ["

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    array-length v0, p1

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/drz;->b(Z)V

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/drz;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/dli;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dkw;->a:[Lcom/google/android/gms/internal/ads/dli;

    .line 5
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/drz;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/drj;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dkw;->b:Lcom/google/android/gms/internal/ads/drj;

    .line 6
    iput-boolean v5, p0, Lcom/google/android/gms/internal/ads/dkw;->j:Z

    .line 7
    iput v5, p0, Lcom/google/android/gms/internal/ads/dkw;->k:I

    .line 8
    iput v1, p0, Lcom/google/android/gms/internal/ads/dkw;->l:I

    .line 9
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dkw;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 10
    new-instance v0, Lcom/google/android/gms/internal/ads/drg;

    array-length v1, p1

    new-array v1, v1, [Lcom/google/android/gms/internal/ads/dre;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/drg;-><init>([Lcom/google/android/gms/internal/ads/dre;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dkw;->c:Lcom/google/android/gms/internal/ads/drg;

    .line 11
    sget-object v0, Lcom/google/android/gms/internal/ads/dln;->a:Lcom/google/android/gms/internal/ads/dln;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dkw;->p:Lcom/google/android/gms/internal/ads/dln;

    .line 12
    new-instance v0, Lcom/google/android/gms/internal/ads/dlo;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/dlo;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dkw;->g:Lcom/google/android/gms/internal/ads/dlo;

    .line 13
    new-instance v0, Lcom/google/android/gms/internal/ads/dlp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/dlp;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dkw;->h:Lcom/google/android/gms/internal/ads/dlp;

    .line 14
    sget-object v0, Lcom/google/android/gms/internal/ads/dqv;->a:Lcom/google/android/gms/internal/ads/dqv;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dkw;->r:Lcom/google/android/gms/internal/ads/dqv;

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dkw;->c:Lcom/google/android/gms/internal/ads/drg;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dkw;->s:Lcom/google/android/gms/internal/ads/drg;

    .line 16
    sget-object v0, Lcom/google/android/gms/internal/ads/dlj;->a:Lcom/google/android/gms/internal/ads/dlj;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dkw;->t:Lcom/google/android/gms/internal/ads/dlj;

    .line 17
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 18
    :goto_1
    new-instance v1, Lcom/google/android/gms/internal/ads/dkz;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/ads/dkz;-><init>(Lcom/google/android/gms/internal/ads/dkw;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/dkw;->d:Lcom/google/android/gms/internal/ads/cnz;

    .line 19
    new-instance v0, Lcom/google/android/gms/internal/ads/dla;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v5, v2, v3}, Lcom/google/android/gms/internal/ads/dla;-><init>(IJ)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dkw;->u:Lcom/google/android/gms/internal/ads/dla;

    .line 20
    new-instance v0, Lcom/google/android/gms/internal/ads/dky;

    iget-boolean v4, p0, Lcom/google/android/gms/internal/ads/dkw;->j:Z

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/dkw;->d:Lcom/google/android/gms/internal/ads/cnz;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/dkw;->u:Lcom/google/android/gms/internal/ads/dla;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v8, p0

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/dky;-><init>([Lcom/google/android/gms/internal/ads/dli;Lcom/google/android/gms/internal/ads/drj;Lcom/google/android/gms/internal/ads/dlh;ZILcom/google/android/gms/internal/ads/cnz;Lcom/google/android/gms/internal/ads/dla;Lcom/google/android/gms/internal/ads/dkt;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dkw;->e:Lcom/google/android/gms/internal/ads/dky;

    .line 21
    return-void

    :cond_0
    move v0, v5

    .line 3
    goto :goto_0

    .line 17
    :cond_1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_1
.end method

.method private final i()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 91
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dkw;->p:Lcom/google/android/gms/internal/ads/dln;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/dln;->c()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/google/android/gms/internal/ads/dkw;->m:I

    if-lez v1, :cond_1

    .line 92
    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/dkw;->v:I

    .line 95
    :goto_0
    return v0

    .line 93
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dkw;->p:Lcom/google/android/gms/internal/ads/dln;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dkw;->u:Lcom/google/android/gms/internal/ads/dla;

    iget v2, v2, Lcom/google/android/gms/internal/ads/dla;->a:I

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/dkw;->h:Lcom/google/android/gms/internal/ads/dlp;

    .line 94
    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/gms/internal/ads/dln;->a(ILcom/google/android/gms/internal/ads/dlp;Z)Lcom/google/android/gms/internal/ads/dlp;

    goto :goto_0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/google/android/gms/internal/ads/dkw;->l:I

    return v0
.end method

.method public final a(J)V
    .locals 11

    .prologue
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v6, 0x0

    .line 53
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dkw;->i()I

    move-result v2

    .line 54
    if-ltz v2, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dkw;->p:Lcom/google/android/gms/internal/ads/dln;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dln;->c()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dkw;->p:Lcom/google/android/gms/internal/ads/dln;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dln;->a()I

    move-result v0

    if-lt v2, v0, :cond_1

    .line 55
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhg;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dkw;->p:Lcom/google/android/gms/internal/ads/dln;

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/google/android/gms/internal/ads/zzhg;-><init>(Lcom/google/android/gms/internal/ads/dln;IJ)V

    throw v0

    .line 56
    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/dkw;->m:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/dkw;->m:I

    .line 57
    iput v2, p0, Lcom/google/android/gms/internal/ads/dkw;->v:I

    .line 58
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dkw;->p:Lcom/google/android/gms/internal/ads/dln;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dln;->c()Z

    move-result v0

    if-nez v0, :cond_2

    .line 59
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dkw;->p:Lcom/google/android/gms/internal/ads/dln;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dkw;->g:Lcom/google/android/gms/internal/ads/dlo;

    .line 60
    invoke-virtual {v0, v2, v1, v6}, Lcom/google/android/gms/internal/ads/dln;->a(ILcom/google/android/gms/internal/ads/dlo;Z)Lcom/google/android/gms/internal/ads/dlo;

    .line 61
    cmp-long v0, p1, v8

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dkw;->g:Lcom/google/android/gms/internal/ads/dlo;

    .line 62
    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/dlo;->h:J

    .line 64
    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/dkw;->g:Lcom/google/android/gms/internal/ads/dlo;

    .line 65
    iget-wide v4, v3, Lcom/google/android/gms/internal/ads/dlo;->j:J

    .line 66
    add-long/2addr v0, v4

    .line 67
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/dkw;->p:Lcom/google/android/gms/internal/ads/dln;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/dkw;->h:Lcom/google/android/gms/internal/ads/dlp;

    .line 68
    invoke-virtual {v3, v6, v4, v6}, Lcom/google/android/gms/internal/ads/dln;->a(ILcom/google/android/gms/internal/ads/dlp;Z)Lcom/google/android/gms/internal/ads/dlp;

    move-result-object v3

    .line 69
    iget-wide v4, v3, Lcom/google/android/gms/internal/ads/dlp;->c:J

    .line 71
    cmp-long v3, v4, v8

    if-eqz v3, :cond_2

    cmp-long v0, v0, v4

    if-ltz v0, :cond_2

    .line 72
    :cond_2
    iput v6, p0, Lcom/google/android/gms/internal/ads/dkw;->w:I

    .line 73
    cmp-long v0, p1, v8

    if-nez v0, :cond_5

    .line 74
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/dkw;->x:J

    .line 75
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dkw;->e:Lcom/google/android/gms/internal/ads/dky;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dkw;->p:Lcom/google/android/gms/internal/ads/dln;

    invoke-virtual {v0, v1, v2, v8, v9}, Lcom/google/android/gms/internal/ads/dky;->a(Lcom/google/android/gms/internal/ads/dln;IJ)V

    .line 81
    :cond_3
    return-void

    .line 63
    :cond_4
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/dkr;->b(J)J

    move-result-wide v0

    goto :goto_0

    .line 76
    :cond_5
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/dkw;->x:J

    .line 77
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dkw;->e:Lcom/google/android/gms/internal/ads/dky;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dkw;->p:Lcom/google/android/gms/internal/ads/dln;

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/dkr;->b(J)J

    move-result-wide v4

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/google/android/gms/internal/ads/dky;->a(Lcom/google/android/gms/internal/ads/dln;IJ)V

    .line 78
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dkw;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dks;

    .line 79
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dks;->g()V

    goto :goto_1
.end method

.method final a(Landroid/os/Message;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 113
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 167
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 114
    :pswitch_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/dkw;->n:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/dkw;->n:I

    .line 168
    :cond_0
    return-void

    .line 116
    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/dkw;->l:I

    .line 117
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dkw;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dks;

    .line 118
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/dkw;->j:Z

    iget v3, p0, Lcom/google/android/gms/internal/ads/dkw;->l:I

    invoke-interface {v0, v2, v3}, Lcom/google/android/gms/internal/ads/dks;->a(ZI)V

    goto :goto_0

    .line 121
    :pswitch_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/dkw;->o:Z

    .line 122
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dkw;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dks;

    .line 123
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/dkw;->o:Z

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/dks;->a(Z)V

    goto :goto_2

    .line 121
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 126
    :pswitch_3
    iget v0, p0, Lcom/google/android/gms/internal/ads/dkw;->n:I

    if-nez v0, :cond_0

    .line 127
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/drl;

    .line 128
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/dkw;->i:Z

    .line 129
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/drl;->a:Lcom/google/android/gms/internal/ads/dqv;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/dkw;->r:Lcom/google/android/gms/internal/ads/dqv;

    .line 130
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/drl;->b:Lcom/google/android/gms/internal/ads/drg;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/dkw;->s:Lcom/google/android/gms/internal/ads/drg;

    .line 131
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dkw;->b:Lcom/google/android/gms/internal/ads/drj;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/drl;->c:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/drj;->a(Ljava/lang/Object;)V

    .line 132
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dkw;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dks;

    .line 133
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dkw;->r:Lcom/google/android/gms/internal/ads/dqv;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/dkw;->s:Lcom/google/android/gms/internal/ads/drg;

    invoke-interface {v0, v2, v3}, Lcom/google/android/gms/internal/ads/dks;->a(Lcom/google/android/gms/internal/ads/dqv;Lcom/google/android/gms/internal/ads/drg;)V

    goto :goto_3

    .line 136
    :pswitch_4
    iget v0, p0, Lcom/google/android/gms/internal/ads/dkw;->m:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/dkw;->m:I

    if-nez v0, :cond_0

    .line 137
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/dla;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dkw;->u:Lcom/google/android/gms/internal/ads/dla;

    .line 138
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dkw;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dks;

    .line 140
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dks;->g()V

    goto :goto_4

    .line 142
    :pswitch_5
    iget v0, p0, Lcom/google/android/gms/internal/ads/dkw;->m:I

    if-nez v0, :cond_0

    .line 143
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/dla;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dkw;->u:Lcom/google/android/gms/internal/ads/dla;

    .line 144
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dkw;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dks;

    .line 145
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dks;->g()V

    goto :goto_5

    .line 147
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/dlc;

    .line 148
    iget v1, p0, Lcom/google/android/gms/internal/ads/dkw;->m:I

    iget v2, v0, Lcom/google/android/gms/internal/ads/dlc;->d:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/gms/internal/ads/dkw;->m:I

    .line 149
    iget v1, p0, Lcom/google/android/gms/internal/ads/dkw;->n:I

    if-nez v1, :cond_0

    .line 150
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/dlc;->a:Lcom/google/android/gms/internal/ads/dln;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/dkw;->p:Lcom/google/android/gms/internal/ads/dln;

    .line 151
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/dlc;->b:Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/dkw;->q:Ljava/lang/Object;

    .line 152
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/dlc;->c:Lcom/google/android/gms/internal/ads/dla;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dkw;->u:Lcom/google/android/gms/internal/ads/dla;

    .line 153
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dkw;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dks;

    .line 154
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dkw;->p:Lcom/google/android/gms/internal/ads/dln;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/dkw;->q:Ljava/lang/Object;

    invoke-interface {v0, v2, v3}, Lcom/google/android/gms/internal/ads/dks;->a(Lcom/google/android/gms/internal/ads/dln;Ljava/lang/Object;)V

    goto :goto_6

    .line 156
    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/dlj;

    .line 157
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dkw;->t:Lcom/google/android/gms/internal/ads/dlj;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/dlj;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 158
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dkw;->t:Lcom/google/android/gms/internal/ads/dlj;

    .line 159
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dkw;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/dks;

    .line 160
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/dks;->a(Lcom/google/android/gms/internal/ads/dlj;)V

    goto :goto_7

    .line 162
    :pswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgq;

    .line 163
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dkw;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/dks;

    .line 164
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/dks;->a(Lcom/google/android/gms/internal/ads/zzgq;)V

    goto :goto_8

    .line 113
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public final a(Lcom/google/android/gms/internal/ads/dks;)V
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dkw;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 23
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/dqg;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 27
    .line 28
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dkw;->p:Lcom/google/android/gms/internal/ads/dln;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dln;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dkw;->q:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 29
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/dln;->a:Lcom/google/android/gms/internal/ads/dln;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dkw;->p:Lcom/google/android/gms/internal/ads/dln;

    .line 30
    iput-object v4, p0, Lcom/google/android/gms/internal/ads/dkw;->q:Ljava/lang/Object;

    .line 31
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dkw;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dks;

    .line 32
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dkw;->p:Lcom/google/android/gms/internal/ads/dln;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/dkw;->q:Ljava/lang/Object;

    invoke-interface {v0, v2, v3}, Lcom/google/android/gms/internal/ads/dks;->a(Lcom/google/android/gms/internal/ads/dln;Ljava/lang/Object;)V

    goto :goto_0

    .line 34
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dkw;->i:Z

    if-eqz v0, :cond_2

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/dkw;->i:Z

    .line 36
    sget-object v0, Lcom/google/android/gms/internal/ads/dqv;->a:Lcom/google/android/gms/internal/ads/dqv;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dkw;->r:Lcom/google/android/gms/internal/ads/dqv;

    .line 37
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dkw;->c:Lcom/google/android/gms/internal/ads/drg;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dkw;->s:Lcom/google/android/gms/internal/ads/drg;

    .line 38
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dkw;->b:Lcom/google/android/gms/internal/ads/drj;

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/drj;->a(Ljava/lang/Object;)V

    .line 39
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dkw;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dks;

    .line 40
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dkw;->r:Lcom/google/android/gms/internal/ads/dqv;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/dkw;->s:Lcom/google/android/gms/internal/ads/drg;

    invoke-interface {v0, v2, v3}, Lcom/google/android/gms/internal/ads/dks;->a(Lcom/google/android/gms/internal/ads/dqv;Lcom/google/android/gms/internal/ads/drg;)V

    goto :goto_1

    .line 42
    :cond_2
    iget v0, p0, Lcom/google/android/gms/internal/ads/dkw;->n:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/dkw;->n:I

    .line 43
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dkw;->e:Lcom/google/android/gms/internal/ads/dky;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/dky;->a(Lcom/google/android/gms/internal/ads/dqg;Z)V

    .line 44
    return-void
.end method

.method public final a(Z)V
    .locals 3

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dkw;->j:Z

    if-eq v0, p1, :cond_0

    .line 46
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/dkw;->j:Z

    .line 47
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dkw;->e:Lcom/google/android/gms/internal/ads/dky;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/dky;->a(Z)V

    .line 48
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dkw;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dks;

    .line 49
    iget v2, p0, Lcom/google/android/gms/internal/ads/dkw;->l:I

    invoke-interface {v0, p1, v2}, Lcom/google/android/gms/internal/ads/dks;->a(ZI)V

    goto :goto_0

    .line 51
    :cond_0
    return-void
.end method

.method public final varargs a([Lcom/google/android/gms/internal/ads/dku;)V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dkw;->e:Lcom/google/android/gms/internal/ads/dky;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/dky;->a([Lcom/google/android/gms/internal/ads/dku;)V

    .line 88
    return-void
.end method

.method public final b(Lcom/google/android/gms/internal/ads/dks;)V
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dkw;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 25
    return-void
.end method

.method public final varargs b([Lcom/google/android/gms/internal/ads/dku;)V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dkw;->e:Lcom/google/android/gms/internal/ads/dky;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/dky;->b([Lcom/google/android/gms/internal/ads/dku;)V

    .line 90
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dkw;->j:Z

    return v0
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dkw;->e:Lcom/google/android/gms/internal/ads/dky;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dky;->a()V

    .line 83
    return-void
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dkw;->e:Lcom/google/android/gms/internal/ads/dky;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dky;->b()V

    .line 85
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dkw;->d:Lcom/google/android/gms/internal/ads/cnz;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/cnz;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 86
    return-void
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dkw;->a:[Lcom/google/android/gms/internal/ads/dli;

    array-length v0, v0

    return v0
.end method

.method public final f()J
    .locals 4

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dkw;->p:Lcom/google/android/gms/internal/ads/dln;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dln;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 101
    :goto_0
    return-wide v0

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dkw;->p:Lcom/google/android/gms/internal/ads/dln;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dkw;->i()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dkw;->g:Lcom/google/android/gms/internal/ads/dlo;

    .line 99
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/dln;->a(ILcom/google/android/gms/internal/ads/dlo;Z)Lcom/google/android/gms/internal/ads/dlo;

    move-result-object v0

    .line 100
    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/dlo;->i:J

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/dkr;->a(J)J

    move-result-wide v0

    goto :goto_0
.end method

.method public final g()J
    .locals 4

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dkw;->p:Lcom/google/android/gms/internal/ads/dln;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dln;->c()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/dkw;->m:I

    if-lez v0, :cond_1

    .line 103
    :cond_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/dkw;->x:J

    .line 106
    :goto_0
    return-wide v0

    .line 104
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dkw;->p:Lcom/google/android/gms/internal/ads/dln;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dkw;->u:Lcom/google/android/gms/internal/ads/dla;

    iget v1, v1, Lcom/google/android/gms/internal/ads/dla;->a:I

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dkw;->h:Lcom/google/android/gms/internal/ads/dlp;

    .line 105
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/dln;->a(ILcom/google/android/gms/internal/ads/dlp;Z)Lcom/google/android/gms/internal/ads/dlp;

    .line 106
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dkw;->h:Lcom/google/android/gms/internal/ads/dlp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dlp;->a()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dkw;->u:Lcom/google/android/gms/internal/ads/dla;

    iget-wide v2, v2, Lcom/google/android/gms/internal/ads/dla;->c:J

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/dkr;->a(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    goto :goto_0
.end method

.method public final h()J
    .locals 4

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dkw;->p:Lcom/google/android/gms/internal/ads/dln;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dln;->c()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/dkw;->m:I

    if-lez v0, :cond_1

    .line 108
    :cond_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/dkw;->x:J

    .line 111
    :goto_0
    return-wide v0

    .line 109
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dkw;->p:Lcom/google/android/gms/internal/ads/dln;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dkw;->u:Lcom/google/android/gms/internal/ads/dla;

    iget v1, v1, Lcom/google/android/gms/internal/ads/dla;->a:I

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dkw;->h:Lcom/google/android/gms/internal/ads/dlp;

    .line 110
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/dln;->a(ILcom/google/android/gms/internal/ads/dlp;Z)Lcom/google/android/gms/internal/ads/dlp;

    .line 111
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dkw;->h:Lcom/google/android/gms/internal/ads/dlp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dlp;->a()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dkw;->u:Lcom/google/android/gms/internal/ads/dla;

    iget-wide v2, v2, Lcom/google/android/gms/internal/ads/dla;->d:J

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/dkr;->a(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    goto :goto_0
.end method
