.class final synthetic Lcom/google/android/gms/internal/ads/zzdbs;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdfj;


# instance fields
.field private final zzebn:Landroid/os/Bundle;

.field private final zzhbc:Lcom/google/android/gms/internal/ads/zzdbt;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdbt;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdbs;->zzhbc:Lcom/google/android/gms/internal/ads/zzdbt;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdbs;->zzebn:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final zzr(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdbs;->zzhbc:Lcom/google/android/gms/internal/ads/zzdbt;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdbs;->zzebn:Landroid/os/Bundle;

    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzdbt;->zzb(Landroid/os/Bundle;Landroid/os/Bundle;)V

    return-void
.end method
