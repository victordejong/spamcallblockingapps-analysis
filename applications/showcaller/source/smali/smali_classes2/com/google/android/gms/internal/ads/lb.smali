.class final Lcom/google/android/gms/internal/ads/lb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/ib;


# instance fields
.field private final a:[Lcom/google/android/gms/internal/ads/ub;

.field private final b:Lcom/google/android/gms/internal/ads/lh;

.field private final c:Lcom/google/android/gms/internal/ads/jh;

.field private final d:Landroid/os/Handler;

.field private final e:Lcom/google/android/gms/internal/ads/qb;

.field private final f:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/google/android/gms/internal/ads/eb;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcom/google/android/gms/internal/ads/zb;

.field private final h:Lcom/google/android/gms/internal/ads/yb;

.field private i:Z

.field private j:Z

.field private k:I

.field private l:I

.field private m:I

.field private n:Z

.field private o:Lcom/google/android/gms/internal/ads/ac;

.field private p:Ljava/lang/Object;

.field private q:Lcom/google/android/gms/internal/ads/yg;

.field private r:Lcom/google/android/gms/internal/ads/jh;

.field private s:Lcom/google/android/gms/internal/ads/tb;

.field private t:Lcom/google/android/gms/internal/ads/nb;

.field private u:J


# direct methods
.method public constructor <init>([Lcom/google/android/gms/internal/ads/ub;Lcom/google/android/gms/internal/ads/lh;Lcom/google/android/gms/internal/ads/gl0;[B)V
    .locals 11
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p4, Lcom/google/android/gms/internal/ads/si;->e:Ljava/lang/String;

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1a

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Init ExoPlayerLib/2.4.2 ["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "]"

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string v0, "ExoPlayerImpl"

    invoke-static {v0, p4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/lb;->a:[Lcom/google/android/gms/internal/ads/ub;

    .line 3
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/lb;->b:Lcom/google/android/gms/internal/ads/lh;

    const/4 p4, 0x0

    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/lb;->j:Z

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/lb;->k:I

    .line 5
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/lb;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    new-instance v0, Lcom/google/android/gms/internal/ads/jh;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/google/android/gms/internal/ads/bh;

    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/jh;-><init>([Lcom/google/android/gms/internal/ads/bh;[B)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/lb;->c:Lcom/google/android/gms/internal/ads/jh;

    sget-object v1, Lcom/google/android/gms/internal/ads/ac;->a:Lcom/google/android/gms/internal/ads/ac;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/lb;->o:Lcom/google/android/gms/internal/ads/ac;

    new-instance v1, Lcom/google/android/gms/internal/ads/zb;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zb;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/lb;->g:Lcom/google/android/gms/internal/ads/zb;

    new-instance v1, Lcom/google/android/gms/internal/ads/yb;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/yb;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/lb;->h:Lcom/google/android/gms/internal/ads/yb;

    .line 7
    sget-object v1, Lcom/google/android/gms/internal/ads/yg;->a:Lcom/google/android/gms/internal/ads/yg;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/lb;->q:Lcom/google/android/gms/internal/ads/yg;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/lb;->r:Lcom/google/android/gms/internal/ads/jh;

    .line 8
    sget-object v0, Lcom/google/android/gms/internal/ads/tb;->a:Lcom/google/android/gms/internal/ads/tb;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/lb;->s:Lcom/google/android/gms/internal/ads/tb;

    .line 9
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    :goto_0
    new-instance v7, Lcom/google/android/gms/internal/ads/kb;

    .line 10
    invoke-direct {v7, p0, v0}, Lcom/google/android/gms/internal/ads/kb;-><init>(Lcom/google/android/gms/internal/ads/lb;Landroid/os/Looper;)V

    iput-object v7, p0, Lcom/google/android/gms/internal/ads/lb;->d:Landroid/os/Handler;

    new-instance v8, Lcom/google/android/gms/internal/ads/nb;

    const-wide/16 v0, 0x0

    .line 11
    invoke-direct {v8, p4, v0, v1}, Lcom/google/android/gms/internal/ads/nb;-><init>(IJ)V

    iput-object v8, p0, Lcom/google/android/gms/internal/ads/lb;->t:Lcom/google/android/gms/internal/ads/nb;

    .line 12
    new-instance p4, Lcom/google/android/gms/internal/ads/qb;

    iget-boolean v5, p0, Lcom/google/android/gms/internal/ads/lb;->j:Z

    const/4 v6, 0x0

    const/4 v10, 0x0

    move-object v1, p4

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v9, p0

    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/internal/ads/qb;-><init>([Lcom/google/android/gms/internal/ads/ub;Lcom/google/android/gms/internal/ads/lh;Lcom/google/android/gms/internal/ads/gl0;ZILandroid/os/Handler;Lcom/google/android/gms/internal/ads/nb;Lcom/google/android/gms/internal/ads/ib;[B)V

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/lb;->e:Lcom/google/android/gms/internal/ads/qb;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lb;->o:Lcom/google/android/gms/internal/ads/ac;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ac;->f()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/ads/lb;->l:I

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lb;->o:Lcom/google/android/gms/internal/ads/ac;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/lb;->t:Lcom/google/android/gms/internal/ads/nb;

    .line 2
    iget v2, v2, Lcom/google/android/gms/internal/ads/nb;->a:I

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/lb;->h:Lcom/google/android/gms/internal/ads/yb;

    invoke-virtual {v0, v2, v3, v1}, Lcom/google/android/gms/internal/ads/ac;->d(ILcom/google/android/gms/internal/ads/yb;Z)Lcom/google/android/gms/internal/ads/yb;

    :cond_1
    :goto_0
    return v1
.end method

.method final b(Landroid/os/Message;)V
    .locals 3

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    .line 2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 3
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 4
    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzamy;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lb;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/eb;

    .line 6
    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/eb;->m(Lcom/google/android/gms/internal/ads/zzamy;)V

    goto :goto_0

    .line 7
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/ads/tb;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lb;->s:Lcom/google/android/gms/internal/ads/tb;

    .line 8
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/tb;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/lb;->s:Lcom/google/android/gms/internal/ads/tb;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lb;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 9
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/eb;

    .line 10
    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/eb;->s(Lcom/google/android/gms/internal/ads/tb;)V

    goto :goto_1

    .line 11
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/ads/pb;

    iget v0, p0, Lcom/google/android/gms/internal/ads/lb;->l:I

    .line 12
    iget v1, p1, Lcom/google/android/gms/internal/ads/pb;->d:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/lb;->l:I

    iget v0, p0, Lcom/google/android/gms/internal/ads/lb;->m:I

    if-nez v0, :cond_1

    .line 13
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/pb;->a:Lcom/google/android/gms/internal/ads/ac;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/lb;->o:Lcom/google/android/gms/internal/ads/ac;

    .line 14
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/pb;->b:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/lb;->p:Ljava/lang/Object;

    .line 15
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/pb;->c:Lcom/google/android/gms/internal/ads/nb;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/lb;->t:Lcom/google/android/gms/internal/ads/nb;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/lb;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 16
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/eb;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/lb;->o:Lcom/google/android/gms/internal/ads/ac;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/lb;->p:Ljava/lang/Object;

    .line 17
    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/eb;->u(Lcom/google/android/gms/internal/ads/ac;Ljava/lang/Object;)V

    goto :goto_2

    .line 18
    :pswitch_3
    iget v0, p0, Lcom/google/android/gms/internal/ads/lb;->l:I

    if-nez v0, :cond_1

    .line 19
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/ads/nb;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/lb;->t:Lcom/google/android/gms/internal/ads/nb;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/lb;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 20
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/eb;

    .line 21
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/eb;->d()V

    goto :goto_3

    .line 22
    :pswitch_4
    iget v0, p0, Lcom/google/android/gms/internal/ads/lb;->l:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/lb;->l:I

    if-nez v0, :cond_1

    .line 23
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/nb;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/lb;->t:Lcom/google/android/gms/internal/ads/nb;

    .line 24
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/lb;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 25
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/eb;

    .line 26
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/eb;->d()V

    goto :goto_4

    .line 27
    :pswitch_5
    iget v0, p0, Lcom/google/android/gms/internal/ads/lb;->m:I

    if-nez v0, :cond_1

    .line 28
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/ads/mh;

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/lb;->i:Z

    .line 29
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/mh;->a:Lcom/google/android/gms/internal/ads/yg;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/lb;->q:Lcom/google/android/gms/internal/ads/yg;

    .line 30
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/mh;->b:Lcom/google/android/gms/internal/ads/jh;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/lb;->r:Lcom/google/android/gms/internal/ads/jh;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lb;->b:Lcom/google/android/gms/internal/ads/lh;

    .line 31
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/mh;->c:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/lh;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/lb;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 32
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/eb;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/lb;->q:Lcom/google/android/gms/internal/ads/yg;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/lb;->r:Lcom/google/android/gms/internal/ads/jh;

    .line 33
    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/eb;->z(Lcom/google/android/gms/internal/ads/yg;Lcom/google/android/gms/internal/ads/jh;)V

    goto :goto_5

    .line 34
    :pswitch_6
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_0

    goto :goto_6

    :cond_0
    const/4 v1, 0x0

    :goto_6
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/lb;->n:Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/lb;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 35
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/eb;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/lb;->n:Z

    .line 36
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/eb;->p0(Z)V

    goto :goto_7

    .line 37
    :pswitch_7
    iget p1, p1, Landroid/os/Message;->arg1:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/lb;->k:I

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/lb;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 38
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/eb;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/lb;->j:Z

    iget v2, p0, Lcom/google/android/gms/internal/ads/lb;->k:I

    .line 39
    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/eb;->t(ZI)V

    goto :goto_8

    :cond_1
    return-void

    .line 40
    :pswitch_8
    iget p1, p0, Lcom/google/android/gms/internal/ads/lb;->m:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/lb;->m:I

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/lb;->k:I

    return v0
.end method

.method public final d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/lb;->j:Z

    return v0
.end method

.method public final f()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lb;->e:Lcom/google/android/gms/internal/ads/qb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/qb;->v()V

    return-void
.end method

.method public final i()J
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lb;->o:Lcom/google/android/gms/internal/ads/ac;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ac;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lb;->o:Lcom/google/android/gms/internal/ads/ac;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/lb;->a()I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/lb;->g:Lcom/google/android/gms/internal/ads/zb;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v2}, Lcom/google/android/gms/internal/ads/ac;->g(ILcom/google/android/gms/internal/ads/zb;Z)Lcom/google/android/gms/internal/ads/zb;

    move-result-object v0

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/zb;->a:J

    .line 3
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/db;->a(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final j()J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lb;->o:Lcom/google/android/gms/internal/ads/ac;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ac;->f()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/ads/lb;->l:I

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lb;->o:Lcom/google/android/gms/internal/ads/ac;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/lb;->t:Lcom/google/android/gms/internal/ads/nb;

    .line 2
    iget v1, v1, Lcom/google/android/gms/internal/ads/nb;->a:I

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/lb;->h:Lcom/google/android/gms/internal/ads/yb;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/ac;->d(ILcom/google/android/gms/internal/ads/yb;Z)Lcom/google/android/gms/internal/ads/yb;

    const-wide/16 v0, 0x0

    .line 3
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/db;->a(J)J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/lb;->t:Lcom/google/android/gms/internal/ads/nb;

    .line 4
    iget-wide v2, v2, Lcom/google/android/gms/internal/ads/nb;->c:J

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/db;->a(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0

    .line 5
    :cond_1
    :goto_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/lb;->u:J

    return-wide v0
.end method

.method public final k(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lb;->e:Lcom/google/android/gms/internal/ads/qb;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/qb;->z(I)V

    return-void
.end method

.method public final varargs l([Lcom/google/android/gms/internal/ads/hb;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lb;->e:Lcom/google/android/gms/internal/ads/qb;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/qb;->x([Lcom/google/android/gms/internal/ads/hb;)V

    return-void
.end method

.method public final m()J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lb;->o:Lcom/google/android/gms/internal/ads/ac;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ac;->f()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/ads/lb;->l:I

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lb;->o:Lcom/google/android/gms/internal/ads/ac;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/lb;->t:Lcom/google/android/gms/internal/ads/nb;

    .line 2
    iget v1, v1, Lcom/google/android/gms/internal/ads/nb;->a:I

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/lb;->h:Lcom/google/android/gms/internal/ads/yb;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/ac;->d(ILcom/google/android/gms/internal/ads/yb;Z)Lcom/google/android/gms/internal/ads/yb;

    const-wide/16 v0, 0x0

    .line 3
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/db;->a(J)J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/lb;->t:Lcom/google/android/gms/internal/ads/nb;

    .line 4
    iget-wide v2, v2, Lcom/google/android/gms/internal/ads/nb;->d:J

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/db;->a(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0

    .line 5
    :cond_1
    :goto_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/lb;->u:J

    return-wide v0
.end method

.method public final n()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lb;->e:Lcom/google/android/gms/internal/ads/qb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/qb;->r()V

    return-void
.end method

.method public final o(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/lb;->j:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/lb;->j:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lb;->e:Lcom/google/android/gms/internal/ads/qb;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/qb;->t(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lb;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/eb;

    iget v2, p0, Lcom/google/android/gms/internal/ads/lb;->k:I

    .line 3
    invoke-interface {v1, p1, v2}, Lcom/google/android/gms/internal/ads/eb;->t(ZI)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final p(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lb;->e:Lcom/google/android/gms/internal/ads/qb;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/qb;->A(I)V

    return-void
.end method

.method public final q(Lcom/google/android/gms/internal/ads/kg;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lb;->o:Lcom/google/android/gms/internal/ads/ac;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ac;->f()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lb;->p:Ljava/lang/Object;

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/ac;->a:Lcom/google/android/gms/internal/ads/ac;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/lb;->o:Lcom/google/android/gms/internal/ads/ac;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/lb;->p:Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lb;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/eb;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/lb;->o:Lcom/google/android/gms/internal/ads/ac;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/lb;->p:Ljava/lang/Object;

    .line 3
    invoke-interface {v2, v3, v4}, Lcom/google/android/gms/internal/ads/eb;->u(Lcom/google/android/gms/internal/ads/ac;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/lb;->i:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/lb;->i:Z

    .line 4
    sget-object v0, Lcom/google/android/gms/internal/ads/yg;->a:Lcom/google/android/gms/internal/ads/yg;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/lb;->q:Lcom/google/android/gms/internal/ads/yg;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lb;->c:Lcom/google/android/gms/internal/ads/jh;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/lb;->r:Lcom/google/android/gms/internal/ads/jh;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lb;->b:Lcom/google/android/gms/internal/ads/lh;

    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/lh;->b(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lb;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 6
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/eb;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/lb;->q:Lcom/google/android/gms/internal/ads/yg;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/lb;->r:Lcom/google/android/gms/internal/ads/jh;

    .line 7
    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/internal/ads/eb;->z(Lcom/google/android/gms/internal/ads/yg;Lcom/google/android/gms/internal/ads/jh;)V

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/google/android/gms/internal/ads/lb;->m:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/lb;->m:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lb;->e:Lcom/google/android/gms/internal/ads/qb;

    .line 8
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/qb;->s(Lcom/google/android/gms/internal/ads/kg;Z)V

    return-void
.end method

.method public final r(Lcom/google/android/gms/internal/ads/eb;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lb;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final s(J)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/lb;->a()I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lb;->o:Lcom/google/android/gms/internal/ads/ac;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ac;->f()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lb;->o:Lcom/google/android/gms/internal/ads/ac;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ac;->a()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzano;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/lb;->o:Lcom/google/android/gms/internal/ads/ac;

    .line 4
    invoke-direct {v0, v2, v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzano;-><init>(Lcom/google/android/gms/internal/ads/ac;IJ)V

    throw v0

    .line 5
    :cond_1
    :goto_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/lb;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/lb;->l:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lb;->o:Lcom/google/android/gms/internal/ads/ac;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ac;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lb;->o:Lcom/google/android/gms/internal/ads/ac;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/lb;->g:Lcom/google/android/gms/internal/ads/zb;

    .line 8
    invoke-virtual {v0, v1, v2, v1}, Lcom/google/android/gms/internal/ads/ac;->g(ILcom/google/android/gms/internal/ads/zb;Z)Lcom/google/android/gms/internal/ads/zb;

    .line 9
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/db;->b(J)J

    move-result-wide v2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lb;->o:Lcom/google/android/gms/internal/ads/ac;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/lb;->h:Lcom/google/android/gms/internal/ads/yb;

    .line 10
    invoke-virtual {v0, v1, v4, v1}, Lcom/google/android/gms/internal/ads/ac;->d(ILcom/google/android/gms/internal/ads/yb;Z)Lcom/google/android/gms/internal/ads/yb;

    move-result-object v0

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/yb;->c:J

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v4, v6

    if-eqz v0, :cond_3

    cmp-long v0, v2, v4

    .line 11
    :cond_3
    :goto_1
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/lb;->u:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lb;->e:Lcom/google/android/gms/internal/ads/qb;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/lb;->o:Lcom/google/android/gms/internal/ads/ac;

    .line 12
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/db;->b(J)J

    move-result-wide p1

    invoke-virtual {v0, v2, v1, p1, p2}, Lcom/google/android/gms/internal/ads/qb;->u(Lcom/google/android/gms/internal/ads/ac;IJ)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/lb;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 13
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/eb;

    .line 14
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/eb;->d()V

    goto :goto_2

    :cond_4
    return-void
.end method

.method public final t(Lcom/google/android/gms/internal/ads/eb;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lb;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final varargs u([Lcom/google/android/gms/internal/ads/hb;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lb;->e:Lcom/google/android/gms/internal/ads/qb;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/qb;->w([Lcom/google/android/gms/internal/ads/hb;)V

    return-void
.end method

.method public final zzi()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lb;->e:Lcom/google/android/gms/internal/ads/qb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/qb;->y()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lb;->d:Landroid/os/Handler;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method
