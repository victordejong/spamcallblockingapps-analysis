.class final Lcom/google/android/gms/internal/ads/nl3;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/lk3;
.implements Lcom/google/android/gms/internal/ads/xq3;
.implements Lcom/google/android/gms/internal/ads/do3;
.implements Lcom/google/android/gms/internal/ads/jo3;
.implements Lcom/google/android/gms/internal/ads/zl3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/lk3;",
        "Lcom/google/android/gms/internal/ads/xq3;",
        "Lcom/google/android/gms/internal/ads/do3;",
        "Lcom/google/android/gms/internal/ads/jo3;",
        "Lcom/google/android/gms/internal/ads/zl3;"
    }
.end annotation


# static fields
.field private static final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:Lcom/google/android/gms/internal/ads/u4;


# instance fields
.field private A:Lcom/google/android/gms/internal/ads/ur3;

.field private B:J

.field private C:Z

.field private D:I

.field private E:Z

.field private F:Z

.field private G:I

.field private H:J

.field private I:J

.field private J:J

.field private K:Z

.field private L:I

.field private M:Z

.field private N:Z

.field private final O:Lcom/google/android/gms/internal/ads/zn3;

.field private final P:Lcom/google/android/gms/internal/ads/tn3;

.field private final f:Landroid/net/Uri;

.field private final g:Lcom/google/android/gms/internal/ads/w7;

.field private final h:Lcom/google/android/gms/internal/ads/go2;

.field private final i:Lcom/google/android/gms/internal/ads/vk3;

.field private final j:Lcom/google/android/gms/internal/ads/gj2;

.field private final k:Lcom/google/android/gms/internal/ads/jl3;

.field private final l:J

.field private final m:Lcom/google/android/gms/internal/ads/lo3;

.field private final n:Lcom/google/android/gms/internal/ads/dl3;

.field private final o:Lcom/google/android/gms/internal/ads/b9;

.field private final p:Ljava/lang/Runnable;

.field private final q:Ljava/lang/Runnable;

.field private final r:Landroid/os/Handler;

.field private s:Lcom/google/android/gms/internal/ads/kk3;

.field private t:Lcom/google/android/gms/internal/ads/zzajg;

