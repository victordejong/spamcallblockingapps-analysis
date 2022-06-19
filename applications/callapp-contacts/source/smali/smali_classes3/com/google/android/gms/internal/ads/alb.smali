.class public final Lcom/google/android/gms/internal/ads/alb;
.super Lcom/google/android/gms/internal/ads/anp;
.source "SourceFile"


# instance fields
.field final a:Landroid/view/View;

.field final b:Lcom/google/android/gms/internal/ads/adt;

.field final c:I

.field final d:Z

.field final e:Z

.field f:Lcom/google/android/gms/internal/ads/egh;

.field final g:Lcom/google/android/gms/internal/ads/akr;

.field private final n:Lcom/google/android/gms/internal/ads/coy;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/ans;Landroid/view/View;Lcom/google/android/gms/internal/ads/adt;Lcom/google/android/gms/internal/ads/coy;IZZLcom/google/android/gms/internal/ads/akr;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/anp;-><init>(Lcom/google/android/gms/internal/ads/ans;)V

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/alb;->a:Landroid/view/View;

    .line 3
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/alb;->b:Lcom/google/android/gms/internal/ads/adt;

    .line 4
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/alb;->n:Lcom/google/android/gms/internal/ads/coy;

    .line 5
    iput p5, p0, Lcom/google/android/gms/internal/ads/alb;->c:I

    .line 6
    iput-boolean p6, p0, Lcom/google/android/gms/internal/ads/alb;->d:Z

    .line 7
    iput-boolean p7, p0, Lcom/google/android/gms/internal/ads/alb;->e:Z

    .line 8
    iput-object p8, p0, Lcom/google/android/gms/internal/ads/alb;->g:Lcom/google/android/gms/internal/ads/akr;

    return-void
.end method


# virtual methods
.method public final F_()Lcom/google/android/gms/internal/ads/coy;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/alb;->i:Lcom/google/android/gms/internal/ads/cov;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/cov;->q:Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/cps;->a(Ljava/util/List;)Lcom/google/android/gms/internal/ads/coy;

    move-result-object v0

    return-object v0
.end method

.method public final b()Z
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/alb;->b:Lcom/google/android/gms/internal/ads/adt;

    if-eqz v0, :cond_0

    .line 16
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/adt;->B()Lcom/google/android/gms/internal/ads/afe;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/alb;->b:Lcom/google/android/gms/internal/ads/adt;

    .line 17
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/adt;->B()Lcom/google/android/gms/internal/ads/afe;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/afe;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
