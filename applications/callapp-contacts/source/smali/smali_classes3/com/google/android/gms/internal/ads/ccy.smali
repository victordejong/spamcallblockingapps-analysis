.class final synthetic Lcom/google/android/gms/internal/ads/ccy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/ccz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/ccz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ccy;->a:Lcom/google/android/gms/internal/ads/ccz;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ccy;->a:Lcom/google/android/gms/internal/ads/ccz;

    .line 1007
    new-instance v1, Lcom/google/android/gms/internal/ads/ccw;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/ccz;->a:Lcom/google/android/gms/internal/ads/cpo;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/cpo;->j:Lcom/google/android/gms/internal/ads/zzwc;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/ccz;->b:Lcom/google/android/gms/internal/ads/zzbar;

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/ads/ccw;-><init>(Lcom/google/android/gms/internal/ads/zzwc;Lcom/google/android/gms/internal/ads/zzbar;)V

    return-object v1
.end method
