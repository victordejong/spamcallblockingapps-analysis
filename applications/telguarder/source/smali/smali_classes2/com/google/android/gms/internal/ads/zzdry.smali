.class final synthetic Lcom/google/android/gms/internal/ads/zzdry;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzdjf:Ljava/lang/String;

.field private final zzhri:Lcom/google/android/gms/internal/ads/zzdrv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdrv;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdry;->zzhri:Lcom/google/android/gms/internal/ads/zzdrv;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdry;->zzdjf:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdry;->zzhri:Lcom/google/android/gms/internal/ads/zzdrv;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdry;->zzdjf:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdrv;->zzgw(Ljava/lang/String;)V

    return-void
.end method
