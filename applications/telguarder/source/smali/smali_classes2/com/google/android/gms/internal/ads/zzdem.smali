.class final synthetic Lcom/google/android/gms/internal/ads/zzdem;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdyv;


# instance fields
.field private final zzdjf:Ljava/lang/String;

.field private final zzhcq:Lcom/google/android/gms/internal/ads/zzdek;

.field private final zzhcr:Ljava/util/List;

.field private final zzhcs:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdek;Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdem;->zzhcq:Lcom/google/android/gms/internal/ads/zzdek;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdem;->zzdjf:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdem;->zzhcr:Ljava/util/List;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdem;->zzhcs:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final zzatm()Lcom/google/android/gms/internal/ads/zzdzw;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdem;->zzhcq:Lcom/google/android/gms/internal/ads/zzdek;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdem;->zzdjf:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdem;->zzhcr:Ljava/util/List;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdem;->zzhcs:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzdek;->zza(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object v0

    return-object v0
.end method
