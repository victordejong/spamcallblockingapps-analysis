.class final synthetic Lcom/google/android/gms/internal/ads/e21;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/qg0;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/f21;

.field private final b:Lcom/google/android/gms/internal/ads/yz0;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/f21;Lcom/google/android/gms/internal/ads/yz0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/e21;->a:Lcom/google/android/gms/internal/ads/f21;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/e21;->b:Lcom/google/android/gms/internal/ads/yz0;

    return-void
.end method


# virtual methods
.method public final a(ZLandroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/e21;->a:Lcom/google/android/gms/internal/ads/f21;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/e21;->b:Lcom/google/android/gms/internal/ads/yz0;

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/gms/internal/ads/f21;->c(Lcom/google/android/gms/internal/ads/yz0;ZLandroid/content/Context;)V

    return-void
.end method
