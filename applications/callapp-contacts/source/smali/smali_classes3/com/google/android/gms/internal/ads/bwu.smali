.class final synthetic Lcom/google/android/gms/internal/ads/bwu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/ash;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/adt;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/adt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bwu;->a:Lcom/google/android/gms/internal/ads/adt;

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bwu;->a:Lcom/google/android/gms/internal/ads/adt;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/adt;->B()Lcom/google/android/gms/internal/ads/afe;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/adt;->B()Lcom/google/android/gms/internal/ads/afe;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/afe;->g()V

    :cond_0
    return-void
.end method
