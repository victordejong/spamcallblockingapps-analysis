.class public final Lcom/google/android/gms/internal/ads/bwp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cae;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/cae",
        "<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:D

.field private final b:Z


# direct methods
.method public constructor <init>(DZ)V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/bwp;->a:D

    .line 3
    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/bwp;->b:Z

    .line 4
    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 5
    check-cast p1, Landroid/os/Bundle;

    .line 6
    const-string/jumbo v0, "device"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/chm;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 7
    const-string/jumbo v1, "device"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 8
    const-string/jumbo v1, "battery"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/chm;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 9
    const-string/jumbo v2, "battery"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 10
    const-string/jumbo v0, "is_charging"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/bwp;->b:Z

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 11
    const-string/jumbo v0, "battery_level"

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/bwp;->a:D

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 12
    return-void
.end method
