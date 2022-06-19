.class public final Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;
.super Lcom/google/android/gms/internal/ads/xg0;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# static fields
.field protected static final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected static final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected static final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected static final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final synthetic h:I


# instance fields
.field private final A:Ljava/lang/String;

.field private final B:Ljava/lang/String;

.field private final C:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final D:Lcom/google/android/gms/internal/ads/zzcgz;

.field private E:Ljava/lang/String;

.field private final F:Ljava/lang/String;

.field private final i:Lcom/google/android/gms/internal/ads/sp0;

.field private j:Landroid/content/Context;

.field private final k:Lcom/google/android/gms/internal/ads/u;

.field private final l:Lcom/google/android/gms/internal/ads/pk2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/pk2<",
            "Lcom/google/android/gms/internal/ads/qj1;",
            ">;"
        }
    .end annotation
.end field

.field private final m:Lcom/google/android/gms/internal/ads/s03;

.field private final n:Ljava/util/concurrent/ScheduledExecutorService;

.field private o:Lcom/google/android/gms/internal/ads/zzcam;

.field private p:Landroid/graphics/Point;

.field private q:Landroid/graphics/Point;

.field private final r:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/webkit/WebView;",
            ">;"
        }
    .end annotation
.end field

.field private final s:Lcom/google/android/gms/ads/nonagon/signalgeneration/k;

.field private final t:Lcom/google/android/gms/internal/ads/rn1;

.field private final u:Lcom/google/android/gms/internal/ads/jo2;

.field private final v:Lcom/google/android/gms/internal/ads/bp2;

.field private final w:Z

.field private final x:Z

.field private final y:Z

