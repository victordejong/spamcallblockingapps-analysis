.class final synthetic Lcom/google/android/gms/internal/ads/n91;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/hd1;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/o91;

.field private final b:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/o91;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/n91;->a:Lcom/google/android/gms/internal/ads/o91;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/n91;->b:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/n91;->a:Lcom/google/android/gms/internal/ads/o91;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/n91;->b:Landroid/os/Bundle;

    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/o91;->a(Landroid/os/Bundle;Landroid/os/Bundle;)V

    return-void
.end method
