.class public Li51;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ls41$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li51$d;,
        Li51$e;
    }
.end annotation


# static fields
.field public static g:Li51;

.field public static h:Landroid/os/Handler;

.field public static i:Landroid/os/Handler;

.field public static final j:Ljava/lang/Runnable;

.field public static final k:Ljava/lang/Runnable;


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Li51$e;",
            ">;"
        }
    .end annotation
.end field

.field public b:I

.field public c:Lt41;

.field public d:Lj51;

.field public e:Lq51;

.field public f:J


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Li51;

    invoke-direct {v0}, Li51;-><init>()V

    sput-object v0, Li51;->g:Li51;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Li51;->h:Landroid/os/Handler;

    const/4 v0, 0x0

    sput-object v0, Li51;->i:Landroid/os/Handler;

    new-instance v0, Li51$b;

    invoke-direct {v0}, Li51$b;-><init>()V

    sput-object v0, Li51;->j:Ljava/lang/Runnable;

    new-instance v0, Li51$c;

    invoke-direct {v0}, Li51$c;-><init>()V

    sput-object v0, Li51;->k:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Li51;->a:Ljava/util/List;

    new-instance v0, Lj51;

    invoke-direct {v0}, Lj51;-><init>()V

    iput-object v0, p0, Li51;->d:Lj51;

    new-instance v0, Lt41;

    invoke-direct {v0}, Lt41;-><init>()V

    iput-object v0, p0, Li51;->c:Lt41;

    new-instance v0, Lq51;

    new-instance v1, Lm51;

    invoke-direct {v1}, Lm51;-><init>()V

    invoke-direct {v0, v1}, Lq51;-><init>(Lm51;)V

    iput-object v0, p0, Li51;->e:Lq51;

    return-void
.end method

.method public static synthetic b(Li51;)Lq51;
    .locals 0

    iget-object p0, p0, Li51;->e:Lq51;

    return-object p0
.end method

.method public static synthetic j(Li51;)V
    .locals 0

    invoke-virtual {p0}, Li51;->q()V

    return-void
.end method

.method public static synthetic m()Landroid/os/Handler;
    .locals 1

    sget-object v0, Li51;->i:Landroid/os/Handler;

    return-object v0
.end method

.method public static synthetic n()Ljava/lang/Runnable;
    .locals 1

    sget-object v0, Li51;->j:Ljava/lang/Runnable;

    return-object v0
.end method

.method public static synthetic o()Ljava/lang/Runnable;
    .locals 1

    sget-object v0, Li51;->k:Ljava/lang/Runnable;

    return-object v0
.end method

