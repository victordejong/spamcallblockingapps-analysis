.class final synthetic Lcom/google/android/gms/internal/ads/zzdds;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzddp;


# instance fields
.field private final zzhch:Lcom/google/android/gms/internal/ads/zzddo;

.field private final zzhci:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzddo;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdds;->zzhch:Lcom/google/android/gms/internal/ads/zzddo;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdds;->zzhci:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final zzr(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdds;->zzhch:Lcom/google/android/gms/internal/ads/zzddo;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdds;->zzhci:Ljava/util/ArrayList;

    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzddo;->zza(Ljava/util/ArrayList;Landroid/os/Bundle;)V

    return-void
.end method
