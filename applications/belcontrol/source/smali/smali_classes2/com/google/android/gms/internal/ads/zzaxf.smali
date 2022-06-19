.class public final synthetic Lcom/google/android/gms/internal/ads/zzaxf;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaxv;


# instance fields
.field private final zzebm:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaxf;->zzebm:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/internal/ads/zzbfu;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaxf;->zzebm:Landroid/os/Bundle;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzbfu;->setConsent(Landroid/os/Bundle;)V

    return-void
.end method
