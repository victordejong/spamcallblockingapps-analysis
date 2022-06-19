.class final Lcom/google/android/gms/internal/ads/ls1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic b:Lcom/google/android/gms/internal/ads/qs1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/qs1;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ls1;->b:Lcom/google/android/gms/internal/ads/qs1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ls1;->b:Lcom/google/android/gms/internal/ads/qs1;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/qs1;->f(Lcom/google/android/gms/internal/ads/qs1;)Lcom/google/android/gms/internal/ads/ks1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ks1;->c()V

    return-void
.end method
