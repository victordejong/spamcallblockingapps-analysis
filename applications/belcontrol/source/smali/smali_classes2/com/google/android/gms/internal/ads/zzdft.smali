.class public final Lcom/google/android/gms/internal/ads/zzdft;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdfj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdfj<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzdyb:Ljava/lang/String;

.field private final zzdyc:I

.field private final zzdyd:I

.field private final zzdye:I

.field private final zzdyf:Z

.field private final zzdyg:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdft;->zzdyb:Ljava/lang/String;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzdft;->zzdyc:I

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzdft;->zzdyd:I

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzdft;->zzdye:I

    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/zzdft;->zzdyf:Z

    iput p6, p0, Lcom/google/android/gms/internal/ads/zzdft;->zzdyg:I

    return-void
.end method


# virtual methods
.method public final synthetic zzr(Ljava/lang/Object;)V
    .locals 4

    check-cast p1, Landroid/os/Bundle;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdft;->zzdyb:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    const-string v3, "carrier"

    invoke-static {p1, v3, v0, v1}, Lcom/google/android/gms/internal/ads/zzdnz;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Z)V

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdft;->zzdyc:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdft;->zzdyc:I

    const/4 v3, -0x2

    if-eq v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v1, "cnt"

    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzdnz;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Integer;Z)V

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdft;->zzdyd:I

    const-string v1, "gnt"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdft;->zzdye:I

    const-string v1, "pt"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "device"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzdnz;->zza(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string p1, "network"

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzdnz;->zza(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzdft;->zzdyg:I

    const-string v1, "active_network_state"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzdft;->zzdyf:Z

    const-string v1, "active_network_metered"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
