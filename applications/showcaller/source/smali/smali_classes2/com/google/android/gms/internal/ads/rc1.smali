.class public final Lcom/google/android/gms/internal/ads/rc1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/n41;
.implements Lcom/google/android/gms/ads/internal/overlay/o;


# instance fields
.field private final d:Landroid/content/Context;

.field private final e:Lcom/google/android/gms/internal/ads/wn0;

.field private final f:Lcom/google/android/gms/internal/ads/ej2;

.field private final g:Lcom/google/android/gms/internal/ads/zzcgz;

.field private final h:Lcom/google/android/gms/internal/ads/zzazj;

.field i:Lcom/google/android/gms/dynamic/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/wn0;Lcom/google/android/gms/internal/ads/ej2;Lcom/google/android/gms/internal/ads/zzcgz;Lcom/google/android/gms/internal/ads/zzazj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/rc1;->d:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/rc1;->e:Lcom/google/android/gms/internal/ads/wn0;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/rc1;->f:Lcom/google/android/gms/internal/ads/ej2;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/rc1;->g:Lcom/google/android/gms/internal/ads/zzcgz;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/rc1;->h:Lcom/google/android/gms/internal/ads/zzazj;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final a3()V
    .locals 0

    return-void
.end method

.method public final a6(I)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/rc1;->i:Lcom/google/android/gms/dynamic/a;

    return-void
.end method

.method public final d()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rc1;->h:Lcom/google/android/gms/internal/ads/zzazj;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzazj;->k:Lcom/google/android/gms/internal/ads/zzazj;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzazj;->g:Lcom/google/android/gms/internal/ads/zzazj;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzazj;->n:Lcom/google/android/gms/internal/ads/zzazj;

    if-ne v0, v1, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rc1;->f:Lcom/google/android/gms/internal/ads/ej2;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/ej2;->P:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rc1;->e:Lcom/google/android/gms/internal/ads/wn0;

    if-eqz v0, :cond_3

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->s()Lcom/google/android/gms/internal/ads/gb0;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/rc1;->d:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/gb0;->U(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rc1;->g:Lcom/google/android/gms/internal/ads/zzcgz;

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzcgz;->e:I

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzcgz;->f:I

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x17

    .line 3
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rc1;->f:Lcom/google/android/gms/internal/ads/ej2;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/ej2;->R:Lcom/google/android/gms/internal/ads/ak2;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ak2;->a()Ljava/lang/String;

    move-result-object v8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rc1;->f:Lcom/google/android/gms/internal/ads/ej2;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/ej2;->R:Lcom/google/android/gms/internal/ads/ak2;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ak2;->b()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 6
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbzl;->f:Lcom/google/android/gms/internal/ads/zzbzl;

    .line 7
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbzm;->e:Lcom/google/android/gms/internal/ads/zzbzm;

    move-object v10, v0

    move-object v9, v1

    goto :goto_1

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rc1;->f:Lcom/google/android/gms/internal/ads/ej2;

    iget v0, v0, Lcom/google/android/gms/internal/ads/ej2;->U:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 9
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbzm;->g:Lcom/google/android/gms/internal/ads/zzbzm;

    goto :goto_0

    .line 10
    :cond_2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbzm;->d:Lcom/google/android/gms/internal/ads/zzbzm;

    .line 11
    :goto_0
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbzl;->d:Lcom/google/android/gms/internal/ads/zzbzl;

    move-object v9, v0

    move-object v10, v1

    .line 12
    :goto_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->s()Lcom/google/android/gms/internal/ads/gb0;

    move-result-object v3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rc1;->e:Lcom/google/android/gms/internal/ads/wn0;

    .line 13
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/wn0;->F()Landroid/webkit/WebView;

    move-result-object v5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rc1;->f:Lcom/google/android/gms/internal/ads/ej2;

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/ej2;->i0:Ljava/lang/String;

    const-string v6, ""

    const-string v7, "javascript"

    .line 14
    invoke-interface/range {v3 .. v11}, Lcom/google/android/gms/internal/ads/gb0;->b(Ljava/lang/String;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbzm;Lcom/google/android/gms/internal/ads/zzbzl;Ljava/lang/String;)Lcom/google/android/gms/dynamic/a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/rc1;->i:Lcom/google/android/gms/dynamic/a;

    if-eqz v0, :cond_3

    .line 15
    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->s()Lcom/google/android/gms/internal/ads/gb0;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/rc1;->i:Lcom/google/android/gms/dynamic/a;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/rc1;->e:Lcom/google/android/gms/internal/ads/wn0;

    check-cast v2, Landroid/view/View;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/gb0;->e(Lcom/google/android/gms/dynamic/a;Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rc1;->e:Lcom/google/android/gms/internal/ads/wn0;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/rc1;->i:Lcom/google/android/gms/dynamic/a;

    .line 16
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/wn0;->A0(Lcom/google/android/gms/dynamic/a;)V

    .line 17
    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->s()Lcom/google/android/gms/internal/ads/gb0;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/rc1;->i:Lcom/google/android/gms/dynamic/a;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/gb0;->zzf(Lcom/google/android/gms/dynamic/a;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rc1;->e:Lcom/google/android/gms/internal/ads/wn0;

    .line 18
    new-instance v1, Lb/e/a;

    invoke-direct {v1}, Lb/e/a;-><init>()V

    const-string v2, "onSdkLoaded"

    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/ads/s40;->D0(Ljava/lang/String;Ljava/util/Map;)V

    :cond_3
    return-void
.end method

.method public final e()V
    .locals 0

    return-void
.end method

.method public final m2()V
    .locals 0

    return-void
.end method

.method public final y4()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rc1;->i:Lcom/google/android/gms/dynamic/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rc1;->e:Lcom/google/android/gms/internal/ads/wn0;

    if-eqz v0, :cond_0

    new-instance v1, Lb/e/a;

    invoke-direct {v1}, Lb/e/a;-><init>()V

    const-string v2, "onSdkImpression"

    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/ads/s40;->D0(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method
