.class final synthetic Lcom/google/android/gms/internal/ads/bwd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cae;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/bwe;

.field private final b:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bwe;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bwd;->a:Lcom/google/android/gms/internal/ads/bwe;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bwd;->b:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bwd;->a:Lcom/google/android/gms/internal/ads/bwe;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bwd;->b:Landroid/os/Bundle;

    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/bwe;->a(Landroid/os/Bundle;Landroid/os/Bundle;)V

    return-void
.end method
