.class public final Lcom/google/android/gms/internal/ads/tr1;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static d:Lcom/google/android/gms/internal/ads/tr1;


# instance fields
.field private a:F

.field private b:Lcom/google/android/gms/internal/ads/kr1;

.field private c:Lcom/google/android/gms/internal/ads/mr1;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/lr1;Lcom/google/android/gms/internal/ads/jr1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/tr1;->a:F

    return-void
.end method

.method public static a()Lcom/google/android/gms/internal/ads/tr1;
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/ads/tr1;->d:Lcom/google/android/gms/internal/ads/tr1;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/jr1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/jr1;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/ads/lr1;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/lr1;-><init>()V

    new-instance v2, Lcom/google/android/gms/internal/ads/tr1;

    invoke-direct {v2, v1, v0}, Lcom/google/android/gms/internal/ads/tr1;-><init>(Lcom/google/android/gms/internal/ads/lr1;Lcom/google/android/gms/internal/ads/jr1;)V

    sput-object v2, Lcom/google/android/gms/internal/ads/tr1;->d:Lcom/google/android/gms/internal/ads/tr1;

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/tr1;->d:Lcom/google/android/gms/internal/ads/tr1;

    return-object v0
.end method


# virtual methods
.method public final b(Landroid/content/Context;)V
    .locals 7

    new-instance v3, Lcom/google/android/gms/internal/ads/hr1;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/hr1;-><init>()V

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v6, Lcom/google/android/gms/internal/ads/kr1;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v2, p1

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/kr1;-><init>(Landroid/os/Handler;Landroid/content/Context;Lcom/google/android/gms/internal/ads/hr1;Lcom/google/android/gms/internal/ads/tr1;[B)V

    iput-object v6, p0, Lcom/google/android/gms/internal/ads/tr1;->b:Lcom/google/android/gms/internal/ads/kr1;

    return-void
.end method

.method public final c()V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/ads/or1;->a()Lcom/google/android/gms/internal/ads/or1;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/or1;->g(Lcom/google/android/gms/internal/ads/tr1;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/or1;->a()Lcom/google/android/gms/internal/ads/or1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/or1;->c()V

    invoke-static {}, Lcom/google/android/gms/internal/ads/or1;->a()Lcom/google/android/gms/internal/ads/or1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/or1;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/qs1;->b()Lcom/google/android/gms/internal/ads/qs1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/qs1;->c()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tr1;->b:Lcom/google/android/gms/internal/ads/kr1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/kr1;->a()V

    return-void
.end method

.method public final d()V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/ads/qs1;->b()Lcom/google/android/gms/internal/ads/qs1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/qs1;->d()V

    invoke-static {}, Lcom/google/android/gms/internal/ads/or1;->a()Lcom/google/android/gms/internal/ads/or1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/or1;->d()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tr1;->b:Lcom/google/android/gms/internal/ads/kr1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/kr1;->b()V

    return-void
.end method

.method public final e(F)V
    .locals 2

    iput p1, p0, Lcom/google/android/gms/internal/ads/tr1;->a:F

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tr1;->c:Lcom/google/android/gms/internal/ads/mr1;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/mr1;->a()Lcom/google/android/gms/internal/ads/mr1;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/tr1;->c:Lcom/google/android/gms/internal/ads/mr1;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tr1;->c:Lcom/google/android/gms/internal/ads/mr1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/mr1;->f()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/er1;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/er1;->h()Lcom/google/android/gms/internal/ads/zr1;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zr1;->j(F)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final f()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/tr1;->a:F

    return v0
.end method
