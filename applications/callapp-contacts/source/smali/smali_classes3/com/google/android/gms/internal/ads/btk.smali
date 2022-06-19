.class final synthetic Lcom/google/android/gms/internal/ads/btk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/btd;

.field private final b:Lcom/google/android/gms/internal/ads/adt;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/btd;Lcom/google/android/gms/internal/ads/adt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/btk;->a:Lcom/google/android/gms/internal/ads/btd;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/btk;->b:Lcom/google/android/gms/internal/ads/adt;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/btk;->a:Lcom/google/android/gms/internal/ads/btd;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/btk;->b:Lcom/google/android/gms/internal/ads/adt;

    .line 1013
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/adt;->v()V

    .line 1014
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/adt;->b()Lcom/google/android/gms/internal/ads/aem;

    move-result-object v1

    .line 1015
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/btd;->d:Lcom/google/android/gms/internal/ads/cpo;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/cpo;->b:Lcom/google/android/gms/internal/ads/zzaaz;

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 1016
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/btd;->d:Lcom/google/android/gms/internal/ads/cpo;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/cpo;->b:Lcom/google/android/gms/internal/ads/zzaaz;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/aem;->a(Lcom/google/android/gms/internal/ads/zzaaz;)V

    :cond_0
    return-void
.end method
