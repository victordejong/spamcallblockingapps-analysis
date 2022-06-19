.class final synthetic Lcom/google/android/gms/internal/ads/bgb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/afd;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/bfv;

.field private final b:Lcom/google/android/gms/internal/ads/adt;

.field private final c:Lcom/google/android/gms/internal/ads/zm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bfv;Lcom/google/android/gms/internal/ads/adt;Lcom/google/android/gms/internal/ads/zm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bgb;->a:Lcom/google/android/gms/internal/ads/bfv;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bgb;->b:Lcom/google/android/gms/internal/ads/adt;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bgb;->c:Lcom/google/android/gms/internal/ads/zm;

    return-void
.end method


# virtual methods
.method public final zzam(Z)V
    .locals 3

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/bgb;->a:Lcom/google/android/gms/internal/ads/bfv;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bgb;->b:Lcom/google/android/gms/internal/ads/adt;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bgb;->c:Lcom/google/android/gms/internal/ads/zm;

    .line 1078
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/bfv;->a:Lcom/google/android/gms/internal/ads/cpo;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/cpo;->b:Lcom/google/android/gms/internal/ads/zzaaz;

    if-eqz v2, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/adt;->b()Lcom/google/android/gms/internal/ads/aem;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1079
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/adt;->b()Lcom/google/android/gms/internal/ads/aem;

    move-result-object v0

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/bfv;->a:Lcom/google/android/gms/internal/ads/cpo;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/cpo;->b:Lcom/google/android/gms/internal/ads/zzaaz;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/aem;->a(Lcom/google/android/gms/internal/ads/zzaaz;)V

    .line 1080
    :cond_0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zm;->a()V

    return-void
.end method