.method public static p()Li51;
    .locals 1

    sget-object v0, Li51;->g:Li51;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/View;Ls41;Lorg/json/JSONObject;)V
    .locals 2

    invoke-static {p1}, Lc51;->d(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Li51;->d:Lj51;

    invoke-virtual {v0, p1}, Lj51;->i(Landroid/view/View;)Lr51;

    move-result-object v0

    sget-object v1, Lr51;->c:Lr51;

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    invoke-interface {p2, p1}, Ls41;->a(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {p3, v1}, Ly41;->h(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    invoke-virtual {p0, p1, v1}, Li51;->g(Landroid/view/View;Lorg/json/JSONObject;)Z

    move-result p3

    if-nez p3, :cond_2

    invoke-virtual {p0, p1, v1}, Li51;->i(Landroid/view/View;Lorg/json/JSONObject;)V

    invoke-virtual {p0, p1, p2, v1, v0}, Li51;->e(Landroid/view/View;Ls41;Lorg/json/JSONObject;Lr51;)V

    :cond_2
    iget p1, p0, Li51;->b:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Li51;->b:I

    return-void
.end method

.method public c()V
    .locals 0

    invoke-virtual {p0}, Li51;->t()V

    return-void
.end method

.method public final d(J)V
    .locals 5

    iget-object v0, p0, Li51;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Li51;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li51$e;

    iget v2, p0, Li51;->b:I

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    invoke-interface {v1, v2, v3, v4}, Li51$e;->b(IJ)V

    instance-of v2, v1, Li51$d;

    if-eqz v2, :cond_0

    check-cast v1, Li51$d;

    iget v2, p0, Li51;->b:I

    invoke-interface {v1, v2, p1, p2}, Li51$d;->a(IJ)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final e(Landroid/view/View;Ls41;Lorg/json/JSONObject;Lr51;)V
    .locals 1

    sget-object v0, Lr51;->a:Lr51;

    if-ne p4, v0, :cond_0

    const/4 p4, 0x1

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    :goto_0
    invoke-interface {p2, p1, p3, p0, p4}, Ls41;->b(Landroid/view/View;Lorg/json/JSONObject;Ls41$a;Z)V

    return-void
.end method

.method public final f(Ljava/lang/String;Landroid/view/View;Lorg/json/JSONObject;)V
    .locals 2

    iget-object v0, p0, Li51;->c:Lt41;

    invoke-virtual {v0}, Lt41;->b()Ls41;

    move-result-object v0

    iget-object v1, p0, Li51;->d:Lj51;

    invoke-virtual {v1, p1}, Lj51;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0, p2}, Ls41;->a(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-static {p2, p1}, Ly41;->f(Lorg/json/JSONObject;Ljava/lang/String;)V

    invoke-static {p2, v1}, Ly41;->k(Lorg/json/JSONObject;Ljava/lang/String;)V

    invoke-static {p3, p2}, Ly41;->h(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    :cond_0
    return-void
.end method

.method public final g(Landroid/view/View;Lorg/json/JSONObject;)Z
    .locals 1

    iget-object v0, p0, Li51;->d:Lj51;

    invoke-virtual {v0, p1}, Lj51;->a(Landroid/view/View;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p2, p1}, Ly41;->f(Lorg/json/JSONObject;Ljava/lang/String;)V

    iget-object p1, p0, Li51;->d:Lj51;

    invoke-virtual {p1}, Lj51;->m()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public h()V
    .locals 2

    invoke-virtual {p0}, Li51;->k()V

    iget-object v0, p0, Li51;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    sget-object v0, Li51;->h:Landroid/os/Handler;

    new-instance v1, Li51$a;

    invoke-direct {v1, p0}, Li51$a;-><init>(Li51;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final i(Landroid/view/View;Lorg/json/JSONObject;)V
    .locals 1

    iget-object v0, p0, Li51;->d:Lj51;

    invoke-virtual {v0, p1}, Lj51;->g(Landroid/view/View;)Lj51$a;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p2, p1}, Ly41;->e(Lorg/json/JSONObject;Lj51$a;)V

    :cond_0
    return-void
.end method

.method public k()V
    .locals 0

    invoke-virtual {p0}, Li51;->u()V

    return-void
.end method

.method public l()V
    .locals 8

    iget-object v0, p0, Li51;->d:Lj51;

    invoke-virtual {v0}, Lj51;->j()V

    invoke-static {}, La51;->a()J

    move-result-wide v0

    iget-object v2, p0, Li51;->c:Lt41;

    invoke-virtual {v2}, Lt41;->a()Ls41;

    move-result-object v2

    iget-object v3, p0, Li51;->d:Lj51;

    invoke-virtual {v3}, Lj51;->h()Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    const/4 v4, 0x0

    if-lez v3, :cond_0

    iget-object v3, p0, Li51;->d:Lj51;

    invoke-virtual {v3}, Lj51;->h()Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v2, v4}, Ls41;->a(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v6

    iget-object v7, p0, Li51;->d:Lj51;

    invoke-virtual {v7, v5}, Lj51;->f(Ljava/lang/String;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {p0, v5, v7, v6}, Li51;->f(Ljava/lang/String;Landroid/view/View;Lorg/json/JSONObject;)V

    invoke-static {v6}, Ly41;->d(Lorg/json/JSONObject;)V

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v7, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Li51;->e:Lq51;

    invoke-virtual {v5, v6, v7, v0, v1}, Lq51;->e(Lorg/json/JSONObject;Ljava/util/HashSet;J)V

    goto :goto_0

    :cond_0
    iget-object v3, p0, Li51;->d:Lj51;

    invoke-virtual {v3}, Lj51;->c()Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    if-lez v3, :cond_1

    invoke-interface {v2, v4}, Ls41;->a(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v3

    sget-object v5, Lr51;->a:Lr51;

    invoke-virtual {p0, v4, v2, v3, v5}, Li51;->e(Landroid/view/View;Ls41;Lorg/json/JSONObject;Lr51;)V

    invoke-static {v3}, Ly41;->d(Lorg/json/JSONObject;)V

    iget-object v2, p0, Li51;->e:Lq51;

    iget-object v4, p0, Li51;->d:Lj51;

    invoke-virtual {v4}, Lj51;->c()Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v0, v1}, Lq51;->d(Lorg/json/JSONObject;Ljava/util/HashSet;J)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Li51;->e:Lq51;

    invoke-virtual {v0}, Lq51;->c()V

    :goto_1
    iget-object v0, p0, Li51;->d:Lj51;

    invoke-virtual {v0}, Lj51;->l()V

    return-void
.end method

.method public final q()V
    .locals 0

    invoke-virtual {p0}, Li51;->r()V

    invoke-virtual {p0}, Li51;->l()V

    invoke-virtual {p0}, Li51;->s()V

    return-void
.end method

.method public final r()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Li51;->b:I

    invoke-static {}, La51;->a()J

    move-result-wide v0

    iput-wide v0, p0, Li51;->f:J

    return-void
.end method

.method public final s()V
    .locals 4

    invoke-static {}, La51;->a()J

    move-result-wide v0

    iget-wide v2, p0, Li51;->f:J

    sub-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Li51;->d(J)V

    return-void
.end method

.method public final t()V
    .locals 4

    sget-object v0, Li51;->i:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Li51;->i:Landroid/os/Handler;

    sget-object v1, Li51;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget-object v0, Li51;->i:Landroid/os/Handler;

    sget-object v1, Li51;->k:Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public final u()V
    .locals 2

    sget-object v0, Li51;->i:Landroid/os/Handler;

    if-eqz v0, :cond_0

    sget-object v1, Li51;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    sput-object v0, Li51;->i:Landroid/os/Handler;

    :cond_0
    return-void
.end method
