.class final synthetic Lcom/google/android/gms/internal/ads/atr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/awn;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/att;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/att;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/atr;->a:Lcom/google/android/gms/internal/ads/att;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/atr;->a:Lcom/google/android/gms/internal/ads/att;

    check-cast p1, Lcom/google/android/gms/internal/ads/atu;

    .line 1017
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/att;->a:Lcom/google/android/gms/internal/ads/cov;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/cov;->Z:Lcom/google/android/gms/internal/ads/zzvv;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/atu;->a(Lcom/google/android/gms/internal/ads/zzvv;)V

    return-void
.end method