.field private u:[Lcom/google/android/gms/internal/ads/am3;

.field private v:[Lcom/google/android/gms/internal/ads/ll3;

.field private w:Z

.field private x:Z

.field private y:Z

.field private z:Lcom/google/android/gms/internal/ads/ml3;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "Icy-MetaData"

    const-string v2, "1"

    .line 2
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/nl3;->d:Ljava/util/Map;

    new-instance v0, Lcom/google/android/gms/internal/ads/s4;

    .line 4
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/s4;-><init>()V

    const-string v1, "icy"

    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/s4;->d(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/s4;

    const-string v1, "application/x-icy"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/s4;->n(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/s4;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/s4;->I()Lcom/google/android/gms/internal/ads/u4;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/nl3;->e:Lcom/google/android/gms/internal/ads/u4;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lcom/google/android/gms/internal/ads/w7;Lcom/google/android/gms/internal/ads/dl3;Lcom/google/android/gms/internal/ads/go2;Lcom/google/android/gms/internal/ads/gj2;Lcom/google/android/gms/internal/ads/zn3;Lcom/google/android/gms/internal/ads/vk3;Lcom/google/android/gms/internal/ads/jl3;Lcom/google/android/gms/internal/ads/tn3;Ljava/lang/String;I[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/nl3;->f:Landroid/net/Uri;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/nl3;->g:Lcom/google/android/gms/internal/ads/w7;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/nl3;->h:Lcom/google/android/gms/internal/ads/go2;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/nl3;->j:Lcom/google/android/gms/internal/ads/gj2;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/nl3;->O:Lcom/google/android/gms/internal/ads/zn3;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/nl3;->i:Lcom/google/android/gms/internal/ads/vk3;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/nl3;->k:Lcom/google/android/gms/internal/ads/jl3;

    iput-object p9, p0, Lcom/google/android/gms/internal/ads/nl3;->P:Lcom/google/android/gms/internal/ads/tn3;

    int-to-long p1, p11

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/nl3;->l:J

    new-instance p1, Lcom/google/android/gms/internal/ads/lo3;

    const-string p2, "ProgressiveMediaPeriod"

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/lo3;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/nl3;->m:Lcom/google/android/gms/internal/ads/lo3;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/nl3;->n:Lcom/google/android/gms/internal/ads/dl3;

    new-instance p1, Lcom/google/android/gms/internal/ads/b9;

    sget-object p2, Lcom/google/android/gms/internal/ads/z8;->a:Lcom/google/android/gms/internal/ads/z8;

    .line 2
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/b9;-><init>(Lcom/google/android/gms/internal/ads/z8;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/nl3;->o:Lcom/google/android/gms/internal/ads/b9;

    new-instance p1, Lcom/google/android/gms/internal/ads/el3;

    .line 3
    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/el3;-><init>(Lcom/google/android/gms/internal/ads/nl3;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/nl3;->p:Ljava/lang/Runnable;

    new-instance p1, Lcom/google/android/gms/internal/ads/fl3;

    .line 4
    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/fl3;-><init>(Lcom/google/android/gms/internal/ads/nl3;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/nl3;->q:Ljava/lang/Runnable;

    const/4 p1, 0x0

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/wa;->M(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/nl3;->r:Landroid/os/Handler;

    const/4 p1, 0x0

    new-array p2, p1, [Lcom/google/android/gms/internal/ads/ll3;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/nl3;->v:[Lcom/google/android/gms/internal/ads/ll3;

    new-array p1, p1, [Lcom/google/android/gms/internal/ads/am3;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/nl3;->u:[Lcom/google/android/gms/internal/ads/am3;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/nl3;->J:J

    const-wide/16 p3, -0x1

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/nl3;->H:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/nl3;->B:J

    const/4 p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/nl3;->D:I

    return-void
.end method

.method private final A(I)V
    .locals 10

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/nl3;->K()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nl3;->z:Lcom/google/android/gms/internal/ads/ml3;

    .line 2
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/ml3;->d:[Z

    .line 3
    aget-boolean v2, v1, p1

    if-nez v2, :cond_0

    .line 4
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/ml3;->a:Lcom/google/android/gms/internal/ads/dv3;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/dv3;->a(I)Lcom/google/android/gms/internal/ads/bt3;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/bt3;->a(I)Lcom/google/android/gms/internal/ads/u4;

    move-result-object v5

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/nl3;->i:Lcom/google/android/gms/internal/ads/vk3;

    .line 5
    iget-object v0, v5, Lcom/google/android/gms/internal/ads/u4;->n:Ljava/lang/String;

    .line 6
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/y9;->f(Ljava/lang/String;)I

    move-result v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-wide v8, p0, Lcom/google/android/gms/internal/ads/nl3;->I:J

    .line 7
    invoke-virtual/range {v3 .. v9}, Lcom/google/android/gms/internal/ads/vk3;->l(ILcom/google/android/gms/internal/ads/u4;ILjava/lang/Object;J)V

    const/4 v0, 0x1

    .line 8
    aput-boolean v0, v1, p1

    :cond_0
    return-void
.end method

.method private final B(I)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/nl3;->K()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nl3;->z:Lcom/google/android/gms/internal/ads/ml3;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/ml3;->b:[Z

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/nl3;->K:Z

    if-eqz v1, :cond_2

    .line 3
    aget-boolean v0, v0, p1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nl3;->u:[Lcom/google/android/gms/internal/ads/am3;

    aget-object p1, v0, p1

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/am3;->C(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/nl3;->J:J

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/nl3;->K:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/nl3;->F:Z

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/nl3;->I:J

    iput v0, p0, Lcom/google/android/gms/internal/ads/nl3;->L:I

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/nl3;->u:[Lcom/google/android/gms/internal/ads/am3;

    .line 5
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 6
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/am3;->t(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/nl3;->s:Lcom/google/android/gms/internal/ads/kk3;

    .line 7
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/ads/cm3;->k(Lcom/google/android/gms/internal/ads/dm3;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private final C()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/nl3;->F:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/nl3;->J()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private final D(Lcom/google/android/gms/internal/ads/ll3;)Lcom/google/android/gms/internal/ads/yr3;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nl3;->u:[Lcom/google/android/gms/internal/ads/am3;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/nl3;->v:[Lcom/google/android/gms/internal/ads/ll3;

    .line 2
    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ads/ll3;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/nl3;->u:[Lcom/google/android/gms/internal/ads/am3;

    .line 3
    aget-object p1, p1, v1

    return-object p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/nl3;->P:Lcom/google/android/gms/internal/ads/tn3;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/nl3;->r:Landroid/os/Handler;

    .line 4
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/nl3;->h:Lcom/google/android/gms/internal/ads/go2;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/nl3;->j:Lcom/google/android/gms/internal/ads/gj2;

    new-instance v1, Lcom/google/android/gms/internal/ads/am3;

    .line 5
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v7, 0x0

    move-object v2, v1

    .line 7
    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/am3;-><init>(Lcom/google/android/gms/internal/ads/tn3;Landroid/os/Looper;Lcom/google/android/gms/internal/ads/go2;Lcom/google/android/gms/internal/ads/gj2;[B)V

    .line 8
    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/ads/am3;->J(Lcom/google/android/gms/internal/ads/zl3;)V

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/nl3;->v:[Lcom/google/android/gms/internal/ads/ll3;

    .line 9
    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/google/android/gms/internal/ads/ll3;

    .line 10
    aput-object p1, v3, v0

    .line 11
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/wa;->J([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/google/android/gms/internal/ads/ll3;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/nl3;->v:[Lcom/google/android/gms/internal/ads/ll3;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/nl3;->u:[Lcom/google/android/gms/internal/ads/am3;

    .line 12
    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/google/android/gms/internal/ads/am3;

    .line 13
    aput-object v1, p1, v0

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/wa;->J([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    .line 14
    check-cast p1, [Lcom/google/android/gms/internal/ads/am3;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/nl3;->u:[Lcom/google/android/gms/internal/ads/am3;

    return-object v1
.end method

.method private final E()V
    .locals 11

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/nl3;->N:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/nl3;->x:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/nl3;->w:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nl3;->A:Lcom/google/android/gms/internal/ads/ur3;

    if-nez v0, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nl3;->u:[Lcom/google/android/gms/internal/ads/am3;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 2
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/am3;->z()Lcom/google/android/gms/internal/ads/u4;

    move-result-object v4

    if-nez v4, :cond_1

    return-void

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nl3;->o:Lcom/google/android/gms/internal/ads/b9;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/b9;->b()Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nl3;->u:[Lcom/google/android/gms/internal/ads/am3;

    .line 4
    array-length v0, v0

    new-array v1, v0, [Lcom/google/android/gms/internal/ads/bt3;

    new-array v3, v0, [Z

    const/4 v4, 0x0

    :goto_1
    const/4 v5, 0x1

    if-ge v4, v0, :cond_9

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/nl3;->u:[Lcom/google/android/gms/internal/ads/am3;

    .line 5
    aget-object v6, v6, v4

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/am3;->z()Lcom/google/android/gms/internal/ads/u4;

    move-result-object v6

    .line 6
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v7, v6, Lcom/google/android/gms/internal/ads/u4;->n:Ljava/lang/String;

    .line 8
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/y9;->a(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 9
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/y9;->b(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_2

    :cond_3
    const/4 v7, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v7, 0x1

    .line 10
    :goto_3
    aput-boolean v7, v3, v4

    iget-boolean v9, p0, Lcom/google/android/gms/internal/ads/nl3;->y:Z

    or-int/2addr v7, v9

    iput-boolean v7, p0, Lcom/google/android/gms/internal/ads/nl3;->y:Z

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/nl3;->t:Lcom/google/android/gms/internal/ads/zzajg;

    if-eqz v7, :cond_8

    if-nez v8, :cond_5

    iget-object v9, p0, Lcom/google/android/gms/internal/ads/nl3;->v:[Lcom/google/android/gms/internal/ads/ll3;

    .line 11
    aget-object v9, v9, v4

    iget-boolean v9, v9, Lcom/google/android/gms/internal/ads/ll3;->b:Z

    if-eqz v9, :cond_7

    :cond_5
    iget-object v9, v6, Lcom/google/android/gms/internal/ads/u4;->l:Lcom/google/android/gms/internal/ads/zzaiv;

    if-nez v9, :cond_6

    new-instance v9, Lcom/google/android/gms/internal/ads/zzaiv;

    new-array v10, v5, [Lcom/google/android/gms/internal/ads/zzaiu;

    aput-object v7, v10, v2

    .line 12
    invoke-direct {v9, v10}, Lcom/google/android/gms/internal/ads/zzaiv;-><init>([Lcom/google/android/gms/internal/ads/zzaiu;)V

    goto :goto_4

    :cond_6
    new-array v10, v5, [Lcom/google/android/gms/internal/ads/zzaiu;

    aput-object v7, v10, v2

    .line 13
    invoke-virtual {v9, v10}, Lcom/google/android/gms/internal/ads/zzaiv;->d([Lcom/google/android/gms/internal/ads/zzaiu;)Lcom/google/android/gms/internal/ads/zzaiv;

    move-result-object v9

    .line 14
    :goto_4
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/u4;->a()Lcom/google/android/gms/internal/ads/s4;

    move-result-object v6

    .line 15
    invoke-virtual {v6, v9}, Lcom/google/android/gms/internal/ads/s4;->l(Lcom/google/android/gms/internal/ads/zzaiv;)Lcom/google/android/gms/internal/ads/s4;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/s4;->I()Lcom/google/android/gms/internal/ads/u4;

    move-result-object v6

    :cond_7
    if-eqz v8, :cond_8

    iget v8, v6, Lcom/google/android/gms/internal/ads/u4;->h:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_8

    iget v8, v6, Lcom/google/android/gms/internal/ads/u4;->i:I

    if-ne v8, v9, :cond_8

    iget v8, v7, Lcom/google/android/gms/internal/ads/zzajg;->d:I

    if-eq v8, v9, :cond_8

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/u4;->a()Lcom/google/android/gms/internal/ads/s4;

    move-result-object v6

    iget v7, v7, Lcom/google/android/gms/internal/ads/zzajg;->d:I

    .line 16
    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/ads/s4;->i(I)Lcom/google/android/gms/internal/ads/s4;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/s4;->I()Lcom/google/android/gms/internal/ads/u4;

    move-result-object v6

    :cond_8
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/nl3;->h:Lcom/google/android/gms/internal/ads/go2;

    .line 17
    invoke-interface {v7, v6}, Lcom/google/android/gms/internal/ads/go2;->a(Lcom/google/android/gms/internal/ads/u4;)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/ads/u4;->b(I)Lcom/google/android/gms/internal/ads/u4;

    move-result-object v6

    new-instance v7, Lcom/google/android/gms/internal/ads/bt3;

    new-array v5, v5, [Lcom/google/android/gms/internal/ads/u4;

    aput-object v6, v5, v2

    .line 18
    invoke-direct {v7, v5}, Lcom/google/android/gms/internal/ads/bt3;-><init>([Lcom/google/android/gms/internal/ads/u4;)V

    aput-object v7, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 19
    :cond_9
    new-instance v0, Lcom/google/android/gms/internal/ads/ml3;

    .line 20
    new-instance v2, Lcom/google/android/gms/internal/ads/dv3;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/dv3;-><init>([Lcom/google/android/gms/internal/ads/bt3;)V

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/ads/ml3;-><init>(Lcom/google/android/gms/internal/ads/dv3;[Z)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/nl3;->z:Lcom/google/android/gms/internal/ads/ml3;

    iput-boolean v5, p0, Lcom/google/android/gms/internal/ads/nl3;->x:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nl3;->s:Lcom/google/android/gms/internal/ads/kk3;

    .line 21
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ads/kk3;->g(Lcom/google/android/gms/internal/ads/lk3;)V

    :cond_a
    :goto_5
    return-void
.end method

.method private final F(Lcom/google/android/gms/internal/ads/il3;)V
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/nl3;->H:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/il3;->g(Lcom/google/android/gms/internal/ads/il3;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/nl3;->H:J

    :cond_0
    return-void
.end method

.method private final G()V
    .locals 28

    move-object/from16 v7, p0

    .line 1
    new-instance v8, Lcom/google/android/gms/internal/ads/il3;

    iget-object v2, v7, Lcom/google/android/gms/internal/ads/nl3;->f:Landroid/net/Uri;

    iget-object v3, v7, Lcom/google/android/gms/internal/ads/nl3;->g:Lcom/google/android/gms/internal/ads/w7;

    iget-object v4, v7, Lcom/google/android/gms/internal/ads/nl3;->n:Lcom/google/android/gms/internal/ads/dl3;

    iget-object v6, v7, Lcom/google/android/gms/internal/ads/nl3;->o:Lcom/google/android/gms/internal/ads/b9;

    move-object v0, v8

    move-object/from16 v1, p0

    move-object/from16 v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/il3;-><init>(Lcom/google/android/gms/internal/ads/nl3;Landroid/net/Uri;Lcom/google/android/gms/internal/ads/w7;Lcom/google/android/gms/internal/ads/dl3;Lcom/google/android/gms/internal/ads/xq3;Lcom/google/android/gms/internal/ads/b9;)V

    iget-boolean v0, v7, Lcom/google/android/gms/internal/ads/nl3;->x:Z

    if-eqz v0, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/nl3;->J()Z

    move-result v0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/y8;->d(Z)V

    iget-wide v0, v7, Lcom/google/android/gms/internal/ads/nl3;->B:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-wide v4, v7, Lcom/google/android/gms/internal/ads/nl3;->J:J

    cmp-long v6, v4, v0

    if-gtz v6, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, v7, Lcom/google/android/gms/internal/ads/nl3;->M:Z

    iput-wide v2, v7, Lcom/google/android/gms/internal/ads/nl3;->J:J

    return-void

    .line 4
    :cond_1
    :goto_0
    iget-object v0, v7, Lcom/google/android/gms/internal/ads/nl3;->A:Lcom/google/android/gms/internal/ads/ur3;

    .line 5
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-wide v4, v7, Lcom/google/android/gms/internal/ads/nl3;->J:J

    .line 7
    invoke-interface {v0, v4, v5}, Lcom/google/android/gms/internal/ads/ur3;->b(J)Lcom/google/android/gms/internal/ads/sr3;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/sr3;->a:Lcom/google/android/gms/internal/ads/vr3;

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/vr3;->c:J

    iget-wide v4, v7, Lcom/google/android/gms/internal/ads/nl3;->J:J

    .line 8
    invoke-static {v8, v0, v1, v4, v5}, Lcom/google/android/gms/internal/ads/il3;->h(Lcom/google/android/gms/internal/ads/il3;JJ)V

    iget-object v0, v7, Lcom/google/android/gms/internal/ads/nl3;->u:[Lcom/google/android/gms/internal/ads/am3;

    .line 9
    array-length v1, v0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v1, :cond_2

    aget-object v5, v0, v4

    iget-wide v9, v7, Lcom/google/android/gms/internal/ads/nl3;->J:J

    .line 10
    invoke-virtual {v5, v9, v10}, Lcom/google/android/gms/internal/ads/am3;->u(J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    iput-wide v2, v7, Lcom/google/android/gms/internal/ads/nl3;->J:J

    .line 11
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/nl3;->H()I

    move-result v0

    iput v0, v7, Lcom/google/android/gms/internal/ads/nl3;->L:I

    iget-object v0, v7, Lcom/google/android/gms/internal/ads/nl3;->m:Lcom/google/android/gms/internal/ads/lo3;

    iget v1, v7, Lcom/google/android/gms/internal/ads/nl3;->D:I

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zn3;->a(I)I

    move-result v1

    .line 12
    invoke-virtual {v0, v8, v7, v1}, Lcom/google/android/gms/internal/ads/lo3;->h(Lcom/google/android/gms/internal/ads/ho3;Lcom/google/android/gms/internal/ads/do3;I)J

    move-result-wide v15

    .line 13
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/il3;->e(Lcom/google/android/gms/internal/ads/il3;)Lcom/google/android/gms/internal/ads/fb;

    move-result-object v12

    iget-object v0, v7, Lcom/google/android/gms/internal/ads/nl3;->i:Lcom/google/android/gms/internal/ads/vk3;

    .line 14
    new-instance v1, Lcom/google/android/gms/internal/ads/dk3;

    invoke-static {v8}, Lcom/google/android/gms/internal/ads/il3;->b(Lcom/google/android/gms/internal/ads/il3;)J

    move-result-wide v10

    .line 15
    iget-object v13, v12, Lcom/google/android/gms/internal/ads/fb;->a:Landroid/net/Uri;

    .line 16
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v14

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    move-object v9, v1

    .line 17
    invoke-direct/range {v9 .. v20}, Lcom/google/android/gms/internal/ads/dk3;-><init>(JLcom/google/android/gms/internal/ads/fb;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    const/16 v19, 0x1

    const/16 v20, -0x1

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    .line 18
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/il3;->d(Lcom/google/android/gms/internal/ads/il3;)J

    move-result-wide v24

    iget-wide v2, v7, Lcom/google/android/gms/internal/ads/nl3;->B:J

    move-object/from16 v17, v0

    move-object/from16 v18, v1

    move-wide/from16 v26, v2

    invoke-virtual/range {v17 .. v27}, Lcom/google/android/gms/internal/ads/vk3;->d(Lcom/google/android/gms/internal/ads/dk3;IILcom/google/android/gms/internal/ads/u4;ILjava/lang/Object;JJ)V

    return-void
.end method

.method private final H()I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nl3;->u:[Lcom/google/android/gms/internal/ads/am3;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v4, v0, v2

    .line 2
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/am3;->v()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v3
.end method

.method private final I()J
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nl3;->u:[Lcom/google/android/gms/internal/ads/am3;

    array-length v1, v0

    const-wide/high16 v2, -0x8000000000000000L

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_0

    aget-object v5, v0, v4

    .line 2
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/am3;->A()J

    move-result-wide v5

    invoke-static {v2, v3, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-wide v2
.end method

.method private final J()Z
    .locals 5

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/nl3;->J:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final K()V
    .locals 1
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "trackState",
            "seekMap"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/nl3;->x:Z

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/y8;->d(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nl3;->z:Lcom/google/android/gms/internal/ads/ml3;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nl3;->A:Lcom/google/android/gms/internal/ads/ur3;

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic L()Ljava/util/Map;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/nl3;->d:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic M()Lcom/google/android/gms/internal/ads/u4;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/nl3;->e:Lcom/google/android/gms/internal/ads/u4;

    return-object v0
.end method

.method static synthetic N(Lcom/google/android/gms/internal/ads/nl3;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/nl3;->l:J

    return-wide v0
.end method

.method static synthetic O(Lcom/google/android/gms/internal/ads/nl3;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/nl3;->q:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic P(Lcom/google/android/gms/internal/ads/nl3;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/nl3;->r:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic Q(Lcom/google/android/gms/internal/ads/nl3;Lcom/google/android/gms/internal/ads/zzajg;)Lcom/google/android/gms/internal/ads/zzajg;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/nl3;->t:Lcom/google/android/gms/internal/ads/zzajg;

    return-object p1
.end method

.method static synthetic R(Lcom/google/android/gms/internal/ads/nl3;)Lcom/google/android/gms/internal/ads/zzajg;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/nl3;->t:Lcom/google/android/gms/internal/ads/zzajg;

    return-object p0
.end method

.method static synthetic v(Lcom/google/android/gms/internal/ads/nl3;)J
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/nl3;->I()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public final S()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/nl3;->x:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nl3;->u:[Lcom/google/android/gms/internal/ads/am3;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 2
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/am3;->w()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nl3;->m:Lcom/google/android/gms/internal/ads/lo3;

    .line 3
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/lo3;->k(Lcom/google/android/gms/internal/ads/jo3;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nl3;->r:Landroid/os/Handler;

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/nl3;->s:Lcom/google/android/gms/internal/ads/kk3;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/nl3;->N:Z

    return-void
.end method

.method final T(I)Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/nl3;->C()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nl3;->u:[Lcom/google/android/gms/internal/ads/am3;

    aget-object p1, v0, p1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/nl3;->M:Z

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/am3;->C(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method final U(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nl3;->u:[Lcom/google/android/gms/internal/ads/am3;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/am3;->x()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/nl3;->V()V

    return-void
.end method

.method final V()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nl3;->m:Lcom/google/android/gms/internal/ads/lo3;

    iget v1, p0, Lcom/google/android/gms/internal/ads/nl3;->D:I

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zn3;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/lo3;->l(I)V

    return-void
.end method

.method final W(ILcom/google/android/gms/internal/ads/v4;Lcom/google/android/gms/internal/ads/z3;I)I
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/nl3;->C()Z

    move-result v0

    const/4 v1, -0x3

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/nl3;->A(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nl3;->u:[Lcom/google/android/gms/internal/ads/am3;

    .line 2
    aget-object v0, v0, p1

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/nl3;->M:Z

    .line 3
    invoke-virtual {v0, p2, p3, p4, v2}, Lcom/google/android/gms/internal/ads/am3;->D(Lcom/google/android/gms/internal/ads/v4;Lcom/google/android/gms/internal/ads/z3;IZ)I

    move-result p2

    if-ne p2, v1, :cond_1

    .line 4
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/nl3;->B(I)V

    :cond_1
    return p2
.end method

.method public final a(Lcom/google/android/gms/internal/ads/u4;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/nl3;->r:Landroid/os/Handler;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nl3;->p:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final b(J)V
    .locals 0

    return-void
.end method

.method public final c()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/nl3;->V()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/nl3;->M:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/nl3;->x:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const-string v1, "Loading finished before preparation is complete."

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzaha;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaha;

    move-result-object v0

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public final d(J)Z
    .locals 0

    .line 1
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/nl3;->M:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/nl3;->m:Lcom/google/android/gms/internal/ads/lo3;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/lo3;->f()Z

    move-result p1

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/nl3;->K:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/nl3;->x:Z

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/google/android/gms/internal/ads/nl3;->G:I

    if-eqz p1, :cond_2

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/nl3;->o:Lcom/google/android/gms/internal/ads/b9;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/b9;->a()Z

    move-result p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/nl3;->m:Lcom/google/android/gms/internal/ads/lo3;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/lo3;->i()Z

    move-result p2

    if-nez p2, :cond_1

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/nl3;->G()V

    const/4 p1, 0x1

    :cond_1
    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public final e()Lcom/google/android/gms/internal/ads/dv3;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/nl3;->K()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nl3;->z:Lcom/google/android/gms/internal/ads/ml3;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/ml3;->a:Lcom/google/android/gms/internal/ads/dv3;

    return-object v0
.end method

.method public final f()J
    .locals 11

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/nl3;->K()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nl3;->z:Lcom/google/android/gms/internal/ads/ml3;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/ml3;->b:[Z

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/nl3;->M:Z

    const-wide/high16 v2, -0x8000000000000000L

    if-eqz v1, :cond_0

    return-wide v2

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/nl3;->J()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/nl3;->J:J

    return-wide v0

    :cond_1
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/nl3;->y:Z

    const-wide v4, 0x7fffffffffffffffL

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/nl3;->u:[Lcom/google/android/gms/internal/ads/am3;

    .line 3
    array-length v1, v1

    const/4 v6, 0x0

    move-wide v7, v4

    :goto_0
    if-ge v6, v1, :cond_4

    .line 4
    aget-boolean v9, v0, v6

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/google/android/gms/internal/ads/nl3;->u:[Lcom/google/android/gms/internal/ads/am3;

    aget-object v9, v9, v6

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/am3;->B()Z

    move-result v9

    if-nez v9, :cond_2

    iget-object v9, p0, Lcom/google/android/gms/internal/ads/nl3;->u:[Lcom/google/android/gms/internal/ads/am3;

    .line 5
    aget-object v9, v9, v6

    .line 6
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/am3;->A()J

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    move-wide v7, v4

    :cond_4
    cmp-long v0, v7, v4

    if-nez v0, :cond_5

    .line 7
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/nl3;->I()J

    move-result-wide v7

    :cond_5
    cmp-long v0, v7, v2

    if-nez v0, :cond_6

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/nl3;->I:J

    return-wide v0

    :cond_6
    return-wide v7
.end method

.method public final bridge synthetic g(Lcom/google/android/gms/internal/ads/ho3;JJLjava/io/IOException;I)Lcom/google/android/gms/internal/ads/fo3;
    .locals 26

    move-object/from16 v0, p0

    .line 1
    move-object/from16 v1, p1

    check-cast v1, Lcom/google/android/gms/internal/ads/il3;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/nl3;->F(Lcom/google/android/gms/internal/ads/il3;)V

    .line 2
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/il3;->c(Lcom/google/android/gms/internal/ads/il3;)Lcom/google/android/gms/internal/ads/so3;

    move-result-object v2

    .line 3
    new-instance v15, Lcom/google/android/gms/internal/ads/dk3;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/il3;->b(Lcom/google/android/gms/internal/ads/il3;)J

    move-result-wide v4

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/il3;->e(Lcom/google/android/gms/internal/ads/il3;)Lcom/google/android/gms/internal/ads/fb;

    move-result-object v6

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/so3;->q()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/so3;->r()Ljava/util/Map;

    move-result-object v8

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/so3;->p()J

    move-result-wide v13

    move-object v3, v15

    move-wide/from16 v9, p2

    move-wide/from16 v11, p4

    .line 4
    invoke-direct/range {v3 .. v14}, Lcom/google/android/gms/internal/ads/dk3;-><init>(JLcom/google/android/gms/internal/ads/fb;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    new-instance v2, Lcom/google/android/gms/internal/ads/jk3;

    .line 5
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/il3;->d(Lcom/google/android/gms/internal/ads/il3;)J

    move-result-wide v3

    .line 6
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/x2;->a(J)J

    move-result-wide v22

    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/nl3;->B:J

    .line 7
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/x2;->a(J)J

    move-result-wide v24

    const/16 v17, 0x1

    const/16 v18, -0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v16, v2

    invoke-direct/range {v16 .. v25}, Lcom/google/android/gms/internal/ads/jk3;-><init>(IILcom/google/android/gms/internal/ads/u4;ILjava/lang/Object;JJ)V

    new-instance v3, Lcom/google/android/gms/internal/ads/co3;

    move-object/from16 v14, p6

    move/from16 v4, p7

    .line 8
    invoke-direct {v3, v15, v2, v14, v4}, Lcom/google/android/gms/internal/ads/co3;-><init>(Lcom/google/android/gms/internal/ads/dk3;Lcom/google/android/gms/internal/ads/jk3;Ljava/io/IOException;I)V

    iget-object v2, v3, Lcom/google/android/gms/internal/ads/co3;->c:Ljava/io/IOException;

    .line 9
    instance-of v4, v2, Lcom/google/android/gms/internal/ads/zzaha;

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v4, :cond_2

    instance-of v4, v2, Ljava/io/FileNotFoundException;

    if-nez v4, :cond_2

    instance-of v4, v2, Lcom/google/android/gms/internal/ads/zzas;

    if-nez v4, :cond_2

    instance-of v4, v2, Lcom/google/android/gms/internal/ads/zzlg;

    if-nez v4, :cond_2

    :goto_0
    if-eqz v2, :cond_1

    .line 10
    instance-of v4, v2, Lcom/google/android/gms/internal/ads/zzak;

    if-eqz v4, :cond_0

    .line 11
    move-object v4, v2

    check-cast v4, Lcom/google/android/gms/internal/ads/zzak;

    iget v4, v4, Lcom/google/android/gms/internal/ads/zzak;->zza:I

    const/16 v7, 0x7d8

    if-ne v4, v7, :cond_0

    goto :goto_1

    .line 12
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    goto :goto_0

    :cond_1
    iget v2, v3, Lcom/google/android/gms/internal/ads/co3;->d:I

    add-int/lit8 v2, v2, -0x1

    mul-int/lit16 v2, v2, 0x3e8

    const/16 v3, 0x1388

    .line 13
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-long v2, v2

    goto :goto_2

    :cond_2
    :goto_1
    move-wide v2, v5

    :goto_2
    const/4 v4, 0x1

    cmp-long v7, v2, v5

    if-nez v7, :cond_3

    .line 14
    sget-object v2, Lcom/google/android/gms/internal/ads/lo3;->d:Lcom/google/android/gms/internal/ads/fo3;

    goto :goto_7

    .line 15
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/nl3;->H()I

    move-result v7

    iget v8, v0, Lcom/google/android/gms/internal/ads/nl3;->L:I

    const/4 v9, 0x0

    if-le v7, v8, :cond_4

    const/4 v8, 0x1

    goto :goto_3

    :cond_4
    const/4 v8, 0x0

    :goto_3
    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/nl3;->H:J

    const-wide/16 v12, -0x1

    cmp-long v16, v10, v12

    if-nez v16, :cond_8

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/nl3;->A:Lcom/google/android/gms/internal/ads/ur3;

    if-eqz v10, :cond_5

    .line 16
    invoke-interface {v10}, Lcom/google/android/gms/internal/ads/ur3;->zzg()J

    move-result-wide v10

    cmp-long v12, v10, v5

    if-eqz v12, :cond_5

    goto :goto_5

    :cond_5
    iget-boolean v5, v0, Lcom/google/android/gms/internal/ads/nl3;->x:Z

    if-eqz v5, :cond_6

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/nl3;->C()Z

    move-result v5

    if-nez v5, :cond_6

    iput-boolean v4, v0, Lcom/google/android/gms/internal/ads/nl3;->K:Z

    sget-object v2, Lcom/google/android/gms/internal/ads/lo3;->c:Lcom/google/android/gms/internal/ads/fo3;

    goto :goto_7

    :cond_6
    iget-boolean v5, v0, Lcom/google/android/gms/internal/ads/nl3;->x:Z

    iput-boolean v5, v0, Lcom/google/android/gms/internal/ads/nl3;->F:Z

    const-wide/16 v5, 0x0

    iput-wide v5, v0, Lcom/google/android/gms/internal/ads/nl3;->I:J

    iput v9, v0, Lcom/google/android/gms/internal/ads/nl3;->L:I

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/nl3;->u:[Lcom/google/android/gms/internal/ads/am3;

    .line 17
    array-length v10, v7

    const/4 v11, 0x0

    :goto_4
    if-ge v11, v10, :cond_7

    aget-object v12, v7, v11

    .line 18
    invoke-virtual {v12, v9}, Lcom/google/android/gms/internal/ads/am3;->t(Z)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 19
    :cond_7
    invoke-static {v1, v5, v6, v5, v6}, Lcom/google/android/gms/internal/ads/il3;->h(Lcom/google/android/gms/internal/ads/il3;JJ)V

    goto :goto_6

    .line 20
    :cond_8
    :goto_5
    iput v7, v0, Lcom/google/android/gms/internal/ads/nl3;->L:I

    :goto_6
    invoke-static {v8, v2, v3}, Lcom/google/android/gms/internal/ads/lo3;->e(ZJ)Lcom/google/android/gms/internal/ads/fo3;

    move-result-object v2

    .line 21
    :goto_7
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/fo3;->c()Z

    move-result v3

    xor-int/lit8 v16, v3, 0x1

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/nl3;->i:Lcom/google/android/gms/internal/ads/vk3;

    const/4 v5, 0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 22
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/il3;->d(Lcom/google/android/gms/internal/ads/il3;)J

    move-result-wide v10

    iget-wide v12, v0, Lcom/google/android/gms/internal/ads/nl3;->B:J

    move-object v4, v15

    move-object/from16 v14, p6

    move/from16 v15, v16

    invoke-virtual/range {v3 .. v15}, Lcom/google/android/gms/internal/ads/vk3;->j(Lcom/google/android/gms/internal/ads/dk3;IILcom/google/android/gms/internal/ads/u4;ILjava/lang/Object;JJLjava/io/IOException;Z)V

    if-eqz v16, :cond_9

    .line 23
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/il3;->b(Lcom/google/android/gms/internal/ads/il3;)J

    :cond_9
    return-object v2
.end method

.method public final h()J
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/nl3;->G:I

    if-nez v0, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/nl3;->f()J

    move-result-wide v0

    return-wide v0
.end method

.method public final i([Lcom/google/android/gms/internal/ads/mm3;[Z[Lcom/google/android/gms/internal/ads/bm3;[ZJ)J
    .locals 7

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/nl3;->K()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nl3;->z:Lcom/google/android/gms/internal/ads/ml3;

    .line 2
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/ml3;->a:Lcom/google/android/gms/internal/ads/dv3;

    .line 3
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/ml3;->c:[Z

    iget v2, p0, Lcom/google/android/gms/internal/ads/nl3;->G:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 4
    :goto_0
    array-length v5, p1

    if-ge v4, v5, :cond_2

    .line 5
    aget-object v5, p3, v4

    if-eqz v5, :cond_1

    aget-object v6, p1, v4

    if-eqz v6, :cond_0

    aget-boolean v6, p2, v4

    if-nez v6, :cond_1

    .line 6
    :cond_0
    check-cast v5, Lcom/google/android/gms/internal/ads/kl3;

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/kl3;->e(Lcom/google/android/gms/internal/ads/kl3;)I

    move-result v5

    .line 7
    aget-boolean v6, v0, v5

    invoke-static {v6}, Lcom/google/android/gms/internal/ads/y8;->d(Z)V

    iget v6, p0, Lcom/google/android/gms/internal/ads/nl3;->G:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/google/android/gms/internal/ads/nl3;->G:I

    .line 8
    aput-boolean v3, v0, v5

    const/4 v5, 0x0

    .line 9
    aput-object v5, p3, v4

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/nl3;->E:Z

    const/4 v4, 0x1

    if-eqz p2, :cond_3

    if-nez v2, :cond_4

    goto :goto_1

    :cond_3
    const-wide/16 v5, 0x0

    cmp-long p2, p5, v5

    if-eqz p2, :cond_4

    :goto_1
    const/4 p2, 0x1

    goto :goto_2

    :cond_4
    const/4 p2, 0x0

    :goto_2
    const/4 v2, 0x0

    .line 10
    :goto_3
    array-length v5, p1

    if-ge v2, v5, :cond_9

    .line 11
    aget-object v5, p3, v2

    if-nez v5, :cond_8

    aget-object v5, p1, v2

    if-eqz v5, :cond_8

    .line 12
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/mm3;->b()I

    move-result v6

    if-ne v6, v4, :cond_5

    const/4 v6, 0x1

    goto :goto_4

    :cond_5
    const/4 v6, 0x0

    :goto_4
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/y8;->d(Z)V

    .line 13
    invoke-virtual {v5, v3}, Lcom/google/android/gms/internal/ads/mm3;->d(I)I

    move-result v6

    if-nez v6, :cond_6

    const/4 v6, 0x1

    goto :goto_5

    :cond_6
    const/4 v6, 0x0

    :goto_5
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/y8;->d(Z)V

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/mm3;->a()Lcom/google/android/gms/internal/ads/bt3;

    move-result-object v5

    .line 14
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/dv3;->b(Lcom/google/android/gms/internal/ads/bt3;)I

    move-result v5

    .line 15
    aget-boolean v6, v0, v5

    xor-int/2addr v6, v4

    invoke-static {v6}, Lcom/google/android/gms/internal/ads/y8;->d(Z)V

    iget v6, p0, Lcom/google/android/gms/internal/ads/nl3;->G:I

    add-int/2addr v6, v4

    iput v6, p0, Lcom/google/android/gms/internal/ads/nl3;->G:I

    .line 16
    aput-boolean v4, v0, v5

    new-instance v6, Lcom/google/android/gms/internal/ads/kl3;

    .line 17
    invoke-direct {v6, p0, v5}, Lcom/google/android/gms/internal/ads/kl3;-><init>(Lcom/google/android/gms/internal/ads/nl3;I)V

    aput-object v6, p3, v2

    .line 18
    aput-boolean v4, p4, v2

    if-nez p2, :cond_8

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/nl3;->u:[Lcom/google/android/gms/internal/ads/am3;

    .line 19
    aget-object p2, p2, v5

    .line 20
    invoke-virtual {p2, p5, p6, v4}, Lcom/google/android/gms/internal/ads/am3;->E(JZ)Z

    move-result v5

    if-nez v5, :cond_7

    .line 21
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/am3;->y()I

    move-result p2

    if-eqz p2, :cond_7

    const/4 p2, 0x1

    goto :goto_6

    :cond_7
    const/4 p2, 0x0

    :cond_8
    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_9
    iget p1, p0, Lcom/google/android/gms/internal/ads/nl3;->G:I

    if-nez p1, :cond_c

    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/nl3;->K:Z

    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/nl3;->F:Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/nl3;->m:Lcom/google/android/gms/internal/ads/lo3;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/lo3;->i()Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/nl3;->u:[Lcom/google/android/gms/internal/ads/am3;

    .line 22
    array-length p2, p1

    :goto_7
    if-ge v3, p2, :cond_a

    aget-object p3, p1, v3

    .line 23
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/am3;->I()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_a
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/nl3;->m:Lcom/google/android/gms/internal/ads/lo3;

    .line 24
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/lo3;->j()V

    goto :goto_a

    :cond_b
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/nl3;->u:[Lcom/google/android/gms/internal/ads/am3;

    .line 25
    array-length p2, p1

    const/4 p3, 0x0

    :goto_8
    if-ge p3, p2, :cond_e

    aget-object p4, p1, p3

    .line 26
    invoke-virtual {p4, v3}, Lcom/google/android/gms/internal/ads/am3;->t(Z)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_8

    :cond_c
    if-eqz p2, :cond_e

    .line 27
    invoke-virtual {p0, p5, p6}, Lcom/google/android/gms/internal/ads/nl3;->n(J)J

    move-result-wide p5

    :goto_9
    array-length p1, p3

    if-ge v3, p1, :cond_e

    .line 28
    aget-object p1, p3, v3

    if-eqz p1, :cond_d

    .line 29
    aput-boolean v4, p4, v3

    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 30
    :cond_e
    :goto_a
    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/nl3;->E:Z

    return-wide p5
.end method

.method public final j()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nl3;->m:Lcom/google/android/gms/internal/ads/lo3;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/lo3;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nl3;->o:Lcom/google/android/gms/internal/ads/b9;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/b9;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final bridge synthetic k(Lcom/google/android/gms/internal/ads/ho3;JJZ)V
    .locals 16

    move-object/from16 v0, p0

    .line 1
    move-object/from16 v1, p1

    check-cast v1, Lcom/google/android/gms/internal/ads/il3;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/il3;->c(Lcom/google/android/gms/internal/ads/il3;)Lcom/google/android/gms/internal/ads/so3;

    move-result-object v2

    .line 2
    new-instance v15, Lcom/google/android/gms/internal/ads/dk3;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/il3;->b(Lcom/google/android/gms/internal/ads/il3;)J

    move-result-wide v4

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/il3;->e(Lcom/google/android/gms/internal/ads/il3;)Lcom/google/android/gms/internal/ads/fb;

    move-result-object v6

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/so3;->q()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/so3;->r()Ljava/util/Map;

    move-result-object v8

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/so3;->p()J

    move-result-wide v13

    move-object v3, v15

    move-wide/from16 v9, p2

    move-wide/from16 v11, p4

    .line 3
    invoke-direct/range {v3 .. v14}, Lcom/google/android/gms/internal/ads/dk3;-><init>(JLcom/google/android/gms/internal/ads/fb;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 4
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/il3;->b(Lcom/google/android/gms/internal/ads/il3;)J

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/nl3;->i:Lcom/google/android/gms/internal/ads/vk3;

    .line 5
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/il3;->d(Lcom/google/android/gms/internal/ads/il3;)J

    move-result-wide v10

    iget-wide v12, v0, Lcom/google/android/gms/internal/ads/nl3;->B:J

    const/4 v5, 0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v15

    invoke-virtual/range {v3 .. v13}, Lcom/google/android/gms/internal/ads/vk3;->h(Lcom/google/android/gms/internal/ads/dk3;IILcom/google/android/gms/internal/ads/u4;ILjava/lang/Object;JJ)V

    if-nez p6, :cond_1

    .line 6
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/nl3;->F(Lcom/google/android/gms/internal/ads/il3;)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/nl3;->u:[Lcom/google/android/gms/internal/ads/am3;

    .line 7
    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v1, v4

    .line 8
    invoke-virtual {v5, v3}, Lcom/google/android/gms/internal/ads/am3;->t(Z)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iget v1, v0, Lcom/google/android/gms/internal/ads/nl3;->G:I

    if-lez v1, :cond_1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/nl3;->s:Lcom/google/android/gms/internal/ads/kk3;

    .line 9
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/cm3;->k(Lcom/google/android/gms/internal/ads/dm3;)V

    :cond_1
    return-void
.end method

.method public final l(Lcom/google/android/gms/internal/ads/kk3;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/nl3;->s:Lcom/google/android/gms/internal/ads/kk3;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/nl3;->o:Lcom/google/android/gms/internal/ads/b9;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/b9;->a()Z

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/nl3;->G()V

    return-void
.end method

.method public final m(JLcom/google/android/gms/internal/ads/x6;)J
    .locals 16

    move-object/from16 v0, p0

    move-wide/from16 v7, p1

    move-object/from16 v9, p3

    .line 1
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/nl3;->K()V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/nl3;->A:Lcom/google/android/gms/internal/ads/ur3;

    .line 2
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/ur3;->a()Z

    move-result v1

    const-wide/16 v2, 0x0

    if-nez v1, :cond_0

    return-wide v2

    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/nl3;->A:Lcom/google/android/gms/internal/ads/ur3;

    .line 3
    invoke-interface {v1, v7, v8}, Lcom/google/android/gms/internal/ads/ur3;->b(J)Lcom/google/android/gms/internal/ads/sr3;

    move-result-object v1

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/sr3;->a:Lcom/google/android/gms/internal/ads/vr3;

    iget-wide v10, v4, Lcom/google/android/gms/internal/ads/vr3;->b:J

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/sr3;->b:Lcom/google/android/gms/internal/ads/vr3;

    iget-wide v12, v1, Lcom/google/android/gms/internal/ads/vr3;->b:J

    iget-wide v4, v9, Lcom/google/android/gms/internal/ads/x6;->f:J

    cmp-long v1, v4, v2

    if-nez v1, :cond_1

    iget-wide v14, v9, Lcom/google/android/gms/internal/ads/x6;->g:J

    cmp-long v1, v14, v2

    if-nez v1, :cond_1

    move-wide v12, v7

    goto :goto_3

    :cond_1
    const-wide/high16 v14, -0x8000000000000000L

    move-wide/from16 v1, p1

    move-wide v3, v4

    move-wide v5, v14

    .line 4
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/wa;->b(JJJ)J

    move-result-wide v14

    iget-wide v3, v9, Lcom/google/android/gms/internal/ads/x6;->g:J

    const-wide v5, 0x7fffffffffffffffL

    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/wa;->a(JJJ)J

    move-result-wide v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    cmp-long v5, v14, v10

    if-gtz v5, :cond_2

    cmp-long v5, v10, v1

    if-gtz v5, :cond_2

    const/4 v5, 0x1

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    :goto_0
    cmp-long v6, v14, v12

    if-gtz v6, :cond_3

    cmp-long v6, v12, v1

    if-gtz v6, :cond_3

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    if-eqz v5, :cond_5

    if-eqz v3, :cond_5

    sub-long v1, v10, v7

    .line 5
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    sub-long v3, v12, v7

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-gtz v5, :cond_4

    goto :goto_2

    :cond_4
    return-wide v12

    :cond_5
    if-eqz v5, :cond_6

    :goto_2
    move-wide v12, v10

    goto :goto_3

    :cond_6
    if-eqz v3, :cond_7

    :goto_3
    return-wide v12

    :cond_7
    return-wide v14
.end method

.method public final n(J)J
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/nl3;->K()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nl3;->z:Lcom/google/android/gms/internal/ads/ml3;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/ml3;->b:[Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/nl3;->A:Lcom/google/android/gms/internal/ads/ur3;

    .line 3
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/ur3;->a()Z

    move-result v1

    const/4 v2, 0x1

    if-eq v2, v1, :cond_0

    const-wide/16 p1, 0x0

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/nl3;->F:Z

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/nl3;->I:J

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/nl3;->J()Z

    move-result v2

    if-eqz v2, :cond_1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/nl3;->J:J

    return-wide p1

    :cond_1
    iget v2, p0, Lcom/google/android/gms/internal/ads/nl3;->D:I

    const/4 v3, 0x7

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/nl3;->u:[Lcom/google/android/gms/internal/ads/am3;

    .line 4
    array-length v2, v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/nl3;->u:[Lcom/google/android/gms/internal/ads/am3;

    .line 5
    aget-object v4, v4, v3

    .line 6
    invoke-virtual {v4, p1, p2, v1}, Lcom/google/android/gms/internal/ads/am3;->E(JZ)Z

    move-result v4

    if-nez v4, :cond_2

    .line 7
    aget-boolean v4, v0, v3

    if-nez v4, :cond_4

    iget-boolean v4, p0, Lcom/google/android/gms/internal/ads/nl3;->y:Z

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-wide p1

    :cond_4
    :goto_1
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/nl3;->K:Z

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/nl3;->J:J

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/nl3;->M:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nl3;->m:Lcom/google/android/gms/internal/ads/lo3;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/lo3;->i()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nl3;->u:[Lcom/google/android/gms/internal/ads/am3;

    .line 8
    array-length v2, v0

    :goto_2
    if-ge v1, v2, :cond_5

    aget-object v3, v0, v1

    .line 9
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/am3;->I()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nl3;->m:Lcom/google/android/gms/internal/ads/lo3;

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/lo3;->j()V

    goto :goto_4

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nl3;->m:Lcom/google/android/gms/internal/ads/lo3;

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/lo3;->g()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nl3;->u:[Lcom/google/android/gms/internal/ads/am3;

    .line 12
    array-length v2, v0

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v2, :cond_7

    aget-object v4, v0, v3

    .line 13
    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/ads/am3;->t(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_7
    :goto_4
    return-wide p1
.end method

.method public final o(II)Lcom/google/android/gms/internal/ads/yr3;
    .locals 1

    .line 1
    new-instance p2, Lcom/google/android/gms/internal/ads/ll3;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Lcom/google/android/gms/internal/ads/ll3;-><init>(IZ)V

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/nl3;->D(Lcom/google/android/gms/internal/ads/ll3;)Lcom/google/android/gms/internal/ads/yr3;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic p(Lcom/google/android/gms/internal/ads/ho3;JJ)V
    .locals 16

    move-object/from16 v0, p0

    .line 1
    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/nl3;->B:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/nl3;->A:Lcom/google/android/gms/internal/ads/ur3;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/ur3;->a()Z

    move-result v1

    .line 2
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/nl3;->I()J

    move-result-wide v2

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    const-wide/16 v2, 0x0

    goto :goto_0

    :cond_0
    const-wide/16 v4, 0x2710

    add-long/2addr v2, v4

    :goto_0
    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/nl3;->B:J

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/nl3;->k:Lcom/google/android/gms/internal/ads/jl3;

    iget-boolean v5, v0, Lcom/google/android/gms/internal/ads/nl3;->C:Z

    .line 3
    invoke-interface {v4, v2, v3, v1, v5}, Lcom/google/android/gms/internal/ads/jl3;->j(JZZ)V

    :cond_1
    move-object/from16 v1, p1

    check-cast v1, Lcom/google/android/gms/internal/ads/il3;

    .line 4
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/il3;->c(Lcom/google/android/gms/internal/ads/il3;)Lcom/google/android/gms/internal/ads/so3;

    move-result-object v2

    .line 5
    new-instance v15, Lcom/google/android/gms/internal/ads/dk3;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/il3;->b(Lcom/google/android/gms/internal/ads/il3;)J

    move-result-wide v4

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/il3;->e(Lcom/google/android/gms/internal/ads/il3;)Lcom/google/android/gms/internal/ads/fb;

    move-result-object v6

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/so3;->q()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/so3;->r()Ljava/util/Map;

    move-result-object v8

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/so3;->p()J

    move-result-wide v13

    move-object v3, v15

    move-wide/from16 v9, p2

    move-wide/from16 v11, p4

    .line 6
    invoke-direct/range {v3 .. v14}, Lcom/google/android/gms/internal/ads/dk3;-><init>(JLcom/google/android/gms/internal/ads/fb;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 7
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/il3;->b(Lcom/google/android/gms/internal/ads/il3;)J

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/nl3;->i:Lcom/google/android/gms/internal/ads/vk3;

    const/4 v5, 0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 8
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/il3;->d(Lcom/google/android/gms/internal/ads/il3;)J

    move-result-wide v10

    iget-wide v12, v0, Lcom/google/android/gms/internal/ads/nl3;->B:J

    move-object v4, v15

    invoke-virtual/range {v3 .. v13}, Lcom/google/android/gms/internal/ads/vk3;->f(Lcom/google/android/gms/internal/ads/dk3;IILcom/google/android/gms/internal/ads/u4;ILjava/lang/Object;JJ)V

    .line 9
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/nl3;->F(Lcom/google/android/gms/internal/ads/il3;)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/nl3;->M:Z

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/nl3;->s:Lcom/google/android/gms/internal/ads/kk3;

    .line 10
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/cm3;->k(Lcom/google/android/gms/internal/ads/dm3;)V

    return-void
.end method

.method public final q(JZ)V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/nl3;->K()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/nl3;->J()Z

    move-result p3

    if-eqz p3, :cond_0

    return-void

    :cond_0
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/nl3;->z:Lcom/google/android/gms/internal/ads/ml3;

    .line 2
    iget-object p3, p3, Lcom/google/android/gms/internal/ads/ml3;->c:[Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nl3;->u:[Lcom/google/android/gms/internal/ads/am3;

    .line 3
    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/nl3;->u:[Lcom/google/android/gms/internal/ads/am3;

    .line 4
    aget-object v3, v3, v2

    aget-boolean v4, p3, v2

    invoke-virtual {v3, p1, p2, v1, v4}, Lcom/google/android/gms/internal/ads/am3;->H(JZZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final r(Lcom/google/android/gms/internal/ads/ur3;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nl3;->r:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/hl3;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/hl3;-><init>(Lcom/google/android/gms/internal/ads/nl3;Lcom/google/android/gms/internal/ads/ur3;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method final s(IJ)I
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/nl3;->C()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/nl3;->A(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nl3;->u:[Lcom/google/android/gms/internal/ads/am3;

    .line 2
    aget-object v0, v0, p1

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/nl3;->M:Z

    .line 3
    invoke-virtual {v0, p2, p3, v2}, Lcom/google/android/gms/internal/ads/am3;->F(JZ)I

    move-result p2

    .line 4
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/am3;->G(I)V

    if-nez p2, :cond_1

    .line 5
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/nl3;->B(I)V

    return v1

    :cond_1
    return p2
.end method

.method public final t()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/nl3;->w:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nl3;->r:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/nl3;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method final u()Lcom/google/android/gms/internal/ads/yr3;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/ll3;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/ll3;-><init>(IZ)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/nl3;->D(Lcom/google/android/gms/internal/ads/ll3;)Lcom/google/android/gms/internal/ads/yr3;

    move-result-object v0

    return-object v0
.end method

.method public final w()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nl3;->u:[Lcom/google/android/gms/internal/ads/am3;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 2
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/am3;->s()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nl3;->n:Lcom/google/android/gms/internal/ads/dl3;

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dl3;->b()V

    return-void
.end method

.method final synthetic x(Lcom/google/android/gms/internal/ads/ur3;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nl3;->t:Lcom/google/android/gms/internal/ads/zzajg;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v0, :cond_0

    move-object v0, p1

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/tr3;

    const-wide/16 v3, 0x0

    .line 3
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/tr3;-><init>(JJ)V

    .line 4
    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/nl3;->A:Lcom/google/android/gms/internal/ads/ur3;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/ur3;->zzg()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/gms/internal/ads/nl3;->B:J

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/nl3;->H:J

    const-wide/16 v5, -0x1

    const/4 v0, 0x0

    const/4 v7, 0x1

    cmp-long v8, v3, v5

    if-nez v8, :cond_1

    .line 5
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/ur3;->zzg()J

    move-result-wide v3

    cmp-long v5, v3, v1

    if-nez v5, :cond_1

    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/nl3;->C:Z

    if-eq v7, v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v7, 0x7

    :goto_1
    iput v7, p0, Lcom/google/android/gms/internal/ads/nl3;->D:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nl3;->k:Lcom/google/android/gms/internal/ads/jl3;

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/nl3;->B:J

    .line 6
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/ur3;->a()Z

    move-result p1

    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/nl3;->C:Z

    invoke-interface {v0, v1, v2, p1, v3}, Lcom/google/android/gms/internal/ads/jl3;->j(JZZ)V

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/nl3;->x:Z

    if-nez p1, :cond_3

    .line 7
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/nl3;->E()V

    :cond_3
    return-void
.end method

.method final synthetic y()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/nl3;->N:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nl3;->s:Lcom/google/android/gms/internal/ads/kk3;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ads/cm3;->k(Lcom/google/android/gms/internal/ads/dm3;)V

    :cond_0
    return-void
.end method

.method final bridge synthetic z()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/nl3;->E()V

    return-void
.end method

.method public final zzg()J
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/nl3;->F:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/nl3;->M:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/nl3;->H()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/nl3;->L:I

    if-le v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/nl3;->F:Z

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/nl3;->I:J

    return-wide v0

    :cond_1
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method
