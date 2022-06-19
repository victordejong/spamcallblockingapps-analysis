.class final Lcom/google/android/gms/internal/ads/hs;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic b:Lcom/google/android/gms/internal/ads/is;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/is;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/hs;->b:Lcom/google/android/gms/internal/ads/is;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/google/android/gms/ads/internal/r;->z()Lcom/google/android/gms/internal/ads/js;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/hs;->b:Lcom/google/android/gms/internal/ads/is;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/js;->j(Lcom/google/android/gms/internal/ads/is;)V

    return-void
.end method