.field private final z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "/aclk"

    const-string v2, "/pcs/click"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;->d:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, ".doubleclick.net"

    const-string v2, ".googleadservices.com"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v3

    .line 2
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;->e:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    const-string v3, "/pagead/adview"

    const-string v4, "/pcs/view"

    const-string v5, "/pagead/conversion"

    filled-new-array {v3, v4, v5}, [Ljava/lang/String;

    move-result-object v3

    .line 3
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;->f:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    const-string v3, ".googlesyndication.com"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;->g:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/sp0;Landroid/content/Context;Lcom/google/android/gms/internal/ads/u;Lcom/google/android/gms/internal/ads/pk2;Lcom/google/android/gms/internal/ads/s03;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/ads/rn1;Lcom/google/android/gms/internal/ads/jo2;Lcom/google/android/gms/internal/ads/bp2;Lcom/google/android/gms/internal/ads/zzcgz;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/sp0;",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/ads/u;",
            "Lcom/google/android/gms/internal/ads/pk2<",
            "Lcom/google/android/gms/internal/ads/qj1;",
            ">;",
            "Lcom/google/android/gms/internal/ads/s03;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "Lcom/google/android/gms/internal/ads/rn1;",
            "Lcom/google/android/gms/internal/ads/jo2;",
            "Lcom/google/android/gms/internal/ads/bp2;",
            "Lcom/google/android/gms/internal/ads/zzcgz;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/xg0;-><init>()V

    new-instance v0, Landroid/graphics/Point;

    .line 2
    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;->p:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Point;

    .line 3
    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;->q:Landroid/graphics/Point;

    new-instance v0, Ljava/util/WeakHashMap;

    .line 4
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;->r:Ljava/util/Set;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    .line 5
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;->C:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;->i:Lcom/google/android/gms/internal/ads/sp0;

    iput-object p2, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;->j:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;->k:Lcom/google/android/gms/internal/ads/u;

    iput-object p4, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;->l:Lcom/google/android/gms/internal/ads/pk2;

    iput-object p5, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;->m:Lcom/google/android/gms/internal/ads/s03;

    iput-object p6, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;->n:Ljava/util/concurrent/ScheduledExecutorService;

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/sp0;->z()Lcom/google/android/gms/ads/nonagon/signalgeneration/k;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;->s:Lcom/google/android/gms/ads/nonagon/signalgeneration/k;

    iput-object p7, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;->t:Lcom/google/android/gms/internal/ads/rn1;

    iput-object p8, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;->u:Lcom/google/android/gms/internal/ads/jo2;

    iput-object p9, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;->v:Lcom/google/android/gms/internal/ads/bp2;

    iput-object p10, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;->D:Lcom/google/android/gms/internal/ads/zzcgz;

    .line 7
    sget-object p1, Lcom/google/android/gms/internal/ads/kw;->r5:Lcom/google/android/gms/internal/ads/cw;

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object p1

    .line 9
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;->w:Z

    sget-object p1, Lcom/google/android/gms/internal/ads/kw;->q5:Lcom/google/android/gms/internal/ads/cw;

    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object p1

    .line 11
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;->x:Z

    sget-object p1, Lcom/google/android/gms/internal/ads/kw;->s5:Lcom/google/android/gms/internal/ads/cw;

    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object p1

    .line 13
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;->y:Z

    sget-object p1, Lcom/google/android/gms/internal/ads/kw;->u5:Lcom/google/android/gms/internal/ads/cw;

    .line 14
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object p1

    .line 15
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;->z:Z

    sget-object p1, Lcom/google/android/gms/internal/ads/kw;->t5:Lcom/google/android/gms/internal/ads/cw;

    .line 16
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object p1

    .line 17
    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;->A:Ljava/lang/String;

    sget-object p1, Lcom/google/android/gms/internal/ads/kw;->v5:Lcom/google/android/gms/internal/ads/cw;

    .line 18
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object p1

    .line 19
    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;->B:Ljava/lang/String;

    sget-object p1, Lcom/google/android/gms/internal/ads/kw;->w5:Lcom/google/android/gms/internal/ads/cw;

    .line 20
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object p1

    .line 21
    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;->F:Ljava/lang/String;

    return-void
.end method

.method static final synthetic K6(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "nas"

    .line 2
    invoke-static {p0, v0, p1}, Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;->Q6(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method static final synthetic L6(Ljava/util/List;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 3
    invoke-static {v1}, Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;->f7(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    const-string v2, "nas"

    .line 4
    invoke-static {v1, v2, p1}, Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;->Q6(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_1
    :goto_1
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private static M6(Landroid/net/Uri;Ljava/util/List;Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-nez p0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4
    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 6
    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    return v1
.end method

.method private final N6(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbdl;Lcom/google/android/gms/internal/ads/zzbdg;)Lcom/google/android/gms/ads/nonagon/signalgeneration/p;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;->i:Lcom/google/android/gms/internal/ads/sp0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/sp0;->x()Lcom/google/android/gms/ads/nonagon/signalgeneration/o;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/h21;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/h21;-><init>()V

    .line 2
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/h21;->e(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/h21;

    new-instance p1, Lcom/google/android/gms/internal/ads/vj2;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/vj2;-><init>()V

    if-nez p2, :cond_0

    const-string p2, "adUnitId"

    .line 3
    :cond_0
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/vj2;->L(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/vj2;

    if-nez p5, :cond_1

    new-instance p2, Lcom/google/android/gms/internal/ads/uq;

    .line 4
    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/uq;-><init>()V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/uq;->a()Lcom/google/android/gms/internal/ads/zzbdg;

    move-result-object p5

    .line 5
    :cond_1
    invoke-virtual {p1, p5}, Lcom/google/android/gms/internal/ads/vj2;->G(Lcom/google/android/gms/internal/ads/zzbdg;)Lcom/google/android/gms/internal/ads/vj2;

    if-nez p4, :cond_2

    .line 6
    new-instance p4, Lcom/google/android/gms/internal/ads/zzbdl;

    invoke-direct {p4}, Lcom/google/android/gms/internal/ads/zzbdl;-><init>()V

    :cond_2
    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/ads/vj2;->I(Lcom/google/android/gms/internal/ads/zzbdl;)Lcom/google/android/gms/internal/ads/vj2;

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/vj2;->l()Lcom/google/android/gms/internal/ads/xj2;

    move-result-object p1

    .line 8
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/h21;->f(Lcom/google/android/gms/internal/ads/xj2;)Lcom/google/android/gms/internal/ads/h21;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/h21;->h()Lcom/google/android/gms/internal/ads/j21;

    move-result-object p1

    .line 9
    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/nonagon/signalgeneration/o;->a(Lcom/google/android/gms/internal/ads/j21;)Lcom/google/android/gms/ads/nonagon/signalgeneration/o;

    new-instance p1, Lcom/google/android/gms/ads/nonagon/signalgeneration/g0;

    invoke-direct {p1}, Lcom/google/android/gms/ads/nonagon/signalgeneration/g0;-><init>()V

    .line 10
    invoke-virtual {p1, p3}, Lcom/google/android/gms/ads/nonagon/signalgeneration/g0;->b(Ljava/lang/String;)Lcom/google/android/gms/ads/nonagon/signalgeneration/g0;

    new-instance p2, Lcom/google/android/gms/ads/nonagon/signalgeneration/i0;

    const/4 p3, 0x0

    .line 11
    invoke-direct {p2, p1, p3}, Lcom/google/android/gms/ads/nonagon/signalgeneration/i0;-><init>(Lcom/google/android/gms/ads/nonagon/signalgeneration/g0;Lcom/google/android/gms/ads/nonagon/signalgeneration/h0;)V

    .line 12
    invoke-interface {v0, p2}, Lcom/google/android/gms/ads/nonagon/signalgeneration/o;->b(Lcom/google/android/gms/ads/nonagon/signalgeneration/i0;)Lcom/google/android/gms/ads/nonagon/signalgeneration/o;

    new-instance p1, Lcom/google/android/gms/internal/ads/n81;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/n81;-><init>()V

    .line 13
    invoke-interface {v0}, Lcom/google/android/gms/ads/nonagon/signalgeneration/o;->zza()Lcom/google/android/gms/ads/nonagon/signalgeneration/p;

    move-result-object p1

    return-object p1
.end method

.method private final O6(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/r03;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/internal/ads/r03<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/qj1;

    .line 1
    iget-object v1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;->l:Lcom/google/android/gms/internal/ads/pk2;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/pk2;->b()Lcom/google/android/gms/internal/ads/r03;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/ads/nonagon/signalgeneration/y;

    invoke-direct {v2, p0, v0, p1}, Lcom/google/android/gms/ads/nonagon/signalgeneration/y;-><init>(Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;[Lcom/google/android/gms/internal/ads/qj1;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;->m:Lcom/google/android/gms/internal/ads/s03;

    .line 2
    invoke-static {v1, v2, p1}, Lcom/google/android/gms/internal/ads/k03;->i(Lcom/google/android/gms/internal/ads/r03;Lcom/google/android/gms/internal/ads/uz2;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p1

    new-instance v1, Lcom/google/android/gms/ads/nonagon/signalgeneration/z;

    .line 3
    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/ads/nonagon/signalgeneration/z;-><init>(Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;[Lcom/google/android/gms/internal/ads/qj1;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;->m:Lcom/google/android/gms/internal/ads/s03;

    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/ads/r03;->d(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/a03;->E(Lcom/google/android/gms/internal/ads/r03;)Lcom/google/android/gms/internal/ads/a03;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/internal/ads/kw;->y5:Lcom/google/android/gms/internal/ads/cw;

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object v0

    .line 6
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v3, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;->n:Ljava/util/concurrent/ScheduledExecutorService;

    .line 7
    invoke-static {p1, v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/k03;->h(Lcom/google/android/gms/internal/ads/r03;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/a03;

    sget-object v0, Lcom/google/android/gms/ads/nonagon/signalgeneration/w;->a:Lcom/google/android/gms/internal/ads/nu2;

    iget-object v1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;->m:Lcom/google/android/gms/internal/ads/s03;

    .line 8
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/k03;->j(Lcom/google/android/gms/internal/ads/r03;Lcom/google/android/gms/internal/ads/nu2;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p1

    const-class v0, Ljava/lang/Exception;

    sget-object v1, Lcom/google/android/gms/ads/nonagon/signalgeneration/x;->a:Lcom/google/android/gms/internal/ads/nu2;

    iget-object v2, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;->m:Lcom/google/android/gms/internal/ads/s03;

    .line 9
    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/internal/ads/k03;->f(Lcom/google/android/gms/internal/ads/r03;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/nu2;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p1

    return-object p1
.end method

.method private final P6()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;->o:Lcom/google/android/gms/internal/ads/zzcam;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzcam;->e:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static final Q6(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "&adurl="

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const-string v1, "?adurl="

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    :cond_0
    if-eq v1, v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    new-instance p0, Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    .line 4
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "="

    .line 6
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&"

    .line 8
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 10
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    .line 11
    :cond_1
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p0

    .line 12
    invoke-virtual {p0, p1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 13
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method static synthetic R6(Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;->j:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic S6(Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;)Lcom/google/android/gms/ads/nonagon/signalgeneration/k;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;->s:Lcom/google/android/gms/ads/nonagon/signalgeneration/k;

    return-object p0
.end method

.method static synthetic T6(Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;)Lcom/google/android/gms/internal/ads/bp2;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;->v:Lcom/google/android/gms/internal/ads/bp2;

    return-object p0
.end method

.method static synthetic U6(Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;->w:Z

    return p0
.end method

.method static synthetic V6(Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;->x:Z

    return p0
.end method

.method static synthetic W6(Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;->y:Z

    return p0
.end method

.method static synthetic X6(Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;->z:Z

    return p0
.end method

.method static synthetic Y6(Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;->A:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic Z6(Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;->B:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a7(Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;->C:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method static synthetic b7(Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;)Lcom/google/android/gms/internal/ads/zzcgz;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;->D:Lcom/google/android/gms/internal/ads/zzcgz;

    return-object p0
.end method

.method static synthetic c7(Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;->E:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d7(Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;->E:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic e7(Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;->F:Ljava/lang/String;

    return-object p0
.end method

.method static f7(Landroid/net/Uri;)Z
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;->f:Ljava/util/List;

    sget-object v1, Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;->g:Ljava/util/List;

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;->M6(Landroid/net/Uri;Ljava/util/List;Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method static synthetic g7(Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 0

    const-string p0, "1"

    invoke-static {p1, p2, p0}, Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;->Q6(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method static synthetic h7(Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/kw;->l5:Lcom/google/android/gms/internal/ads/cw;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/kw;->i6:Lcom/google/android/gms/internal/ads/cw;

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object v0

    .line 5
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;->u:Lcom/google/android/gms/internal/ads/jo2;

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/io2;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/io2;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/ads/io2;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/io2;

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/jo2;->b(Lcom/google/android/gms/internal/ads/io2;)V

    return-void

    :cond_1
    iget-object p0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;->t:Lcom/google/android/gms/internal/ads/rn1;

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/rn1;->d()Lcom/google/android/gms/internal/ads/qn1;

    move-result-object p0

    const-string v0, "action"

    .line 8
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/ads/qn1;->d(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/qn1;

    .line 9
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/ads/qn1;->d(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/qn1;

    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/qn1;->e()V

    return-void
.end method


# virtual methods
.method public final C2(Ljava/util/List;Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/internal/ads/bc0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;",
            "Lcom/google/android/gms/dynamic/a;",
            "Lcom/google/android/gms/internal/ads/bc0;",
            ")V"
        }
    .end annotation

    .line 1
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/kw;->x5:Lcom/google/android/gms/internal/ads/cw;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "The updating URL feature is not enabled."

    .line 4
    invoke-interface {p3, p1}, Lcom/google/android/gms/internal/ads/bc0;->p(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const-string p1, "There should be only 1 click URL."

    .line 6
    invoke-interface {p3, p1}, Lcom/google/android/gms/internal/ads/bc0;->p(Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 7
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    sget-object v1, Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;->d:Ljava/util/List;

    sget-object v2, Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;->e:Ljava/util/List;

    .line 8
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;->M6(Landroid/net/Uri;Ljava/util/List;Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 9
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x12

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Not a Google URL: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/ei0;->f(Ljava/lang/String;)V

    .line 10
    invoke-interface {p3, p1}, Lcom/google/android/gms/internal/ads/bc0;->C5(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;->m:Lcom/google/android/gms/internal/ads/s03;

    new-instance v1, Lcom/google/android/gms/ads/nonagon/signalgeneration/s;

    .line 11
    invoke-direct {v1, p0, v0, p2}, Lcom/google/android/gms/ads/nonagon/signalgeneration/s;-><init>(Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;Landroid/net/Uri;Lcom/google/android/gms/dynamic/a;)V

    .line 12
    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/ads/s03;->a(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p1

    .line 13
    invoke-direct {p0}, Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;->P6()Z

    move-result p2

    if-eqz p2, :cond_3

    new-instance p2, Lcom/google/android/gms/ads/nonagon/signalgeneration/t;

    .line 14
    invoke-direct {p2, p0}, Lcom/google/android/gms/ads/nonagon/signalgeneration/t;-><init>(Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;->m:Lcom/google/android/gms/internal/ads/s03;

    .line 15
    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/ads/k03;->i(Lcom/google/android/gms/internal/ads/r03;Lcom/google/android/gms/internal/ads/uz2;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p1

    goto :goto_0

    :cond_3
    const-string p2, "Asset view map is empty."

    .line 16
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/ei0;->e(Ljava/lang/String;)V

    .line 17
    :goto_0
    new-instance p2, Lcom/google/android/gms/ads/nonagon/signalgeneration/c0;

    .line 18
    invoke-direct {p2, p0, p3}, Lcom/google/android/gms/ads/nonagon/signalgeneration/c0;-><init>(Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;Lcom/google/android/gms/internal/ads/bc0;)V

    iget-object p3, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;->i:Lcom/google/android/gms/internal/ads/sp0;

    .line 19
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/sp0;->h()Ljava/util/concurrent/Executor;

    move-result-object p3

    .line 20
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/k03;->p(Lcom/google/android/gms/internal/ads/r03;Lcom/google/android/gms/internal/ads/f03;Ljava/util/concurrent/Executor;)V

    return-void

    :catch_0
    move-exception p1

    const-string p2, ""

    .line 21
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/ei0;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method final synthetic F6([Lcom/google/android/gms/internal/ads/qj1;Ljava/lang/String;Lcom/google/android/gms/internal/ads/qj1;)Lcom/google/android/gms/internal/ads/r03;
    .locals 5

    const/4 v0, 0x0

    .line 1
    aput-object p3, p1, v0

    iget-object p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;->j:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;->o:Lcom/google/android/gms/internal/ads/zzcam;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzcam;->e:Ljava/util/Map;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzcam;->d:Landroid/view/View;

    .line 2
    invoke-static {p1, v1, v1, v0}, Lcom/google/android/gms/ads/internal/util/b1;->e(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;->j:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;->o:Lcom/google/android/gms/internal/ads/zzcam;

    .line 3
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzcam;->d:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/google/android/gms/ads/internal/util/b1;->b(Landroid/content/Context;Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;->o:Lcom/google/android/gms/internal/ads/zzcam;

    .line 4
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzcam;->d:Landroid/view/View;

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/b1;->c(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;->j:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;->o:Lcom/google/android/gms/internal/ads/zzcam;

    .line 5
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzcam;->d:Landroid/view/View;

    .line 6
    invoke-static {v2, v3}, Lcom/google/android/gms/ads/internal/util/b1;->d(Landroid/content/Context;Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v2

    .line 7
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "asset_view_signal"

    .line 8
    invoke-virtual {v3, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "ad_view_signal"

    .line 9
    invoke-virtual {v3, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "scroll_view_signal"

    .line 10
    invoke-virtual {v3, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "lock_screen_signal"

    .line 11
    invoke-virtual {v3, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "google.afma.nativeAds.getPublisherCustomRenderedClickSignals"

    if-ne p2, p1, :cond_0

    const/4 p1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;->j:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;->q:Landroid/graphics/Point;

    iget-object v2, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;->p:Landroid/graphics/Point;

    .line 12
    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/ads/internal/util/b1;->f(Ljava/lang/String;Landroid/content/Context;Landroid/graphics/Point;Landroid/graphics/Point;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "click_signal"

    .line 13
    invoke-virtual {v3, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 14
    :cond_0
    invoke-virtual {p3, p2, v3}, Lcom/google/android/gms/internal/ads/qj1;->d(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p1

    return-object p1
.end method

.method final synthetic G6(Landroid/net/Uri;)Lcom/google/android/gms/internal/ads/r03;
    .locals 2

    const-string v0, "google.afma.nativeAds.getPublisherCustomRenderedClickSignals"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;->O6(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/ads/nonagon/signalgeneration/v;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/ads/nonagon/signalgeneration/v;-><init>(Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;Landroid/net/Uri;)V

    iget-object p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;->m:Lcom/google/android/gms/internal/ads/s03;

    .line 2
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/k03;->j(Lcom/google/android/gms/internal/ads/r03;Lcom/google/android/gms/internal/ads/nu2;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p1

    return-object p1
.end method

.method final synthetic H6(Landroid/net/Uri;Lcom/google/android/gms/dynamic/a;)Landroid/net/Uri;
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;->k:Lcom/google/android/gms/internal/ads/u;

    iget-object v1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;->j:Landroid/content/Context;

    invoke-static {p2}, Lcom/google/android/gms/dynamic/b;->J0(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, p1, v1, p2, v2}, Lcom/google/android/gms/internal/ads/u;->e(Landroid/net/Uri;Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzaat; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    const-string v0, ""

    .line 3
    invoke-static {v0, p2}, Lcom/google/android/gms/internal/ads/ei0;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const-string p2, "ms"

    .line 4
    invoke-virtual {p1, p2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Failed to append spam signals to click url."

    .line 5
    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method final synthetic I6(Ljava/util/ArrayList;)Lcom/google/android/gms/internal/ads/r03;
    .locals 2

    const-string v0, "google.afma.nativeAds.getPublisherCustomRenderedImpressionSignals"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;->O6(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/ads/nonagon/signalgeneration/u;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/ads/nonagon/signalgeneration/u;-><init>(Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;Ljava/util/List;)V

    iget-object p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;->m:Lcom/google/android/gms/internal/ads/s03;

    .line 2
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/k03;->j(Lcom/google/android/gms/internal/ads/r03;Lcom/google/android/gms/internal/ads/nu2;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p1

    return-object p1
.end method

.method final synthetic J6(Ljava/util/List;Lcom/google/android/gms/dynamic/a;)Ljava/util/ArrayList;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;->k:Lcom/google/android/gms/internal/ads/u;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/u;->b()Lcom/google/android/gms/internal/ads/q;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;->k:Lcom/google/android/gms/internal/ads/u;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/u;->b()Lcom/google/android/gms/internal/ads/q;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;->j:Landroid/content/Context;

    .line 3
    invoke-static {p2}, Lcom/google/android/gms/dynamic/b;->J0(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    const/4 v2, 0x0

    invoke-interface {v0, v1, p2, v2}, Lcom/google/android/gms/internal/ads/q;->d(Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const-string p2, ""

    .line 4
    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 8
    invoke-static {v1}, Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;->f7(Landroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 9
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    const-string v3, "Not a Google URL: "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/ei0;->f(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const-string v2, "ms"

    .line 11
    invoke-static {v1, v2, p2}, Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;->Q6(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 12
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    return-object v0

    :cond_3
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Empty impression URLs result."

    .line 13
    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_4
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Failed to get view signals."

    .line 15
    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final S4(Ljava/util/List;Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/internal/ads/bc0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;",
            "Lcom/google/android/gms/dynamic/a;",
            "Lcom/google/android/gms/internal/ads/bc0;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/kw;->x5:Lcom/google/android/gms/internal/ads/cw;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    const-string p1, "The updating URL feature is not enabled."

    .line 4
    invoke-interface {p3, p1}, Lcom/google/android/gms/internal/ads/bc0;->p(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, ""

    .line 5
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/ei0;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;->m:Lcom/google/android/gms/internal/ads/s03;

    new-instance v1, Lcom/google/android/gms/ads/nonagon/signalgeneration/q;

    .line 7
    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/ads/nonagon/signalgeneration/q;-><init>(Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;Ljava/util/List;Lcom/google/android/gms/dynamic/a;)V

    .line 8
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/s03;->a(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p1

    .line 9
    invoke-direct {p0}, Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;->P6()Z

    move-result p2

    if-eqz p2, :cond_1

    new-instance p2, Lcom/google/android/gms/ads/nonagon/signalgeneration/r;

    .line 10
    invoke-direct {p2, p0}, Lcom/google/android/gms/ads/nonagon/signalgeneration/r;-><init>(Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;->m:Lcom/google/android/gms/internal/ads/s03;

    .line 11
    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/ads/k03;->i(Lcom/google/android/gms/internal/ads/r03;Lcom/google/android/gms/internal/ads/uz2;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p2, "Asset view map is empty."

    .line 12
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/ei0;->e(Ljava/lang/String;)V

    .line 13
    :goto_0
    new-instance p2, Lcom/google/android/gms/ads/nonagon/signalgeneration/b0;

    .line 14
    invoke-direct {p2, p0, p3}, Lcom/google/android/gms/ads/nonagon/signalgeneration/b0;-><init>(Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;Lcom/google/android/gms/internal/ads/bc0;)V

    iget-object p3, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;->i:Lcom/google/android/gms/internal/ads/sp0;

    .line 15
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/sp0;->h()Ljava/util/concurrent/Executor;

    move-result-object p3

    .line 16
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/k03;->p(Lcom/google/android/gms/internal/ads/r03;Lcom/google/android/gms/internal/ads/f03;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final T4(Lcom/google/android/gms/internal/ads/zzcam;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;->o:Lcom/google/android/gms/internal/ads/zzcam;

    iget-object p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;->l:Lcom/google/android/gms/internal/ads/pk2;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/pk2;->a(I)V

    return-void
.end method

.method public final X(Lcom/google/android/gms/dynamic/a;)V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "AddJavascriptInterface"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/kw;->H6:Lcom/google/android/gms/internal/ads/cw;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_1

    const-string p1, "Not registering the webview because the Android API level is lower than Lollopop which has security risks on webviews."

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ei0;->f(Ljava/lang/String;)V

    return-void

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/ads/kw;->I6:Lcom/google/android/gms/internal/ads/cw;

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object v0

    .line 6
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;->j:Landroid/content/Context;

    .line 7
    sget-object v0, Lcom/google/android/gms/ads/AdFormat;->d:Lcom/google/android/gms/ads/AdFormat;

    .line 8
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    .line 9
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;->N6(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbdl;Lcom/google/android/gms/internal/ads/zzbdg;)Lcom/google/android/gms/ads/nonagon/signalgeneration/p;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/ads/nonagon/signalgeneration/p;->a()Lcom/google/android/gms/internal/ads/r03;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/ads/nonagon/signalgeneration/d0;

    .line 11
    invoke-direct {v1, p0}, Lcom/google/android/gms/ads/nonagon/signalgeneration/d0;-><init>(Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;)V

    iget-object v2, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;->i:Lcom/google/android/gms/internal/ads/sp0;

    .line 12
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/sp0;->h()Ljava/util/concurrent/Executor;

    move-result-object v2

    .line 13
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/k03;->p(Lcom/google/android/gms/internal/ads/r03;Lcom/google/android/gms/internal/ads/f03;Ljava/util/concurrent/Executor;)V

    .line 14
    :cond_2
    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->J0(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/webkit/WebView;

    if-nez p1, :cond_3

    const-string p1, "The webView cannot be null."

    .line 15
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ei0;->c(Ljava/lang/String;)V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;->r:Ljava/util/Set;

    .line 16
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p1, "This webview has already been registered."

    .line 17
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ei0;->e(Ljava/lang/String;)V

    return-void

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;->r:Ljava/util/Set;

    .line 18
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/google/android/gms/ads/nonagon/signalgeneration/a;

    iget-object v1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;->k:Lcom/google/android/gms/internal/ads/u;

    .line 19
    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/ads/nonagon/signalgeneration/a;-><init>(Landroid/webkit/WebView;Lcom/google/android/gms/internal/ads/u;)V

    const-string v1, "gmaSdk"

    invoke-virtual {p1, v0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method final synthetic i7([Lcom/google/android/gms/internal/ads/qj1;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    aget-object p1, p1, v0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;->l:Lcom/google/android/gms/internal/ads/pk2;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/k03;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/pk2;->c(Lcom/google/android/gms/internal/ads/r03;)V

    :cond_0
    return-void
.end method

.method public final w6(Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/internal/ads/zzcfr;Lcom/google/android/gms/internal/ads/vg0;)V
    .locals 6

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->J0(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroid/content/Context;

    iput-object v1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;->j:Landroid/content/Context;

    .line 2
    iget-object v2, p2, Lcom/google/android/gms/internal/ads/zzcfr;->d:Ljava/lang/String;

    iget-object v3, p2, Lcom/google/android/gms/internal/ads/zzcfr;->e:Ljava/lang/String;

    iget-object v4, p2, Lcom/google/android/gms/internal/ads/zzcfr;->f:Lcom/google/android/gms/internal/ads/zzbdl;

    iget-object v5, p2, Lcom/google/android/gms/internal/ads/zzcfr;->g:Lcom/google/android/gms/internal/ads/zzbdg;

    move-object v0, p0

    .line 3
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;->N6(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbdl;Lcom/google/android/gms/internal/ads/zzbdg;)Lcom/google/android/gms/ads/nonagon/signalgeneration/p;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/ads/nonagon/signalgeneration/p;->a()Lcom/google/android/gms/internal/ads/r03;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/ads/nonagon/signalgeneration/a0;

    .line 5
    invoke-direct {p2, p0, p3}, Lcom/google/android/gms/ads/nonagon/signalgeneration/a0;-><init>(Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;Lcom/google/android/gms/internal/ads/vg0;)V

    iget-object p3, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;->i:Lcom/google/android/gms/internal/ads/sp0;

    .line 6
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/sp0;->h()Ljava/util/concurrent/Executor;

    move-result-object p3

    .line 7
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/k03;->p(Lcom/google/android/gms/internal/ads/r03;Lcom/google/android/gms/internal/ads/f03;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final zzf(Lcom/google/android/gms/dynamic/a;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/kw;->x5:Lcom/google/android/gms/internal/ads/cw;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->J0(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/MotionEvent;

    iget-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;->o:Lcom/google/android/gms/internal/ads/zzcam;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzcam;->d:Landroid/view/View;

    .line 6
    :goto_0
    invoke-static {p1, v0}, Lcom/google/android/gms/ads/internal/util/b1;->h(Landroid/view/MotionEvent;Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;->p:Landroid/graphics/Point;

    .line 7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;->p:Landroid/graphics/Point;

    iput-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;->q:Landroid/graphics/Point;

    .line 8
    :cond_2
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;->p:Landroid/graphics/Point;

    .line 9
    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/view/MotionEvent;->setLocation(FF)V

    iget-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;->k:Lcom/google/android/gms/internal/ads/u;

    .line 10
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/u;->d(Landroid/view/MotionEvent;)V

    .line 11
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method
