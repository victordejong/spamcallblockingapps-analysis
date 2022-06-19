.class final synthetic Lcom/google/android/gms/internal/ads/adv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/ads;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/ads;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/adv;->a:Lcom/google/android/gms/internal/ads/ads;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adv;->a:Lcom/google/android/gms/internal/ads/ads;

    .line 2
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/ads;->a:Lcom/google/android/gms/internal/ads/adt;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/adt;->L()V

    .line 3
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/ads;->a:Lcom/google/android/gms/internal/ads/adt;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/adt;->x()Lcom/google/android/gms/ads/internal/overlay/zze;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zze;->zzwi()V

    :cond_0
    return-void
.end method
