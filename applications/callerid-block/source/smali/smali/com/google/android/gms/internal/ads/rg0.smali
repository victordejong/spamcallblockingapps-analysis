.class public final Lcom/google/android/gms/internal/ads/rg0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/f90;
.implements Lcom/google/android/gms/ads/internal/overlay/q;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Lcom/google/android/gms/internal/ads/jt;

.field private final d:Lcom/google/android/gms/internal/ads/al1;

.field private final e:Lcom/google/android/gms/internal/ads/zzbbq;

.field private final f:Lcom/google/android/gms/internal/ads/zzuq;

.field g:Lcom/google/android/gms/dynamic/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/jt;Lcom/google/android/gms/internal/ads/al1;Lcom/google/android/gms/internal/ads/zzbbq;Lcom/google/android/gms/internal/ads/zzuq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/rg0;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/rg0;->c:Lcom/google/android/gms/internal/ads/jt;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/rg0;->d:Lcom/google/android/gms/internal/ads/al1;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/rg0;->e:Lcom/google/android/gms/internal/ads/zzbbq;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/rg0;->f:Lcom/google/android/gms/internal/ads/zzuq;

    return-void
.end method


# virtual methods
.method public final K5()V
    .locals 0

    return-void
.end method

.method public final M1()V
    .locals 0

    return-void
.end method

.method public final T4()V
    .locals 0

    return-void
.end method

.method public final h0()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rg0;->g:Lcom/google/android/gms/dynamic/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rg0;->c:Lcom/google/android/gms/internal/ads/jt;

    if-eqz v0, :cond_0

    new-instance v1, Ld/e/a;

    invoke-direct {v1}, Ld/e/a;-><init>()V

    const-string v2, "onSdkImpression"

    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/ads/lb;->X(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public final r1(I)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/rg0;->g:Lcom/google/android/gms/dynamic/a;

    return-void
.end method

.method public final s()V
    .locals 12

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rg0;->f:Lcom/google/android/gms/internal/ads/zzuq;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzuq;->i:Lcom/google/android/gms/internal/ads/zzuq;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzuq;->e:Lcom/google/android/gms/internal/ads/zzuq;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzuq;->l:Lcom/google/android/gms/internal/ads/zzuq;

    if-ne v0, v1, :cond_4

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rg0;->d:Lcom/google/android/gms/internal/ads/al1;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/al1;->N:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rg0;->c:Lcom/google/android/gms/internal/ads/jt;

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/google/android/gms/ads/internal/r;->s()Lcom/google/android/gms/internal/ads/vh;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/rg0;->b:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/vh;->D0(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rg0;->e:Lcom/google/android/gms/internal/ads/zzbbq;

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzbbq;->c:I

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzbbq;->d:I

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x17

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rg0;->d:Lcom/google/android/gms/internal/ads/al1;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/al1;->P:Lcom/google/android/gms/internal/ads/vl1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/vl1;->a()Ljava/lang/String;

    move-result-object v8

    sget-object v0, Lcom/google/android/gms/internal/ads/m3;->U2:Lcom/google/android/gms/internal/ads/e3;

    invoke-static {}, Lcom/google/android/gms/internal/ads/c;->c()Lcom/google/android/gms/internal/ads/k3;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/k3;->b(Lcom/google/android/gms/internal/ads/e3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rg0;->d:Lcom/google/android/gms/internal/ads/al1;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/al1;->P:Lcom/google/android/gms/internal/ads/vl1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/vl1;->b()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzaug;->d:Lcom/google/android/gms/internal/ads/zzaug;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzauh;->c:Lcom/google/android/gms/internal/ads/zzauh;

    move-object v10, v0

    move-object v9, v1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rg0;->d:Lcom/google/android/gms/internal/ads/al1;

    iget v0, v0, Lcom/google/android/gms/internal/ads/al1;->S:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    sget-object v0, Lcom/google/android/gms/internal/ads/zzauh;->e:Lcom/google/android/gms/internal/ads/zzauh;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzauh;->b:Lcom/google/android/gms/internal/ads/zzauh;

    :goto_0
    sget-object v1, Lcom/google/android/gms/internal/ads/zzaug;->b:Lcom/google/android/gms/internal/ads/zzaug;

    move-object v9, v0

    move-object v10, v1

    :goto_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/r;->s()Lcom/google/android/gms/internal/ads/vh;

    move-result-object v3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rg0;->c:Lcom/google/android/gms/internal/ads/jt;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/jt;->V()Landroid/webkit/WebView;

    move-result-object v5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rg0;->d:Lcom/google/android/gms/internal/ads/al1;

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/al1;->g0:Ljava/lang/String;

    const-string v6, ""

    const-string v7, "javascript"

    invoke-interface/range {v3 .. v11}, Lcom/google/android/gms/internal/ads/vh;->C0(Ljava/lang/String;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzauh;Lcom/google/android/gms/internal/ads/zzaug;Ljava/lang/String;)Lcom/google/android/gms/dynamic/a;

    move-result-object v0

    goto :goto_2

    :cond_3
    invoke-static {}, Lcom/google/android/gms/ads/internal/r;->s()Lcom/google/android/gms/internal/ads/vh;

    move-result-object v3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rg0;->c:Lcom/google/android/gms/internal/ads/jt;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/jt;->V()Landroid/webkit/WebView;

    move-result-object v5

    const-string v6, ""

    const-string v7, "javascript"

    invoke-interface/range {v3 .. v8}, Lcom/google/android/gms/internal/ads/vh;->E0(Ljava/lang/String;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/dynamic/a;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/rg0;->g:Lcom/google/android/gms/dynamic/a;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rg0;->g:Lcom/google/android/gms/dynamic/a;

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/google/android/gms/ads/internal/r;->s()Lcom/google/android/gms/internal/ads/vh;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/rg0;->g:Lcom/google/android/gms/dynamic/a;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/rg0;->c:Lcom/google/android/gms/internal/ads/jt;

    check-cast v2, Landroid/view/View;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/vh;->H0(Lcom/google/android/gms/dynamic/a;Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rg0;->c:Lcom/google/android/gms/internal/ads/jt;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/rg0;->g:Lcom/google/android/gms/dynamic/a;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/jt;->H(Lcom/google/android/gms/dynamic/a;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/r;->s()Lcom/google/android/gms/internal/ads/vh;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/rg0;->g:Lcom/google/android/gms/dynamic/a;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/vh;->A0(Lcom/google/android/gms/dynamic/a;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/m3;->X2:Lcom/google/android/gms/internal/ads/e3;

    invoke-static {}, Lcom/google/android/gms/internal/ads/c;->c()Lcom/google/android/gms/internal/ads/k3;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/k3;->b(Lcom/google/android/gms/internal/ads/e3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rg0;->c:Lcom/google/android/gms/internal/ads/jt;

    new-instance v1, Ld/e/a;

    invoke-direct {v1}, Ld/e/a;-><init>()V

    const-string v2, "onSdkLoaded"

    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/ads/lb;->X(Ljava/lang/String;Ljava/util/Map;)V

    :cond_4
    return-void
.end method
