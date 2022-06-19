.class final synthetic Lcom/google/android/gms/internal/ads/w60;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/x60;

.field private final b:Lcom/google/android/gms/internal/ads/rz1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/x60;Lcom/google/android/gms/internal/ads/rz1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/w60;->a:Lcom/google/android/gms/internal/ads/x60;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/w60;->b:Lcom/google/android/gms/internal/ads/rz1;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/w60;->a:Lcom/google/android/gms/internal/ads/x60;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/w60;->b:Lcom/google/android/gms/internal/ads/rz1;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/x60;->c(Lcom/google/android/gms/internal/ads/rz1;)Lcom/google/android/gms/internal/ads/zzawc;

    move-result-object v0

    return-object v0
.end method
