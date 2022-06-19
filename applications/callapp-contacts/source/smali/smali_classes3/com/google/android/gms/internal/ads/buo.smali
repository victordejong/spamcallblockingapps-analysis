.class final synthetic Lcom/google/android/gms/internal/ads/buo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cxu;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/buj;

.field private final b:Lcom/google/android/gms/internal/ads/adt;

.field private final c:Lcom/google/android/gms/internal/ads/cov;

.field private final d:Lcom/google/android/gms/internal/ads/azk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/buj;Lcom/google/android/gms/internal/ads/adt;Lcom/google/android/gms/internal/ads/cov;Lcom/google/android/gms/internal/ads/azk;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/buo;->a:Lcom/google/android/gms/internal/ads/buj;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/buo;->b:Lcom/google/android/gms/internal/ads/adt;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/buo;->c:Lcom/google/android/gms/internal/ads/cov;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/buo;->d:Lcom/google/android/gms/internal/ads/azk;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/buo;->b:Lcom/google/android/gms/internal/ads/adt;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/buo;->c:Lcom/google/android/gms/internal/ads/cov;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/buo;->d:Lcom/google/android/gms/internal/ads/azk;

    .line 3
    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/cov;->H:Z

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/adt;->P()V

    .line 5
    :cond_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/adt;->v()V

    .line 6
    sget-object v0, Lcom/google/android/gms/internal/ads/aq;->at:Lcom/google/android/gms/internal/ads/af;

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v0

    .line 8
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/adt;->onPause()V

    .line 10
    :cond_1
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/azk;->h()Lcom/google/android/gms/internal/ads/azi;

    move-result-object p1

    return-object p1
.end method
