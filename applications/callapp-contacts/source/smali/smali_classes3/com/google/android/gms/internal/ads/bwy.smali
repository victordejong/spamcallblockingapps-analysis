.class final synthetic Lcom/google/android/gms/internal/ads/bwy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/afd;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/biv;

.field private final b:Lcom/google/android/gms/internal/ads/adt;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/biv;Lcom/google/android/gms/internal/ads/adt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bwy;->a:Lcom/google/android/gms/internal/ads/biv;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bwy;->b:Lcom/google/android/gms/internal/ads/adt;

    return-void
.end method


# virtual methods
.method public final zzam(Z)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/bwy;->a:Lcom/google/android/gms/internal/ads/biv;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bwy;->b:Lcom/google/android/gms/internal/ads/adt;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/biv;->a()V

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/adt;->v()V

    .line 4
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/adt;->B()Lcom/google/android/gms/internal/ads/afe;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/afe;->g()V

    return-void
.end method
